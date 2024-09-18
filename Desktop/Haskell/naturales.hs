




 

esImpar :: Integer -> Bool 
esImpar x  = if mod x 2 /= 0 then True else False 



menores :: Int -> Int -> Int 


menores x y | x == y = "error,son iguales"




--Verifica si es un natural
esNatural :: Integer -> String
esNatural x = if x > 0 then  "es un natural" else  "no es un natural"

--Verificacion general 

verifica :: Integer -> String

verifica x | esPar x =  "Es par"
           | esImpar x =  "Es impar"




--Ejericios de practico 


menor :: Integer -> Integer -> Bool 

menor m n = if m < n then True else False 


min :: Int -> Int -> Int 
min x y  | x < y = x 
         | x > y = y



--Verifica si es par 

esPar :: Integer -> Bool 



esPar x = if mod x 2  == 0 then True else False













            















