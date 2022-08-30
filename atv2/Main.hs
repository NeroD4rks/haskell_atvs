-- 1. Escreva uma função chamada soma1 que recebe um inteiro como argumento e retorna um inteiro uma unidade maior que a entrada. 
soma1 :: Int -> Int
soma1 x = x + 1

-- 2. Escreva  uma  função  chamada  sempre  que,  não  importando  o  valor  de  entrada,  devolva sempre zero. Observe que neste caso a entrada pode ser de qualquer tipo. 
sempre :: x -> Int
sempre x = 0

-- 3. Escreva  uma  função  chamada  treco  que  receba  três  valores  em  ponto  flutuantes  com precisão dupla e retorne o resultado da soma dos dois primeiros multiplicado pelo terceiro.
treco :: Double -> Double -> Double -> Double
treco x y z = (x+y) * z

-- 4. Escreva uma função chamada resto que devolva o resto de uma divisão entre dois números inteiros. 
resto :: Int -> Int -> Int
resto x y =  mod x  y 

-- 5. Escreva uma função chamada precoMaior que devolva o maior valor entre quatro valores monetários. 
precoMaior :: Int -> Int -> Int -> Int -> Int
precoMaior a b c d
    | a >= b && a>= c && a >= d = a
    | b >= a && b>= c && b >= d = b
    | c >= b && c>= a && c >= d = c
    | otherwise = d

-- 6. Escreva uma função chamada impar que devolva True, sempre que o resultado do produto de dois números inteiros for ímpar.  
impar :: Int -> Int -> Bool
impar x y = if mod (div x y) 2 /= 0 then True else False 

{-
7 Em Haskell existe o tipo par cuja assinatura tem a seguinte forma: 𝑝𝑎𝑟∷(𝐼𝑛𝑡,𝐼𝑛𝑡). Escreva uma função em Haskell que devolva a soma dos componentes de um par de inteiros. 
-}
par::(Int, Int) -> Int
par (x, y) = x + y

-- 8. Escreva uma função em Haskell que receba números reais (double) e devolva o resultado da equação 𝑥2 +𝑦/2 +𝑧. 
equacao :: Double -> Double -> Double -> Double
equacao x y z = x ^ 2 + ( y/2 ) + z

{- 9. Escreva uma função em Haskell chamada diagnostico que receba o peso do aluno e imprima um  diagnóstico  de  obesidade,  segundo  a  tabela  que  pode  ser  encontrada  no  link: Sobrepeso,  obesidade  e  obesidade  mórbida:  entenda  a  diferença  entre  os  três  termos (cuidadospelavida.com.br).  Observe  que  este  diagnóstico  é  meramente  estatístico  e  não tem nenhum valor real, está sendo usado nesta questão apenas para a definição das faixas. Todo e qualquer diagnóstico deve ser feito por um profissional médico. -}
diagnostico ::  Double -> Double -> String  
diagnostico w h
    | imc > 17 && imc < 18.49 = "Abaixo do Peso"  
    | imc > 18.5 && imc < 24.99 = "Peso Normal"  
    | imc > 25 && imc < 29.99 = "Sobrepeso"      
    | imc > 30 && imc < 34.99 = "Obesidade Leve"  
    | imc > 35 && imc < 39.99 = "Obesidade Severa"  
    | imc > 40 = "Obesidade Morbida"  
    | otherwise = "Muito abaixo do Peso"
    where imc = w / h ^ 2
{-10. Escreva uma função em Haskell chamada bissexto que receba um ano e devolva True se o 
ano for bisexto sabendo que anos bissextos obedecem a seguinte regra:  
    𝑇𝑜𝑑𝑜𝑠 𝑜𝑠 𝑎𝑛𝑜𝑠 𝑞𝑢𝑒 𝑠𝑒𝑗𝑎𝑚 𝑑𝑖𝑣𝑖𝑠í𝑣𝑒𝑖𝑠 𝑝𝑜𝑟 4 
          𝐸𝑥𝑐𝑒𝑡𝑜 𝑜𝑠 𝑎𝑛𝑜𝑠 𝑞𝑢𝑒 𝑠ã𝑜 𝑚ú𝑙𝑡𝑖𝑝𝑙𝑜𝑠 𝑑𝑒 100 
                𝐸𝑥𝑐𝑒𝑡𝑜 𝑜𝑠 𝑎𝑛𝑜𝑠 𝑞𝑢𝑒 𝑠ã𝑜 𝑚ú𝑙𝑡𝑖𝑝𝑙𝑜𝑠 𝑑𝑒 400 
1997 não é bissexto, 1900 não é bissexto e 2000 é bissexto. 
-}
bissexto :: Int -> Bool
bissexto ano 
    | mod ano 100 /= 0 = False
    | mod ano 400 /= 0 = False
    | mod ano 4 == 0 = True
    | otherwise = False

