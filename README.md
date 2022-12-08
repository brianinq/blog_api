# Rails Blog API

This is the blog app to be consumed by the react front end deployed [here]("")

## Tools

- Ruby on Rails
- Active Record
- Postgresql

## Setup

- Ruby version 2.7.4

- System dependencies

  postgress
  bundler

- Configuration

  Clone or download this repository locally
  run the following commands to set up the app

  ```bash
    bundle install
  ```

  Ensure postgress service is running

  ```bash
    rails db:create
    rails db:migrate db:seed
  ```

  With all the requirements set up you can start the server to use the application

  ```bash
    rails s
  ```

  The app is also live [Here](https://blogapp-production-49a6.up.railway.app/)
