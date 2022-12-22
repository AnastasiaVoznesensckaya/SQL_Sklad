CREATE DATABASE sklad;
GO

USE sklad;

CREATE TABLE ProductGroup(
Group_id int IDENTITY(1,1),
Group_name varchar(255)
PRIMARY KEY(Group_id)
);

CREATE TABLE Unit (
Unit_id int IDENTITY(1,1),
Measure varchar(255)
PRIMARY KEY (Unit_id)
);

CREATE TABLE Product(
Product_id int IDENTITY(1,1),
Product_name varchar(255) NOT NULL,
Product_price varchar(255) NOT NULL,
Product_amount int NOT NULL,
Unit_id int FOREIGN KEY REFERENCES Unit(Unit_id),
Group_id int FOREIGN KEY REFERENCES ProductGroup(Group_id),
PRIMARY KEY (Product_id)
);

CREATE TABLE "Provider"(
Provider_id int IDENTITY(1,1),
Provider_name varchar(255) NOT NULL,
Number_phone varchar(255) NOT NULL,
Address varchar(255) NOT NULL,
PRIMARY KEY (Provider_id)
);

CREATE TABLE Worker(
Worker_id int IDENTITY(1,1),
Worker_family varchar(255) NOT NULL,
Worker_name varchar(255) NOT NULL,
Worker_lastname varchar(255) NOT NULL,
Doljnost varchar(255) NOT NULL,
PRIMARY KEY(Worker_id)
);

CREATE TABLE Nakladnaya(
Nakl_id int IDENTITY(1,1),
Provider_id int FOREIGN KEY REFERENCES "Provider"(Provider_id),
Worker_id int FOREIGN KEY REFERENCES Worker(Worker_id),
Product_id int FOREIGN KEY REFERENCES Product(Product_id),
Amount int,
Price varchar(255),
"Date" DATE,
PRIMARY KEY(Nakl_id)
); 

INSERT INTO Unit (Measure) VALUES ('��');
INSERT INTO Unit (Measure) VALUES ('��');

INSERT INTO ProductGroup (Group_name) VALUES ('����������');
INSERT INTO ProductGroup (Group_name) VALUES ('���.������');
INSERT INTO ProductGroup (Group_name) VALUES ('������');
INSERT INTO ProductGroup (Group_name) VALUES ('�����');
INSERT INTO ProductGroup (Group_name) VALUES ('������ ���������');
INSERT INTO ProductGroup (Group_name) VALUES ('������������ �������');
INSERT INTO ProductGroup (Group_name) VALUES ('�������');
INSERT INTO ProductGroup (Group_name) VALUES ('������ ��� ��������');
INSERT INTO ProductGroup (Group_name) VALUES ('���');
INSERT INTO ProductGroup (Group_name) VALUES ('����');

INSERT INTO Worker (Worker_family, Worker_name, Worker_lastname, Doljnost) VALUES ('�������', '�����', '����������', '���������');
INSERT INTO Worker (Worker_family, Worker_name, Worker_lastname, Doljnost) VALUES ('��������', '����', '��������', '�������');
INSERT INTO Worker (Worker_family, Worker_name, Worker_lastname, Doljnost) VALUES ('�������', '�����', '��������', '���������');
INSERT INTO Worker (Worker_family, Worker_name, Worker_lastname, Doljnost) VALUES ('�������', '����', '����������', '���������');
INSERT INTO Worker (Worker_family, Worker_name, Worker_lastname, Doljnost) VALUES ('��������', 'Ը���', '����������', '�������');
INSERT INTO Worker (Worker_family, Worker_name, Worker_lastname, Doljnost) VALUES ('�����', '������', '������������', '�������');
INSERT INTO Worker (Worker_family, Worker_name, Worker_lastname, Doljnost) VALUES ('��������', '�����', '�������������', '�������');
INSERT INTO Worker (Worker_family, Worker_name, Worker_lastname, Doljnost) VALUES ('��������', '�������', 'Ը�������', '�������');
INSERT INTO Worker (Worker_family, Worker_name, Worker_lastname, Doljnost) VALUES ('������', '������', '��������', '���������� �������');
INSERT INTO Worker (Worker_family, Worker_name, Worker_lastname, Doljnost) VALUES ('����', '�����', '����������', '���������');
INSERT INTO Worker (Worker_family, Worker_name, Worker_lastname, Doljnost) VALUES ('������', '���������', '���������', '���������');

