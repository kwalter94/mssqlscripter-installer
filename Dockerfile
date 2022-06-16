FROM python:3.7-slim

WORKDIR /data

# mssql-scripter has some dependencies on some old libraries
# that aren't available on debian versions after Debian Buster.

# libicu63 is available in Debian Buster
RUN echo "deb http://security.debian.org/debian-security buster/updates main" >> /etc/apt/sources.list
# libssl1.0 is available in Debian stretch
RUN echo "deb http://security.debian.org/debian-security stretch/updates main" >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y curl libffi-dev libunwind8 python-dev libicu63

RUN python -m pip install --upgrade pip
RUN python -m pip install mssql-scripter

ENTRYPOINT [ "python", "-m", "mssqlscripter" ]
