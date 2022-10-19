.PHONY: clean run

default: run

run: venv
	. venv/bin/activate; python3 get.py

venv: venv/bin/activate

venv/bin/activate: requirements.txt
	test -d venv || python3 -m venv venv
	. venv/bin/activate; pip3 install -Ur requirements.txt
	touch venv/bin/activate

clean:
	rm -rf venv