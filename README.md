
<h1 align="center">Haskell study</h1>

<p align="center">Collection of studies in <a href="https://www.haskell.org">Haskell</a> 📕</p>

<div align="center">
  <a href="https://opensource.org/licenses/MIT">
    <img src="https://img.shields.io/badge/License-MIT-green" alt="MIT License badge" />
  </a>
</div>

## :rocket: Getting started
- Setup the Haskell [Stack](https://docs.haskellstack.org) tool.
- Run tests of any study by running the command `stack test` within the study directory.

## 📂 Structure
All studies are organized as follows:

```
├── .
└── studies
  └── example
    ├── src
    │ └── *.hs
    ├── test
    │ └── Tests.hs
    ├── ...
    └── README.md
```

Each study has a `README` describing the problem, an `src` directory containing the proposed solution, and a `test` directory containing the tests, that asserts if the solution is correct.
