# syntax=docker/dockerfile:1

# docker-mypy - Docker configuration for mypy
# Written in 2025 by Hubert Bielenia <hbielenia@users.noreply.github.com>
# To the extent possible under law, the author(s) have dedicated all copyright and related
# and neighboring rights to this software to the public domain worldwide. This software
# is distributed without any warranty.
# You should have received a copy of the CC0 Public Domain Dedication along with this software.
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

FROM python:3.12-bullseye@sha256:f6d639b794b394cbeb7a9327d5af9976f0e8d61353bcf41916984775c9bbed1a
WORKDIR /usr/src/app
RUN python -m pip install git+https://github.com/python/mypy.git@68b8fa097d080c92d30a429bc74de8acd56caf85
CMD [ "mypy" ]
