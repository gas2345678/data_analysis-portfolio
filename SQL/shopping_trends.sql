--Selecting all data from shopping_trends table 
SELECT * FROM shopping_trends 

--Selecting all items payed with credit card 
SELECT Item_Purchased FROM shopping_trends st WHERE Payment_Method == "Credit Card"


--Selecting all clothes buyed in Winter ordered by purchase's price in ascending way 
SELECT Item_Purchased ,Purchase_Amount_USD FROM shopping_trends WHERE Category == "Clothing" AND Season == "Winter"
ORDER BY "Purchase_Amount (USD)" ASC
--

--Select all purchases made by customers between 30 and 50 years old with their respective price and category
SELECT Item_Purchased,Category,Purchase_Amount_USD FROM shopping_trends 
WHERE Age BETWEEN 30 AND 50
GROUP BY Category 
HAVING Discount_Applied == "Yes"







