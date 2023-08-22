# Icons

Monochrome icons are stored in the `static/icon` directory.
Color logos are stored in the `static/logo` directory.

The monochrome icons are 32x32px SVG files with the **stroke** and/or **fill**
properties set to `currentColor` so that the icon color can be changed with CSS.

For consistency, use these properties:

- stroke-width="3"
- stroke-linejoin="round"
- stroke-linecap="round"

```xml
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
  <path fill="currentColor" ... />
</svg>
```

```xml
<path stroke="currentColor" ...>
``````

Note:

- The size of 32 x 32 pixels was selected since it is 1024 / 32.
- Set either the `fill` or `stroke` property, not both.
