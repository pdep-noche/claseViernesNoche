
suma :: Integer -> Integer -> Integer
suma nro otro = nro + otro

and' :: Bool -> Bool -> Bool
and' exp otraExp | exp  = otraExp
                  | otherwise = False

and'' :: Bool -> Bool -> Bool
and'' True exp = exp
and'' _  _ = False

or'' :: Bool -> Bool -> Bool
or'' False False = False
or'' _ _ = True

or' :: Bool -> Bool -> Bool
or' exp otraExp | exp = True
                 |otherwise = otraExp

signo :: Integer -> Integer
signo 0 = 0
signo nro | nro > 0 = 1
           | otherwise = -1


data Persona = Gimnasta { nombre :: String, fuerza :: Integer}

--Cuando hace la vertical incrementa la fuerza en 10 unidades
vertical :: Persona -> Persona
vertical pers = pers { fuerza = fuerza pers + 10}

julia :: Persona
julia = Gimnasta "julia" 10

pedro :: Persona
pedro = Gimnasta "pedro" 8

aplica :: (Integer -> Integer) -> (Integer, Integer, Integer) -> (Integer, Integer, Integer)
aplica f (num, otro, otroNum) = (f num, f otro, f otroNum)


suma''':: (Integer, Integer, Integer) -> (Integer, Integer, Integer)
suma''' (x, y, z) = (2*x, y, z)

-- ejemplo de composición podría ser:
-- (aplica (suma 5) . suma''') (3,4,7)
-- (11,9,12)