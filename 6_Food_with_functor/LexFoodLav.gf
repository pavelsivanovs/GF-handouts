instance LexFoodLav of LexFood = open SyntaxLav, ParadigmsLav in {
    oper
        cheese_N    = mkN "siers" ;
        fish_N      = mkN "zivs" feminine ;
        pizza_N     = mkN "pica" ;
        wine_N      = mkN "vīns" ;

        dutch_A     = mkA "holandiešu" ;
        french_A    = mkA "franču" ;
        italian_A   = mkA "itāliešu" ;

        delicious_A = mkA "gards" ;
        expensive_A = mkA "dārgs" ;
        fresh_A     = mkA "svaigs" ;

        quite_AdA   = mkAdA "diezgan" ;

        want_V      = mkV2 (mkV "gribēt" third_conjugation) ;
}