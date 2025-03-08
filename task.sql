-- Use our database
USE ShopDB; 

-- Some data should be created outside the transaction (here)

-- Start the transaction 
START TRANSACTION;
INSERT INTO Orders (СustomerID, Date)
VALUES('1', '2023-01-01');
INSERT INTO OrderItems (ProductID, Count, OrderId)
VALUES('1', 1, '1');
UPDATE Orders SET WarehouseAmount = WarehouseAmount - 5 WHERE OrderID = '1';


COMMIT;