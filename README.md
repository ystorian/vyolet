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

## Building

### Versioning

The version of Zola and this theme are set in the `generator` metadata of the
generated pages:

```html
<meta name="generator" content="zola 17.2.1 vyolet 0.0.1" />
```

To get the Zola version, the `zola_version` environment variable must be set.
For example add this to your build script:

```shell
export zola_version=$(zola --version)
```

> Note: the `zola_version` environment variable is used in the macro
> `head::generator` in `templates/macros.html`.
