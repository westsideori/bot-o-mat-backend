# BOT-O-MAT Server

Bot-O-Mat is a fun app that allows users to create robots by name and type to run certain tasks. Just signup, head to Create Robots, and see how many tasks they can complete!

This backend was built with Rails as an API and PostgresSQL database. Authentication and authorization built using JWT for tokens and BCrypt for hashing.

## Installation

Clone the project to your local machine and cd into the project directory. Then, making sure you have Rails and PostgresSQL on your machine, run bundle install in your terminal to ensure all Ruby Gems are installed.

```bash
bundle install
```

Next, run rails db:create in your terminal to create a local development database on your machine using PostgresSQL.

```bash
rails db:create
```

Then, run rails db:migrate in your terminal to migrate all the database tables schema files in order to run our backend.

```bash
rails db:migrate
```

After the files successfully migrate, run rails db:seed to seed the table rows into the backend database. You should see "Done!" print to the terminal if successful.

```bash
rails db:seed
```

Lastly, run rails s to spin up the backend server for the client to talk to. Make sure to use a different port than the client (ex: rails s -p=3001).

```bash
rails s

OR

rails s -p=3001 (or any port other than the one the client uses)
```

## Usage

This application was designed to run with a React frontend.

## Devloped By

Ori Markowitz 2021
