
all: wheels nupic-requirements

setuptools:
	tar xzvf setuptools-2.1.tar.gz
	(cd setuptools-2.1 && python setup.py install --root=${NUPIC_ENV})

pip: setuptools
	tar xzvf pip-1.5.1.tar.gz
	(cd pip-1.5.1 && python setup.py install --root=${NUPIC_ENV})

wheels: pip
	pip install --root=${NUPIC_ENV} wheel
	pip wheel --wheel-dir=${NUPIC_ENV}/python-wheels -r ${NUPIC}/external/common/requirements.txt --allow-external PIL --allow-unverified PIL --allow-external psutil --allow-unverified psutil

requirements:  pip
	pip install --use-wheel --find-links=${NUPIC_ENV}/python-wheels --root=${NUPIC_ENV} --no-deps ${NUPIC_ENV}/python-wheels/*

nupic-requirements: requirements

clean:
	rm -rf setuptools-2.1/
	rm -rf pip-build/
	rm -rf pip-1.5.1/
