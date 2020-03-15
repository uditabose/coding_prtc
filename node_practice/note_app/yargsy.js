const yargsy = require('yargs')
const notes = require('./notes.js')


yargsy.command({
  command: 'list',
  describe: 'List your notes',
  handler: () => {
    notes.getNotes()
  }
})

yargsy.command({
  command: 'read',
  describe: 'Read a notes',
  handler: (argv) => {
    notes.readNote(argv.title)
  }
})

yargsy.command({
  command: 'add',
  describe: 'Add a note',
  builder: {
    title: {
      describe: 'Note title',
      demandOption: true,
      type: 'string'
    },
    body: {
      describe: 'Note body',
      type: 'string'
    }
  },
  handler: function(argv) {
    notes.addNotes(argv.title, argv.body)
  }
})

yargsy.command({
  command: 'remove',
  describe: 'Remove a note',
  builder: {
    title: {
      describe: 'Note title',
      demandOption: true,
      type: 'string'
    }
  },
  handler: function(argv) {
    notes.removeNote(argv.title)
  }
})

module.exports = yargsy
