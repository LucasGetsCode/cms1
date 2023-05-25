-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(prod(x ::(Integer)))
  }

-- Pueden agregan las funciones que consideren necesarias
prodAux :: Integer -> Integer
prodAux n
  | n == 1 = 3
  | otherwise = (n^2 + 2*n) * prodAux (n-1)

prod :: Integer -> Integer
prod n = prodAux (2*n)
-- Completar la definición de la función
