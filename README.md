# Beertracker

Technological sandbox

## Used techologies

Some of the stuff used:

* [bash](https://www.gnu.org/software/bash/): a posix shell
* [css](https://www.w3.org/Style/CSS/): Cascading Style Sheets, a cascading stylesheet language
* [django](https://www.djangoproject.com/): the only other web framework thas I knom. Great ORM and migration system
* [dj-database-url](https://github.com/kennethreitz/dj-database-url): a library for making easy the configuration of django database
* [docker](https://www.docker.com/): a container engine
* [docker-compose](https://docs.docker.com/compose/): a thing for running group of docker containers
* [git](https://git-scm.com/): a distributed version control system
* [github](https://github.com/): I hate you
* [gevent](http://www.gevent.org/): I have no idea what this is, but I need it for "better performances"
* [gunicorn](https://gunicorn.org/): a wsgi server for python
* [html](https://html.spec.whatwg.org/): a markup language
* [make](https://www.gnu.org/software/make/): "a tool which controls the generation of executables and other non-source files of a program from the program's source files"
* [markdown](https://daringfireball.net/projects/markdown/): a good enough but limited markup language
* [pip](https://pip.pypa.io/en/stable/): the package installer for python
* [postgresql](https://www.postgresql.org/): The World's Most Advanced Open Source Relational Database
* [psycopg2](https://www.psycopg.org/): a postgresql for python
* [python](https://www.python.org/): one of the best programming language ever created
* [ssh](http://www.openssh.com/): a remote secure shell
* [venv](https://docs.python.org/3/library/venv.html): virtual env for python. Python packaging is messy :-/
* [whitenoise](http://whitenoise.evans.io/en/stable/): a library for serving static files from django web apps. 

Yup, at somepoint, someone needed to learn all these stuff to create this totally useless project. This is crazy. And thanks to the great poeple who have created these valuable tools and libraries.


## Development

Get the code source then run `make serve-debug`. Beertracker would be available at [http://localhost:8000/](http://localhost:8000/). The application run in debug mode and changes in the code are applyed in realtime.

You need Docker. For MacOS, follow the procedure [here](https://docs.docker.com/desktop/mac/install/).