const fs = require('fs')

const json = fs.readFileSync('1-json-pr.json').toString()
const parsedData = JSON.parse(json)
console.log(parsedData)
console.log(parsedData.describe)

parsedData.name = "nnnnnnn-k"
fs.writeFileSync('1-json-pr.json', JSON.stringify(parsedData))