-- 1. Escreva uma função chamada soma1 que recebe um inteiro como argumento e retorna um inteiro uma unidade maior que a entrada. 
soma1 :: Int -> Int
soma1 x = x + 1

-- 2. Escreva  uma  função  chamada  sempre  que,  não  importando  o  valor  de  entrada,  devolva sempre zero. Observe que neste caso a entrada pode ser de qualquer tipo. 
sempre :: x -> Int
sempre x = 0

-- 3. Escreva  uma  função  chamada  treco  que  receba  três  valores  em  ponto  flutuantes  com precisão dupla e retorne o resultado da soma dos dois primeiros multiplicado pelo terceiro.
treco :: Double -> Double -> Double -> Double
treco x y z = (x+y) * z

-- 4. Escreva uma função chamada resto que devolva o resto de uma divisão entre dois números inteiros. 
resto :: Int -> Int -> Int
resto x y =  mod x  y 

-- 5. Escreva uma função chamada precoMaior que devolva o maior valor entre quatro valores monetários. 
precoMaior :: Int -> Int -> Int -> Int -> Int
precoMaior a b c d
    | a >= b && a>= c && a >= d = a
    | b >= a && b>= c && b >= d = b
    | c >= b && c>= a && c >= d = c
    | otherwise = d

-- 6. Escreva uma função chamada impar que devolva True, sempre que o resultado do produto de dois números inteiros for ímpar.  
impar :: Int -> Int -> Bool
impar x y = if mod (div x y) 2 /= 0 then True else False 

{-
7 Em Haskell existe o tipo par cuja assinatura tem a seguinte forma: 𝑝𝑎𝑟∷(𝐼𝑛𝑡,𝐼𝑛𝑡). Escreva uma função em Haskell que devolva a soma dos componentes de um par de inteiros. 
-}
par::(Int, Int) -> Int
par (x, y) = x + y

-- 8. Escreva uma função em Haskell que receba números reais (double) e devolva o resultado da equação 𝑥2 +𝑦/2 +𝑧. 
equacao :: Double -> Double -> Double -> Double
equacao x y z = x ^ 2 + ( y/2 ) + z

