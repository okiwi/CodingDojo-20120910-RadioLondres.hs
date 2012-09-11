module Main
where
import System.Environment
import Random
import RadioLondres

main = do
  texteEntré <- getContents 
  [motDépart] <- getArgs
  générateur <- newStdGen
  let choix = randoms générateur
  let texteGénéré = takeWhile (/= '.') $ génère texteEntré choix motDépart
  putStrLn $ texteGénéré ++ "."
