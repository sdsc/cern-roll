NAME           = sdsc-clhep
VERSION        = 2.2.0.5
RELEASE        = 1
PKGROOT        = /opt/cern/clhep

SRC_SUBDIR     = clhep

SOURCE_NAME    = clhep
SOURCE_SUFFIX  = tgz
SOURCE_VERSION = 2.2.0.5
SOURCE_PKG     = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR     = $(SOURCE_VERSION)

TGZ_PKGS       = $(SOURCE_PKG)

RPM.EXTRAS     = AutoReq:No
