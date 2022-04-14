# execute testsuite
test:
	@pytest .

# execute and watch tests
test/watch:
	@ptw -- --last-failed --new-first

# setup pre-commit linting hooks
dev/setup-linting:
	@pre-commit install

# lint code manually
dev/lint:
	@black ./src
