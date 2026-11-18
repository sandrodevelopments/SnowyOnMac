# SnowyOnMac

Animierter Schnee für den Mac. Schnee bleibt auf Fenstern, dem Dock und am unteren Bildschirmrand liegen. Schneekugeln und Schneemänner lassen sich mit der Maus formen.

## Installation

[Das Mac-ZIP aus den Releases herunterladen](https://github.com/sandrodevelopments/SnowyOnMac/releases/latest), entpacken und SnowyOnMac.app in den Ordner Programme ziehen. Die App über die Schneeflocke in der Menüleiste bedienen.

Benötigt einen Mac mit Apple-Chip (M1 oder neuer) und macOS 13 oder neuer. Getestet auf einem Mac mit Apple-Chip unter macOS 26. Ältere macOS-Versionen wurden nicht auf eigenen Geräten getestet.

Die privat gebaute App ist lokal signiert und wurde nicht von Apple notarisiert. macOS kann den ersten Start blockieren. Apples Hinweise zum Umgang mit einer solchen App stehen hier.

[Apples Hinweise zum ersten Start](https://support.apple.com/de-de/102445)

Für Schnee auf dem Dock unter Systemeinstellungen → Datenschutz & Sicherheit → Bedienungshilfen den Zugriff für SnowyOnMac aktivieren.

## Bedienung

- Pause Snow hält die Animation an, Resume Snow setzt sie fort.
- Snow Amount steuert die Schneemenge.
- Schnee räumen bietet Abrutschen und einen orangefarbenen Schneepflug.
- Schneekugeln & Schneemänner bietet Aktiviert, Nur am Boden und Deaktiviert. Beim Einschränken verschwinden Kugeln an ausgeschlossenen Stellen.
- Flocken hinter Apps lässt ausgewählte App-Fenster die fallenden Flocken verdecken.
- Clear Snow entfernt angesammelten Schnee und Kugeln.
- Quit beendet SnowyOnMac.

Räumart, Kugel-Einstellung und App-Auswahl werden gespeichert. Eine vorhandene Auswahl der früheren WinterIsComing-Version wird beim ersten Start übernommen.

Abrutschender Schnee fällt hinter seinem Herkunftsfenster. Die Schneeauflagen an gerundeten Fensterkanten sind angenähert. Am unteren Bildschirmrand bleibt eine flache Schneeschicht.

## Selbst bauen

Benötigt werden die Apple Command Line Tools mit einem aktuellen Swift-Compiler. Installieren über `xcode-select --install`.

```sh
zsh build.sh
```

Die fertige App für Apple-Chips steht unter `build/SnowyOnMac.app`. Das Skript erstellt einen lokal signierten Build.

## Herkunft und Lizenz

SnowyOnMac basiert auf yike-shi/WINTER_IS_COMING, Commit `25a028f62f878e5aa65a3d3801f5175fa1c4747d`.

[Originalprojekt](https://github.com/yike-shi/WINTER_IS_COMING)

Die Anpassungen umfassen das Verhalten nach Pause und Ruhezustand, schmalere Schneeauflagen, wählbare Räumarten, Flocken hinter ausgewählten Apps und die Optionen für Schneekugeln und Schneemänner.

MIT-Lizenz. Der ursprüngliche Copyright-Vermerk von Shi Yike und der vollständige Lizenztext stehen in LICENSE.
