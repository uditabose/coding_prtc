const yargsy = require('yargs')

yargsy.command({
  command: 'list',
  describe: 'List your notes',
  handler: function() {
    console.log('Listing all notes')
  }
})

yargsy.command({
  command: 'read',
  describe: 'Read a notes',
  handler: function() {
    console.log('Read a note')
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
    console.log('Note added:', argv.title, 'with body:', argv.body)
  }
})

yargsy.command({
  command: 'remove',
  describe: 'Remove a note',
  handler: function() {
    console.log('Remove a note')
  }
})

// console.log(yargsy.argv)
yargsy.parse()
