const express = require('express');

// const pg = require('pg');

const app = express();

// const connectionString = 'postgres://postgres:folder@123@localhost:5432/postgres';

app.get('/api/v1/auth/signup', (req, res, next) => {
  console.log('welcome');
  res.json({ name: 'baa' });
});

app.listen(4000, () => {
  console.log('Server is running.. on Port 4000');
});
