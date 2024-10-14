# syntax=docker/dockerfile:1

# docker-mypy - Docker configuration for mypy
# Written in 2024 by Hubert Bielenia <13271065+hbielenia@users.noreply.github.com>
# To the extent possible under law, the author(s) have dedicated all copyright and related
# and neighboring rights to this software to the public domain worldwide. This software
# is distributed without any warranty.
# You should have received a copy of the CC0 Public Domain Dedication along with this software.
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

FROM python:3.11-bullseye@sha256:476e5a29a42407305014dac3288bfbc92f26628843c32da9acc453a1e6bd03bf
WORKDIR /usr/src/app
RUN python -m pip install git+https://github.com/python/mypy.git@570b90a7a368f04c64f60af339d0ac1808c49c15
CMD [ "mypy" ]
