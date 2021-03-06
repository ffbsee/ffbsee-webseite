[![Build Status](https://travis-ci.org/ffbsee/ffbsee-webseite.svg?branch=master)](https://travis-ci.org/ffbsee/ffbsee-webseite)
![Freifunk Bodensee](https://freifunk-bodensee.net/images/see.svg "FFBSee")

 Freifunk Bodensee - Webseite
============================
Dieses git repository enthält die Webseite der Freifunk Community [Freifunk Bodensee (ffbsee)](https://ffbsee.net).

 Lektor CMS:
------------
Das CMS für diese Webseite ist [Lektor](https://www.getlektor.com/).
Die Installationsanleitung gibt es [hier](https://www.getlektor.com/downloads/).
Lektor ist auch als Python Modul verfügbar und kann mit ``python3 -m lektor`` verwendet werden.
Mit dem mitgelieferten Makefile ist die Installation am einfachsten:

```bash
make install
```

Zum Starten von Lektor muss man mit der Komandozeile in das root Verzeichnis der Webseite gehen.
Dort wird mit dem Befehl ``make server`` Lektor gestartet, öffnen auf 127.0.0.1 den Port 5000 und erlaubt dort die Bearbeitung der Freifunk Bodensee Webseite.
Die Versionierung der Webseite findet über git statt. Daher wenn möglich Bilder erst bearbeiten, bevor diese Veröffentlicht werden!

 Zur neuen Webseite Beitragen:
------------------------
 1. Dieses Repository Forken oder einen neuen Branch machen (übers GitHub Interface)
 2. Geforktes Repository Clonen (``git lfs clone https://github.com/<Your_Name>/ffbsee-webseite.git``)
 3. Öffne deine Komandozeile im geklonten Repository-Fork (``cd ffbsee-webseite``)
 4. Lektor starten (``make install`` oder ``python3 -m lektor server``)
 5. Webseite updaten... (``http://localhost:5000/``)
 6. Lektor Beenden (``Strg. + C``)
 7. Änderungen commiten (``git -a commit -m "An der Webseite habe ich _____ geändert"``)
 8. Änderungen hochladen (``git push``)
 9. Pull-Request stellen (übers GitHub Interface)


 Bilder und große Dateien
---------------------------
Für große Dateien setzen wir auf [git-lfs](https://git-lfs.github.com/). Die Bilder und Videos sollten in einer für die Webseite einbindung sinnvollen größe in git gespeichert werden (Ladezeiten).
Zur verwendung von git-lfs muss die git-lfs command line extention installiert sein!
Auf den gängigsten Platformen kann diese wie folgt installiert werden:

```bash
sudo apt install git-lfs
```
oder
```bash
sudo pacman -S git-lfs
```

 Berechtigungen
=================
Die LFS Daten liegen auf dem gitea der see-base und müssen derzeit dort gepflegt werden!!!
Ein account mit entsprechender Berechtigung ist deshalb auch dort nötig.

```url
https://gitea.see-base.de/FFBSee/ffbsee-webseite.git
```

 Design:
----------
Design based on [pixelarity.com](https://pixelarity.com/?ref=9477955687)
