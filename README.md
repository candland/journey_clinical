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

[https://localhost:5000](https://localhost:5000)

## Test

```bash
bin/rails test
```

## TODO

- Authentication for edits / creates OR remove them
- Remove JSON handlers if not needed
- Save filter params in session
- Better filter tests
