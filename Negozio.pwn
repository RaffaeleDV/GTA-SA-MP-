// FS per comprare armi tramite menu
//Aug 3rd, 2011

#include <a_samp>

#if defined FILTERSCRIPT
#endif
#define Grigio 0xAFAFAFAA
#define Verde 0x33AA33AA
#define Rosso 0xAA3333AA
#define Giallo 0xFFFF00AA
#define Bianco 0xFFFFFFAA
public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" FS");
	print("--------------------------------------\n");
	return 1;
}


public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/armi", cmdtext, true, 10) == 0)
	{
		ShowPlayerDialog(playerid,5000,2,"Tipo di Armi","Corpo a Corpo\nPistole\nMitragliatori\nFucili\nArmi d'assalto\nPrecisione\nDa lancio\nArtiglieria Pasante\nAttrezzatura","Sfoglia","Esci");
		return 1;
	}
	return 0;
}



//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
// Scelta armi ==========================================================================================================
    if(dialogid == 5000)
    {
		 if(response)
 		{
 		    if(listitem == 0)
 		    {
 		    ShowPlayerDialog(playerid,50,2,"Corpo a Corpo","Nocche d'acciaio(10$)\nMazza(30$)\nPala(30$)\nColtello(40$)\nKatana(50$)\nMotosega(500$)","Compra","Chiudi");
			}
			if(listitem == 1)
			{
            ShowPlayerDialog(playerid,100,2,"Pistole","9mm(1000$)\n9mmsilenziata(1500$)\nDesert Eagle(3000$)","Compra","Chiudi");
            }
            if(listitem == 2)
            {
            ShowPlayerDialog(playerid,150,2,"Mitragliatori","Tec-9(500$)\nMicro SMG(500$)\nMP5(1000$)","Compra","Chiudi");
            }
            if(listitem == 3)
            {
            ShowPlayerDialog(playerid,200,2,"Fucili","Fucile a Pompa(500$)\nFucile a Canna Mozze(1500$)\nFucile Da Combattimento(3000$)","Compra","Chiudi");
            }
            if(listitem == 4)
			{
			ShowPlayerDialog(playerid,250,2,"Armi D'assalto","M4(2500$)\nAK47(2000$)","Compra","Chiudi");
			}
			if(listitem == 5)
			{
			ShowPlayerDialog(playerid,300,2,"Precisione","Fucile Semi-Automatico(3000$)\nFucile di Precisione(4000$)","Compra","Chiudi");
			}
			if(listitem == 6)
			{
			ShowPlayerDialog(playerid,350,2,"Da lancio","Molotov(100$)\nMolotovX10(1000$)\nMolotovX100(10000$)\nGranate(500$)\nGranateX10(5000$)\nGasX500(900$)\nEsplosivo(600$)\nEsplosiviX10(6000$)","Compra","Chiudi");
			}
			if(listitem == 7)
			{
			ShowPlayerDialog(playerid,400,2,"Artiglieria Pesante","LanciaFiamme(10000$)\nMinigun(100000$)\nLanciaRazzi(10000$)","Compra","Chiudi");
			}
   			if(listitem == 8)
			{
            ShowPlayerDialog(playerid,450,2,"Attrezzatura","Bomboletta Spray(100$)\nMacchina Fotografica(100$)\nParacadute(200$)","Compra","Chiudi");
			
		}
	
	 }
		
}
//Melee=================================================================================================================
	if(dialogid == 50)
	 {
		if(response)
		{
		   if(listitem == 0)
		   {
		   if(GetPlayerMoney(playerid) >= 10)
		   {
           GivePlayerMoney(playerid, -10);
           GivePlayerWeapon(playerid, 1, 1);
           SendClientMessage(playerid, Bianco, "Hai comprato le Nocche d'acciaio. ");
           }
           else
           {
           SendClientMessage(playerid, Rosso, "Non hai 10$");
           }
           }
           if(listitem == 1)
           {
           if(GetPlayerMoney(playerid) >= 30)
           {
           GivePlayerMoney(playerid, -30);
           GivePlayerWeapon(playerid, 5, 1);
           SendClientMessage(playerid, Bianco, "Hai comprato una Mazza.");
           }
           else
           {
		   SendClientMessage(playerid,Rosso,"Non hai 30$");
		   }
		   }
		   if(listitem == 2)
		   {
		   if(GetPlayerMoney(playerid) >= 30)
		   {
           GivePlayerMoney(playerid, -30);
           GivePlayerWeapon(playerid, 6, 1);
           SendClientMessage(playerid, Bianco, "Hai comprato una Pala. ");
           }
           else
           {
           SendClientMessage(playerid,Rosso,"Non hai 30$");
		   }
		   }
		   if(listitem == 3)
		   {
		   if(GetPlayerMoney(playerid) >= 40)
		   {
     	   GivePlayerMoney(playerid, -40);
           GivePlayerWeapon(playerid, 4, 1);
           SendClientMessage(playerid, Bianco, "Hai comprato un Coltello. ");
           }
           else
           {
           SendClientMessage(playerid,Rosso,"Non hai 40$");
           }
           }
           if(listitem == 4)
           {
		   if(GetPlayerMoney(playerid) >= 50)
		   {
     	   GivePlayerMoney(playerid, -50);
           GivePlayerWeapon(playerid, 8, 1);
           SendClientMessage(playerid, Bianco, "Hai comprato una Katana. ");
           }
           else
           {
           SendClientMessage(playerid,Rosso,"Non hai 50$");
           }
           }
           if(listitem == 5)
           {
           if(GetPlayerMoney(playerid) >= 5000)
           {
           GivePlayerMoney(playerid, -500);
           GivePlayerWeapon(playerid, 9, 1);
           SendClientMessage(playerid, Bianco, "Hai comprato un Motosega. ");
           }
           else
           {
           SendClientMessage(playerid,Rosso,"Non hai 300$");
           }
           }
			
		}

	 }
