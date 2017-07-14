# README

## Clipboard - Mock-Up Rails App

### Description

During my third week at Wyncode,  I created a mock-up of a design called "Clipboard" using HTML and CSS. While learning Rails, one of our assignments was to turn that mock-up into a Rails app that met certain user stories. Here it is!

The goal was to met the following features:

As a User: I want to: log in
So that: only I can view and edit my designs

As a User: I want to: update a design title
and: upload/update a design image
and: update a design price
So that: my viewers see accurate information

As a User: I want to be able to update my profile
and: update my username
So that: I can keep my profile up to date

As a User: I want to be able to favorite a design by clicking the star
So that: I can keep favorites

### Installation

 Enter the following commands into your terminal to clone and set-up the project.


To clone the project into your computer (with HTTPS):
 ```bash

git clone https://github.com/StephRicardo/clipboard-mockup-app.git


 ```

 Enter the newly created project with `cd clipboard-mockup-app` and install gems with:
 ```bash

bundle install

```

Create the database and run the migrations needed with the following:
```bash

rails db:create
rails db:migrate

```

Run the server for the site with:

```bash

rails s

```

### Usage
After typing `rails s` into your terminal, you can visit localhost:3000 in your browser to view the site and use it!
