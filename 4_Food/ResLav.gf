
resource ResLav = open Predef in {

    flags coding = utf8 ;

    param
        Gender = Masc | Fem ;
        Number = Sg | Pl ;
        Case = Nom | Gen | Dat | Acc | Loc ;

    oper
        N : Type = {s : Number => Case => Str ; g : Gender} ;
        A : Type = {s : Gender => Number => Case => Str} ;

        mkN = overload {
            mkN : Str -> N = \lemma -> lin N (mkN_Reg lemma) ;
            mkN : Str -> Gender -> N = \lemma,gender -> lin N (mkN_Gend lemma gender) ;
        } ;

        mkN_Reg : Str -> N = \lemma -> mkN_Gend lemma Masc ;

        mkN_Gend : Str -> Gender -> N = \lemma,gender ->
            case lemma of {
                _ + "s" => table {Masc => mkN_D1 lemma ; Fem => mkN_D6 lemma} ! gender ;
                _ + "š" => mkN_D1 lemma ;
                _ + "a" => mkN_D4 lemma ;
                _       => mkN_Indecl lemma gender
            } ;

        mkN_D1 : Str -> N = \lemma ->
            let stem : Str = Predef.tk 1 lemma in {
                s = table {
                    Sg => table {
                        Nom => lemma ;
                        Gen => stem + "a" ;
                        Dat => stem + "am" ;
                        Acc => stem + "u" ;
                        Loc => stem + "ā"
                    } ;
                    Pl => table {
                        Nom => stem + "i" ;
                        Gen => stem + "u" ;
                        Dat => stem + "iem" ;
                        Acc => stem + "us" ;
                        Loc => stem + "os"
                    }
                } ;
                g = Masc
            } ;

        mkN_D4 : Str -> N = \lemma ->
            let stem : Str = Predef.tk 1 lemma in {
                s = table {
                    Sg => table {
                        Nom => stem + "a" ;
                        Gen => stem + "as" ;
                        Dat => stem + "ai" ;
                        Acc => stem + "u" ;
                        Loc => stem + "ā"
                    } ;
                    Pl => table {
                        Nom => stem + "as" ;
                        Gen => stem + "u" ;
                        Dat => stem + "ām" ;
                        Acc => stem + "as" ;
                        Loc => stem + "ās"
                    }
                } ;
                g = Fem
            } ;

        mkN_D6 : Str -> N = \lemma -> {
            s = \\_,_ => lemma ;    -- FIXME
            g = Fem
        } ;

        mkN_Indecl : Str -> Gender -> N = \lemma,gender -> {
            s = \\_,_ => lemma ;
            g = gender
        } ;

        mkA : Str -> A = \lemma ->
            let stem : Str = Predef.tk 1 lemma in {
                s = table {
                    Masc => table {
                        Sg => table {
                            Nom => lemma ;
                            Gen => stem + "a" ;
                            Dat => stem + "am" ;
                            Acc => stem + "u" ;
                            Loc => stem + "ā"
                        } ;
                        Pl => table {
                            Nom => stem + "i" ;
                            Gen => stem + "u" ;
                            Dat => stem + "iem" ;
                            Acc => stem + "us" ;
                            Loc => stem + "os"
                        }
                    } ;
                    Fem => table {
                        Sg => table {
                            Nom => stem + "a" ;
                            Gen => stem + "as" ;
                            Dat => stem + "ai" ;
                            Acc => stem + "u" ;
                            Loc => stem + "ā"
                        } ;
                        Pl => table {
                            Nom => stem + "as" ;
                            Gen => stem + "u" ;
                            Dat => stem + "ām" ;
                            Acc => stem + "as" ;
                            Loc => stem + "ās"
                        }
                    }
                }
            } ;

}

-- TODO: sk. RGL
