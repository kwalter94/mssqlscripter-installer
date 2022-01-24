build:
	docker build --no-cache -t mssql-scripter .

install: build
	cp mssql-scripter /usr/local/bin