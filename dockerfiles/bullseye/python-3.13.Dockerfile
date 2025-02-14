# syntax=docker/dockerfile:1

# docker-mypy - Docker configuration for mypy
# Written in 2024 by Hubert Bielenia <hbielenia@users.noreply.github.com>
# To the extent possible under law, the author(s) have dedicated all copyright and related
# and neighboring rights to this software to the public domain worldwide. This software
# is distributed without any warranty.
# You should have received a copy of the CC0 Public Domain Dedication along with this software.
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

FROM python:3.13-bullseye@sha256:43be904e1e1ea9405510c9a6941382afd530721b36befabe063a224732a77873
WORKDIR /usr/src/app
RUN python -m pip install git+https://github.com/python/mypy.git@9397454fb5aead107461b089e7cf190bf538d20a
CMD [ "mypy" ]