//Pistole===============================================================================================================
    if(dialogid == 100)
	 {
		if(response)
		{
		   if(listitem == 0)
		   {
		   if(GetPlayerMoney(playerid) >= 1000)
		   {
           GivePlayerMoney(playerid, -1000);
           GivePlayerWeapon(playerid, 22, 500);
           SendClientMessage(playerid, Bianco, "Hai comprato una 9mm. ");
           }
           else
           {
           SendClientMessage(playerid, Rosso, "Non hai 1000$");
           }
           }
           if(listitem == 1)
           {
           if(GetPlayerMoney(playerid) >= 1500)
           {
           GivePlayerMoney(playerid, -1500);
           GivePlayerWeapon(playerid, 23, 500);
           SendClientMessage(playerid, Bianco, "Hai comprato una 9mm Silenziata.");
           }
           else
           {
		   SendClientMessage(playerid,Rosso,"Non hai 1500$");
		   }
		   }
		   if(listitem == 2)
		   {
		   if(GetPlayerMoney(playerid) >= 3000)
		   {
           GivePlayerMoney(playerid, -3000);
           GivePlayerWeapon(playerid, 24, 500);
           SendClientMessage(playerid, Bianco, "Hai comprato una Desert Eagle. ");
           }
           else
           {
           SendClientMessage(playerid,Rosso,"Non hai 3000$");
		   }
		   }
		   
		}

	}
//mitragliatori===========================================================================================================
	if(dialogid == 150)
	 {
		if(response)
		{
		   if(listitem == 0)
		   {
		   if(GetPlayerMoney(playerid) >= 500)
		   {
           GivePlayerMoney(playerid, -500);
           GivePlayerWeapon(playerid, 32, 500);
           SendClientMessage(playerid, Bianco, "Hai comprato un Tec-9. ");
           }
           else
           {
           SendClientMessage(playerid, Rosso, "Non hai 500$");
           }
           }
           if(listitem == 1)
           {
           if(GetPlayerMoney(playerid) >= 500)
           {
           GivePlayerMoney(playerid, -500);
           GivePlayerWeapon(playerid, 28, 500);
           SendClientMessage(playerid, Bianco, "Hai comprato un Micro SMG.");
           }
           else
           {
		   SendClientMessage(playerid,Rosso,"Non hai 500$");
		   }
		   }
		   if(listitem == 2)
		   {
		   if(GetPlayerMoney(playerid) >= 1000)
		   {
           GivePlayerMoney(playerid, -1000);
           GivePlayerWeapon(playerid, 29, 500);
           SendClientMessage(playerid, Bianco, "Hai comprato un MP5. ");
           }
           else
           {
           SendClientMessage(playerid,Rosso,"Non hai 1000$");
		   }
		   }
		   

		}

	}
