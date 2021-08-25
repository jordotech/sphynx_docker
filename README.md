# Docker Sphynx + Nginx Boilerplate project

- Runs nginx and sphynx containers
- the sphynx container will be running `sphinx-autobuild . ./docs/build/html` and your changes will be picked up and converted to html immediately
- Edit the conf.py to personalize
- To use fontawasome icons in your documentation, use `|fontname|` i.e. `|arrowright|`
------

### Getting Started


1. Fork and clone this repository
2. Navigate to the root directory in your terminal and execute `docker-compose up -d` to start Sphynx.  Open your browser
   to [localhost:9876](http://localhost:9876) to see your local version
3. Make changes to one of the `.rst` files found under the `/docs` directory, sphynx will update the html.  Reload
   the page to see your new changes.
   
Navigate to [how to edit this documentation](http://localhost:9876/howtouse.html) for further instructions

To create/update the pdf version, run `./make_pdf.sh` on the host while the containers are running.
