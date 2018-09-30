[![Build Status](https://travis-ci.org/ffbsee/webseite.svg?branch=master)](https://travis-ci.org/ffbsee/webseite)
![Freifunk Bodensee](https://freifunk-bodensee.net/lib/tpl/dokuwiki-template/images/logo.svg "FFBSee")

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
pip install lektor
```

Zum Starten von Lektor muss man mit der Komandozeile in das root Verzeichnis der Webseite gehen
und dort mit dem Befehl ``lektor server`` startet man Lektor und öffnen auf 127.0.0.1 den Port 5000 über den die Webseite
bearbeitbar ist. Die Versionskontrolle der Webseite findet über Git statt. Daher wenn möglich Bilder erst
bearbeiten, bevor diese Veröffentlicht werden!


 Zur neuen Webseite Beitragen:
------------------------
 1. Dieses Repository Forken oder einen neuen Branch machen (übers GitHub Interface)
 2. Geforktes Repository Clonen (``git clone https://github.com/<Your_Name>/toolbox-webseite.git``)
 3. Öffne deine Komandozeile im geklonten Repository-Fork (``cd toolbox-webseite``)
 4. Lektor starten (``python2 -m lektor server``)
 5. Webseite updaten... (``http://localhost:5000/``)
 6. Lektor Beenden (``Strg. + C``)
 7. Änderungen commiten (``git add --all; git commit -m "An der Webseite habe ich _____ geändert"``)
 8. Änderungen hochladen (``git push``)
 9. Pull-Request Stellen (übers GitHub Interface)


 Design:
----------
Design based on [pixelarity.com](https://pixelarity.com/?ref=9477955687)


