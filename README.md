# Purpose

A quick clonable rails repo to get started with Rails 6

## Getting started

```bash
docker-compose build
docker-compose up
```

Navigate to localhost:3000 and voila!

There are two options for this repo you can clone it:

```bash
git clone https://github.com/ParamagicDev/rails6-skeleton.git
cd rails6-skeleton
```

Change the remote, change the directory name, and youre good to go. <br>

Alternatively, you could use the Github Template feature.

## Whats included

- Dockerfile
- docker-compose.yml - version 3
- Rails - 6.0.1
- Ruby - 2.6.3
- NodeJS - 12.X.X
- Yarn - latest stable version
- PostgresQL - 11.6

## Removing static pages controller / views

A simple `rails destroy controller StaticPages` should revert static pages changes.
You may also have to navigate to `config/routes.rb` to change the root route.
