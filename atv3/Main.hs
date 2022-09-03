-- Henrique Vieira da Costa

{-1. Escreva  uma  função  para  o  cálculo  dos  números  da  sequência  de  Fibonacci,  utilizando Haskell.  -}

fibonacci :: Int -> Int
fibonacci (0) = 0
fibonacci (1) = 1
fibonacci (x) = fibonacci (x - 2) + fibonacci (x - 1)

{- 2. Um dos primeiros algoritmos documentados é o algoritmo para o cálculo do Maior Divisor Comum  (MDC)  de  Euclides  publicado  por  volta do  ano 300  AC.  Podemos simplificar  este algoritmo  dizendo  que  dados  dois  inteiros  A  e  B,  o  MDC  entre  eles  será dado  pelo  valor absoluto de A se B=0 e pelo MDC entre B e o resto da divisão de A por B se B>0. Escreva uma  função  para  o  cálculo  do  MDC  entre  dois  números  inteiros  positivos,  usando  o algoritmo de Euclides conforme apresentado aqui, utilizando Haskell.    -}

mdc :: Int -> Int -> Int
mdc a b | b <= 0 = a
        | otherwise = mdc b (mod a b)

{- 3. Escreva uma função recursiva que dado um número inteiro n, devolva a soma dos dígitos deste  número.  Exemplo:  dado  1234  a  função  deverá  devolver  10.  Utilizando  Haskell  e recursividade. -}

soma_dgt :: Int -> Int
soma_dgt x = if x == 0 then 0 else mod x 10 + soma_dgt (div x 10)

{- 4. Escreva  uma  função  que  devolva  a  soma  de  todos  os  números  menores  que  10000  que sejam múltiplos de 3 ou 5. -}
menores_dez_mil :: Int -> Int -> Int
menores_dez_mil a xs | a >= 10000 = xs
                     | mod a 3 == 0 || mod a 5 == 0 = a + menores_dez_mil (a + 1) xs
                     | otherwise = menores_dez_mil (a + 1) xs

{-5. Escreva  uma  função que,  recebendo  uma  lista  de  inteiros,  apresente  a  diferença  entre a soma dos quadrados e o quadrado da soma destes inteiros, usando recursividade. -}
soma_aux :: [Int] -> Int -> Int
soma_aux x y | null (tail x) = head x ^ y
             | otherwise = (head x) ^ y + soma_aux (tail x) y

soma :: [Int] -> Int
soma x = soma_aux x 2 - (soma_aux x 1) ^ 2

{-6. O Crivo de Eratóstenes não é o melhor algoritmo para encontrar números primos. Crie uma função que implemente o Crivo de Euler (Euler’s Sieve) para encontrar todos os números primos menores que um determinado inteiro dado. -}
d :: Int -> [Int]
d 0 = [1]
d n = [x | x <- [1, 2 .. n], mod n x == 0]

primo :: Int -> [Int]
primo n = [x | x <- [1, 2 .. n], length (d x) == 2]

{- 7. Nem  só  de  Fibonacci  vivem  os  exemplos  de  recursão.  Escreva  uma  função  que  devolva todos os números de uma sequência de Lucas (2, 1, 3, 4, 7, 11, 18, 29, 47, 76, 123) menores que um inteiro dado. -}
lucas_aux :: Int -> Int
lucas_aux (0) = 2
lucas_aux (1) = 1
lucas_aux n = lucas_aux (n - 2) + lucas_aux (n - 1)

lucas :: Int -> [Int]
lucas n = [lucas_aux (x) | x <- [0..n]]

{- 8. Escreva uma função, chamada aoContrario em Haskel para reverter uma lista. Dado [1,2,3]
devolva [3,2,1]. -}
aoContrario :: [Int] -> [Int]
aoContrario x | length x == 1 = x
              | otherwise = aoContrario (tail x) ++ [head x]

{- 9. Escreva uma função chamada somaRecursiva que recebe dois valores inteiros e devolve o produto destes valores sem usar o operador de multiplicação.  -}
somaRecursiva :: Int -> Int -> Int
somaRecursiva x y | y == 1 = x
                  | otherwise = x + somaRecursiva x (y -1)

{- 10. Escreva uma função chamada comprimento que receba uma lista de  inteiros e devolva o comprimento desta lista. Observe que você não pode usar nenhuma função que já calcule o comprimento de uma lista.
-}
comprimento :: [Int] -> Int -> Int
comprimento x y | null (tail x) = y + 1
                | otherwise = comprimento (tail x) (1 + y)

main = do
  putStrLn ("Func. 1: entrada:4; resultado:" ++ show (fibonacci 4))
  putStrLn ("Func. 2: entrada:12 6; resultado:" ++ show (mdc 12 6))
  putStrLn ("Func. 3: entrada:12345; resultado:" ++ show (soma_dgt 12345))
  putStrLn ("Func. 4: entrada:0 0; resultado:" ++ show (menores_dez_mil 0 0))
  putStrLn ("Func. 5: entrada:[2,2,2]; resultado:" ++ show (soma [2, 2, 2]))
  putStrLn ("Func. 6: entrada:23; resultado:" ++ show (primo 23))
  putStrLn("Func. 7: entrada:10; resultado:" ++ show(lucas 10))
  putStrLn ("Func. 8: entrada:[1,2,3, 4]; resultado:" ++ show (aoContrario [1, 2, 3, 4]))
  putStrLn ("Func. 9: entrada:4 3; resultado:" ++ show (somaRecursiva 4 3))
  putStrLn ("Func. 10: entrada:[1, 2, 3, 4, 5, 6, 7]; resultado:" ++ show (comprimento [1, 2, 3, 4, 5, 6, 7] 0))
