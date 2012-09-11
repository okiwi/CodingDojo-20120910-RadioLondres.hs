module Tests
where
import Test.HUnit
import RadioLondres

main = runTestTT $ TestList [
    génère "Le petit chat" [] "petit" ~?= "petit",
    génère "Le petit chat" [] "Le" ~?= "Le",
    génère "Le petit chat" [0] "Le" ~?= "Le petit",
    génère "Le petit chat" [0] "petit" ~?= "petit chat",
    génère "Le petit chat" [0, 0] "Le" ~?= "Le petit chat",
    génère "Regarde le petit chat et le grand chien" [1, 0] "le" ~?= "le grand chien",
    génère "Le petit chat" [1] "Le" ~?= "Le petit",
    génère "Le petit chat" [0] "chat" ~?= "chat Le"
  ]