INSERT INTO "Provider" (Provider_name, Number_phone, Address) VALUES ('��� "������"', '+79567324590', '�. �������-���������, ��. 2-� ������� 106');
INSERT INTO "Provider" (Provider_name, Number_phone, Address) VALUES ('�� "��������"', '+79012345678', '�. ��������, ��. �������� 23');
INSERT INTO "Provider" (Provider_name, Number_phone, Address) VALUES ('��� "����� ����"', '+78903337780', '�. ������������ ��. ������������ 101');
INSERT INTO "Provider" (Provider_name, Number_phone, Address) VALUES ('�� "��������"', '+797651239087', '�. ������� ����� ��. ���������������� 77');
INSERT INTO "Provider" (Provider_name, Number_phone, Address) VALUES ('��� "�������"', '+78901237634', '�. ������ ��.������ 36');
INSERT INTO "Provider" (Provider_name, Number_phone, Address) VALUES ('�� "�������"', '+79650981278', '�. ������� ��.�������� 4');
INSERT INTO "Provider" (Provider_name, Number_phone, Address) VALUES ('��� "������"', '+78901238954', '�. ������� �������� ��. ���������� 23');
INSERT INTO "Provider" (Provider_name, Number_phone, Address) VALUES ('��� "�����"', '+79045789812', '�. ���������� ��. ������� 5');
INSERT INTO "Provider" (Provider_name, Number_phone, Address) VALUES ('�� "�����������"', '+78903471290', '�. ��������� ��. �������� 32');
INSERT INTO "Provider" (Provider_name, Number_phone, Address) VALUES ('�� "����������"', '+78791278976', '�. ������������ ��. �������� 29');

INSERT INTO Product (Product_name, Product_amount,Unit_id, Product_price, Group_id) VALUES ('����� �������� 12��', '50', 1, '400', 1);
INSERT INTO Product (Product_name, Product_amount,Unit_id, Product_price, Group_id) VALUES ('����-�������� ERICH KRAUSE Extra', '150', 1, '100', 1);
INSERT INTO Product (Product_name, Product_amount,Unit_id, Product_price, Group_id) VALUES ('���� ����� ��� �������� ����� PURINA ONE 1.5��', '80', 1, '660', 8);
INSERT INTO Product (Product_name, Product_amount,Unit_id, Product_price, Group_id) VALUES ('����������� ��������� ��� ��������� ������� 4��', '90', 1, '107', 8);
INSERT INTO Product (Product_name, Product_amount,Unit_id, Product_price, Group_id) VALUES ('�������� BARILLA n.4 0.4��', '200', 1, '75', 7);
INSERT INTO Product (Product_name, Product_amount,Unit_id, Product_price, Group_id) VALUES ('������� ������� ���� 325�', '250', 1, '220', 7);
INSERT INTO Product (Product_name, Product_amount,Unit_id, Product_price, Group_id) VALUES ('���������� �������� SNICKERS Super 80�', '500', 1, '50', 6);
INSERT INTO Product (Product_name, Product_amount,Unit_id, Product_price, Group_id) VALUES ('������� KONTI ������� �����', '60', 2, '362', 6);
INSERT INTO Product (Product_name, Product_amount,Unit_id, Product_price, Group_id) VALUES ('���� ��� ������ ������ ����� PERSIL 1.95�', '300', 1, '620', 2);
INSERT INTO Product (Product_name, Product_amount,Unit_id, Product_price, Group_id) VALUES ('���������� ������� ARIEL 6��', '70', 1, '940', 2);
INSERT INTO Product (Product_name, Product_amount,Unit_id, Product_price, Group_id) VALUES ('������ �������', '58', 2, '120', 3);
INSERT INTO Product (Product_name, Product_amount,Unit_id, Product_price, Group_id) VALUES ('������', '60', 2, '120', 3);
INSERT INTO Product (Product_name, Product_amount,Unit_id, Product_price, Group_id) VALUES ('������ �������', '100', 2, '180', 4);
INSERT INTO Product (Product_name, Product_amount,Unit_id, Product_price, Group_id) VALUES ('������', '90', 2, '170', 4);
INSERT INTO Product (Product_name, Product_amount,Unit_id, Product_price, Group_id) VALUES ('��� ������ ����������', '95', 2, '440', 5);
INSERT INTO Product (Product_name, Product_amount,Unit_id, Product_price, Group_id) VALUES ('����� ��������-��������', '120', 2, '180', 5);
INSERT INTO Product (Product_name, Product_amount,Unit_id, Product_price, Group_id) VALUES ('������ ��������-��������', '130', 2, '220', 5);
INSERT INTO Product (Product_name, Product_amount,Unit_id, Product_price, Group_id) VALUES ('�������', '50', 2, '89', 4);
INSERT INTO Product (Product_name, Product_amount,Unit_id, Product_price, Group_id) VALUES ('������ ��������� ZEWA Plus 2-���� ����� 12��', '150', 1, '240', 2);
INSERT INTO Product (Product_name, Product_amount,Unit_id, Product_price, Group_id) VALUES ('����', '90', 2, '100', 3);

