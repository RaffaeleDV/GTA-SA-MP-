**SetTimerEx**

```
SetTImerEx(funzione, intervallo, variabile booleana, formato variabile, parametri)
```

Funzione: La funzione che il timer attiverà
intervallo: è espresso il millisecondi (1000 millisecondi sono 1 secondo)
Variabile booleana: True se si ripete, False se non si ripete
Formato variabile: Serve ad indicare la variabile che userai ne esistono 6:

i e d, timer con variabili intere (numeri interi)

a, timer con variabili in array

s, timer con variabili string per le stringhe di testo

f, timer con variabili float ( decimali)

b, con variabili booleane (true o false)

Parametri: che server a specificare su l'azione ricade su chi digita il comando (playerid) o volendo su qualcun'altro (pid)

ES:
```
forward Immortale ();
public Immortale(playerid)
{
   SetPlayerHealth(playerid, 100);
   SetPlayerArmour(playerid,100);
}
public OnPlayerCommandText(playerid, cmdtext[])
{
   if (strcmp("/immortalità", cmdtext, true) == 0)
   {
     SetTimerEx("immortale", 500, true, "d", playerid);
     return 1;
   }
   return 0;
}
```

Cosi abbiamo creato un comando che setta vita e armatura al player a 100 ogni 500 millisecondi rendendolo immortale O:

**SetTimer**

Questo è piu facile da usare perche ha meno impostazioni
```
SetTimer(funzione, intervallo, variabile booleana)
```

Funzione: La funzione che il timer attiverà
intervallo: è espresso il millisecondi (1000 millisecondi sono 1 secondo)
Variabile booleana: True se si ripete, False se non si ripete

**KillTimer**

Se avete fatto in modo che il timer si ripeta servirà qualcosa per killarlo (fermarlo asd)
qui useremo:
```
KillTimer(timerid)
```
Timerid:Variabile data al Timer
ES:
```
//in Cima
new timerImmortale[MAX_PLAYERS];

//Callback
forward Immortale ();
public Immortale(playerid)
{
   SetPlayerHealth(playerid, 100);
   SetPlayerArmour(playerid,100);
}
public OnPlayerCommandText(playerid, cmdtext[])
{
   if (strcmp("/immortalità", cmdtext, true) == 0)
   {
      timerImmortale[playerid] =   SetTimer("immortale", 500, true );
     return 1;
   }
   if (strcmp("/mortale", cmdtext, true) == 0)
   {
     KillTimer(timerImmortale[playerid]);
     return 1;
   }

return 0;
}
```

Così scrivendo /mortale killeremo il timer
