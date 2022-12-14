;Henrique Vieira da Costa

;REFERENCIAS
;https://clojuredocs.org/clojure.core/nth
;https://clojuredocs.org/clojure.core/dec
;https://groups.google.com/g/clojure/c/fut-R-YCW-U?pli=1

; 1. Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada  ultimo  que  receba  uma  lista  e devolva o último elemento desta lista sem usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.  
(defn ultimo [l] (nth l (dec (count l))))

; 2. Utilizando a linguagem Clojure, crie uma função chamada penultimo que receba uma lista e  devolva  o  penúltimo  elemento  desta  lista  usar as  funções  já  prontas  e disponíveis para esta mesma finalidade na linguagem Clojure.  
(defn penultimo [l] (nth l (dec (dec (count l)))))

; 3. Utilizando a linguagem Clojure, crie uma função chamada elementoN que receba uma lista e um inteiro N e devolva o  elemento que  está na  posição N desta lista usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.
(defn elementoN
        [l n]
        (loop [contador n resto-lista l]
              (if (zero? contador)
                  (first resto-lista)
                (recur (dec contador) (rest resto-lista))
              )
        )
)
; 4. Utilizando  a  linguagem Clojure,  crie  uma função  chamada  inverso  que  receba uma  lista  e devolva esta lista com as posições dos elementos invertidas. Por exemplo recebe [1,2,3] e devolve [3,2,1]. Sem usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.
(defn inverso [coll]
  (loop [coll coll
         acc  (empty coll)]
        (if (empty? coll)
            acc
            (recur (rest coll) (cons (first coll) acc)))))

; 5. Utilizando a  linguagem Clojure, crie uma função chamada  mdc que receba  dois inteiros e devolve o mínimo divisor comum entre eles.  Sem usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.  
(defn mdc [a b]
  (loop [c (max a b) ]
      (if 
        (or 
          (identical? c 1) 
          (and 
            (zero?
              (mod a c)
            ) 
            (zero?
              (mod b c)
            ) 
          ) 
        )
        c
        (recur (dec c))
      )  
  )  
)

(println "Func 1: entrada: [1, 3, 4] ; resultado: "(ultimo [1, 3, 4]))
(println "Func 2: entrada: [1, 3, 4] ; resultado: "(penultimo [1, 3, 4]))
(println "Func 3: entrada: [2, 4, 6] ; resultado: "(elementoN [2,4,6,8,10] 2))
(println "Func 4: entrada: [1,2,3] ; resultado: "(inverso [1 2 3]) )
(println "Func 5: entrada: 20 6 ; resultado: "(mdc 20 6))
