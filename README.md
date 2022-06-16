# Why does this exist?

Microsoft's [mssql-scripter](https://github.com/microsoft/mssql-scripter/) fails
to run on on newer linux distributions having versions of openssl greater than
1.0. Refer to issue no. [236](https://github.com/microsoft/mssql-scripter/issues/236)
on the mssql-scripter repository. This repository packages the solution provided.

## Installation

Build it yourself:

```sh
# Install wrapper script for running the docker image
sudo make install

# Run as:
mssql-scripter -d AdventureWorks -U SA -S 172.17.0.1 # Use 172.17.0.1 instead localhost as this is running within docker
```
