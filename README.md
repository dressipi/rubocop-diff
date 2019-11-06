# rubocop-diff

This github action runs rubocop under 2 differents commits and tells you if you introduced new offences or reduced offences

## Usage

See [action.yml](action.yml)

Basic:

```yaml
steps:
- uses: actions/checkout@v1
- name: Set up Ruby 2.6
  uses: actions/setup-ruby@v1
  with:
    ruby-version: 2.6.x
- uses: dressipi/rubocop-diff
```

## License

The scripts and documentation in this project are released under the [MIT License](LICENSE)
