instance LexFoodEng of LexFood = open SyntaxEng, ParadigmsEng in {
    oper
        cheese_N    = mkN "cheese" ;
        fish_N      = mkN "fish" "fish" ;
        pizza_N     = mkN "pizza" ;
        wine_N      = mkN "wine" ;

        dutch_A     = mkA "Dutch" ;
        french_A    = mkA "French" ;
        italian_A   = mkA "Italian" ;

        delicious_A = mkA "delicious" ;
        expensive_A = mkA "expensive" ;
        fresh_A     = mkA "fresh" ;

        quite_AdA   = mkAdA "quite" ;

        want_V      = mkV2 (mkV "want") ;
}