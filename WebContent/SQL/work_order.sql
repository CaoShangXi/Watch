-- 創建數據庫
CREATE DATABASE IF NOT EXISTS watch DEFAULT CHARSET UTF8 COLLATE UTF8_GENERAL_CI;
-- 使用數據庫
USE watch;
-- 創建表
CREATE TABLE IF NOT EXISTS `work_order`(
id INT UNSIGNED AUTO_INCREMENT,#工單的ID
machining_center CHAR(20),#加工中心(中心)
work_number VARCHAR(20),#工單號碼
product_number VARCHAR(20),#產品料號(物料)
start_date DATE,#開工日期
end_date DATE,#完工日期
total INT,#總數量
produced INT,#已生產(生產數)
maintain_total INT,#維修總數
maintain INT,#已維修
work_hours INT,#報工
QM_receipts VARCHAR(20),#QM單據
efficiency CHAR(10),#效率
assemblage INT,#組立
test INT,#測試
packaging INT,#包裝
yield char(10)#良率
PRIMARY KEY (id)
)ENGINE=MyISAM DEFAULT CHARSET=UTF8;

-- 向數據庫表插入數據
INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS01','Z3I1038','US224-AT',str_to_date('2018-04-21','%Y-%m-%d %H'),str_to_date('2018-04-26','%Y-%m-%d %H'),1000,1000,16,16,3,null,'98%',1000,1000,1000
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS01','T3I3004','GCS2HU',str_to_date('2018-04-16','%Y-%m-%d %H'),str_to_date('2018-04-23','%Y-%m-%d %H'),2004,2004,0,0,null,null,'100%',2004,2004,2004
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS01','T3I2001','GHSP8422B',str_to_date('2018-04-16','%Y-%m-%d %H'),str_to_date('2018-04-24','%Y-%m-%d %H'),504,504,2,2,null,null,'100%',504,504,504
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS02','E8I4007','CL5716M-AT-AZ',str_to_date('2018-04-22','%Y-%m-%d %H'),str_to_date('2018-04-25','%Y-%m-%d %H'),165,165,8,8,null,null,'100%',165,165,165
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS02','Z3HA159','VS182B-AT-X',str_to_date('2018-04-25','%Y-%m-%d %H'),str_to_date('2018-04-28','%Y-%m-%d %H'),100,100,0,0,null,null,'100%',100,100,100
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS02','Z3HA330','CS1762A-AT-X',str_to_date('2018-04-20','%Y-%m-%d %H'),str_to_date('2018-04-26','%Y-%m-%d %H'),300,300,11,11,null,null,'100%',300,300,300
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS02','Z3HA346','CS72U-AT',str_to_date('2018-04-25','%Y-%m-%d %H'),str_to_date('2018-04-27','%Y-%m-%d %H'),100,100,0,0,null,null,'100%',100,100,100
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS02','Z3HB117','KH1532A-AX-X',str_to_date('2018-04-13','%Y-%m-%d %H'),null,57,0,0,0,null,null,'70%',57,28,0
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS02','Z3HB120','KH1508A-AX-X',str_to_date('2018-04-26','%Y-%m-%d %H'),null,120,0,0,0,null,null,'70%',120,0,0
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS02','Z3HC074','KA7970-AX',str_to_date('2018-04-28','%Y-%m-%d %H'),null,800,0,0,0,null,null,'70%',638,0,0
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS02','Z3I1037','CS1716ADC',str_to_date('2018-04-19','%Y-%m-%d %H'),str_to_date('2018-04-23','%Y-%m-%d %H'),75,75,0,0,null,null,'70%',75,75,75
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS03','Z3I1069','VS164-AT-X',str_to_date('2018-04-20','%Y-%m-%d %H'),null,200,0,0,0,null,null,'70%',190,188,0
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS03','Z3I1086','CS1784A-AT-G',str_to_date('2018-04-24','%Y-%m-%d %H'),str_to_date('2018-04-27','%Y-%m-%d %H'),200,200,1,1,null,null,'100%',200,200,200
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS03','Z3I1098','UE250-AT',str_to_date('2018-04-24','%Y-%m-%d %H'),str_to_date('2018-04-26','%Y-%m-%d %H'),800,800,5,5,null,null,'100%',800,800,800
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS03','Z3I1108','VE803-AT-G',str_to_date('2018-04-20','%Y-%m-%d %H'),str_to_date('2018-04-26','%Y-%m-%d %H'),540,540,1,1,null,null,'100%',540,540,540
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS03','Z3I1110','VE800A-AT-G',str_to_date('2018-04-23','%Y-%m-%d %H'),str_to_date('2018-04-28','%Y-%m-%d %H'),700,700,1,1,null,null,'100%',1400,1400,700
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS03','Z3I1112','VS184A-AT-G',str_to_date('2018-04-26','%Y-%m-%d %H'),str_to_date('2018-04-27','%Y-%m-%d %H'),300,300,3,3,null,null,'100%',300,300,300
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS03','Z3I1145','VE810-AT-X',str_to_date('2018-04-20','%Y-%m-%d %H'),str_to_date('2018-04-27','%Y-%m-%d %H'),300,300,0,0,null,null,'100%',600,600,600
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS03','Z3I1158','CS782DP-AT',str_to_date('2018-04-20','%Y-%m-%d %H'),null,500,0,0,0,null,null,'100%',493,89,0
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS03','Z3I2012','VE803-AT-X',str_to_date('2018-04-25','%Y-%m-%d %H'),null,259,259,3,3,null,null,'100%',518,518,259
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS03','Z3I2018','KA7570-AX',str_to_date('2018-04-21','%Y-%m-%d %H'),str_to_date('2018-04-25','%Y-%m-%d %H'),1200,1200,3,3,null,null,'100%',1200,1200,1200
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS03','Z3I2049','CS1318-AT-X',str_to_date('2018-04-24','%Y-%m-%d %H'),str_to_date('2018-04-27','%Y-%m-%d %H'),240,240,1,1,null,null,'100%',240,240,240
);

