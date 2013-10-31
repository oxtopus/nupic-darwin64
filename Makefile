
all: setuptools pip nupic-requirements

setuptools:
	tar xzvf setuptools-1.0.tar.gz
	(cd setuptools-1.0 && python setup.py install --prefix=${NUPIC_ENV})

pip: setuptools
	easy_install --prefix=${NUPIC_ENV} pip-1.4.1.tar.gz

requirements:
	pip install --install-option="--prefix=${NUPIC_ENV}" --ignore-installed --upgrade --build="${NUPIC_ENV}/pip-build" -r ${NUPIC}/external/common/requirements.txt
	mkdir -p ${NUPIC_ENV}/lib/python${PY_VERSION}/site-packages
	echo "import os; os.environ.get('COV_CORE_SOURCE') and __import__('cov_core_init').init()" > ${NUPIC_ENV}/lib/python${PY_VERSION}/site-packages/init_cov_core.pth

nupic-requirements: requirements

clean:
	rm -rf setuptools-1.0/
	rm -rf pip-build/
