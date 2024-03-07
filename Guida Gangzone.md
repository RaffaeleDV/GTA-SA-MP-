**GangZone:**

Ora impareremo ad creare delle GangZone (zone colorate come nel singolo giocatore) per prima cosa definiamo la zona in cima a tutto

```
new Polizia;
```
poi andiamo a crearla ed a metterla in public OnGameModeInit()
```
Polizia = GangZoneCreate(x,y,X,Y);
```
le coordinate andranno prese dai 2 vertici opposti della nostra zona
prese le coordinate dai 2 vertici le inseriremo.

Poi in public OnPlayerSpawn(playerid) inseriremo:
```
GangZoneShowForPlayer(playerid,Polizia,Colore);
```
Dove "Polizia" sarà il nome della zona e "Colore" il colore della zona.
Codice:
```
#include <a_samp>

new Polizia;

public OnGameModeInit()
{
Polizia=GangZoneCreate(x,y,X,Y);
return 1;
}

public OnPlayerSpawn(playerid)
{
GangZoneShowForPlayer(playerid,Polizia,Colore);
return 1;
}
```
