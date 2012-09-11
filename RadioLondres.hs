module RadioLondres
where

type Texte = String
type Mot = String
type Choix = Int

génère :: Texte -> [Choix] -> Mot -> Texte
génère t cs m = unwords $ génère_aux t cs m


génère_aux :: Texte -> [Choix] -> Mot -> [Mot]
génère_aux t [] m = [m]
génère_aux t (c:cs) m = m : (génère_aux t cs (motSuivant t m c))

motSuivant :: Texte -> Mot -> Choix -> Mot
motSuivant t m c = 
  [suivant | (premier, suivant) <- motsEtSuivants,
                  premier == m] !!% c
  where
  motsEtSuivants = zip mots (tail $ cycle mots)
  mots = words t
  l !!% n = l !! (n `mod` length l)

