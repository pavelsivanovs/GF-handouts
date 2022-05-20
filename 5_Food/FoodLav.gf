
concrete FoodLav of Food = open SyntaxLav, ParadigmsLav in {

    flags coding = utf8 ;

    lincat
        Statement   = S ;
        Item        = NP ;
        Kind        = CN ;
        Nationality = A ;
        Quality     = AP ;
        Degree      = AdA ;

    lin
        Opinion item quality = mkS (mkCl item quality) ;

        This  kind = mkNP this_Det kind ;
        That  kind = mkNP that_Det kind ;
        These kind = mkNP these_Det kind ;
        Those kind = mkNP those_Det kind ;

        Cheese = mkCN (mkN "siers") ;
        Fish   = mkCN (mkN "zivs" feminine) ;
        Pizza  = mkCN (mkN "pica") ;
        Wine   = mkCN (mkN "vīns") ;

        NationalFood nationality kind = mkCN nationality kind ;

        Dutch   = mkA "holandiešu" ;
        French  = mkA "franču" ;
        Italian = mkA "itāliešu" ;

        Delicious = mkAP (mkA "gards") ;
        Expensive = mkAP (mkA "dārgs") ;
        Fresh     = mkAP (mkA "svaigs") ;

        ModifiedQuality degree quality = mkAP degree quality ;

        Quite = mkAdA "diezgan" ;
        Too   = too_AdA ;
        Very  = very_AdA ;

}