INSERT INTO `work_order`(
machining_center,work_number,product_number,start_date,end_date,total,produced,maintain_total,maintain,work_hours,QM_receipts,efficiency,assemblage,test,packaging
)
VALUES
(
'AS03','Z3I2052','VS184A-AT-X',str_to_date('2018-04-27','%Y-%m-%d %H'),null,400,0,0,0,null,null,'100%',399,377,0
);

COMMIT;

-- 部門表
CREATE TABLE IF NOT EXISTS `dept`(
dept_id INT UNSIGNED AUTO_INCREMENT,#部門ID
dept_number INT,#部門編號
dept_name VARCHAR(20),#部門名字
address VARCHAR(40),#地址
PRIMARY KEY(dept_id)
)ENGINE=MyISAM DEFAULT CHARSET=UTF8;
-- 向部門表插入數據
INSERT INTO `dept`(dept_number,dept_name,address) VALUES (1,'制一部','廣東省深圳市寶安區'),(2,'制二部','廣東省深圳市寶安區');
COMMIT;
-- 生產線表
CREATE TABLE IF NOT EXISTS `production_line`(
line_id INT UNSIGNED AUTO_INCREMENT,#產線ID
dept_id INT,#部門ID
line_number CHAR(12),#產線編號
line_name CHAR(12),#產線名稱
PRIMARY KEY(line_id)
)ENGINE=MyISAM DEFAULT CHARSET=UTF8;
-- 向生產線表插入數據
insert into `production_line`(dept_id,line_number,line_name) values (1,'ZA1A','A組'),(1,'ZA1B','B組'),(1,'ZA1C','C組'),(1,'ZA1D','D組'),
(1,'ZA1E','E組'),(1,'ZA1F','F組'),(1,'ZA1G1','G1組'),(1,'ZA1G2','G2組'),(1,'ZA1H','H組'),(1,'ZA1I','I組'),
(2,'ZA22B','DIP線'),(2,'ZA23A','包裝A線'),(2,'ZA23B','包裝B線'),(2,'ZA23C','包裝C線'),(2,'ZA23D','大機種線');
COMMIT;

