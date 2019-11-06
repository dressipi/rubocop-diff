# rubocop-diff

This github action runs rubocop under 2 differents commits and tells you if you have introduced new offenses or reduced offenses

## Usage

See [action.yml](action.yml)

In order to run rubocop-diff you must have a Gemfile containing all required rubocop gems.

Basic:

```yaml
steps:
- uses: actions/checkout@v1
- name: Set up Ruby 2.6
  uses: actions/setup-ruby@v1
  with:
    ruby-version: 2.6.x
- name: install gems
  run: |
    gem install bundler --no-document
    bundle config --local path vendor/bundle
    bundle install
- uses: dressipi/rubocop-diff
```

## License

The scripts and documentation in this project are released under the [MIT License](LICENSE)
