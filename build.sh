rm dist/ec2*
python setup.py sdist bdist_wheel
twine upload --verbose dist/*
