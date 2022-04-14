# [application]

[application] is a [application-type] to [problem(s)-that-application-solves].


## Prerequisites

- python3
- pip3
- virtualenv
  - used to maintain a clean local development environment
- make
  - used for quality of life Makefile targets


## Run <application>


## Documentation


## Development


### Testing

Tests are located in `tests` and can be run with:

```shell
# run tests
make test

# run tests in watch mode for tdd-style development
make test/watch
```


### Linting

To have your code linted (`flake8`) and automatically corrected (`black`) before you commit, set up a git pre-commit hook by:

```shell
make dev/setup-linting
```

Alternately you can `black` automatically correct your code:

```shell
make dev/lint
```
