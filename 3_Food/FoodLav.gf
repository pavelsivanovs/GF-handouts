
concrete FoodLav of Food = {

    flags coding = utf8 ;

    param
        Number = Sg | Pl ;
        Gender = Masc | Fem ;
        Case = Nom | Gen | Dat | Acc | Loc ;

    lincat
        Kind        = {s : Number => Case => Str ; g : Gender} ;
        Nationality = {s : Str} ;
        Quality     = {s : Gender => Number => Case => Str} ;
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

        Pizza = {
            s = table {
                Sg => table {
                    Nom => "pica" ;
                    Gen => "picas" ;
                    Dat => "picai" ;
                    Acc => "picu" ;
                    Loc => "picā"
                } ;
                Pl => table {
                    Nom => "picas" ;
                    Gen => "picu" ;
                    Dat => "picām" ;
                    Acc => "picas" ;
                    Loc => "picās"
                }
            } ;
            g = Fem
        } ;

        Wine = {
            s = table {
                Sg => table {
                    Nom => "vīns" ;
                    Gen => "vīna" ;
                    Dat => "vīnam" ;
                    Acc => "vīnu" ;
                    Loc => "vīnā"
                } ;
                Pl => table {
                    Nom => "vīni" ;
                    Gen => "vīnu" ;
                    Dat => "vīniem" ;
                    Acc => "vīnus" ;
                    Loc => "vīnos"
                }
            } ;
            g = Masc
        } ;

        Delicious = {
            s = table {
                Masc => table {
                    Sg => table {
                        Nom => "gards" ;
                        Gen => "garda" ;
                        Dat => "gardam" ;
                        Acc => "gardu" ;
                        Loc => "gardā"
                    } ;
                    Pl => table {
                        Nom => "gardi" ;
                        Gen => "gardu" ;
                        Dat => "gardiem" ;
                        Acc => "gardus" ;
                        Loc => "gardos"
                    }
                } ;
                Fem => table {
                    Sg => table {
                        Nom => "garda" ;
                        Gen => "gardas" ;
                        Dat => "gardai" ;
                        Acc => "gardu" ;
                        Loc => "gardā"
                    } ;
                    Pl => table {
                        Nom => "gardas" ;
                        Gen => "gardu" ;
                        Dat => "gardām" ;
                        Acc => "gardas" ;
                        Loc => "gardās"
                    }
                }
            }
        } ;

        Expensive = {
            s = table {
                Masc => table {
                    Sg => table {
                        Nom => "dārgs" ;
                        Gen => "dārga" ;
                        Dat => "dārgam" ;
                        Acc => "dārgu" ;
                        Loc => "dārgā"
                    } ;
                    Pl => table {
                        Nom => "dārgi" ;
                        Gen => "dārgu" ;
                        Dat => "dārgiem" ;
                        Acc => "dārgus" ;
                        Loc => "dārgos"
                    }
                } ;
                Fem => table {
                    Sg => table {
                        Nom => "dārga" ;
                        Gen => "dārgas" ;
                        Dat => "dārgai" ;
                        Acc => "dārgu" ;
                        Loc => "dārgā"
                    } ;
                    Pl => table {
                        Nom => "dārgas" ;
                        Gen => "dārgu" ;
                        Dat => "dārgām" ;
                        Acc => "dārgas" ;
                        Loc => "dārgās"
                    }
                }
            }
        } ;

}

-- TODO (1): implementēt visas abstraktajā sintaksē deklarētās f-cijas
-- TODO (2): lietvārdu un īpašības vārdu locīšanas paradigmas implementēt kā palīgfunkcijas - sk. 4_Food
-- TODO (3): esošo implementāciju aizstāt ar augsta līmeņa implementāciju, izmantojot RGL API - sk. 5_Food
