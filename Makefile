.PHONY: all
all: runtime builder
	@echo

.PHONY: runtime
runtime:
	git clone https://github.com/CentOS/CentOS-Dockerfiles.git
	( cd CentOS-Dockerfiles/httpd/centos7 ; docker build --rm --tag goern/httpd-centos7 . )
	rm -rf CentOS-Dockerfiles

.PHONE: builder
builder:
	docker build --rm --tag goern/yeoman-centos7 .

.PHONY: clean
clean:
	docker rmi goern/yeoman-centos7 goern/httpd-centos7
