
all:
	python3 coin/coin.py

install:
	sudo pip3 install gi requests pyyaml notify2
	sudo cp resources/org.blf.indicator.coin.gschema.xml /usr/share/glib-2.0/schemas/
	sudo glib-compile-schemas --strict /usr/share/glib-2.0/schemas/
