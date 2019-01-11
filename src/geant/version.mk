NAME            = sdsc-geant4
VERSION         = 10.05
RELEASE         = 0
PKGROOT         = /opt/cern/geant4

SRC_SUBDIR      = geant

SOURCE_NAME     = geant4
SOURCE_SUFFIX   = tar.gz
SOURCE_VERSION  = $(VERSION)
SOURCE_PKG      = $(SOURCE_NAME).$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR      = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

G4EMLOW_NAME    = G4EMLOW
G4EMLOW_SUFFIX  = tar.gz
G4EMLOW_VERSION = 7.7
G4EMLOW_PKG     = $(G4EMLOW_NAME).$(G4EMLOW_VERSION).$(G4EMLOW_SUFFIX)
G4EMLOW_DIR     = $(G4EMLOW_NAME)$(G4EMLOW_VERSION)

TAR_GZ_PKGS     = $(SOURCE_PKG) $(G4EMLOW_PKG)

RPM.EXTRAS      = AutoReq:No\nAutoProv:no
RPM.PREFIX      = $(PKGROOT)
