# Vyolet

Zola theme for [ystorian.com](https://ystorian.com).

Built with [Zola](https://www.getzola.org/), leveraging [Bulma](https://bulma.io/) for CSS.

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

The version of Zola, and short git commit of your site repository, are shown in the
metadata of the generated pages:

```html
<meta name="generator" content="zola 17.2.1" />
<meta name="theme" content="vyolet" />
<meta name="commit_id" content="1a2b3c" />
```

To use this feature, set the `zola_version` and `commit_id` environment
variables.

For example add this to your build script:

```shell
export zola_version=$(zola --version)
export commit_id=$(git rev-parse --short HEAD)
```

> Note:
>
> - The environment variables above are used in `templates/macro/head.html`.
> - The `commit_id` is only shown if the site is built from a git repository.
> It is not the commit of the theme repository, but of the site repository.

## License

- **[vyolet](https://github.com/ystorian/vyolet): MIT**
- [bulma](https://github.com/jgthms/bulma): MIT
- [zola](https://github.com/getzola/zola): MIT
- [bulma-pricingtable](https://github.com/Wikiki/bulma-pricingtable): MIT
