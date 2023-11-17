module Main where

import Valor (valorTotal)

import System.IO (stdout, hSetBuffering, BufferMode(NoBuffering))

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering
  putStrLn "Digite a quantidade de Morangos(em kg): "
  morangos <- readLn
  putStrLn "Digite a quantidade de Maçãs(em kg): "
  macas <- readLn
  if macas < 0 || morangos < 0
    then putStrLn "Entrada inválida"
    else do
      let valor = valorTotal morangos macas
      putStrLn ("O valor total da compra é R$ " ++ show valor)
  
