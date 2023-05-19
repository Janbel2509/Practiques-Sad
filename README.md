Assignatura: Sistemes d'Aplicacions Distribuïdes (SAD)
Jan Bel i Joel Maqueda
Pràctiques:

Pràctica 1:
La pràctica 1 consisteix en desenvolupar un programa en Java en dos repositoris diferents. Es demana una versió sense l'ús del patró Model-View-Controller (MVC) i una altra versió amb MVC. Amb l'ús del patró MVC, es pot observar una estructura que mostra els rols i les relacions dels components del programa. Vam enfrontar alguns problemes amb la funcionalitat d'inserció, ja que en alguns casos no funcionava correctament. En general, no vam trobar cap altre error o problema destacable durant el desenvolupament d'aquesta pràctica.

Pràctica 2:
La pràctica 2 consisteix en implementar un xat textual en Java. El programa permet la comunicació per consola entre un servidor centralitzat i diversos clients. En iniciar el servidor (port: 5555), es demana als usuaris que introdueixin un nom per al xat. Si el nom ja està en ús, no se'ls permet entrar, sinó poden començar a xatejar. El xat es mostra en una finestra de xat pròpia i també en la del servidor com a xat general. Si un usuari escriu "Marxo", es considera que s'ha desconnectat. Durant la implementació, vam tenir dificultats per aconseguir que els usuaris es connectessin, ja que en iniciar i introduir el nom, sempre es mostrava el mateix error. No obstant això, finalment vam poder solucionar aquest problema.

Practica 3:
Consisteix en un xat gràfic bàsic que permet la connexió de diversos usuaris. En aquesta pràctica, hem desenvolupat una interfície gràfica per al xat. Tal com en la pràctica anterior, vam dividir les classes en components visuals com ara "Login" i "Chat", a més de les classes "MySocket", "Chat", "Server", "Client" i "ServerProtocol". El funcionament és similar al de la pràctica 2: s'inicia el servidor i s'afegeixen els clients desitjats, tot mostrant una interfície gràfica per a la comunicació. Durant aquesta pràctica, vam enfrontar un problema important. Inicialment, vam intentar utilitzar el mateix "MySocket" de la pràctica 2, però ens vam trobar amb un error al compilar i executar el xat.
