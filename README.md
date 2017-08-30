# Coindicator

![Coin Price logo](https://raw.github.com/nilgradisnik/coinprice-indicator/master/resources/logo_124px.png)

Coindicator is a cryptocurrency (Bitcoin etc) price indicator applet for Mac OSX. It shows latest 24 hour price and also bid, high low, ask prices from the indicator menu.

Right now it supports the following exchanges

* [Kraken](https://www.kraken.com)
* [Bitstamp](https://www.bitstamp.net)

Exchanges can be switched from the menu. Feel free to [contact me](mailto:sander.vandemoortel@gmail.com) to implement your favorite bitcoin exchange.

Coindicator is ported to Mac OSX from [Nil Gardisnik
's Coinprice Indicator for Ubuntu Linux](https://github.com/nilgradisnik/coinprice-indicator)

## Requirements
Should work on a standard Mac OSX installation with python3 and pip3 installed. Using gi, gtk, requests, pyyaml, notify2 libraries.

Install python dependencies and install [GSettings schema](https://developer.gnome.org/gio/2.32/glib-compile-schemas.html) by running the following command
```
 make install
```

## Running
To run the indicator with the default settings or with the previous settings, type `make` to run and the indicator should appear in the notification area. Alternatively, you can run `python3 coin/coin.py`.

## Configuration
Coin.py takes two parameters to configure the instance(s).

`python3 coin/coin.py asset=kraken:XXBTZEUR:30` will launch a single indicator for the asset pair XBT/EUR on the Kraken exchange with a refresh rate of 30 seconds.

`python3 coin/coin.py file=startmany.yaml` will read startmany.yaml from the `coin` directory and start an indicator for each configuration it finds in there. Edit `startmany.yaml` to configure the exchanges, currency pairs and refresh rates for each instance.

![Screenshot](https://raw.githubusercontent.com/nilgradisnik/coinprice-indicator/master/resources/screenshot.png)
