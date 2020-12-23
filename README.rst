Start python project
=========================================

Shell script to start a python project from scratch with a common project structure setup.

Dependencies
------------

* Python
* Git
* Pyenv
* Poetry

Adding start_project as a local command
------------

Perform the following steps in order to add `start_project` as a local command:

.. code-block:: bash

    $ chmod a+x start_project  # give execute permission to all users
    $ mkdir $HOME/.bin  # create a local bin directory
    $ cp start_project $HOME/.bin/  # copy command to your local bin directory
    $ echo 'export PATH="$HOME/.bin:$PATH"' >> $HOME/.bashrc  # add local bin to your PATH permanently
    $ bash  # refresh terminal

Using start_project
------------

Starting a project with unit testing and data directories:

.. code-block:: bash

    $ start_project -name project_example --data

Getting help:

.. code-block:: bash

    $ start_project -h

