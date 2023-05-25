-- No editar esta parte
main :: IO ()
main = do
  x <- readLn
  print (sumaMenosQueMax (x :: (Int, Int, Int)))

-- Pueden agregan las funciones que consideren necesarias
maxs :: (Int, Int, Int) -> Int
maxs (a, b, c)
  | a >= b && a >= c = a
  | b >= a && b >= c = b
  | otherwise = c

mins :: (Int, Int, Int) -> Int
mins (a, b, c)
  | a <= b && a <= c = a
  | b <= a && b <= c = b
  | otherwise = c

medio :: (Int, Int, Int) -> Int
medio (a, b, c)
  | a == b || a == c = a
  | b == c = b
  | a > mins s && a < maxs s = a
  | b > mins s && b < maxs s = b
  | otherwise = c
  where s = (a,b,c)

sumaMenosQueMax :: (Int, Int, Int) -> Bool
-- Completar acá la definición de la función
-- True si (el máximo) es mayor a (la suma de los otros dos)
sumaMenosQueMax s = maxs s > (mins s + medio s)