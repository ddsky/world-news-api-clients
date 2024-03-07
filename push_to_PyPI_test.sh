#!/bin/bash
cp python-custom-template/README_pypi.md python
cd python
python3 setup.py sdist bdist_wheel
twine upload --repository-url https://test.pypi.org/legacy/ dist/*
