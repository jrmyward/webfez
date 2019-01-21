# WebFez

## General Dependencies

* Ruby Version:
* Ruby version: 2.5.3
* Rails: 5.2.x
* Postgresql - current version 10.5
* NodeJS
* Webpacker
* Yarn

## Architecture

Things you may want to cover:

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Development instructions

It's easiest to open a Tmux session with 4 panes. In each pane, run one of the
following:

```
bin/foreman start -f Procfile.dev -p 3000
```
```
bundle exec guard -P livereload
```
```
bundle exec sidekiq
```

The fourth pane can be used to run specs, work on the rails console, etc.

* ...
