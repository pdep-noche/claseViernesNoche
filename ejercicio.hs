
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


data Persona = Gimnasta { nombre :: String, fuerza :: Integer} deriving Show


vertical :: Persona -> Persona
vertical pers = pers { fuerza = fuerza pers + 10}

julia :: Persona
julia = Gimnasta "julia" 10

pedro :: Persona
pedro = Gimnasta "pedro" 8


aplica f (num, otro, otroNum ) = (f num, f otro, f otroNum)








