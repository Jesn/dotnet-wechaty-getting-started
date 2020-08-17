.PHONY: all
all : install clean restore build run

.PHONY: install
install:
	echo "install .net core sdk https://docs.microsoft.com/en-us/dotnet/core/install/"

.PHONY: clean
clean:
	dotnet clean

.PHONY: restore
restore:
	dotnet restore

.PHONY: build
build: 
	dotnet build

.PHONY: publish
#publish:
#	dotnet publish -c Release -r linux-x64

.PHONY: run
run:
	dotnet run -project wechaty-getting-started/wechaty-getting-started.csproj