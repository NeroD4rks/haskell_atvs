-- Henrique Vieira da Costa
import Data.Char

{- 1. Usando List Comprehension escreva uma função, chamada divisoresDeN, que devolva uma lista dos divisores de um número dado. -}
divisoresDeN :: Int -> [Int]
divisoresDeN n = [x | x <- [1..n], (mod n x) == 0]

{- 2. Usando  List Comprehension  escreva  uma  função, chamada  contaCaractere,  que  conte  a ocorrência de um caractere específico, em uma string dada. -}
contaCaractere :: String -> Char -> Int
contaCaractere x y = length [z | z <- x , (toLower y) == (toLower z)]

{- 3. Usando List Comprehension escreva uma função, chamada dobroNaoNegativo, que devolve o dobro dos valores dos elementos não negativos da lista de inteiros dada. -}
dobroNaoNegativo :: [Int] -> [Int]
dobroNaoNegativo x = [y*2 | y <- x, y > -1]

{- 4. Usando List Comprehension escreva uma função, chamada pitagoras, que devolva uma lista de triplas, não repetidas, contendo os lados dos triângulos retângulos possíveis de serem construídos por inteiros entre 1 e um número inteiro dado. -}
pitagoras :: Int -> [(Int, Int, Int)]
pitagoras n = [(x,y,z) | x <-[1..n], y <-[1..n], z <- [1..n], ((x^2) + (y^2)) == (z^2), z > x, z > y, y > x]

{- 5. Números  perfeitos  são  aqueles  cuja  soma  dos seus  divisores  é  igual  ao  próprio  número. Usando List Comprehension escreva uma função, chamada numerosPerfeitos, que devolva uma lista contendo todos os números perfeitos menores que um número dado. Lembre-se que você já tem uma função que devolve uma lista dos divisores de um número dado. -}
numerosPerfeitos ::  Int -> [Int]
numerosPerfeitos n = [x | x <- [1..n], sum (init (divisoresDeN x)) == x]

{- 6. Usando List Comprehension escreva uma função, chamada produtoEscalar, que devolva o produto escalar entre duas listas de inteiros. Lembre-se, existem as funções fst, snd e zip no prelude que podem ser úteis. -}
produtoEscalar :: [Int] -> [Int] -> Int
produtoEscalar x y = sum [i1 * i2 | (i1,i2) <- zip x y]

{- 7. Usando  List Comprehension  escreva  uma  função, chamada  primeirosPrimos,  que  devolva uma lista contendo, os n primeiros números primos a partir do número 2. -}
primeirosPrimos :: Int -> [Int]
primeirosPrimos valor = takeWhile (\x -> length [n | n <- [2..(x-1)], length((divisoresDeN n)) == 2] < valor ) [n | n <- [2..], length((divisoresDeN n)) == 2]

{- 8. Usando  List Comprehension  escreva  uma  função,  chamada  paresOrdenados,  que  devolva uma  lista  de  par ordenados  contendo  uma  potência  de  2  e  uma potência de  3  até  um determinado número dado. Observe que estes números podem ser bem grandes. -}

paresOrdenados :: Int -> [(Integer, Integer)]
paresOrdenados n = [(2^x, 3^x) | x <- [0..n] ]

main = do
    putStrLn("Funcao1: entrada: 10; resultado:" ++ show(divisoresDeN 10))
    putStrLn("Funcao2: entrada: Henrique; resultado:" ++ show(contaCaractere "Henrique" 'e'))
    putStrLn("Funcao3: entrada: [-3, -2,-1,0,1,2, 3, 4]; resultado:" ++ show(dobroNaoNegativo  [-3, -2, -1, 0, 1, 2, 3, 4]))
    putStrLn("Funcao4: entrada: 20; resultado:" ++ show(pitagoras  20))
    putStrLn("Funcao5: entrada: 100; resultado:" ++ show(numerosPerfeitos  100))
    putStrLn("Funcao6: entrada: [1,2,3] [4, 5, 6]; resultado:" ++ show(produtoEscalar  [1,2,3] [4, 5, 6]))
    putStrLn("Funcao7: entrada: 10; resultado:" ++ show(primeirosPrimos 10))
    putStrLn("Funcao8: entrada: 10; resultado:" ++ show(paresOrdenados 10))

