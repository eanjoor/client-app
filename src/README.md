# ClientApp

Simple app to store client information into PostgreSQL database and display existing client records.
Implemented using REST API with Typescript, Node.js, Express, and PostgreSQL

# Requirements

- Node.js
- npm package manager
- PostgreSQL server installed on the server.

# Frontend

For front-end implementation Angular framework is used.
For more info see https://angular.io/

# Backend

Express Node.js web application framework.
For more info see https://expressjs.com/

# Database

PostgreSQL database. See sample sql dump under "client-app/src/db" folder (sql-dump.sql).
In this example node-postgres as PostgreSQL client for Node.js is used.

# How to run

1. Setup database. Import the existing sql dump from "client-app/src/db" folder (sql-dump.sql). Use f.e.  PgAdmin UI.

2. To connect to the database update file "client-app/src/db/queris.js" with your database specific information: host, user, name, port etc.

3. To run the server,  open command prompt, go into "client-app/src/db" folder and run: node server.js
Should see this: "Server listening on port 3000"

4. To view the input form and client list from web browser open command prompt, go into "client-app" folder and run: ng serve --open
This will open your default web browser with the existing client list and client input form. See Demo Image.JPG under client-app main folder.