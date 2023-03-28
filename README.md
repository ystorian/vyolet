# Vyolet

Ystorian's web site main theme.

Built with [Zola](https://www.getzola.org/), leveraging [Bulma](https://bulma.io/).

## Dependencies

### Bulma

Add the Bulma repo in `vendor/bulma`, and keep only the `sass` subdirectory.

```shell
git submodule add git@github.com:jgthms/bulma.git vendor/bulma
cd vendor/bulma
git sparse-checkout init --cone
git sparse-checkout set sass
```

## Theming

Colors are defined in:

- `assets/sass/_variables.scss`
- `static/appicon/icon.svg`
- `static/appicon/manifest.json`

When `icon.svg` is modified, icons must be regenerated with `./update-appicon.sh`.
