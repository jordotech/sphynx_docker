FROM ddidier/sphinx-doc:latest
RUN pip install sphinx_fontawesome
RUN echo "alias make_pdf='sphinx-build -b latex . _build/latex/ && make -C /doc/_build/latex/'" >> /root/.bashrc
RUN echo "alias make_html='sphinx-build -b html . _build/html/'" >> /root/.bashrc
RUN echo "alias make_epub='sphinx-build -b epub . _build/epub/'" >> /root/.bashrc
ENTRYPOINT ["sphinx-autobuild", ".", "./docs/_build/html"]
