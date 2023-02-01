# Introduction 
This is a project meant to introduce myself into interacting with iFrames and 
Shadow DOM using selenium

# Build and Test
Using the Makefile on the root directory, the package can be managed to:
1) make setup : package setup 
(if it does not worf for you, try commands:
pip install pipenv
pipenv install -d
)
2) make static_code_analysis : set a full analysis on the code status
3) make all_test : run all tests
4) make test : run tagged tests and create report file
5) make report : see the report

Configuration files: configuration.json and environment.json
Extra configuration:
- Makefile to set tests tags
- pytest.ini to add new testing tags
- log.ini to set logger level and configurations

# Contribute
New request methods can be added to the package, for Trello API or another API.
Use the Request Manager in order to perform a better generalization.

New test cases can be added in tests/features/api with the common steps
