const Pool = require('pg').Pool
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'postgres',
  password: '',
  port: 5432,
})

const getClients = (req, res) => {
  pool.query('SELECT * FROM clients ORDER BY id ASC', (error, results) => {
    if (error) {
      throw error
    }
    res.status(200).json(results.rows)
  })
}

const addClient = (req, res) => {
  const { name, alias, phone } = req.body

  pool.query('INSERT INTO clients (name, alias, phone) VALUES ($1, $2, $3) RETURNING *', [name, alias, phone], (error, results) => {
    if (error) {
      throw error
    }
	console.log(results.rows)
	res.status(201).json({name: results.rows[0].name, alias: results.rows[0].alias, phone: results.rows[0].phone})
  })
}

module.exports = {
  getClients,
  addClient,
}