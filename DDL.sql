create table Inventory(
    product_id number(20),
    product_name varchar (20),
    product_price number (20),
    product_quantity number(20),
    primary key (product_id)
);


create table Employee(
    employee_id number(20),
    employee_name varchar (20),
    employee_gender varchar (40),
    employee_salary number(20),
    primary key (employee_id)
);

create table Customer(
    customer_id number(20),
    customer_name varchar (20),
    customer_membership varchar (40),
    customer_address varchar (20),
    primary key (customer_id)
);


create table Orders(
    order_id number (20),
    customer_id number (20),
    product_id number (20),
    employee_id number (20),
    order_amount number (20),
    order_net_amount number(20),
    order_payment varchar (20),
    primary key (order_id),
    foreign key (customer_id) references Customer(customer_id),
    foreign key (product_id) references Inventory(product_id),
    foreign key (employee_id) references Employee(employee_id)
);
