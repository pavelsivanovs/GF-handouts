abstract Food = {

    flags startcat = Statement ;

    cat
        Statement ;		-- S
        Item ;			-- NP
        Kind ;			-- CN
        Nationality ;	-- A
        Quality ;		-- AP
        Degree ;        -- AdA
        Subject ;       -- Pron
        Action ;        -- VP
        Verb ;          -- V2

    fun
        Opinion : Item -> Quality -> Statement ;

        This, That, These, Those : Kind -> Item ;

        Cheese, Fish, Pizza, Wine : Kind ;

        QualityFood : Quality -> Kind -> Kind ;
        
        NationalFood : Nationality -> Kind -> Kind ;

        Dutch, French, Italian : Nationality ;

        Delicious, Expensive, Fresh : Quality ;

        ModifiedQuality : Degree -> Quality -> Quality ;

        Quite, Too, Very : Degree ;

        Claim : Subject -> Action -> Statement ;

        I, You, He, She : Subject ; 

        VerbPlusObject : Verb -> Item -> Action ;

        Want : Verb ;
}

-- TODO: ielādēt http://cloud.grammaticalframework.org/gfse/ un izmēģināt Minibar saskarni
