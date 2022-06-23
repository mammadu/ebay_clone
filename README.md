# README

<!-- This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->

## Requirements

- Ruby 3.12
- Postgres 14.3
- Bundler 2.3.7

## Installation

1. clone the repository
2. In the terminal navigate to the root of the cloned repository
3. Configure database as needed
    - If not using Postgresql, edit the "config/database.yml" file to use your desired database
    - this project assumes the database has a role that matches the current $USER. If this is not true, in the terminal run

    ```
    sudo -u postgres createuser --superuser "$USER"
    ```

4. Install dependencies by typing in the terminal ```bundle install```
5. Create the database by typing in the terminal ```bin/rails db:create```

## How to run

1. In the root of the repository, run ```bin/rails server```
2. In your browser, navigate to ```localhost:3000```. You should be able to use the site

## Testing

- in the root directory, run ```bundle exec rspec```

