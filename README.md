# Atelier Organizer

### Setup

Start database
```bash
docker compose up --build
```

Install dependencies

```bash
bundle install
rails db:setup
```

### TODO

[x] - Setup daisyUI
[x] - Setup main layout
[] - Migrate old models
[] - Auth using multi tenant and devise