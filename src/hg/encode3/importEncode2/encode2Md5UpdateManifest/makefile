include ../../../../inc/common.mk

L += ${MYSQLLIBS} -lm
MYLIBDIR = ../../../../lib/${MACHTYPE}
MYLIBS =  ${MYLIBDIR}/jkhgap.a ${MYLIBDIR}/jkweb.a

A = encode2Md5UpdateManifest
O = encode2Md5UpdateManifest.o

encode2Md5UpdateManifest: ${O} ${MYLIBS}
	${CC} ${COPT} -o ${DESTDIR}${BINDIR}/${A}${EXE} $O ${MYLIBS} $L
	${STRIP} ${DESTDIR}${BINDIR}/${A}${EXE}
	scp ${DESTDIR}${BINDIR}/${A}${EXE} encodedcc.sdsc.edu:bin/x86_64/

compile:: ${O}
	${CC} ${COPT} -o ${A}${EXE} ${O} ${MYLIBS} $L

clean::
	rm -f ${A}${EXE} ${O}
