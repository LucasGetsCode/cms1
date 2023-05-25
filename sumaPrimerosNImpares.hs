-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(sumaPrimerosNImpares(x ::(Integer)))
  }

-- Pueden agregan las funciones que consideren necesarias

sumaPrimerosNImparesAux :: Integer -> Integer
sumaPrimerosNImparesAux n
  | n == 1 = 4
  | mod n 2 == 0 = sumaPrimerosNImparesAux (n-1)
  | mod n 2 /= 0 = (2*n + 2) + sumaPrimerosNImparesAux (n-1)

sumaPrimerosNImpares :: Integer -> Integer
sumaPrimerosNImpares n = sumaPrimerosNImparesAux (2*n-1)
-- Completar la definición de la función




