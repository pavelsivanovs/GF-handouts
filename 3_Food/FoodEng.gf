
concrete FoodEng of Food = {

    param Number = Sg | Pl ;

    lincat
        Kind        = {s : Number => Str} ;
        Nationality = {s : Str} ;
        Quality     = {s : Str} ;
        Degree      = {s : Str} ;
        Item        = {s : Str ; n : Number} ;
        Statement   = {s : Str} ;

    lin
        Opinion item quality = {
            s = item.s ++ case item.n of {Sg => "is" ; Pl => "are"} ++ quality.s
        } ;

        This kind = {
            s = "this" ++ kind.s ! Sg ;
            n = Sg
        } ;

        These kind = {
            s = "these" ++ kind.s ! Pl ;
            n = Pl
        } ;

        Pizza = {
            s = table {Sg => "pizza" ; Pl => "pizzas"}
        } ;

        Wine = {
            s = table {Sg => "wine" ; Pl => "wines"}
        } ;

        NationalFood nationality kind = {
            s = \\n => nationality.s ++ kind.s ! n
        } ;

        French  = {s = "French"} ;
        Italian = {s = "Italian"} ;

        Delicious = {s = "delicious"} ;
        Expensive = {s = "expensive"} ;

        ModifiedQuality degree quality = {
            s = degree.s ++ quality.s
        } ;

        Too  = {s = "too"} ;
        Very = {s = "very"} ;

}

-- TODO (1): implementēt visas abstraktajā sintaksē deklarētās f-cijas
-- TODO (2): esošo implementāciju aizstāt ar augsta līmeņa implementāciju, izmantojot RGL API - sk. 5_Food
