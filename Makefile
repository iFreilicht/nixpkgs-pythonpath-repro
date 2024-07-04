path:
	@echo PATH=$$PATH

pythonpath:
	@echo PYTHONPATH=$$PYTHONPATH

check:
	python3 -c 'import sys; print(sys.executable)'

run:
	./script.py