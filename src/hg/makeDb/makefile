# Build all directories in makeDb 

kentSrc = ../..

include ${kentSrc}/inc/localEnvironment.mk
include ${kentSrc}/inc/common.mk

# List of directories to build for userApps
UTILS_APPLIST = \
	hgFindSpec \
	hgLoadBed \
	hgLoadOut \
	hgGcPercent \
	hgLoadWiggle \
	hgTrackDb \
	ldHgGene

# List of directories to build of interest only at UCSC
DIRS = \
	hgAar \
	hgAddLiftOverChain \
	hgBbiDbLink \
	hgClonePos \
	hgCountAlign \
	hgCtgPos \
	hgDeleteChrom \
	hgExperiment \
	hgExtFileCheck \
	hgFakeAgp \
	hgGeneBands \
	hgGenericMicroarray \
	hgPar \
	hgGoldGapGl \
	hgKgGetText \
	hgKgMrna \
	hgKnownMore \
	hgKnownMore.oo21 \
	hgLoadBlastTab \
	hgLoadChain \
	hgLoadChromGraph \
	hgLoadGenePred \
	hgLoadItemAttr \
	hgLoadMaf \
	hgLoadMafFrames \
	hgLoadNet \
	hgLoadPsl \
	hgLoadSeq \
	hgLoadSample \
	hgLoadSqlTab \
	hgMapMicroarray \
	hgMedianMicroarray \
	hgNibSeq \
	hgPepPred \
	hgRatioMicroarray \
        hgDropSplitTable \
        hgRenameSplitTable \
	hgSanger20 \
	hgSanger22 \
	hgStanfordMicroarray \
	hgStsAlias \
	hgStsMarkers \
	hgTomRough \
	hgTpf \
	hgTraceInfo \
	hgWaba \
	hgMrnaRefseq \
	schema \
	tfbsConsLoc \
	tfbsConsSort \
	outside \
        trackDbRaFormat \
	trackDbPatch

USE_DIRS = $(DIRS) $(UTILS_APPLIST)

all: $(USE_DIRS:%=%.all)
%.all:
	cd $* && echo $* && $(MAKE)

userApps: $(UTILS_APPLIST:%=%.userApp)
	cd schema/dbSnoop  && echo schema/dbSnoop && $(MAKE)

%.userApp:
	cd $* && echo $* && $(MAKE)

clean::
	cd hgTomRough && ${MAKE} clean
