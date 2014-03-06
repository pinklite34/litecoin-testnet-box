LITECOIND=litecoind
S1_FLAGS=
S2_FLAGS=
S1=$(LITECOIND) -datadir=1 $(S1_FLAGS)
S2=$(LITECOIND) -datadir=2 $(S2_FLAGS)

start:
	$(S1) -daemon
	$(S2) -daemon
	
generate-true:
	$(S1) setgenerate true
	
generate-false:
	$(S1) setgenerate false
	
getinfo:
	$(S1) getinfo
	$(S2) getinfo
	
stop:
	$(S1) stop
	$(S2) stop

clean:
	rm -rf 1/testnet*
	rm -rf 2/testnet*
