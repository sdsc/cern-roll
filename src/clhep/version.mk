NAME           = sdsc-clhep
VERSION        = 2.4.1.0
RELEASE        = 0
PKGROOT        = /opt/cern/clhep

SRC_SUBDIR     = clhep

SOURCE_NAME    = clhep
SOURCE_SUFFIX  = tgz
SOURCE_VERSION = $(VERSION)
SOURCE_PKG     = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR     = $(SOURCE_VERSION)

TGZ_PKGS       = $(SOURCE_PKG)

RPM.EXTRAS     = AutoReq:No\nAutoProv:no
RPM.PREFIX     = $(PKGROOT)
