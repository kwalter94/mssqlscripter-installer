build:
	docker build --no-cache -t kwalter94/mssqlscripter:latest .

install: build
	cp mssql-scripter /usr/local/bin