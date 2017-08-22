USE Shopping;

    SELECT  Grocery.name, AS 'Grocery Name' 
            Grocery_Store.name AS 'Store Name', 
            regular_price AS 'Price', 
            weight AS 'Weight', 
            Recipe_Item.quantity AS 'Quantity'

    FROM    Grocery, 
            Grocery_Store, 
            Grocery_Sale, 
            Recipe_Item

    WHERE   Grocery.id = Grocery_Sale.item_id 
    AND     Grocery_Store.id = Grocery_Sale.store_id
    AND     Grocery_Store.name LIKE '%IGA%' 
    
    GROUP BY Grocery.name, Grocery_Store.name, regular_price