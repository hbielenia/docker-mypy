===========
docker-mypy
===========
This repository holds configuration for building `Python's Docker image`_
with `mypy`_ installed.

Download
========
Images built from this repository are available from `Docker Hub`_ as
`hbielenia/mypy`_ and from `GitHub Container Registry`_
as ``ghcr.io/hbielenia/docker-mypy``.

Images
======
The currently built images are:

- ``1.11-py3.12``, also tagged ``1.11-py3.12-bullseye``, ``1.11-py3.12.7``,
  ``1.11-py3.12.7-bullseye``, ``1.11.2-py3.12``, ``1.11.2-py3.12-bullseye``,
  ``1.11.2-py3.12.7``, ``1.11.2-py3.12.7-bullseye``, ``1.11.2``, ``1.11``
  and ``latest``.
- ``1.11-py3.11``, also tagged ``1.11-py3.11-bullseye``, ``1.11-py3.11.10``,
  ``1.11-py3.11.10-bullseye``, ``1.11.2-py3.11``, ``1.11.2-py3.11-bullseye``,
  ``1.11.2-py3.11.10`` and ``1.11.2-py3.11.10-bullseye``.

Usage
=====
Usually, one will want to mount a local directory with Python code
and run ``mypy`` on it. This is done with following command::

  docker run -v "$PWD":/usr/src/app --rm hbielenia/mypy

Check `mypy`_ documentation for information on supported command line flags
and more.

Building locally
================
To build an image on your local machine, you must have `Docker Engine`_
installed and ``docker`` available in your command line. Then, after
cloning this repository, execute in it's directory::

  docker build -t mypy:latest -f 3.11-bullseye.Dockerfile .

This will create an image tagged ``mypy:latest`` in your local Docker image
store. You can change this tag name to whatever you like, as long as it
doesn't conflict with other image tags.

Issues and support
==================
Bug reports and feature requests are collected at `GitHub Issues`_.
For questions and usage help, please use `Discussions`_ instead. Bear in mind
that this project isn't a full time job and no one is under any obligation
to answer. However, there is genuine intent of providing support on a
best effort basis.

If you or your company require more commitment, you can inquire about
paid support at ``13271065+hbielenia@users.noreply.github.com``.

Copyright
=========
This configuration isn't very original, but in case it's copyrightable
now or in the future, in whole or in part, it's released under the terms
of `CC0 1.0 Universal`_ license. This license is pretty much the same as
public domain, but adjusted for countries where author can't simply release
into public domain. See ``COPYING.txt`` for full license text.

.. _Python's Docker image: https://hub.docker.com/_/python
.. _mypy: https://mypy.readthedocs.io/en/stable/index.html
.. _Docker Hub: https://hub.docker.com/
.. _hbielenia/mypy: https://hub.docker.com/r/hbielenia/mypy
.. _GitHub Container Registry: https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry
.. _Docker Engine: https://docs.docker.com/engine/
.. _GitHub Issues: https://github.com/hbielenia/docker-pypa-build/issues
.. _Discussions: https://github.com/hbielenia/docker-pypa-build/discussions
.. _CC0 1.0 Universal: https://creativecommons.org/publicdomain/zero/1.0/
