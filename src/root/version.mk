NAME               = root
VERSION            = 5.34.11
RELEASE            = 1
PKGROOT            = /opt/cern/root

SRC_SUBDIR         = root

SOURCE_NAME        = $(NAME)
SOURCE_VERSION     = $(VERSION)
SOURCE_SUFFIX      = tar.gz
SOURCE_PKG         = $(SOURCE_NAME)_v$(SOURCE_VERSION).source.$(SOURCE_SUFFIX)
SOURCE_DIR         = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

TAR_GZ_PKGS        = $(SOURCE_PKG)
