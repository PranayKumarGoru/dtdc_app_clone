CREATE TABLE Users (
    user_id varchar(255) PRIMARY KEY,
    Password varchar(255),
    Name varchar(255),
    Email varchar(255),
    Phone varchar(255),
    Address varchar(255)
);

INSERT INTO Users (user_id, Password, Name, Email, Phone, Address)  
   VALUES ('ram123', 'dummyP', 'Ram Charan', 'ram.cherry@relevel.com', '7777000055', 'Plot No 5/A, Pedemma Temple Lane, Madhapur, Hyderabad - 500035');
INSERT INTO Users (user_id, Password, Name, Email, Phone, Address)  
   VALUES ('prakhar.g', 'samplePwd', 'Prakhar', 'prakhar.gupta@relevel.com', '8877459854', 'Plot No 5/A, Bagyalatha Colony, Hayatnagar, Hyderabad - 500037');
   
   
CREATE TABLE Admin (
    admin_id varchar(255) PRIMARY KEY,
    password varchar(255),
    name varchar(255),
    email varchar(255)
);
   
INSERT INTO Admin (admin_id, password, name, email)  
   VALUES ('tanmayB', 'DTDCPwd', 'Tanmay Bhat', 'tanmay.bhat@relevel.com');

CREATE TABLE Operator (
    operator_id varchar(255) PRIMARY KEY,
    password varchar(255),
    name varchar(255),
    email varchar(255)
);

INSERT INTO Operator (operator_id, password, name, email)  
   VALUES ('anshuB', 'PwdDtdc', 'Anshul Bist', 'anshul.bist@relevel.com');

CREATE TABLE Consignment (
    consignment_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_id varchar(255) references Users(user_id),
    person_name varchar(255),
    person_mobile varchar(255),
    type varchar(255),
    parcel_type varchar(255),
    weight varchar(255),
    parcel_value DECIMAL,
    length varchar(255),
    width varchar(255),
    height varchar(255),
    destination_address varchar(255)
);

INSERT INTO Consignment (user_id, person_name, person_mobile, type, parcel_type, weight, 
parcel_value, length, width, height, destination_address)  
   VALUES ('prakhar.g', 'Siddharth', '7784521475', 'domestic', 'non-documents', '2 KG',
   1255, '20 cms', '10 cms', '10 cms', 'Plot No 5/A, Kapu Wada, Hanumakonda - 506001');
   
   

CREATE TABLE Queries (
    query_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_id varchar(255) references Users(user_id),
    operator_id varchar(255) references Operator(operator_id),
    query varchar(255),
    status varchar(255),
    operator_comment varchar(255)
);

