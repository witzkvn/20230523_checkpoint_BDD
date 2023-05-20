import sqlite3 from "sqlite3";
import fs from "fs";

async function execQuery(
  database: sqlite3.Database,
  query: string
): Promise<unknown[]> {
  return new Promise((resolve, reject) => {
    database.all(query, [], (err: any | null, result: unknown[]) => {
      if (err) {
        reject(err);
      } else {
        resolve(result as unknown[]);
      }
    });
  });
}

async function run() {
  try {
    fs.rmSync("./database.sqlite");
  } catch {}
  const database = new sqlite3.Database("database.sqlite");

  const queries = fs.readdirSync("./queries");
  for (const file of queries) {
    console.log(`========== ${file} ==========`);
    const content = fs.readFileSync(`./queries/${file}`).toString("utf-8");
    const uncommentedLines = content
      .split(/\r?\n/)
      .filter((line) => line.trim()[0] !== "#");
    const noQuery = !uncommentedLines.find((line) => line.trim() !== "");
    if (noQuery === true) {
      console.warn(`File ${file} has been skipped because it seems empty`);
      continue;
    }
    const sqlLine = uncommentedLines.map((line) => line.trim()).join(" ");
    const queries = sqlLine.split(";");
    for (const query of queries) {
      if (query.trim().length === 0) {
        continue;
      }
      try {
        console.log(`Executing: ${query}`);
        const result = await execQuery(database, query);
        console.log(`Query has succeed with the following output:`);
        console.log(JSON.stringify(result, null, 4));
      } catch (e: any) {
        console.error(`Query has failed with the following error:`);
        console.error(e.message);
        console.error(JSON.stringify(e, null, 4));
      }
    }
  }
}

run();
