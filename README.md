

**Install tex on mac so Jupyter Export to PDF works:**

```bash
brew tap homebrew/cask
brew install --cask basictex
eval "$(/usr/libexec/path_helper)"
# Update $PATH to include `/usr/local/texlive/2022basic/bin/universal-darwin`
sudo tlmgr update --self
sudo tlmgr install texliveonfly
sudo tlmgr install xelatex
sudo tlmgr install adjustbox
sudo tlmgr install tcolorbox
sudo tlmgr install collectbox
sudo tlmgr install ucs
sudo tlmgr install environ
sudo tlmgr install trimspaces
sudo tlmgr install titling
sudo tlmgr install enumitem
sudo tlmgr install rsfs
```

to install nbextensions:
```
poetry run jupyter contrib nbextension install --user
poetry run jupyter nbextensions_configurator enable --user
poetry run jupyter nbextension enable codefolding/main

poetry run jupiter notebook 
```

then you have access to this: 

https://jupyter-contrib-nbextensions.readthedocs.io/en/latest/

/Users/mcaro/.jupyter/jupyter_nbconvert_config.py

