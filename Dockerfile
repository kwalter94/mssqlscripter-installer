FROM python:3.7-slim

# libicu63 is available from this source
RUN echo "deb http://security.debian.org/debian-security buster/updates main" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y curl libffi-dev libunwind8 python-dev libicu63

RUN curl "http://security.debian.org/debian-security/pool/updates/main/o/openssl1.0/libssl1.0.2_1.0.2u-1~deb9u6_amd64.deb" > libssl1.0.2-amd64.deb
RUN dpkg -i "libssl1.0.2-amd64.deb"

RUN python -m pip install --upgrade pip
RUN python -m pip install mssql-scripter

ENTRYPOINT [ "mssql-scripter" ]
