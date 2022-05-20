
concrete FoodEng of Food = {

    param Number = Sg | Pl ;

    lincat
        Kind      = {s : Number => Str} ;
        Quality   = {s : Str} ;
        Item      = {s : Str ; n : Number} ;
        Statement = {s : Str} ;

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

        Delicious = {s = "delicious"} ;
        Expensive = {s = "expensive"} ;

}

-- TODO (1): implementēt visas abstraktajā sintaksē deklarētās f-cijas
-- TODO (2): implementēt f-cijas NationalFood, ModifiedQuality, kā arī saistītās f-cijas un tipus - sk. 3_Food
-- TODO (3): esošo implementāciju aizstāt ar augsta līmeņa implementāciju, izmantojot RGL API - sk. 5_Food
