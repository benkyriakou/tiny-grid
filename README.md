# Tiny Grid

## About

Tiny Grid is a tiny SASS library for generating CSS grid classes. Mainly an exercise in writing something with SASS, but if it's useful to you then feel free to give it a go.

## How it works

The library defines the `tiny-grid()` mixin, which takes a map of grids as an argument. Grids are indexed by name, and have two main keys which define the number of columns in the grid and the `grid-gap`:

```scss
@import 'tiny-grid';

$grids: (
  main: (
    columns: 12,
    gap: 1rem,
  ),
  sub: (
    columns: 2,
    gap: 1rem,
  )
);

@include tiny-grid($grids);
```

This will generate a stylesheet like:

```css
.grid-12 {
  display: grid;
  grid-template-columns: repeat(12, 1fr);
  grid-gap: 1rem;
}

.grid-2 {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  grid-gap: 1rem;
}

.push-1 {
  grid-column-start: 2;
}

// Intermediate classes appear here...

.push-11 {
  grid-column-start: 12;
}

.span-1 {
  grid-column-end: span 1;
}

// Intermediate classes appear here...

.span-12 {
  grid-column-end: span 12;
}

```

There are three types of class available:
- The main grid class
- `push-` classes to alter which column a grid item starts at
- `span-` classes to alter the width of a grid item

That's it! See the `index.html` for a basic example grid.

If you want to give your `grid-` classes arbitrary CSS properties, you can do this with the `props` key:

```scss
@import 'tiny-grid';

$grids: (
  main: (
    columns: 12,
    gap: 1rem,
    props: (
      background: purple,
    ),
  ),
  sub: (
    columns: 2,
    gap: 1rem,
  )
);

@include tiny-grid($grids);
```

## Installation

We don't need fancy installers. Copy [this file](https://github.com/benkyriakou/tiny-grid/blob/master/scss/tiny-grid.scss) into your project. Include it in your `main.scss`. Bam. Done.

## Tests

Tests are written using the [True framework](https://github.com/oddbird/true), and can be invoked by installing the npm dependencies with `npm install`, then running `npm test`.
