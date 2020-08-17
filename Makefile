.PHONY: all
all : install clean restore build publish

.PHONY: install
install:
	wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
	sudo dpkg -i packages-microsoft-prod.deb
	echo  dotnet --version

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
publish:
	dotnet publish -c Release -r linux-x64
	warp-packer --arch linux-x64 --input_dir bin/Release/netcoreapp3.1/linux-x64/publish --exec made --output made

.PHONY: run
run:
	dotnet run