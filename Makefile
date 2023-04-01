PYTHON_VERSION = 3.10
VENV_NAME = myenv

# python version should be relevant to the 'pyproject.toml'
setup:
	python$(PYTHON_VERSION) -m venv $(VENV_NAME)
	pip install poetry

# The virtualenv will be created inside the project path and vscode will recognize 'select interpreter'
# https://stackoverflow.com/questions/59882884/vscode-doesnt-show-poetry-virtualenvs-in-select-interpreter-option
init:
# poetry config virtualenvs.in-project true
	poetry install
	poetry shell

# copy path of poetry expcept first '\'
# replace in 'Select Intepreter'