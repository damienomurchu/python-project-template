# set up virtual environment for project
env/activate:
	@virtualenv -p python3 .venv
	@. ./.venv/bin/activate

# update project dependencies 
env/update: env/activate
	@pip install -r ./src/requirements.txt

# remove virtual environment
env/clean:
	@rm -rf ./.venv

# deactivate virtual environment
env/deactivate:
	@deactivate

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