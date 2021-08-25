FROM ddidier/sphinx-doc:2.4.4-3
RUN pip install sphinx_fontawesome sphinx-copybutton==0.2.12
RUN echo "alias make_pdf='sphinx-build -b latex . _build/latex/ && make -C /doc/_build/latex/ && cp /doc/_build/latex/Accruent.pdf /doc/_build/html/accruent.pdf'" >> /root/.bashrc
RUN echo "alias make_html='sphinx-build -b html . _build/html/'" >> /root/.bashrc
RUN echo "alias make_epub='sphinx-build -b epub . _build/epub/'" >> /root/.bashrc
#ENTRYPOINT ["sphinx-autobuild", ".", "./docs/_build/html"]