{- 9. Escreva uma função em Haskell chamada diagnostico que receba o peso do aluno e imprima um  diagnóstico  de  obesidade,  segundo  a  tabela  que  pode  ser  encontrada  no  link: Sobrepeso,  obesidade  e  obesidade  mórbida:  entenda  a  diferença  entre  os  três  termos (cuidadospelavida.com.br).  Observe  que  este  diagnóstico  é  meramente  estatístico  e  não tem nenhum valor real, está sendo usado nesta questão apenas para a definição das faixas. Todo e qualquer diagnóstico deve ser feito por um profissional médico. -}
diagnostico ::  Double -> Double -> String  
diagnostico w h
    | imc > 17 && imc < 18.49 = "Abaixo do Peso"  
    | imc > 18.5 && imc < 24.99 = "Peso Normal"  
    | imc > 25 && imc < 29.99 = "Sobrepeso"      
    | imc > 30 && imc < 34.99 = "Obesidade Leve"  
    | imc > 35 && imc < 39.99 = "Obesidade Severa"  
    | imc > 40 = "Obesidade Morbida"  
    | otherwise = "Muito abaixo do Peso"
    where imc = w / h ^ 2
{-10. Escreva uma função em Haskell chamada bissexto que receba um ano e devolva True se o 
ano for bisexto sabendo que anos bissextos obedecem a seguinte regra:  
    𝑇𝑜𝑑𝑜𝑠 𝑜𝑠 𝑎𝑛𝑜𝑠 𝑞𝑢𝑒 𝑠𝑒𝑗𝑎𝑚 𝑑𝑖𝑣𝑖𝑠í𝑣𝑒𝑖𝑠 𝑝𝑜𝑟 4 
          𝐸𝑥𝑐𝑒𝑡𝑜 𝑜𝑠 𝑎𝑛𝑜𝑠 𝑞𝑢𝑒 𝑠ã𝑜 𝑚ú𝑙𝑡𝑖𝑝𝑙𝑜𝑠 𝑑𝑒 100 
                𝐸𝑥𝑐𝑒𝑡𝑜 𝑜𝑠 𝑎𝑛𝑜𝑠 𝑞𝑢𝑒 𝑠ã𝑜 𝑚ú𝑙𝑡𝑖𝑝𝑙𝑜𝑠 𝑑𝑒 400 
1997 não é bissexto, 1900 não é bissexto e 2000 é bissexto. 
-}
bissexto :: Int -> Bool
bissexto ano 
    | mod ano 100 /= 0 = False
    | mod ano 400 /= 0 = False
    | mod ano 4 == 0 = True
    | otherwise = False

main :: IO()
main = do

    putStrLn("Func. 1: entrada:10; resultado:" ++ show(soma1 10))
    putStrLn("Func. 2: entrada:100; resultado:" ++ show(sempre 100))
    putStrLn("Func. 3: entrada:2.1 2.1 3.1; resultado:" ++ show(treco 2.1 2.1 3.1))
    putStrLn("Func. 4: entrada:4 3; resultado:" ++ show(resto 4 3))
    putStrLn("Func. 5: entrada:4 5 8 6; resultado:" ++ show(precoMaior 4 5 8 6))
    putStrLn("Func. 6: entrada:12 2; resultado:" ++ show(impar 12 2))
    putStrLn("Func. 7: entrada:10 6; resultado:" ++ show(par (10, 6)))
    putStrLn("Func. 8: entrada:1 1 1; resultado:" ++ show(equacao 1 1 1))
    putStrLn("Func. 9: entrada:170 1.90; resultado:" ++ show(diagnostico 170 1.90 ))
    putStrLn("Func. 10: entrada:1977; resultado:" ++ show(bissexto 1977))
    
    
main = do

    putStrLn("Func. 1: entrada:10; resultado:" ++ show(soma1 10))
    putStrLn("Func. 2: entrada:100; resultado:" ++ show(sempre 100))
    putStrLn("Func. 3: entrada:2.1 2.1 3.1; resultado:" ++ show(treco 2.1 2.1 3.1))
    putStrLn("Func. 4: entrada:4 3; resultado:" ++ show(resto 4 3))
    putStrLn("Func. 5: entrada:4 5 8 6; resultado:" ++ show(precoMaior 4 5 8 6))
    putStrLn("Func. 6: entrada:12 2; resultado:" ++ show(impar 12 2))
    putStrLn("Func. 7: entrada:10 6; resultado:" ++ show(par (10, 6)))
    putStrLn("Func. 8: entrada:1 1 1; resultado:" ++ show(equacao 1 1 1))
    putStrLn("Func. 9: entrada:170 1.90; resultado:" ++ show(diagnostico 170 1.90 ))
    putStrLn("Func. 10: entrada:1977; resultado:" ++ show(bissexto 1977))
    
    
