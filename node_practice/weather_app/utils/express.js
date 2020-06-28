const path = require('path')
const express = require('express')
const server = express()

const publicDirectoryPath = path.join(__dirname, '../public')
server.use(express.static(publicDirectoryPath))

const templatePath = path.join(__dirname, '../templates/views')
server.use(express.static(templatePath))

server.set('view engine', 'hbs')

server.get('', (req, res) => {
  res.render('index', {
    title: 'Weather app',
    name: 'Udita'
  })
})

server.get('/weather', (req, res) => {
  res.send('Your weather')
})

server.listen(3000, () => {
  console.log('Server running at 3000');
})

module.export = server
