NAME           = sdsc-root
VERSION        = 6.02.05
RELEASE        = 3
PKGROOT        = /opt/cern/root

SRC_SUBDIR     = root

SOURCE_NAME    = root
SOURCE_SUFFIX  = tar.gz
SOURCE_VERSION = $(VERSION)
SOURCE_PKG     = $(SOURCE_NAME)_v$(SOURCE_VERSION).source.$(SOURCE_SUFFIX)
SOURCE_DIR     = $(SOURCE_NAME)-$(SOURCE_VERSION)

TAR_GZ_PKGS    = $(SOURCE_PKG)

RPM.EXTRAS     = AutoReq:No\n%define         __prelink_undo_cmd     %{nil}\n%define __os_install_post /usr/lib/rpm/brp-python-bytecompile\nAutoProv:no

RPM.PREFIX     = $(PKGROOT)
