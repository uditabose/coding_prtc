const fs = require('fs')
const chalk = require('chalk')

const getNotes = () => {
  loadNotes().forEach((note, i) => {
    console.log(chalk.yellow("Note:", i+1, "#", "with title:", note.title))
  });
}

const readNote = (title) => {
  const notes = loadNotes()
  const theNote = notes.find((note) => note.title === title)
  if(theNote) {
    console.log(chalk.yellow("Note:", title, "---"))
    console.log(chalk.green(theNote.body))
  } else {
    console.log(chalk.red("No note with title", title, "found"))
  }
}

const addNotes = (title, body) => {
  const notes = loadNotes()
  const theNote = notes.find((note) => note.title === title)

  if (theNote) {
    console.log(chalk.red("Duplicate note title", title))
  } else {
    notes.push({
      title: title,
      body: body
    })
    saveNotes(notes)
    console.log(chalk.green("Note added with title", title))
  }
}

const removeNote = (title) => {
  const notes = loadNotes()
  const restOfNotes = notes.filter((note) => note.title !== title)

  if (notes.length === restOfNotes.length) {
    console.log(chalk.red("No matching note found"))
  } else {
    saveNotes(restOfNotes)
    console.log(chalk.green("Removed note with title", title))
  }
}

const saveNotes = (notes) => {
  const noteString = JSON.stringify(notes)
  fs.writeFileSync('notes.json', noteString)
}

const loadNotes = () => {
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
  removeNote: removeNote,
  readNote: readNote
}
