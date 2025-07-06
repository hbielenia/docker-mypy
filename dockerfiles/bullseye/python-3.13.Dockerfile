# syntax=docker/dockerfile:1

# docker-mypy - Docker configuration for mypy
# Written in 2025 by Hubert Bielenia <hbielenia@users.noreply.github.com>
# To the extent possible under law, the author(s) have dedicated all copyright and related
# and neighboring rights to this software to the public domain worldwide. This software
# is distributed without any warranty.
# You should have received a copy of the CC0 Public Domain Dedication along with this software.
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

FROM python:3.13-bullseye@sha256:7ab8844f3427d44da3eec7f63a078cc6bf60127bb632418e1fad18569199a25d
WORKDIR /usr/src/app
RUN python -m pip install git+https://github.com/python/mypy.git@9e72e9601f4c2fb6866cfec98fc40a31c91ccdb0
CMD [ "mypy" ]
