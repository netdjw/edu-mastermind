# Mastermind játék feladat leírása

## A játék működése

A program elkészítése előtt meg kell ismerni a játék működését. Ez egy, a
valóságban is létező játék, amit már óvodás korú gyermekek is játszanak.

A játékban adott hat szín, amit a való életben színes kis "gombákkal"
oldottak meg. Van kétféle visszajelzésre szolgáló jel, valamint egy pálya,
amin a játék zajlik.

A pálya úgy épül fel, hogy az elrejtett színeket egy takaró elem segítségével
rejtik el a játékos elől. A játékosnak 10 lehetősége van tippelni arra,
mely színek és milyen sorrendben vannak elrejtve. A tippek leadására egy tábla
szolgál, ahová bekerülnek a tippek és a játék végéig ott is maradnak. A
választ, hogy a tipp milyen eredménnyel jár egy külön táblában adja vissza
az elrejtő. A két tábla egymás mellett helyekedik el.

## A vizuális megjelenés

A játék vizuálisan valami ehhez hasonló felülettel bír:

```
+---------------------------------------+
| +-----------------------+             |
| |   Elrejtett színek    |             |
| +-----------------------+             |
|   Tippek:                  Eredmény:  |
| +-----------------------+ +---------+ |
| |   O    O    O    O    | | o o o o | |
| |   O    O    O    O    | | o o o o | |
| |   O    O    O    O    | | o o o o | |
| |   O    O    O    O    | | o o o o | |
| |   O    O    O    O    | | o o o o | |
| |   O    O    O    O    | | o o o o | |
| |   O    O    O    O    | | o o o o | |
| |   O    O    O    O    | | o o o o | |
| |   O    O    O    O    | | o o o o | |
| |   O    O    O    O    | | o o o o | |
| +-----------------------+ +---------+ |
+---------------------------------------+
```

## A játék szabályai

### Győzelem, vereség

- A játékos akkor győz, ha sikerül kitalálnia az elrejtett színeket és az elrejtés sorrendjét is
- A játékos akkor veszít, ha 10 tippből sem sikerült kitalálni az elrejtett színekeket és azok pontos sorrnedjét is


### Az elrejtés szabályai

- 4 színt kell kiválasztani és elrejteni a játékos elől
- Egy szín többször is kiválaszható
- Lehetőség van arra is, hogy csak egyféle szín legyen elrejtve


### A tipp leadás szabályai

- Összesen 10 tipp leadására van lehetőség
- A tippek ismétlődhetnek, azaz lehetőség van arra, hogy akár 10x is ugyanazt a tippet adjam le
- Ha egy tippel eltaláltam az elrejtett színeket és azok sorrendjét is, akkor győzelemmel ér véget a játék
- Ha a 10 tippből nem sikerül kitalálni a színeket és azok sorrendjét, akkor a játékos vesztett
- Nem gyűjtünk pontokat


### A válaszadás szabályai

- A tipp leadása után adunk választ
- A válaszban "fehér" és "fekete" jelek vannak, a progamban teli körrel jelöljük
- A "fehér" kör azt jelenti, hogy a tippben van olyan szín, amit eltalált és annak a helyét is eltalálta
- A "fekete" kör azt jelenti, hogy a tippben van olyan szín, amit eltalált, de az nem jó helen van
- A válasz úgy kell felépüljön, hogy abból sose derüljön ki pontosan, hogy melyik szín van jó helyen és melyik nincs
- A válaszban mindig a fehér jelek kerülnek előre, a feketék utána
- A válaszban, ha egyetlen színt sem talált el, akkor üres választ adunk, vagyis sem fehér, sem fekete körök nem jelennek meg


## A feladat értékelése

|---|---|
| Elvárás | Értékelés |
|---|---|
| Hibásan működő kód | 💩 |
| Működő megvalósítás | 🙂 |
| OOP működő megvalósítás | ⭐ |
| OOP működő megvalósítás, design, animációk |  ⭐⭐ |
| OOP működő megvalósítás, design, animációk, akadálymentes |  ⭐⭐⭐ |

[Akadálymentes verzióhoz specifikáció itt.](https://www.w3.org/WAI/standards-guidelines/wcag/)
