#!/bin/sh

# Create virtual environment
python3 -m venv test_web
# Enter virtual environment
source test_web/bin/activate
# Install all python plugin needed
pip install -r requirement.txt
# Execute test_sample.py and generate allure report
pytest ./test_web/test_sample.py --alluredir=./test_web/allure-results
# Open allure report
allure serve ./test_web/allure-results