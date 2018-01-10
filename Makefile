# ============================================================
#  Author: Chu-Siang Lai / chusiang (at) drx.tw
#  Blog: http://note.drx.tw
#  Filename: Makefile
#  Modified: 2018-01-10 15:07
#  Description: Do something with make.
# =========================================================== 

.PHONY: main pull retag_latest

main: pull

# Only download the docker image.
pull:
	docker pull chusiang/ansible
	docker pull chusiang/ansible:2.3
	docker pull chusiang/ansible:2.4

# Retag and push the latest tag.
retag_latest:
	-sh bin/retag_latest.sh

