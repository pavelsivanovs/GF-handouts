concrete FoodGer of Food = open SyntaxGer, ParadigmsGer in {

    flags coding = utf8 ;

    lincat
        Statement = S;
        Item = NP;
        Kind = CN;
        Nationality = A;
        Quality = AP;
        Degree = AdA;
        Subject = Pron;
        Action = VP;
        Verb = V2;

    lin
        Opinion item quality = mkS (mkCl item quality);

        This kind = mkNP this_Det kind;
        That kind = mkNP that_Det kind;
        These kind = mkNP these_Det kind;
        Those kind = mkNP those_Det kind;

        Cheese  = mkCN (mkN "Käse");
        Fish  = mkCN (mkN "Fisch");
        Pizza  = mkCN (mkN "pizza");
        Wine  = mkCN (mkN "Wein");

        QualityFood quality kind = mkCN quality kind;
        NationalFood nationality kind = mkCN nationality kind;

        Dutch  = mkA "holländisch";
        French  = mkA "Französisch";
        Italian  = mkA "italienisch";

        Delicious  = mkAP (mkA "teuer");
        Expensive  = mkAP (mkA "teuer");
        Fresh  = mkAP (mkA "köstlich");

        ModifiedQuality degree quality = mkAP degree quality;

        Quite  = mkAdv "ziemlich";
        Too  = too_AdA;
        Very  = very_AdA;

        He  = he_Pron;
        I  = i_Pron;
        She  = she_Pron;
        You  = youSg_Pron;

        Want  = mkV2 (mkV "mögen" "mag" "mochte" "möchte" "gemocht");
        
        Claim subject action = mkS (mkCl (mkNP subject) action);
        VerbPlusObject verb item = mkVP verb item;

}
