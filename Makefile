ETCDIR=${DESTDIR}/etc
MODE=754
DIRMODE=755

all: files

install: all

create-dir: 
	install -d -m ${DIRMODE}  ${ETCDIR}/rc.d

files: create-dir
	install -d -m ${MODE} rc ${ETCDIR}/
	install -d -m ${MODE} rc.conf ${ETCDIR}/ 
	install -d -m ${MODE} rc.fix ${ETCDIR}/
	install -d -m ${MODE} rc.local ${ETCDIR}/
	install -d -m ${MODE} rc.modules ${ETCDIR}/
	install -d -m ${MODE} rc.multi ${ETCDIR}/
	install -d -m ${MODE} rc.shutdown ${ETCDIR}/
	install -d -m ${MODE} rc.single ${ETCDIR}/
	install -d -m ${MODE} inittab ${ETCDIR}/
	install -d -m ${MODE} rc.d/crond ${ETCDIR}/rc.d/
	install -d -m ${MODE} rc.d/lo ${ETCDIR}/rc.d/
	install -d -m ${MODE} rc.d/net ${ETCDIR}/rc.d/
	install -d -m ${MODE} rc.d/sshd ${ETCDIR}/rc.d/
	install -d -m ${MODE} rc.d/sysklogd ${ETCDIR}/rc.d/

uninstall:
	rm -rf ${ETCDIR}/rc
	rm -rf ${ETCDIR}/rc.conf
	rm -rf ${ETCDIR}/rc.fix
	rm -rf ${ETCDIR}/rc.local
	rm -rf ${ETCDIR}/rc.modules
	rm -rf ${ETCDIR}/rc.multi
	rm -rf ${ETCDIR}/rc.shutdown
	rm -rf ${ETCDIR}/rc.single
	rm -rf ${ETCDIR}/rc.d
	rm -rf ${ETCDIR}/inittab

.PHONY: all create-dir install files  uninstall
