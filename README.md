# SnowyOnMac

Animierter Schnee für den Mac. Schnee bleibt auf Fenstern, dem Dock und am unteren Bildschirmrand liegen. Schneekugeln und Schneemänner lassen sich mit der Maus formen.

<img width="3026" height="1359" alt="SCR-20261119-hhsm" src="https://github.com/user-attachments/assets/d1c66916-80b2-4650-af2b-018121d208cb" />

## Installation

[Das Mac-ZIP aus den Releases herunterladen](https://github.com/sandrodevelopments/SnowyOnMac/releases/latest), entpacken und SnowyOnMac.app in den Ordner Programme ziehen. Die App über die Schneeflocke in der Menüleiste bedienen.

Benötigt einen Mac mit Apple-Chip (M1 oder neuer) und macOS 13 oder neuer. Getestet auf einem Mac mit Apple-Chip unter macOS 26. Ältere macOS-Versionen wurden nicht auf eigenen Geräten getestet.

SnowyOnMac verwendet ein dunkles App-Icon und ein dunkles Menü.

Die privat gebaute App ist lokal signiert und wurde nicht von Apple notarisiert. macOS kann den ersten Start blockieren. Apples Hinweise zum Umgang mit einer solchen App stehen hier.

[Apples Hinweise zum ersten Start](https://support.apple.com/de-de/102445)

Für Schnee auf dem Dock unter Systemeinstellungen → Datenschutz & Sicherheit → Bedienungshilfen den Zugriff für SnowyOnMac aktivieren.

## Mehrere Bildschirme

Für jeden angeschlossenen Monitor wird eine eigene transparente Schnee-Ansicht angelegt. Fenster- und Mauspositionen werden in die lokalen Bildschirmkoordinaten umgerechnet. Das gilt auch für links, oberhalb oder unterhalb des Hauptbildschirms angeordnete Monitore und unterschiedliche Skalierungen.

Das Flockenbudget wird nach Bildschirmfläche verteilt. Die Fensterliste wird gemeinsam abgefragt. Pause, Schneemenge, Räumart, Kugel-Einstellung und App-Auswahl gelten für alle Monitore. Beim Verbinden, Trennen oder Umordnen von Bildschirmen werden die Ansichten angepasst.

Die Dock-Erkennung unterstützt ein unten angeordnetes Dock auf dem jeweiligen Bildschirm.

Seit Version 1.3.2 verwenden alle Schnee-Ansichten einen gemeinsamen Animationstakt mit expliziter Metal-Ausgabe. Das verhindert das auf dem getesteten Zwei-Monitor-Aufbau beobachtete Hängenbleiben einer der unabhängigen SpriteKit-Ansichten. Getestet mit dem eingebauten Retina-Display und einem Odyssey G93SC mit 5120 × 1440 Pixeln: rund 60 GPU-Bilder pro Sekunde auf beiden Anzeigen, auch nach Pause/Fortsetzen und simuliertem Aufwachen.

## Bedienung

- Pause Snow hält die Animation an, Resume Snow setzt sie fort.
- Snow Amount steuert die Schneemenge.
- Schnee räumen bietet Abrutschen und einen orangefarbenen Schneepflug.
- Schneekugeln & Schneemänner bietet Aktiviert, Nur am Boden und Deaktiviert. Beim Einschränken verschwinden Kugeln an ausgeschlossenen Stellen.
- Flocken hinter Apps lässt ausgewählte App-Fenster die fallenden Flocken verdecken.
- Clear Snow entfernt angesammelten Schnee und Kugeln.
- Quit beendet SnowyOnMac.

Räumart, Kugel-Einstellung und App-Auswahl werden gespeichert. Eine vorhandene Auswahl der früheren WinterIsComing-Version wird beim ersten Start übernommen.

Abrutschender Schnee fällt hinter seinem Herkunftsfenster. Die Schneeauflagen an gerundeten Fensterkanten sind angenähert. Am unteren Bildschirmrand bleibt eine flache Schneeschicht. Auf dem Dock rutscht die gesamte Auflage bei 9 Punkten Höhe ab. Weitere Klumpen derselben Fensterlawine fallen während der Räumung direkt weiter.

## Passende Wallpaper
4k Ultra HD 2160p (3840x2160): [https://image-0.uhdpaper.com/wallpaper/winter-cabin-christmas-tree-snowman-night-4k-wallpaper-uhdpaper.com-858@0@i.jpg](https://image-0.uhdpaper.com/wallpaper/winter-cabin-christmas-tree-snowman-night-4k-wallpaper-uhdpaper.com-858@0@i.jpg)

2k Quad HD 1440p (2560x1440): [https://image-0.uhdpaper.com/wallpaper/winter-cabin-christmas-tree-snowman-night-2k-wallpaper-uhdpaper.com-858@0@i.jpg](https://image-0.uhdpaper.com/wallpaper/winter-cabin-christmas-tree-snowman-night-2k-wallpaper-uhdpaper.com-858@0@i.jpg)

Full HD 1080p (1920x1080): [https://image-0.uhdpaper.com/wallpaper/winter-cabin-christmas-tree-snowman-night-hd-wallpaper-uhdpaper.com-858@0@i.jpg](https://image-0.uhdpaper.com/wallpaper/winter-cabin-christmas-tree-snowman-night-hd-wallpaper-uhdpaper.com-858@0@i.jpg)

## Selbst bauen

Benötigt werden die Apple Command Line Tools mit einem aktuellen Swift-Compiler. Installieren über `xcode-select --install`.

```sh
zsh build.sh
```

Die fertige App für Apple-Chips steht unter `build/SnowyOnMac.app`. Das Skript erstellt einen lokal signierten Build.

## Änderungen mit Git verwalten

Das Repository einmal klonen und anschließend in diesem Ordner arbeiten:

```sh
git clone https://github.com/sandrodevelopments/SnowyOnMac.git ~/dev/projects/snowy-on-mac
cd ~/dev/projects/snowy-on-mac
```

Nach Änderungen bauen, prüfen und zu GitHub übertragen:

```sh
zsh build.sh
git status
git add -A
git commit -m "Beschreibung der Änderung"
git push
```

Die Build-Ordner und ZIP-Dateien werden nicht versioniert. `git push` überträgt den Quellcode; installierbare ZIP-Dateien werden separat als Release veröffentlicht.

## Herkunft und Lizenz

SnowyOnMac basiert auf yike-shi/WINTER_IS_COMING, Commit `25a028f62f878e5aa65a3d3801f5175fa1c4747d`.

[Originalprojekt](https://github.com/yike-shi/WINTER_IS_COMING)

Die Anpassungen umfassen das Verhalten nach Pause und Ruhezustand, schmalere Schneeauflagen, wählbare Räumarten, Flocken hinter ausgewählten Apps und die Optionen für Schneekugeln und Schneemänner.

MIT-Lizenz. Der ursprüngliche Copyright-Vermerk von Shi Yike und der vollständige Lizenztext stehen in LICENSE.
