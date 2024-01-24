# README

## Setup

```bash
bin/rails db:create
bin/rails db:migrate
bin/rails db:seed
```

## Run

```bash
bin/foreman start -f Procfile.dev
```

[http://localhost:5000](http://localhost:5000)

## Test

```bash
bin/rails test
```

## TODO

- Remove JSON handlers if not needed
- Save filter params in session
- Better filter tests
