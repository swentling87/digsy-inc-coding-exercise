# Digsy Coding Exercise

## Introduction
**Goal:** This exercise is intended to gauge your base level skills with working on a Ruby on Rails applications.You will be building a very simple Rails application with a few models, controllers, routes, and views.

**Time Allotted**: You have 2 hours from the pre-determined start time to make your final commits to this repository and notify your interviewer

## Installation
This project assumes that you have at least Ruby 1.9.3 running on your machine.

This is seeded with a fully initialized Rails 4.2.1 application. Once you fork this repository, simply run `bundle install` to get up and running.

## Instructions
We will be creating an application to collect feedback from users on suggested actions that are being offered from a (hypothetical) AI, which (hypothetically) would be used to teach the AI to be better. We're just going to be creating the collection part of this.

1. Fork this repository
1. Generate a simple Rails app (version is your choice) that works with the SQL database of your choosing (PostgreSQL preferred, but in the interest of time, SQLite is also acceptable).
1. Create a model for agent actions. These can be things like "Give a call", or "Go out for coffee", etc... You decide what fields are needed, what the GUI should be, and how to store it. The action should have at a minimum an ID, some text, some graphic element, and a link that the agent can click to mark that activity as performed or ignored.
1. Create a view, a route, and controller to create, update, and read a simple list of actions that an agent might want to perform when trying to win a sales client.  This is the admin area for defining and managing potential agent actions.
1. Create a view, route and controller for agents (non-admin users) that displays a random agent action (from step 2-3). The view should let the agent choose to "perform" the action or "ignore" and display another. Try to make these remote API calls rather than client-side JS that stores all of the actions.
1. Create an action service that validates the format of a action, a method that generates a unique link for the action, a method that randomly selects an action to send to the agent, and a  method that logs some data around how it's being used.  The service should be called from the action controller in #4, so feel free to move any non-controller methods into the service. It should have methods to:
  - validate an action somehow
  - log when an action is viewed by the agent
  - log when an action is performed by the agent
  - to get a new action randomly to perform

All actions and logs should be stored in the DB, so create models for them.

If you feel there's too much here, just conquer whatever you feel will end up the best.  Or try it all.  The goal isn't to complete it, but to give us an idea of how you approach and work a project through.

## Delivery
When you are finished, please commit and push your code, submit a Pull Request to this repository, and (optionally) deploy to a free Heroku instance so we can view it in action. Let us know when it's ready, and we'll review soon.

Good luck, and reach out if you have any questions.
