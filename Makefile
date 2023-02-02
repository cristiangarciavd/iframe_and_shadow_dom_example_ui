setup:
	@echo "Installing dependencies..."
	python -m pipenv install -d
	@echo "Setup Done!"

tests:
	@echo "Executing testing scenarios"
	python -m pipenv run robot -d reports test
	@echo "Finished testing."

tagged_tests:
	@echo "Executing test by TAG: $(TAGS)"
	python -m pipenv run robot -i $(TAGS) -d reports test
	@echo "Tests done"