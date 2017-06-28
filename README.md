# elm-example

This is an effort to show how easy it is to include an Elm application into an existing JavaScript application,
and how the necessary tooling to include it in current front-end build processes already exists.

This makes use of `webpack` and the `elm-webpack-loader` to include the Elm application in the JavaScript code.

## Why use Elm *now*?

1. **It is low-risk!**

   As shown in this repo,
   it is easy to include in small parts of your application,
   slowly replacing certain components
   where Elm's features such as its strong type system and immutability would really shine through.

1. **It is easy to write tests!**

   Although it can be argued that the strong type system will reduce bugs and the number of tests required,
   the `elm-test` package makes it easy to write unit tests in Elm.
   Along with a general strategy to [make impossible states impossible](https://www.youtube.com/watch?v=IcgmSRJHu_8),
   Elm tests can be extremely concise and behavior-focused.

1. **It has cool tooling!**

   Tools like `elm-reactor` and `Debug` module (built into the Elm distribution and `elm-core`) make it easy to debug with features such as state history and (the soon-to-return) time-traveling.
   Additionally, `elm-test` natively supports fuzz testing (see [`ExampleTest.elm`](elm/tests/ExampleTest.elm)) providing generators for many types and the ability to create your own.

1. **It is easy to add to your build pipeline!**

   Existing projects like `elm-webpack-loader` make it seamless to require your entry point in any existing JavaScript file,
   and the `elm-make` output is available for embedding.

## How it works

The magic is all in these three lines in `js/index.js`:

```javascript
import Elm from '../elm/src/Main.elm'

const elmNode = document.getElementById('app')
Elm.Main.embed(elmNode)
```

This way, using Webpack, the Elm app can be included in any present JS framework like React, Angular, etc.

## How to run

All scripts are configured in `package.json`.

To build the bundle:

```
yarn build
```

To run the tests:

```
yarn test
```

To start the dev server:

```
yarn start
```

## Examples

Look under `/examples` for *extremely basic* implementations in different frameworks (React for now!).
