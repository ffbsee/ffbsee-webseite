[![Build Status](https://travis-ci.org/ffbsee/ffbsee-webseite.svg?branch=master)](https://travis-ci.org/ffbsee/ffbsee-webseite)
![Freifunk Bodensee](https://freifunk-bodensee.net/images/see.svg "FFBSee")

 Freifunk Bodensee - Webseite
============================
Die Webseite der Freifunk Community [Freifunk Bodensee](https://ffbsee.net).

 Lektor CMS:
------------
Das CMS für diese Webseite ist [Lektor](https://www.getlektor.com/).
Die Installationsanleitung gibt es [hier](https://www.getlektor.com/downloads/).
Lektor ist auch als Python Modul verfügbar und kann mit ``python2 -m lektor`` verwendet werden.
Auch die Installation über pip ist möglich:

```bash
virtualenv venv
. venv/bin/activate
pip3 install lektor
```

Zum Starten von Lektor muss man mit der Komandozeile in das root Verzeichnis der Webseite gehen
und dort mit dem Befehl ``lektor server`` startet man Lektor und öffnen auf 127.0.0.1 den Port 5000 über den die Webseite
bearbeitbar ist. Die Versionskontrolle der Webseite findet über Git statt. Daher wenn möglich Bilder erst
bearbeiten, bevor diese Veröffentlicht werden!

You can use ``make`` to install all needed packages:

```bash
make install
```

 Zur neuen Webseite Beitragen:
------------------------
 1. Dieses Repository Forken oder einen neuen Branch machen (übers GitHub Interface)
 2. Geforktes Repository Clonen (``git lfs clone https://github.com/<Your_Name>/webseite.git ffbsee-webseite``)
 3. Öffne deine Komandozeile im geklonten Repository-Fork (``cd ffbsee-webseite``)
 4. Lektor starten (``python2 -m lektor server`` oder ``lektor server``)
 5. Webseite updaten... (``http://localhost:5000/``)
 6. Lektor Beenden (``Strg. + C``)
 7. Änderungen commiten (``git add --all; git commit -m "An der Webseite habe ich _____ geändert"``)
 8. Änderungen hochladen (``git push``)
 9. Pull-Request Stellen (übers GitHub Interface)


 Bilder und große Dateien
---------------------------
Für große Dateien haben wir angefangen auf [git-lfs](https://git-lfs.github.com/) zu setzen. Hierbei werden große Dateien nicht mehr ganz so schlimm in die History des git eingebaut.
Das war mit mehreren MB großen Bildern schon schlimm, aber noch verkraftbar. Mit größeren Videos aber... Sollte man das halt echt nicht direkt ins git werden!

Zur verwendung von git-lfs muss die git-lfs command line extention installiert sein!
Die geschieht auf den gängigsten Platformen zB. mit:

```bash
sudo apt install git-lfs
```
oder
```bash
sudo pacman -S git-lfs
```
 
 Design:
----------
Design based on [pixelarity.com](https://pixelarity.com/?ref=9477955687)


