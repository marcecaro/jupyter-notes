
notebook:
	poetry run jupyter lab --notebook-dir=./notes

html:
	rm -rf ./html/*.html
	cd html; poetry run jupyter nbconvert  --config ./etc/nbconvert_config.py --to html_toc ../notes/*.ipynb;cd -
	mv -v ./notes/*.html ./html/

.PHONY: html notebook
