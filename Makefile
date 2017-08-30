
all:
	python3 coin/coin.py

install:
	sudo brew install pygobject --with-python3 gtk+3
	sudo pip3 install requests pyyaml notify2 pyobjc
	sudo cp resources/org.blf.indicator.coin.gschema.xml /usr/share/glib-2.0/schemas/
	sudo glib-compile-schemas --strict /usr/share/glib-2.0/schemas/
