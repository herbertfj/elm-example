import React from 'react'
import ReactDOM from 'react-dom'

import ElmApp from './ElmApp'
import Elm from '../../elm/src/Main.elm'

ReactDOM.render(
  <ElmApp module={Elm.Main}/>,
  document.getElementById('app')
)
