REDHAT.ROOT = $(CURDIR)/../../

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk
include $(SDSCDEVEL)/Rules.mk

$(VERSION_INC):
	/bin/echo "VERSION = 1" > $@
 
build:

install:: typical-modulefile-install

clean::
	rm -f $(VERSION_INC)
