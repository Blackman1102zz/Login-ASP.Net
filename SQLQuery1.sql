CREATE TABLE Account (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Taikhoan VARCHAR(20) NOT NULL,
    Matkhau VARCHAR(30) NOT NULL,
    Description NVARCHAR(50),
	CreatedPerson Varchar(20),
);

SET IDENTITY_INSERT hr.Account ON
CREATE TABLE Account_Phone (
	Phone VARCHAR(20),
    UserId INT IDENTITY(1,1),
);

INSERT INTO Account(Taikhoan, Matkhau, Description,CreatedPerson)
OUTPUT inserted.Id
VALUES('admin','admin123', 'Admin','admin'),
	  ('hoa','bluerose', 'M','admin'),
	  ('nhan','nhanha95', 'M','admin'),
	  ('vanh','vanh123', 'F','admin'),
	  ('hieu','hieu1134', 'F','admin');
INSERT INTO Account_Phone(Phone)
OUTPUT inserted.UserId
VALUES('09797533983'),
	  ('03256589443'),
	  ('03216549793'),
	  ('03215649823'),
	  ('03677526473');


INSERT INTO Account(Account, Password, Description,CreatedPerson)
values ('username' ,pwdencrypt('123'), 'userstatus' ,'systemright')
select CONVERT(VARCHAR(32), HashBytes('MD5','admin123'), 2) as md5Hash

SELECT Account.Id, Account.Taikhoan, Account.Description, Account_Phone.Phone
FROM Account, Account_Phone
WHERE Account.Id=Account_Phone.Id

INSERT INTO Login(Taikhoan, Matkhau)
VALUES
	('admin','admin123'),
	('hoa', 'bluerose'),
	('nhan', 'nhanha95'),
	('vanh', 'vanh123'),
	('hieu', 'hieu1134');

SELECT [Account].Taikhoan,[Account].Description,[Account_Phone].Phone
 FROM [Account]

SELECT Account.Taikhoan, Account_Phone.Phone
FROM Account, Account_Phone
WHERE Account.Id = Account_Phone.UserId

delete from Account where Id='4';

delete from Account_Phone where UserId='1';

delete from Account where Id='1';

INSERT INTO Account, Account_Phone(Taikhoan,Matkhau,Phone)
VALUES
	('admin','admin123','admin123'),
	('hoa', 'bluerose','admin123'),
	('nhan', 'nhanha95','admin123'),
	('vanh', 'vanh123','admin123'),
	('hieu', 'hieu1134','admin123');

SELECT SCOPE_IDENTITY()