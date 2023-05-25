-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(combinacionesMenoresOiguales(x ::(Integer)))
  }

-- Pueden agregan las funciones que consideren necesarias

combinacionesMenoresOigualesAux :: Integer -> Integer -> Integer
combinacionesMenoresOigualesAux i m
  | i == 0 = 0 
  | otherwise = segundaSumatoria m
  where segundaSumatoria :: Integer -> Integer
        segundaSumatoria j
          | j == 1 = 1 + combinacionesMenoresOigualesAux (i-1) m
          | i * j <= m = 1 + segundaSumatoria (j-1)
          | otherwise = segundaSumatoria (j-1)

combinacionesMenoresOiguales :: Integer -> Integer
combinacionesMenoresOiguales n = combinacionesMenoresOigualesAux n n
