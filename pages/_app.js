import React from 'react'
import { createGlobalStyle } from 'styled-components'

const App = ({ Component, pageProps }) => (
  <>
    <GlobalStyles />
    <Component {...pageProps} />
  </>
)

const GlobalStyles = createGlobalStyle`
  body {
    margin: 0;
  }
`

export default App
