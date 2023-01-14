## GoogliApparatus

### Requirements
- Ruby (3.1.0)
- Bundler (2.1.4)

### Build with bundler
```bash
bundle install
```

### Database migration
```bash
bundle exec rails db:migrate
```

### Database seed
```bash
bundle exec rake db:seed
```

### Run the application
```bash
bundle exec rails server
```
### Deployment
Successful builds of the main branch are deployed to http://googli-ruby.herokuapp.com
