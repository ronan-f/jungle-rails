# Jungle

Jungle is amini e-commerce application built with Rails 4.2 to practice working with different technologies.

## Final product

### Homepage

!['Screenshot of homepage'](https://github.com/ronan-f/jungle-rails/blob/master/docs/update%20homepage.png?raw=true)

### Sold Out Items

!['Sold out'](https://github.com/ronan-f/jungle-rails/blob/master/docs/Screen%20Shot%202019-04-19%20at%205.35.19%20PM.png?raw=true)

### Reviews and Description

#### Users can add new reviews, view previous reviews and delete any reviews they have created

!['Reviews'](https://github.com/ronan-f/jungle-rails/blob/master/docs/Screen%20Shot%202019-04-19%20at%205.35.34%20PM.png?raw=true)

### Admin view

!['Admin'](https://github.com/ronan-f/jungle-rails/blob/master/docs/Screen%20Shot%202019-04-19%20at%205.35.48%20PM.png?raw=true)

### Cart view

!['Cart view'](https://github.com/ronan-f/jungle-rails/blob/master/docs/Screen%20Shot%202019-04-19%20at%205.36.06%20PM.png?raw=true)

### Order confirmation

!['Order confimation'](https://github.com/ronan-f/jungle-rails/blob/master/docs/Screen%20Shot%202019-04-19%20at%205.36.29%20PM.png?raw=true)


## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