//Fucili a Pompa=========================================================================================================
    if(dialogid == 200)
	 {
		if(response)
		{
		   if(listitem == 0)
		   {
		   if(GetPlayerMoney(playerid) >= 500)
		   {
           GivePlayerMoney(playerid, -500);
           GivePlayerWeapon(playerid, 25, 500);
           SendClientMessage(playerid, Bianco, "Hai comprato un Fucile a Pompa. ");
           }
           else
           {
           SendClientMessage(playerid, Rosso, "Non hai 500$");
           }
           }
           if(listitem == 1)
           {
           if(GetPlayerMoney(playerid) >= 1500)
           {
           GivePlayerMoney(playerid, -1500);
           GivePlayerWeapon(playerid, 26, 500);
           SendClientMessage(playerid, Bianco, "Hai comprato un Fucile a Canne Mozze.");
           }
           else
           {
		   SendClientMessage(playerid,Rosso,"Non hai 1500$");
		   }
		   }
		   if(listitem == 2)
		   {
		   if(GetPlayerMoney(playerid) >= 3000)
		   {
           GivePlayerMoney(playerid, -3000);
           GivePlayerWeapon(playerid, 27, 500);
           SendClientMessage(playerid, Bianco, "Hai comprato un Fucile da Combattimento. ");
           }
           else
           {
           SendClientMessage(playerid,Rosso,"Non hai 3000$");
		   }
		   }
		  
		}

	 }
//Armi d'assalto==========================================================================================================
	if(dialogid == 250)
	 {
		if(response)
		{
		   if(listitem == 0)
		   {
		   if(GetPlayerMoney(playerid) >= 2500)
		   {
           GivePlayerMoney(playerid, -2500);
           GivePlayerWeapon(playerid, 31, 500);
           SendClientMessage(playerid, Bianco, "Hai comprato un M4. ");
           }
           else
           {
           SendClientMessage(playerid, Rosso, "Non hai 2500$");
           }
           }
           if(listitem == 1)
           {
           if(GetPlayerMoney(playerid) >= 2000)
           {
           GivePlayerMoney(playerid, -2000);
           GivePlayerWeapon(playerid, 30, 500);
           SendClientMessage(playerid, Bianco, "Hai comprato un AK47.");
           }
           else
           {
		   SendClientMessage(playerid,Rosso,"Non hai 2000$");
		   }
		   }
		   
		}

	 }
//Precisione=============================================================================================================
	if(dialogid == 300)
	{
		if(response)
		{
		   if(listitem == 0)
		   {
		   if(GetPlayerMoney(playerid) >= 3000)
		   {
           GivePlayerMoney(playerid, -3000);
           GivePlayerWeapon(playerid, 33, 500);
           SendClientMessage(playerid, Bianco, "Hai comprato un Fucile Semi-Automatico. ");
           }
           else
           {
           SendClientMessage(playerid, Rosso, "Non hai 3000$");
           }
           }
           if(listitem == 1)
           {
           if(GetPlayerMoney(playerid) >= 4000)
           {
           GivePlayerMoney(playerid, -4000);
           GivePlayerWeapon(playerid, 34, 500);
           SendClientMessage(playerid, Bianco, "Hai comprato un Fucile di precisione.");
           }
           else
           {
		   SendClientMessage(playerid,Rosso,"Non hai 4000$");
		   }
		   }
		   
		}

	}
