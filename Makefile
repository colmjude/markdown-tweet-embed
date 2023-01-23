all:: lint

lint:: black-check flake8

black-check:
	black --diff .
	black --check .

black:
	black .

flake8:
	flake8 .

dist::
	python setup.py sdist bdist_wheel

upload::	dist
	twine upload dist/*
