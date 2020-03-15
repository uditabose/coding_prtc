const fs = require('fs')
const chalk = require('chalk')

const getNotes = function() {
  return 'Your notes...'
}

const addNotes = function(title, body) {
  const notes = loadNotes()
  const duplicateNotes = notes.filter(function(note) {
    return note.title === title
  })
  if (duplicateNotes.length === 0) {
    notes.push({
      title: title,
      body: body
    })
    saveNotes(notes)
    console.log(chalk.green("Note added with title", title))
  } else {
    console.log(chalk.red("Duplicate note title"))
  }
}

const removeNote = function(title) {
  const notes = loadNotes()
  const restOfNotes = notes.filter(function(note){
    return note.title !== title
  })

  if (notes.length === restOfNotes.length) {
    console.log(chalk.red("No matching note found"))
  } else {
    saveNotes(restOfNotes)
    console.log(chalk.green("Removed note with title", title))
  }
}

const saveNotes = function(notes) {
  const noteString = JSON.stringify(notes)
  fs.writeFileSync('notes.json', noteString)
}

const loadNotes = function() {
  try {
    const dataBuffer = fs.readFileSync('notes.json')
    const dataJSON = dataBuffer.toString()
    return JSON.parse(dataJSON)
  } catch (e) {
    return []
  }
}

module.exports = {
  getNotes: getNotes,
  addNotes: addNotes,
  removeNote: removeNote
}