//Da lancio=============================================================================================================
    if(dialogid == 350)
	 {
		if(response)
		{
		   if(listitem == 0)
		   {
		   if(GetPlayerMoney(playerid) >= 100)
		   {
           GivePlayerMoney(playerid, -100);
           GivePlayerWeapon(playerid, 18, 1);
           SendClientMessage(playerid, Bianco, "Hai comprato una Molotov. ");
           }
           else
           {
           SendClientMessage(playerid, Rosso, "Non hai 100$");
           }
           }
           if(listitem == 1)
           {
           if(GetPlayerMoney(playerid) >= 1000)
           {
           GivePlayerMoney(playerid, -1000);
           GivePlayerWeapon(playerid, 18, 10);
           SendClientMessage(playerid, Bianco, "Hai comprato 10 Molotov.");
           }
           else
           {
		   SendClientMessage(playerid,Rosso,"Non hai 1000$");
		   }
		   }
		   if(listitem == 2)
		   {
		   if(GetPlayerMoney(playerid) >= 10000)
		   {
           GivePlayerMoney(playerid, -10000);
           GivePlayerWeapon(playerid, 18, 100);
           SendClientMessage(playerid, Bianco, "Hai comprato 100 Molotov. ");
           }
           else
           {
           SendClientMessage(playerid,Rosso,"Non hai 10000$");
		   }
		   }
		   if(listitem == 3)
		   {
		   if(GetPlayerMoney(playerid) >= 500)
		   {
     	   GivePlayerMoney(playerid, -500);
           GivePlayerWeapon(playerid, 16, 1);
           SendClientMessage(playerid, Bianco, "Hai comprato una Granata. ");
           }
           else
           {
           SendClientMessage(playerid,Rosso,"Non hai 500$");
           }
           }
           if(listitem == 4)
           {
		   if(GetPlayerMoney(playerid) >= 5000)
		   {
     	   GivePlayerMoney(playerid, -5000);
           GivePlayerWeapon(playerid, 16, 10);
           SendClientMessage(playerid, Bianco, "Hai comprato 10 Granate. ");
           }
           else
           {
           SendClientMessage(playerid,Rosso,"Non hai 5000$");
           }
           }
           if(listitem == 5)
           {
           if(GetPlayerMoney(playerid) >= 900)
           {
           GivePlayerMoney(playerid, -900);
           GivePlayerWeapon(playerid, 17, 500);
           SendClientMessage(playerid, Bianco, "Hai comprato 500 Gas Lacrimogeni. ");
           }
           else
           {
           SendClientMessage(playerid,Rosso,"Non hai 900$");
           }
           }
           if(listitem == 6)
           {
		   if(GetPlayerMoney(playerid) >= 600)
           {
           GivePlayerMoney(playerid, -600);
           GivePlayerWeapon(playerid, 39, 1);
           SendClientMessage(playerid, Bianco, "Hai comprato un Esplosivo. ");
           }
           else
           {
           SendClientMessage(playerid,Rosso,"Non hai 600$");
           }
           }
           if(listitem == 7)
           {
		   if(GetPlayerMoney(playerid) >= 6000)
           {
           GivePlayerMoney(playerid, -6000);
           GivePlayerWeapon(playerid, 39, 10);
           SendClientMessage(playerid, Bianco, "Hai comprato 10 Esposivi. ");
           }
           else
           {
           SendClientMessage(playerid,Rosso,"Non hai 6000$");
           }
           }



		}

	  }
//Artiglieria pesante===================================================================================================
	if(dialogid == 400)
	 {
		if(response)
		{
		   if(listitem == 0)
		   {
		   if(GetPlayerMoney(playerid) >= 10000)
		   {
           GivePlayerMoney(playerid, -10000);
           GivePlayerWeapon(playerid, 37, 1000);
           SendClientMessage(playerid, Bianco, "Hai comprato un Lancia Fiamme. ");
           }
           else
           {
           SendClientMessage(playerid, Rosso, "Non hai 10000$");
           }
           }
           if(listitem == 1)
           {
           if(GetPlayerMoney(playerid) >= 100000)
           {
           GivePlayerMoney(playerid, -100000);
           GivePlayerWeapon(playerid, 38, 500);
           SendClientMessage(playerid, Bianco, "Hai comprato un Minigun.");
           }
           else
           {
		   SendClientMessage(playerid,Rosso,"Non hai 100000$");
		   }
		   }
		   if(listitem == 2)
		   {
		   if(GetPlayerMoney(playerid) >= 10000)
		   {
           GivePlayerMoney(playerid, -10000);
           GivePlayerWeapon(playerid, 35, 500);
           SendClientMessage(playerid, Bianco, "Hai comprato un LanciaRazzi. ");
           }
           else
           {
           SendClientMessage(playerid,Rosso,"Non hai 10000$");
		   }
		   }
		}
	 }
//Attrezzatura============================================================================================================
    if(dialogid == 450)
	 {
		if(response)
		{
		   if(listitem == 0)
		   {
		   if(GetPlayerMoney(playerid) >= 100)
		   {
           GivePlayerMoney(playerid, -100);
           GivePlayerWeapon(playerid, 41,1000);
           SendClientMessage(playerid, Bianco, "Hai comprato una Bomboletta Spray. ");
           }
           else
           {
           SendClientMessage(playerid, Rosso, "Non hai 100$");
           }
           }
           if(listitem == 1)
           {
           if(GetPlayerMoney(playerid) >= 100)
           {
           GivePlayerMoney(playerid, -100);
           GivePlayerWeapon(playerid, 43, 500);
           SendClientMessage(playerid, Bianco, "Hai comprato una Macchina Fotografica.");
           }
           else
           {
		   SendClientMessage(playerid,Rosso,"Non hai 100$");
		   }
		   }
		   if(listitem == 2)
		   {
		   if(GetPlayerMoney(playerid) >= 200)
		   {
           GivePlayerMoney(playerid, -200);
           GivePlayerWeapon(playerid, 46, 1);
           SendClientMessage(playerid, Bianco, "Hai comprato un Paracadute. ");
           }
           else
           {
           SendClientMessage(playerid,Rosso,"Non hai 200$");
		   }
		   }
		}
	}

	return 1;
}
