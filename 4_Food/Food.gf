
abstract Food = {

    flags startcat = Statement ;

    cat
        Statement ;		-- S
        Item ;			-- NP
        Kind ;			-- CN
        Nationality ;	-- A
        Quality ;		-- AP
        Degree ;        -- AdA

    fun
        Opinion : Item -> Quality -> Statement ;

        This, That, These, Those : Kind -> Item ;

        Cheese, Fish, Pizza, Wine : Kind ;

        NationalFood : Nationality -> Kind -> Kind ;

        Dutch, French, Italian : Nationality ;

        Delicious, Expensive, Fresh : Quality ;

        ModifiedQuality : Degree -> Quality -> Quality ;

        Quite, Too, Very : Degree ;

}
