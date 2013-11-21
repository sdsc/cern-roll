NAME              = geant
VERSION           = 4.9.6.p02
RELEASE           = 1
PKGROOT           = /opt/cern/geant

SRC_SUBDIR        = geant

GEANT_NAME        = $(NAME)
GEANT_VERSION     = $(VERSION)
GEANT_SUFFIX      = tar.gz
GEANT_PKG         = $(GEANT_NAME)$(GEANT_VERSION).$(GEANT_SUFFIX)
GEANT_DIR         = $(GEANT_PKG:%.$(GEANT_SUFFIX)=%)

G4EMLOW_NAME       = G4EMLOW
G4EMLOW_VERSION    = 6.32
G4EMLOW_SUFFIX     = tar.gz
G4EMLOW_PKG        = $(G4EMLOW_NAME).$(G4EMLOW_VERSION).$(G4EMLOW_SUFFIX)
G4EMLOW_DIR        = $(G4EMLOW_PKG:%.$(G4EMLOW_SUFFIX)=%)

TAR_GZ_PKGS        = $(GEANT_PKG) $(G4EMLOW_PKG)
