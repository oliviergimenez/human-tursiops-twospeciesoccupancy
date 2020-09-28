SUR LES DONNEES TURSIOPS

En pièce jointe tu trouveras un environnement R avec deux listes ('summer' et 'winter') et deux SpatialPolygonDataFrame ('World' et 'med_poly'). Il y a aussi un objet pour la projection en Lambert 93.
Les SpatialPolygonDataFrames sont inclus pour faire des cartes rapides sur la zone de SAMM: cf le script en pj.



Les listes 'summer' et 'winter' sont structurées de la même manière: il y a 4 sous-listes.
    legdata sont les informations relatives au leg (morceau de transect avec des conditions d'observations homogènes). Tu y trouveras notamment les données d'effort et de conditions d'observations (Beaufort et Conditions subjectives, la dernière étant codée de sorte à ce que 7 soit excellent des deux côtés et 0 soit nul des deux côtés)
    distdata rassemblent les informations sur les détections de grands dauphins (y compris quand il n'y en a pas eu sur un leg). Il y a notamment la distance de détection.
    segdata contient des covariables environnementales comme la bathymétrie etc...
    obsdata contient seulement les segments avec détections
Les fichiers legdata et segdata sont à l'echelle du segment, c'est à dire un morceau de legs d'environ 10 km). 

Donc les segments (colonne Sample.Label) sont nichés dans un leg (colonne Transect.Label), et les legs sont nichés dans un transect (colonne TRANSECT). Certains noms de colonnes sont choisis de sorte à coller à la terminologie de Distance.


Ces fichiers n'ont pas de filtres, donc tu as toutes les observations des grands dauphins.


SUR LES DONNEES ACTIVITIES

en pj les données : il y a 6 listes de 2 dataframes chacune. Le df 
intéressant est le obsdata avec la colonne Sample.Label pour faire la 
jointure avec les données envoyées précédemment, la colonne 'what' pour 
un descriptif de la détection, et les coordonnées exactes de la détection.

