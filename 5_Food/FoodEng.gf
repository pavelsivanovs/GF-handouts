
concrete FoodEng of Food = open SyntaxEng, ParadigmsEng in {

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

        Cheese = mkCN (mkN "cheese") ;
        Fish   = mkCN (mkN "fish" "fish") ;
        Pizza  = mkCN (mkN "pizza") ;
        Wine   = mkCN (mkN "wine") ;

        QualityFood quality kind = mkCN quality kind ;
        NationalFood nationality kind = mkCN nationality kind ;

        Dutch   = mkA "Dutch" ;
        French  = mkA "French" ;
        Italian = mkA "Italian" ;

        Delicious = mkAP (mkA "delicious") ;
        Expensive = mkAP (mkA "expensive") ;
        Fresh     = mkAP (mkA "fresh") ;

        ModifiedQuality degree quality = mkAP degree quality ;

        Quite = mkAdA "quite" ;
        Too   = too_AdA ;
        Very  = very_AdA ;

        I   = i_Pron ;
        You = youSg_Pron ;
        He  = he_Pron ;
        She = she_Pron ;

        Want = mkV2 (mkV "want") ;

        Claim subject action        = mkS (mkCl (mkNP subject) action) ;
        VerbPlusObject verb item    = mkVP verb item ;
}
