-- Henrique Vieira da Costa

import Data.Char
{- 1. Escreva uma função chamada fatorialn que usando o operador range e a função foldr devolva o fatorial de n. -}

fatorialn n = foldl (*) 1 [1..n]

{- 2. Usando a função map escreva uma função, chamada quadradoReal que recebe uma lista de números reais, positivos e negativos e devolva uma lista com o quadrado de cada um dos reais listados. -}
aoQuadrado x = x * x

quadradoReal :: [Int] -> [Int]
quadradoReal l = map aoQuadrado l

{- 3. Usando a função map escreva uma função, comprimentoPalavras que recebe uma lista de palavras e devolve uma lista com o comprimento de cada uma destas palavras. -}

comprimentoPalavras :: [String] -> [Int]
comprimentoPalavras s = map length s 

{- 4. Usando a função filter escreva uma função, chamada maiorMultiploDe29 devolva o maior número entre 0 e 100000 que seja divisivel por 29.-}

maiorMultiploDe29 :: Int
maiorMultiploDe29 = maximum (filter (\x -> mod x 29 == 0) [0..100000])

{-5. Usando a função filter escreva uma função, chamada maiorMultiploDe que recebe um inteiro e devolva o maior número entre 0 e 100000 que seja divisivel por este inteiro. -}
maiorMultiploDe :: Int -> Int
maiorMultiploDe  x = maximum (filter (\y -> mod y x == 0) [0..100000])

{- 6. Usando Haskell e a função foldr defina uma função, chamada somaQuadrados que devolva a soma dos quadrados dos itens de uma lista de números naturais de comprimento n. De tal forma que: 𝑠𝑜𝑚𝑎𝑄𝑢𝑎𝑑𝑟𝑎𝑑𝑜𝑠 = 1 2 + 2 2 + 3 2 + 4 2. . . +𝑛2.-}

somaQuadrados n = foldr  (\x y -> (x**2)+y) 0 [1..n]

{- 7. Usando Haskell e a função foldl defina uma função, chamada comprimento, que devolva o comprimento (cardinalidade) de uma lista dada. -}
--comprimento :: [Int] -> Int
--comprimento l = foldl l

{- 8. Esta é uma tarefa de pesquisa: você deve encontrar e executar exemplos em Haskell do uso das seguintes funções disponíveis no Prelude: flip, ord, max, min, curry, uncurry. Para cada uma destas funções você deverá encontrar, executar e testar no mínimo dois exemplos.-}

teste_flip = flip (/) 1 2
teste_flip2 = flip (>) 3 5

teste_ord = ord '\n'
teste_ord2 = ord 'a'
teste_max = max 2 4
teste_max2 = max 10 4

teste_min = min 3 15
teste_min2 =  min 2 4

teste_curry = curry fst 5 3
teste_curry2 = curry fst 10 3

teste_uncurry = uncurry mod (10,4)
teste_uncurry2 = uncurry mod (20,4)

main = do
  putStrLn("Func. 1: entrada:5; resultado:" ++ show(show(fatorialn 5)))
  putStrLn("Func. 2: entrada:5; resultado:" ++ show(show(quadradoReal [5,-5, 10])))
  putStrLn("Func. 3: entrada:5; resultado:" ++ show(show(comprimentoPalavras ["henrique", "oi", "frank"])))
  putStrLn("Func. 4: entrada:; resultado:" ++ show(show(maiorMultiploDe29)))
  putStrLn("Func. 5: entrada:9; resultado:" ++ show(show(maiorMultiploDe 9)))
  putStrLn("Func. 6: entrada:4; resultado:" ++ show(show(somaQuadrados 4)))
  putStrLn("Func. 7: entrada:4; resultado:" ++ show(show(somaQuadrados 4)))
  putStrLn("Func. 8: entrada:4; resultado:" ++ show(show(somaQuadrados 4)))
