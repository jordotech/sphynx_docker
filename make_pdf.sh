#!/bin/bash
if [ -n "$1" ]; then
    VERSION=${1}
fi
rm -rf docs/_build/latex
docker exec -t docs_sphinx sphinx-build -b latex . _build/latex/
docker exec -t docs_sphinx make -C /doc/_build/latex/
cp -rfp docs/_build/latex/*.pdf docs/_build/html/_static/attachments/
cp -rfp docs/_build/latex/*.pdf docs/_static/attachments/
rm -rf docs/_build/latex
