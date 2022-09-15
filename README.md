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
