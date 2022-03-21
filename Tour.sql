create database Tour;
use Tour;

create table City(
    idCity int primary key auto_increment,
    nameCity varchar(50)
);

create table TravelLocation(
    id int primary key auto_increment,
    nameLocation varchar(50),
    descriptionLocation varchar(50),
    averageCost int,
    city_id int,
    foreign key (city_id) references City(idCity)
);

create table Tourist(
    idTourist int primary key auto_increment,
    nameTourist varchar(50),
    CCCD int,
    birthdayOfTourist date,
    city_id int,
    foreign key (city_id) references City(idCity)
);

create table TypeOfTours(
    idTypeOfTours int primary key auto_increment,
    idType int,
    nameType varchar(50)
);

create table Bill(
    idBill int primary key auto_increment,
    tour_id int,
    tourist_id int,
    statusBill varchar(20),
    foreign key (tour_id) references TypeOfTours(idTypeOfTours),
    foreign key (tourist_id) references Tourist(idTourist)
);

create table Tours(
    idTours int primary key auto_increment,
    codeTours_id int,
    typeOfTours_id int,
    costOfTours int,
    idBeginOfDate date,
    endOfDate date,
    foreign key (codeTours_id) references TypeOfTours(idTypeOfTours),
    foreign key (typeOfTours_id) references TypeOfTours(idTypeOfTours)
);

insert into City(nameCity) values ('Hai Phong');
insert into City(nameCity) values ('Da Nang');
insert into City(nameCity) values ('Nha Trang');
insert into City(nameCity) values ('Vung Tau');
insert into City(nameCity) values ('Hue');

insert into TravelLocation(nameLocation, descriptionLocation, averageCost, city_id)
values ('Vung Tau','Khu du lich tam bien',1500000,4);
insert into TravelLocation(nameLocation, descriptionLocation, averageCost, city_id)
values ('Hon Dau','Khu di tich',600000,1);
insert into TravelLocation(nameLocation, descriptionLocation, averageCost, city_id)
values ('Cat Ba','Khu du lich sinh thai',1500000,1);
insert into TravelLocation(nameLocation, descriptionLocation, averageCost, city_id)
values ('Ba Na Hills','Duong len tien canh',1500000,2);
insert into TravelLocation(nameLocation, descriptionLocation, averageCost, city_id)
values ('Nui Than Tai','Cong vien nuoc suoi khoang',1700000,2);
insert into TravelLocation(nameLocation, descriptionLocation, averageCost, city_id)
values ('Ngu Hanh Son','Hang dong',2000000,2);
insert into TravelLocation(nameLocation, descriptionLocation, averageCost, city_id)
values ('VinWonders','Khu vui choi giai tri',1800000,3);
insert into TravelLocation(nameLocation, descriptionLocation, averageCost, city_id)
values ('Yang Bay Nha Trang','Khu du lich sinh thai',2500000,3);
insert into TravelLocation(nameLocation, descriptionLocation, averageCost, city_id)
values ('Tram Trung','Khu du lich tam bun',2800000,3);
insert into TravelLocation(nameLocation, descriptionLocation, averageCost, city_id)
values ('Kinh thanh Hue','Khu du lich van hoa',3800000,5);

insert into Tourist (nameTourist, CCCD, birthdayOfTourist, city_id)
values ('Nguyen Van A', 1234567890, '1999/02/01', 1);
insert into Tourist (nameTourist, CCCD, birthdayOfTourist, city_id)
values ('Nguyen Van B', 1234567891, '1969/04/10', 4);
insert into Tourist (nameTourist, CCCD, birthdayOfTourist, city_id)
values ('Nguyen Van K', 1234567892, '1990/12/11', 2);
insert into Tourist (nameTourist, CCCD, birthdayOfTourist, city_id)
values ('Tran Van A', 1234567893, '1995/04/04', 3);
insert into Tourist (nameTourist, CCCD, birthdayOfTourist, city_id)
values ('Luong Van G', 1234567894, '2001/02/12', 5);
insert into Tourist (nameTourist, CCCD, birthdayOfTourist, city_id)
values ('Pham Van F', 1234567895, '1989/07/22', 5);
insert into Tourist (nameTourist, CCCD, birthdayOfTourist, city_id)
values ('Dinh Van D', 1234567896, '1992/05/27', 1);
insert into Tourist (nameTourist, CCCD, birthdayOfTourist, city_id)
values ('Khuong Van T', 1234567897, '1999/08/08', 2);
insert into Tourist (nameTourist, CCCD, birthdayOfTourist, city_id)
values ('Vo Van L', 1234567898, '1996/02/05', 4);
insert into Tourist (nameTourist, CCCD, birthdayOfTourist, city_id)
values ('Lo Thi Y', 1234567899, '2001/06/13',3);

