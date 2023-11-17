module Valor where

valorTotal :: Double -> Double -> Double
valorTotal morangos maçãs = valorMorangos + valorMacas
  where
    valorMorangos
      | morangos > 5 = morangos * 7.20
      | morangos <= 5 = morangos * 8.5

    valorMacas
      | maçãs > 5 = maçãs * 4.75
      | maçãs <= 5 = maçãs * 5.25
