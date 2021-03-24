# Author: Erik Anderson 
# Date Created: 03/24/2021

default: test

# Lints toolbox-xyce-tools directory recursively
lint:
	pylint toolbox-xyce-tools tests

# Formats toolbox-xyce-tools directory recursively
format:
	yapf -i -r toolbox-xyce-tools tests

# Type checks toolbox-xyce-tools directory recursively
type:
	mypy toolbox-xyce-tools tests

# Runs all tests in tests directory 
test:
	pytest -v tests

# Export anaconda environment
export:
	conda env export --from-history | grep -v "prefix" > environment.yml
