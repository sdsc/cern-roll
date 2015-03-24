PKGROOT		= /opt/cern/clhep
NAME		= clhep
VERSION		= 2.2.0.5
RELEASE		= 0
TARBALL_POSTFIX	= tgz

SRC_SUBDIR	= clhep

SOURCE_NAME     = clhep
SOURCE_VERSION  = 2.2.0.5
SOURCE_SUFFIX   = tar.gz
SOURCE_PKG      = $(SOURCE_NAME)$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR      = $(SOURCE_VERSION)

TGZ_PKGS = $(SOURCE_NAME)-$(SOURCE_VERSION).$(TARBALL_POSTFIX)
RPM.EXTRAS         = AutoReq:No
