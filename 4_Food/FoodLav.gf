
concrete FoodLav of Food = open ResLav in {

    flags coding = utf8 ;

    lincat
        Kind        = N ;
        Nationality = {s : Str} ;
        Quality     = A ;
        Degree      = {s : Str} ;
        Item        = {s : Str ; g : Gender ; n : Number} ;
        Statement   = {s : Str} ;

    lin
        Opinion item quality = {
            s = item.s ++ "ir" ++ quality.s ! item.g ! item.n ! Nom
        } ;

        This kind = {
            s = case kind.g of {Masc => "šis" ; Fem => "šī"} ++ kind.s ! Sg ! Nom ;
            g = kind.g ;
            n = Sg
        } ;

        These kind = {
            s = case kind.g of {Masc => "šie" ; Fem => "šīs"} ++ kind.s ! Pl ! Nom ;
            g = kind.g ;
            n = Pl
        } ;

        NationalFood nationality kind = {
            s = \\n,c => nationality.s ++ kind.s ! n ! c ;
            g = kind.g
        } ;

        French  = {s = "franču"} ;
        Italian = {s = "itāliešu"} ;

        ModifiedQuality degree quality = {
            s = \\g,n,c => degree.s ++ quality.s ! g ! n ! c
        } ;

        Too  = {s = "pārāk"} ;
        Very = {s = "ļoti"} ;

        Pizza = mkN "pica" ;
        Wine  = mkN "vīns" ;

        Delicious = mkA "gards" ;
        Expensive = mkA "dārgs" ;

}
