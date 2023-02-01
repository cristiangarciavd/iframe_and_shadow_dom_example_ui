setup:
	@echo "Installing dependencies..."
	python -m pipenv install -d
	@echo "Setup Done!"

tests:
	@echo "Executing testing scenarios"
	python -m pipenv run pytest --cache-clear
	@echo "Finished testing."
