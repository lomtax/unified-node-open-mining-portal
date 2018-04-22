DASHD=digitalcoind
DASHGUI=digitalcoin-qt
DASHCLI=digitalcoin-cli
B1=-datadir=scrypt
B2=-datadir=sha256
B3=-datadir=x11
BLOCKS=1
ADDRESS=
AMOUNT=
ACCOUNT=

start:
	$(DASHD) $(B1) -algo=scrypt
	$(DASHD) $(B2) -algo=sha256
	$(DASHD) $(B3) -algo=x11

start-gui:
	$(DASHGUI) $(B1) &
	$(DASHGUI) $(B2) &
	$(DASHGUI) $(B3) &

getinfo:
	$(DASHCLI) $(B1) getinfo
	$(DASHCLI) $(B2) getinfo
	$(DASHCLI) $(B3) getinfo

getinfo_scrypt:
	$(DASHCLI) $(B1) getinfo
getinfo_sha256:
	$(DASHCLI) $(B2) getinfo
getinfo_x11:
	$(DASHCLI) $(B3) getinfo

getmininginfo:
	$(DASHCLI) $(B1) getmininginfo
	$(DASHCLI) $(B2) getmininginfo
	$(DASHCLI) $(B3) getmininginfo

getmininginfo_scrypt:
	$(DASHCLI) $(B1) getmininginfo
getmininginfo_sha256:
	$(DASHCLI) $(B2) getmininginfo
getmininginfo_x11:
	$(DASHCLI) $(B3) getmininginfo


address_scrypt:
	$(DASHCLI) $(B1) getnewaddress $(ACCOUNT)
address_sha256:
	$(DASHCLI) $(B2) getnewaddress $(ACCOUNT)
address_x11:
	$(DASHCLI) $(B3) getnewaddress $(ACCOUNT)

stop:
	$(DASHCLI) $(B1) stop
	$(DASHCLI) $(B2) stop
	$(DASHCLI) $(B3) stop


