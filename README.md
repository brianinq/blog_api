# Rails Blog API

This is the blog app to be consumed by the react front end deployed [here](https://blogfrontend-blush.vercel.app/)

## API Endpoints

| HTTP Verbs | Endpoints | Action |
| --- | --- | --- |
| GET | /blogs| To retrieve all blogs|
| GET | /blogs/:id | REtrieve a single resource along with its associated content |
| GET | /blogs/:id/comments| Retrieve the comments of a particular blog post|
| POST | /blogs | Create a blog post |
| GET | /categories | Feetch all categories |
| POST | /categories | Category |
| DELETE| /blogs/:id | Destroy a blog post and associated dependents|
| DELETE| /blogs/:id/comments/:id | Delete  a comment|
| POST | /login| Authenticate a user session |
| POST | /signup| Create a user and authenticate thei session |
| GET | /profile | To retrieve an authenticated user|
| DELETE | /logout| To destroy a logged in user session|

## Tools

- Ruby on Rails
- Active Record
- Postgresql
- JWT authentication

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
