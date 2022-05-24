
concrete FoodLav of Food = open SyntaxLav, ParadigmsLav in {

    flags coding = utf8 ;

    lincat
        Statement   = S ;
        Item        = NP ;
        Kind        = CN ;
        Nationality = A ;
        Quality     = AP ;
        Degree      = AdA ;
        Subject     = Pron ;
        Action      = VP ;
        Verb        = V2 ;

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

        QualityFood quality kind = mkCN quality kind ;
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

        I   = i_Pron ;
        You = youSg_Pron ;
        He  = he_Pron ;
        She = she_Pron ;

        Want = mkV2 (mkV "gribēt" third_conjugation) ;

        Claim subject action        = mkS (mkCl (mkNP subject) action) ;
        VerbPlusObject verb item    = mkVP verb item ;
}
