--variable declaration and print value
SET SERVEROUTPUT ON;

DECLARE
  -- Variable declaration
  product_name VARCHAR2(50);
BEGIN
  SELECT product_name INTO product_name
  FROM Inventory
  WHERE product_id = 1001; 
  
  -- Printing the value
  DBMS_OUTPUT.PUT_LINE('Product Name: ' || product_name);
END;
/


--Rowtype

set serveroutput on;
DECLARE
  v_customer_id NUMBER := 9003;
  v_customer_info Customer%ROWTYPE;
BEGIN
  -- Retrieve customer information into the row type variable
  SELECT *
  INTO v_customer_info
  FROM Customer
  WHERE customer_id = v_customer_id;

  DBMS_OUTPUT.PUT_LINE('Customer ID: ' || v_customer_info.customer_id);
  DBMS_OUTPUT.PUT_LINE('Customer Name: ' || v_customer_info.customer_name);
  DBMS_OUTPUT.PUT_LINE('Customer Membership: ' || v_customer_info.customer_membership);
  DBMS_OUTPUT.PUT_LINE('Customer Address: ' || v_customer_info.customer_address);
END;
/




--While loop


SET SERVEROUTPUT ON;

DECLARE
  v_counter NUMBER := 1;
  v_product_id Inventory.product_id%TYPE;
  v_product_name Inventory.product_name%TYPE;
  v_product_price Inventory.product_price%TYPE;
  v_product_quantity Inventory.product_quantity%TYPE;
BEGIN
  WHILE v_counter <= 10 LOOP
    SELECT product_id, product_name, product_price, product_quantity
    INTO v_product_id, v_product_name, v_product_price, v_product_quantity
    FROM (
      SELECT product_id, product_name, product_price, product_quantity, ROW_NUMBER() OVER (ORDER BY product_id) AS rn
      FROM Inventory
    )
    WHERE rn = v_counter;


    DBMS_OUTPUT.PUT_LINE('Product ID: ' || v_product_id);
    DBMS_OUTPUT.PUT_LINE('Product Name: ' || v_product_name);
    DBMS_OUTPUT.PUT_LINE('Product Price: ' || v_product_price);
    DBMS_OUTPUT.PUT_LINE('Product Quantity: ' || v_product_quantity);
    DBMS_OUTPUT.PUT_LINE('------------------------');
    
    v_counter := v_counter + 1;
  END LOOP;
END;
/



--array without extend()



DECLARE
  TYPE inventory_array IS TABLE OF Inventory%ROWTYPE;
  v_inventory inventory_array := inventory_array();
BEGIN
  SELECT *
  BULK COLLECT INTO v_inventory
  FROM Inventory;

  FOR i IN v_inventory.FIRST..v_inventory.LAST LOOP
    DBMS_OUTPUT.PUT_LINE('Product ID: ' || v_inventory(i).product_id);
    DBMS_OUTPUT.PUT_LINE('Product Name: ' || v_inventory(i).product_name);
    DBMS_OUTPUT.PUT_LINE('Product Price: ' || v_inventory(i).product_price);
    DBMS_OUTPUT.PUT_LINE('Product Quantity: ' || v_inventory(i).product_quantity);
    DBMS_OUTPUT.PUT_LINE('------------------------');
  END LOOP;
END;
/



--Conditional statements



DECLARE
  v_product_id NUMBER := 1001; -- Example product ID
  v_product_name VARCHAR2(20);
BEGIN
  SELECT product_name
  INTO v_product_name
  FROM Inventory
  WHERE product_id = v_product_id;

  IF v_product_name IS NOT NULL THEN
    DBMS_OUTPUT.PUT_LINE('Product Name: ' || v_product_name);
  ELSIF v_product_id = 1002 THEN
    DBMS_OUTPUT.PUT_LINE('Special product: Cookies');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Product not found.');
  END IF;
END;
/



--procedure



CREATE OR REPLACE PROCEDURE GetProductDetails(
  p_product_id IN NUMBER
) AS
  v_product_name VARCHAR2(20);
BEGIN
  SELECT product_name
  INTO v_product_name
  FROM Inventory
  WHERE product_id = p_product_id;

  IF v_product_name IS NOT NULL THEN
    DBMS_OUTPUT.PUT_LINE('Product Name: ' || v_product_name);
  ELSE
    DBMS_OUTPUT.PUT_LINE('Product not found.');
  END IF;
END;
/





BEGIN
  GetProductDetails(1001); -- Provide the desired product ID as an argument
END;
/



--Function 




CREATE OR REPLACE FUNCTION CalculateOrderTotal(
  p_order_id IN NUMBER
) RETURN NUMBER AS
  v_order_total NUMBER := 0;
BEGIN
  SELECT SUM(order_net_amount)
  INTO v_order_total
  FROM Orders
  WHERE order_id = p_order_id;

  RETURN v_order_total;
END;
/



SELECT CalculateOrderTotal(1) AS OrderTotal
FROM dual;



--drop procedure
drop procedure getproductdetails;

--drop function
drop function  CalculateOrderTotal;