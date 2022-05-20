
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

-- FIXME (MD 2.2): this French Italian pizza is too very delicious
-- TODO  (MD 2.2): this expensive French wine is very (very) delicious
-- TODO  (MD 2.2): I want <Item>
