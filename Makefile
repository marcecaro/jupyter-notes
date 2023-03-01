
notebook:
	poetry run jupyter lab --notebook-dir=./notes

html:
	rm -rf ./html/*.html
	cd html; poetry run jupyter nbconvert  --config ./etc/nbconvert_config.py  --embed-images --to html --template-file toc2.tpl ../notes/*.ipynb;cd -
	mv -v ./notes/*.html ./html/

.PHONY: html notebook
