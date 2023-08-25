.PHONY: clean build upload

clean:
	@echo "Cleaning up distribution directories..."
	@rm -f dist/ec2*

build: clean
	@echo "Building source and wheel distribution..."
	@python setup.py sdist bdist_wheel

upload: build
	@echo "Uploading distributions using twine..."
	@twine upload --verbose dist/*
