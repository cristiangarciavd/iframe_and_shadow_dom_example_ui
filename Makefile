setup:
	@echo "Installing dependencies..."
	python -m pipenv install -d
	@echo "Setup Done!"

tests:
	@echo "Executing testing scenarios"
	python -m pipenv run robot -d reports test
	@echo "Finished testing."
