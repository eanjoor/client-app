const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const db = require('../db/queries')
var cors = require('cors')
const port = 3000

app.use(cors())
app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)

app.get('/api/clients', db.getClients)
app.post('/api/clients', db.addClient)
  
app.listen(port, () => {
    console.log('Server listening on port 3000');
});