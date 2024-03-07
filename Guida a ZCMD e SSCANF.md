**ZCMD:**

Lo zcmd è un Include che permette di creare i comandi in modo più facile e veloce ed va a sostituire OnPlayerCommandText(). Ricordate che se comincerete ad usare lo zcmd non sarà possibile utilizzare OnPlayerCommandText() e viceversa, quindi non si possono usare insieme.
Installarlo:
Per istallarlo dovete semplicemente scaricarlo da QUI e inserirlo nella cartella Include in Pawno ed inserire in cima alla vostra GM
#include <zcmd>
Utilizzo:
```
CMD:mycommand(playerid, params[])
{
 // Funzioni
 return 1;
}
```
WARNING: lo Zcmd non va messo sotto nessun callback ma fuori o in fondo alla GM

**SSCANF:**

Lo sscanf è un include creato da "Y_Less" che sostituisce lo strtok visto che è molto più semplice da usare.
Installarlo:
Bisogna scaricarlo da QUI e come per lo Zcmd bisogna aggiungere in cima alla GM
#include <sscanf2>
Utilizzo:
```
if(sscanf(params, "tipo variabile", nomevariabile))
```
Ci sono differenti tipi di variabili da usare:
```
s   Stringa                 Pollo
i, d         Numeri Interi      1, 42, -10
c         Caratteri         a, o, *
l         variabili booleane      true, false
b         Codici Binari         01001, 01100
h, x         Codici Hex(colori)      1A, 0x23
o         Codice Ottale      045 12
n         Number         42, 0b010, 0xAC, 045
f         Float            0.7, -99.5
u         Nome/id (players e bot)   Y_Less, 0
q         Nome Bot/id      ShopBot, 27
r         Nome Player/id      Y_Less, 42
```
Si possono usare anche piu variabili e bisogna ricordare che nelle variabili con s (stringa) bisognerà inserire il numero di celle utilizzate (s[250])
Esempi:
```
new pid;

CMD:gethere(playerid,params[])
{
   if (!IsPlayerAdmin(playerid)) return SendClientMessage(playerid,ROSSO,"Non sei Admin o non hai il livello necessario");
       if (!IsPlayerConnected(pid)) return SendClientMessage(playerid,ROSSO,"Il player non è connesso");
       if(sscanf(params,"u",pid)) return SendClientMessage(playerid,ROSSO,"Uso: /Gethere [ID/nomeplayer]");
       GetPlayerPos(playerid,Float:X,Float:Y,Float:Z);
       SetPlayerPos(pid,Float:X,Float:Y,Float:Z);
       return 1;
}

Qui abbiamo il comando /gethere [ID/Nomeplayer] abbiamo usato la variabile "u" poi indica il nome o id del player
Possiamo usare anche più parametri in questo modo:
```
```
new pid;
new nome;
new nome2;
new ragione[100]
new stringa[250]

CMD:kick(playerid,params[])
{
       
       if (!IsPlayerAdmin(playerid)) return SendClientMessage(playerid,ROSSO,"Non sei Admin o non hai il livello necessario");
        if(sscanf(params,"us[100]",pid,ragione)) return SendClientMessage(playerid,BIANCO,"USO: /kick [ID/nomeplayer] [Ragione]");
       if(!IsPlayerConnected(pid)) return SendClientMessage(playerid,ROSSO,"Il player non è connesso");
       {
       GetPlayerName(playerid, nome, sizeof(nome));
        GetPlayerName(pid, nome2, sizeof(nome2));
        format(stringa,sizeof(stringa),"{FFD700}%­s{FFFFFF} ti ha kickato motivo: {87CEFA}%­s.",nome,ragione);
        SendClientMessage(pid,ADMIN,stringa);
        format(stringa,sizeof(stringa),"Hai kickato %­s motivo: %­s.",nome2,ragione);
        SendClientMessage(playerid,ADMIN,stringa);
        format(stringa,sizeof(stringa),"%­s è stato kickato dall'admin %­s, Motivo: %­s.",nome2,nome,ragione);
        Kick(pid);
   SendClientMessageToAll(BIANCO,stringa);
       }
       return 1;
}
```
Qui invece abbiamo il comando /kick a abbiamo utilizzato 2 variabili "u" per il player e "s[100]" per la ragione ricordando sempre di definire le celle.
