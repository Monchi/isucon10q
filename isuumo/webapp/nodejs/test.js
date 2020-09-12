const path = require('path')
const fs = require('fs')

const json = require("../fixture/estate_condition.json");
const result = json.feature.list.map((s) => `'${s}'`).join(",")

console.log(result)

// const p = path.resolve("..", "mysql", "db", "1_DummyEstateData.sql")
// const sql = fs.readFileSync(p, "utf8");
// const splited = sql.split("(");
// let first = true;
// for (let cond of splited) {
//   if (first) {
//     first = false;
//     continue;
//   }

//   const c = cond.split(")")[0];
//   const rows = c.split(",");
//   const features = c[c.length - 1];
// }