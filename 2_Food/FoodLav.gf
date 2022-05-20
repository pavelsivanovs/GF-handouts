
concrete FoodLav of Food = {

    flags coding = utf8 ;

    param
        Number = Sg | Pl ;
        Gender = Masc | Fem ;

    lincat
        Kind      = {s : Number => Str ; g : Gender} ;
        Quality   = {s : Gender => Number => Str} ;
        Item      = {s : Str ; g : Gender ; n : Number} ;
        Statement = {s : Str} ;

    lin
        Opinion item quality = {
            s = item.s ++ "ir" ++ quality.s ! item.g ! item.n
        } ;

        This kind = {
            s = case kind.g of {Masc => "šis" ; Fem => "šī"} ++ kind.s ! Sg ;
            g = kind.g ;
            n = Sg
        } ;

        These kind = {
            s = case kind.g of {Masc => "šie" ; Fem => "šīs"} ++ kind.s ! Pl ;
            g = kind.g ;
            n = Pl
        } ;

        Cheese = {
            s = table {Sg => "siers" ; Pl => "sieri" } ;
            g = Masc
        } ;

        Pizza = {
            s = table {Sg => "pica" ; Pl => "picas" } ;
            g = Fem
        } ;

        Delicious = {
            s = table {
                Masc => table {Sg => "gards" ; Pl => "gardi"} ;
                Fem  => table {Sg => "garda" ; Pl => "gardas"}
            }
        } ;

        Expensive = {
            s = table {
                Masc => table {Sg => "dārgs" ; Pl => "dārgi"} ;
                Fem  => table {Sg => "dārga" ; Pl => "dārgas"}
            }
        } ;

}

-- TODO (1): implementēt visas abstraktajā sintaksē deklarētās f-cijas
-- TODO (2): implementēt f-cijas NationalFood, ModifiedQuality, kā arī saistītās f-cijas un tipus - sk. 3_Food
-- TODO (3): esošo implementāciju aizstāt ar augsta līmeņa implementāciju, izmantojot RGL API - sk. 5_Food
