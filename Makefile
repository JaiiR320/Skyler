all: templ
	@go build -o bin/app.exe cmd/main.go
	@./bin/app.exe

templ:
	@templ generate

test:
	@go test -v ./...

watch:
	@tailwind -i input.css -o output.css --watch
	
minify:
	@tailwind -i input.css -o output.css --minify