CodingDojo-20120910-RadioLondres.hs
===================================

Coding Dojo du 10 Septembre 2012 avec des illustres agilistes
parisiens.

Lancer le main :
`runghc Main.hs Je < texte`

Sur une debian ou sur ubuntu, j'ai les packages :

* ghc (7.4.x) (x=5 sur debian, 1 sur ubuntu)
* libghc-random-dev

Et pour faire marcher le main, j'ai du importer *System.Random* à la place de *Random*.
Par conséquent, il faut appliquer la commande suivante :
`sed -i s,Random,System.Random,g Main.hs`


