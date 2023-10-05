python -m venv environment
start environment\Scripts\activate.bat
pip install setuptools wheel
pip install twine
python setup.py sdist bdist_wheel
twine upload --repository-url https://upload.pypi.org/legacy/ dist/*