INSERT INTO Nakladnaya ( Provider_id, Worker_id, Product_id, Amount, Price, "Date") VALUES ( 7, 4, 1, 20, 350, '22-11-2022');
INSERT INTO Nakladnaya (Provider_id, Worker_id, Product_id, Amount, Price, "Date") VALUES (8, 1, 19, 50, 200, '21-12-2022');
INSERT INTO Nakladnaya (Provider_id, Worker_id, Product_id, Amount, Price, "Date") VALUES (1, 10, 6, 25, 180, '13-12-2022');
INSERT INTO Nakladnaya (Provider_id, Worker_id, Product_id, Amount, Price, "Date") VALUES (1, 10,16, 20, 150, '13-12-2022');
INSERT INTO Nakladnaya (Provider_id, Worker_id, Product_id, Amount, Price, "Date") VALUES (8, 1, 10, 30, 870, '21-12-2022');
INSERT INTO Nakladnaya (Provider_id, Worker_id, Product_id, Amount, Price, "Date") VALUES ( 7, 4, 2, 50, 80, '22-11-2022');
INSERT INTO Nakladnaya (Provider_id, Worker_id, Product_id, Amount, Price, "Date") VALUES (4, 11, 7, 100, 30, '13-09-2022');
INSERT INTO Nakladnaya (Provider_id, Worker_id, Product_id, Amount, Price, "Date") VALUES (3, 3, 5, 80, 65, '31-10-2022');
INSERT INTO Nakladnaya (Provider_id, Worker_id, Product_id, Amount, Price, "Date") VALUES (9, 4, 4, 50, 90, '20-12-2022');
INSERT INTO Nakladnaya (Provider_id, Worker_id, Product_id, Amount, Price, "Date") VALUES ( 4, 11, 8, 40, 300, '13-09-2022');
INSERT INTO Nakladnaya (Provider_id, Worker_id, Product_id, Amount, Price, "Date") VALUES ( 3, 3, 18, 30, 70, '31-10-2022');
INSERT INTO Nakladnaya (Provider_id, Worker_id, Product_id, Amount, Price, "Date") VALUES (9, 4, 3, 30, 600, '20-12-2022');
INSERT INTO Nakladnaya (Provider_id, Worker_id, Product_id, Amount, Price, "Date") VALUES (2, 10, 13, 40, 150, '17-12-2022');
INSERT INTO Nakladnaya (Provider_id, Worker_id, Product_id, Amount, Price, "Date") VALUES (2, 10, 14, 30, 140, '17-12-2022');
INSERT INTO Nakladnaya ( Provider_id, Worker_id, Product_id, Amount, Price, "Date") VALUES (2, 10, 12, 10, 100, '17-12-2022');


--����� ��������� ������ � �������
SELECT Product_name, "Date" FROM Nakladnaya, Product 
WHERE ("Date" >= '2022-12-01' AND "Date"<= '2022-12-31')
AND Product.Product_id = Nakladnaya.Product_id;
--���������� ������ �� �.������������
SELECT Provider_name, "Address" FROM Provider 
WHERE "Address" LIKE '%%������������%%';
--������ ����� � ������
SELECT DISTINCT Product_name, Product.Group_id FROM ProductGroup, Product
WHERE Product.Group_id = 3 OR Product.Group_id = 4 
--����� �������� �������� �����
SELECT DISTINCT Worker_family, Worker_name, Nakl_id FROM Provider, Worker, Nakladnaya
WHERE Nakladnaya.Worker_id = 4
AND Worker_family LIKE '%%�������%%'
--��� �������� 
SELECT Worker_family, Worker_name, Worker_lastname, Doljnost FROM Worker
WHERE Doljnost LIKE '%%�������%%'

