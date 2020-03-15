const fs = require('fs')

const book = {
  title: 'Book Title',
  author: 'Big author'
}

const bookJSON = JSON.stringify(book)

// returns undefined
console.log(bookJSON.title)

const parsedData = JSON.parse(bookJSON)
console.log(parsedData.title)
// fs.writeFileSync('1-json.json', bookJSON)

const dataBuffer = fs.readFileSync('1-json.json')
console.log(dataBuffer)
console.log(dataBuffer.toString())