insert into TypeOfTours (idType, nameType) values (1, 'gia dinh');
insert into TypeOfTours (idType, nameType) value (2, 'co quan');

insert into Tours(codeTours_id, typeOfTours_id, costOfTours, idBeginOfDate, endOfDate)
values (1,1,700000,'2020/03/01','2020/03/05');
insert into Tours(codeTours_id, typeOfTours_id, costOfTours, idBeginOfDate, endOfDate)
values (1,1,800000,'2020/02/01','2020/02/05');
insert into Tours(codeTours_id, typeOfTours_id, costOfTours, idBeginOfDate, endOfDate)
values (1,2,750000,'2021/03/01','2021/03/05');
insert into Tours(codeTours_id, typeOfTours_id, costOfTours, idBeginOfDate, endOfDate)
values (2,1,1000000,'2020/03/31','2020/04/05');
insert into Tours(codeTours_id, typeOfTours_id, costOfTours, idBeginOfDate, endOfDate)
values (2,2,600000,'2019/05/10','2020/05/15');
insert into Tours(codeTours_id, typeOfTours_id, costOfTours, idBeginOfDate, endOfDate)
values (1,2,710000,'2022/03/05','2020/03/08');
insert into Tours(codeTours_id, typeOfTours_id, costOfTours, idBeginOfDate, endOfDate)
values (2,1,900000,'2020/07/02','2020/07/05');
insert into Tours(codeTours_id, typeOfTours_id, costOfTours, idBeginOfDate, endOfDate)
values (1,1,900000,'2020/03/12','2020/03/15');
insert into Tours(codeTours_id, typeOfTours_id, costOfTours, idBeginOfDate, endOfDate)
values (1,2,780000,'2020/04/03','2020/04/07');
insert into Tours(codeTours_id, typeOfTours_id, costOfTours, idBeginOfDate, endOfDate)
values (2,2,650000,'2020/04/16','2020/04/20');

insert into Bill(tour_id, tourist_id, statusBill) values (1,1,'Da thanh toan coc');
insert into Bill(tour_id, tourist_id, statusBill) values (1,2,'Chua coc');
insert into Bill(tour_id, tourist_id, statusBill) values (2,4,'Dat truoc 30%');
insert into Bill(tour_id, tourist_id, statusBill) values (2,7,'Da thanh toan coc');
insert into Bill(tour_id, tourist_id, statusBill) values (1,9,'Coc 10%');
insert into Bill(tour_id, tourist_id, statusBill) values (2,1,'Da thanh toan coc');
insert into Bill(tour_id, tourist_id, statusBill) values (1,5,'Da coc 25%');
insert into Bill(tour_id, tourist_id, statusBill) values (1,7,'Da thanh toan coc');
insert into Bill(tour_id, tourist_id, statusBill) values (2,8,'Da thanh toan coc');
insert into Bill(tour_id, tourist_id, statusBill) values (2,6,'Chua coc');

select *from City;
select *from TravelLocation;
select *from Tourist;
select *from TypeOfTours;
select *from Tours;
select *from Bill;

# Thống kê số lượng tour của các thành phố
select count(nameLocation), C.nameCity from TravelLocation
   join City C on C.idCity = TravelLocation.city_id
    group by C.nameCity;

# Tính số tour có ngày bắt đầu trong tháng 3 năm 2020


# Tính số tour có ngày kết thúc trong tháng 4 năm 2020











