-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(sumaDigitos(x ::(Int)))
  }


-- Pueden agregan las funciones que consideren necesarias
lengthInt :: Int -> Int
lengthInt n
    | n < 10 = 1
    | otherwise = 1 + lengthInt (div n 10)

ultimosDigitos :: Int -> Int
ultimosDigitos n = mod n (10^(lengthInt n -1))

primerDigito :: Int -> Int
primerDigito n
    | n < 10 = n
    | otherwise = primerDigito (div n 10)

sumaDigitos :: Int -> Int
sumaDigitos n
  | n < 10 = n
  | otherwise = primerDigito n + sumaDigitos (ultimosDigitos n)
-- Completar la definición de la función
