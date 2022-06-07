instance LexFoodGer of LexFood = open SyntaxGer, ParadigmsGer in {
    oper
        cheese_N    = mkN "Käse" "Käsen" masculine ;
        fish_N      = mkN "Fisch" ;
        pizza_N     = mkN "Pizza" "Pizzen" feminine ;
        wine_N      = mkN "Wein" ;

        dutch_A     = mkA "holländisch" ;
        french_A    = mkA "französisch" ;
        italian_A   = mkA "italienisch" ;

        delicious_A = mkA "köstlich" ;
        expensive_A = mkA "teuer" ;
        fresh_A     = mkA "frisch" ;

        quite_AdA   = mkAdv "ziemlich" ;

        want_V      = mkV2 (mkV "mögen" "mag" "mochte" "möchte" "gemocht") ;
}