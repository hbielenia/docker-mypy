# syntax=docker/dockerfile:1

# docker-mypy - Docker configuration for mypy
# Written in 2025 by Hubert Bielenia <hbielenia@users.noreply.github.com>
# To the extent possible under law, the author(s) have dedicated all copyright and related
# and neighboring rights to this software to the public domain worldwide. This software
# is distributed without any warranty.
# You should have received a copy of the CC0 Public Domain Dedication along with this software.
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

FROM python:3.11-bullseye@sha256:4cbbc6b1984dce78ef73e22649423bac56394e9d2eeb7c233c4113aa811b8b6f
WORKDIR /usr/src/app
RUN python -m pip install git+https://github.com/python/mypy.git@68b8fa097d080c92d30a429bc74de8acd56caf85
CMD [ "mypy" ]
