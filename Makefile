all: dependencies

dependencies:
	rm -rf .venv
	python3 -m venv .venv
	# . in place of source to make makefile pass it to the shell
	. .venv/bin/activate; \
		python -m pip install -U pip; \
		pip install -r requirements.txt
