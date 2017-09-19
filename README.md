# Curling On Rails
I've been looking around for a curling club manager that really fit our club's needs, and haven't found one that quite works to date. This application will start out as a simple league manager, and from there I aim to add functionality for spiels/friendlies, as well as a "storefront" to handle member and league signups. Much more to come!
# Current Functionality
The app is currently about as good as 4 or so spreadsheets. Leagues have games and teams, and teams have players. All CRUD methods are working. The only real fanciness is that creating a league will populate the number of games specified, each spaced a week apart. They can be edited from there. All player creation and edits are done from /leagues/:league_id/teams/:team_id/.
# To-do
* Limit teams to just 4 positions
* add subsitute fields to games
* make it pretty
* add some kind of dashboard with upcoming games
* add new event types (spiels, friendlies, etc)
* add rake tasks
# Dev
* clone the repo
* run `bundle install` to install dependencies
* run `rails db:migrate` to run migrations
* run `rails server` to start up a local server at localhost:3000
