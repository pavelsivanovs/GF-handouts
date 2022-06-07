incomplete concrete FoodI of Food = open Syntax, LexFood in {
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

        Cheese = mkCN cheese_N ;
        Fish   = mkCN fish_N ;
        Pizza  = mkCN pizza_N ;
        Wine   = mkCN wine_N ;

        QualityFood quality kind = mkCN quality kind ;
        NationalFood nationality kind = mkCN nationality kind ;

        Dutch   = dutch_A ;
        French  = french_A ;
        Italian = italian_A ;

        Delicious = mkAP delicious_A ;
        Expensive = mkAP expensive_A ;
        Fresh     = mkAP fresh_A ;

        ModifiedQuality degree quality = mkAP degree quality ;

        Quite = quite_AdA ;
        Too   = too_AdA ;
        Very  = very_AdA ;

        I   = i_Pron ;
        You = youSg_Pron ;
        He  = he_Pron ;
        She = she_Pron ;

        Want = want_V ;

        Claim subject action        = mkS (mkCl (mkNP subject) action) ;
        VerbPlusObject verb item    = mkVP verb item ;
}