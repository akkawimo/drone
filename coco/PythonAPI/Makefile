all:
    # install pycocotools locally
	python setup.py build_ext --inplace
	rm -rf build
	python3 setup.py build_ext --inplace
install:
	# install pycocotools to the Python site-packages
	python setup.py build_ext install
	rm -rf build
	python3 setup.py build_ext install
	rm -rf build
	
