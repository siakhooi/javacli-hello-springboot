clean:
	mvn clean
	rm -f siakhooi-java-hello-springboot_*_amd64.deb \
		siakhooi-java-hello-springboot_*_amd64.deb.sha256sum \
		siakhooi-java-hello-springboot_*_amd64.deb.sha512sum

build:
	mvn clean verify
	scripts/shellcheck.sh
	scripts/build-deb.sh
