# elm-example

This is an effort to show how easy it is to include an Elm application into an existing JavaScript application,
and how the necessary tooling to include it in current front-end build processes already exists.

This makes use of `webpack` and the `elm-webpack-loader` to include the Elm application in the JavaScript code.

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
