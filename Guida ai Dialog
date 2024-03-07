Dialog:



I Dialog sono dei menu di vario tipo introdotti per sostituire i vecchi menu

Per crearli si usa la funzione:
'''
CODICE
ShowPlayerDialog(playerid, dialogid, stile, titolo, info, tasto1, tasto2)
'''


playerid: il player che compie l'azione

dialogid: l'id del dialog che va definito


CODICE
#define DIALOGPOLIZIA 1234


Attenzione a non creare mai dialog con lo stesso nome/id poiché andrebbero in conflitto

Stile:
Gli stili per i dialog sono 4:

0 - DIALOG_STYLE_MSGBOX;
1 - DIALOG_STYLE_INPUT;
2 - DIALOG_STYLE_LIST;
3 - DIALOG_STYLE_PASSWORD;

DIALOG_STYLE_MSGBOX = è una finestra in cui c'è solamente il testo con i pulsanti, quindi è usata per inviare un messaggio al player

SPOILER (clicca per visualizzare)




DIALOG_STYLE_INPUT = è un finestra in cui potremmo far scrivere qualcosa al player sempre con i 2 tasti

SPOILER (clicca per visualizzare)




DIALOG_STYLE_LIST = è una finestra in cui possiamo far comparire una lista o sottoliste

SPOILER (clicca per visualizzare)



DIALOG_STYLE_PASSWORD = è una finestra identica a DIALOG_STYLE_INPUT solo che quello che scriveremo non sarà visualizzato (Pallini) è usato nella registrazione per l'inserimento della password.

SPOILER (clicca per visualizzare)




Titolo: è il nome che visualizzeremo in cima al dialog e va inserito tra "" (virgolette)

Info: è quello che inseriremo nel dialog e differenzia a seconda dello stile.

Nello stile DIALOG_STYLE_LIST andranno messe le info che compariranno nella lista


CODICE
ShowPlayerDialog(playerid, 1234, 2, "TITOLO", "INFO1\nINFO2\nINFO3", "Accetta", "Annulla");



Il \n serve per andare a capo e deve esser messo tra le info

Negli altri stili invece l'Info apparirà come messaggio nel dialog

Tasto1: Il tasto1 è il tasto di sinistra e corrisponde ad una risposta positiva da parte del player ("Accetta")

Tasto2: Il tasto2 è il tasto di destra e corrisponde ad una risposta negativa da parte del player ("Annulla") se lasceremo solo le "" (virgolette) senza testo il tasto non comparirà ("")

Esempio:


CODICE
#define DIALOGLOGIN 5678
ShowPlayerDialog(playerid, 5678, 0, "Benvenuto", "Benvenuto nel server", "OK", "");



Ora andremo a spiegare il callback


CODICE
OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])



playerid: il player che guarda il dialog

dialogid: l'ID del dialog

response: controlla il tasto premuto dal playerid, tasto sinistro returna true invece il tasto destro returna false (1 per il primo tasto, 2 per il secondo tasto)

listitem: ID dei sottomenù (DIALOG_STYLE_LIST)

imputtext: Testo digitato dal player (DIALOG_STYLE_INPUT)

Questo Callback serve per controllare quale bottone preme il player, cosa digita nel menu (DIALOG_STYLE_INPUT o DIALOG_STYLE_PASSWORD) oppure quale info sceglie il player (DIALOG_STYLE_LIST)

Ora faremo un esempio:


CODICE
#define DIALOGARMI 9876
ShowPlayerDialog(playerid, 9876, 2, "Armeria", "Arma1\nArma2\nArma3", "Compra", "Annulla");

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
  switch(dialogid)
  {
             case DIALOGARMI: //Se il player sta vedendo il nosto dialog
             {
                   if(response) //Se preme il primo bottone
                   {
                          switch(listitem)
                          {
                              case 0: GivePlayerWeapon(playerid,IDarma,Munizioni);
                              case 1: GivePlayerWeapon(playerid,IDarma,Munizioni);
                              case 2: GivePlayerWeapon(playerid,IDarma,Munizioni);
                           }
                    }
                    return 1;
              }
              return 1;
    }
    return 1;
}


Al posto del case e dello switch possiamo anche usare if anche se poi diventa più lungo

Se vogliamo creare più sottomenù andremo ad inserire ShowPlayerDialog nella listitem

Prima abbiamo visto il player quale info sceglie ora controlleremo casa scriverà nel dialog


CODICE
#define DIALOGPAROLA 1111
ShowPlayerDialog(playerid, 1111, 1, "Parola D'ordine", "Digita la parola d'ordine", "OK", "Annulla");

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
  switch(dialogid)
  {
      case: DIALOGPAROLA
      {    
             if(!reponse) // Se da risposta negativa
             {
              Kick(playerid); //Kickiamo il player
             return 1;
             }
             if(strcmp(POLLO, inputtext, true));
             return 1;
        }
         return 1;
   }
   return 1;
}

