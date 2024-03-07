**Come muovere un Object**

In cima a tutto mettete

```
new cancellopd;
forward chiudi ();
```

In OnGameModeInit:

```
cancellopd = CreateObject(modelid, Float:X, Float:Y, Float:Z, Float:rX, Float:rY, Float:rZ)
```

Vi consiglio di posizionare il cancello con MTA

In OnPlayerCommandText:

```
if (strcmp("/cancello", cmdtext, true, 10) == 0)
{
MoveObject(cancello,Coordinatecancelloaperto,1.5); //1.5 è la velocità
SendClientMessage(playerid,giallo,"[Info] Cancello aperto, chiusura tra 10 secondi ");
SetTimer("chiudi",10000,0);
return 1;
}
```

Fuori da tutti i CallBacks:

```
public chiudi(){
MoveObject(object, coordinatecancellochiuso, 1.5);
}
```

Spiegazione O: :

```
MoveObject(cancello,Coordinatecancelloaperto,1.5); //1.5 è la velocità
```
Questa funzione muove il cancello , 1.5 è la velocità con cui si muove (min 1.5 max 3.0)

```
SendClientMessage(playerid,giallo,"[Info] Cancello aperto, chiusura tra 10 secondi ");
```

Manda un messaggio al player. Modificate "giallo" con l'impostazione del colore nella vostra GM

```
SetTimer("chiudi",10000,0);
```

Questo è un timer cioè dalla digitazione del comando, passato un certo tempo (in questo caso 10 secondi) fa partire un'altra funzione, in questo caso "chiudi" che fa ritornare il cancello nella posizione originale. Il tempo va espresso in millisecondi, 1 secondo sono 1000 mlliisecondi.
