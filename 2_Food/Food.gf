
abstract Food = {

    flags startcat = Statement ;

    cat
        Statement ;		-- S
        Item ;			-- NP
        Kind ;			-- N
        Quality ;		-- A

    fun
        Opinion : Item -> Quality -> Statement ;

        This, That, These, Those : Kind -> Item ;

        Cheese, Fish, Pizza, Wine : Kind ;

        Delicious, Expensive, Fresh : Quality ;

}

-- TODO: šī itāļu pica ir ļoti garšīga
-- TODO: Nationality, Degree (cat)
-- TODO: NationalFood, Dutch, French, Italian (fun)
-- TODO: ModifiedQuality, Quite, Too, Very (fun)
