-- 創建數據庫
CREATE DATABASE IF NOT EXISTS watch DEFAULT CHARSET UTF8 COLLATE UTF8_GENERAL_CI;
-- 使用數據庫
USE watch;
-- 創建表
CREATE TABLE IF NOT EXISTS `order`(
id INT UNSIGNED AUTO_INCREMENT,#工單的ID號
department INT,#部門
start_date DATE,#開工日期
beltline CHAR(10),#生產線
total INT,#總數量
work_number VARCHAR(20),#工單號碼
product_number VARCHAR(40),#料品編號
order_number INT,#工單數量
last_time_volume INT,#前次已排程量
today_volume INT,#本日排程數量
end_date DATE,#預計完工日期
serial_number char(5),#序號
check_model char(5),#檢查模式
PRIMARY KEY (id)
)ENGINE=MyISAM DEFAULT CHARSET=UTF8; 

-- 向表中插入數據
-- 生產線DP
INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES
(
02,str_to_date('2018-04-24','%Y-%m-%d %H'),'DP',0,'Z2HA095','CE770-DAT-31',
300,0,300,str_to_date('2018-04-27','%Y-%m-%d %H'),'Y','1'
);

INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-24','%Y-%m-%d %H'),'DP',0,'Z2I4040','GCS24U-AIO-31',
1012,0,1012,str_to_date('2018-05-02','%Y-%m-%d %H'),'N','1'
);

INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-24','%Y-%m-%d %H'),'DP',0,'Z2I1115','VE800AR-AAT-31',
1000,0,1000,str_to_date('2018-04-27','%Y-%m-%d %H'),'N','1'
);

INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-24','%Y-%m-%d %H'),'DP',0,'Z2I4046','CS22D-AAT-31',
696,0,696,str_to_date('2018-04-28','%Y-%m-%d %H'),'N','1'
);

INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-24','%Y-%m-%d %H'),'DP',0,'Z2HA251','GCS1716-EIO-31',
240,0,240,str_to_date('2018-05-02','%Y-%m-%d %H'),'N','1'
);

INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-24','%Y-%m-%d %H'),'DP',0,'Z2I3120','VE066L-AAT-31',
250,0,250,str_to_date('2018-04-27','%Y-%m-%d %H'),'N','1'
);

INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-24','%Y-%m-%d %H'),'DP',0,'Z2I3119','VE066R-AAT-31',
250,0,250,str_to_date('2018-04-27','%Y-%m-%d %H'),'N','1'
);

INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-24','%Y-%m-%d %H'),'DP',0,'Z2HB013','KH1508A-CAX-31',
120,0,120,str_to_date('2018-04-27','%Y-%m-%d %H'),'N','1'
);

INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-24','%Y-%m-%d %H'),'DP',0,'Z2I1131','KH1516AI-BAX-32',
100,0,100,str_to_date('2018-04-26','%Y-%m-%d %H'),'N','1'
);

INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-24','%Y-%m-%d %H'),'DP',0,'Z2I4021','ZVS84-A-31',
300,0,300,str_to_date('2018-04-26','%Y-%m-%d %H'),'N','1'
);

INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-24','%Y-%m-%d %H'),'DP',0,'Z2I1121','ZCS82A-A-31',
100,0,100,str_to_date('2018-04-27','%Y-%m-%d %H'),'N','1'
);

INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-24','%Y-%m-%d %H'),'DP',0,'Z2I3104','VS134A-AAT-31',
240,0,240,str_to_date('2018-04-28','%Y-%m-%d %H'),'N','1'
);

INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-24','%Y-%m-%d %H'),'DP',0,'Z2I2043','CL1008-A-34',
400,0,400,str_to_date('2018-04-26','%Y-%m-%d %H'),'N','1'
);

INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-24','%Y-%m-%d %H'),'DP',0,'Z2HA429','CS72U-AAT-32',
300,0,300,str_to_date('2018-04-25','%Y-%m-%d %H'),'N','1'
);

-- 生產線A
INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-24','%Y-%m-%d %H'),'A',0,'Z3I4127','VS132-AT-G',
300,0,300,str_to_date('2018-04-26','%Y-%m-%d %H'),'N','1'
);

INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-24','%Y-%m-%d %H'),'DP',0,'Z3I4012','VS481B-AT-G',
390,0,390,str_to_date('2018-04-26','%Y-%m-%d %H'),'N','1'
);

INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-24','%Y-%m-%d %H'),'DP',0,'Z3HA159','VS182B-AT-X',
100,0,100,str_to_date('2018-04-24','%Y-%m-%d %H'),'N','1'
);
INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-24','%Y-%m-%d %H'),'DP',0,'Z3I3164','VS481C-AT-G',
200,0,200,str_to_date('2018-04-26','%Y-%m-%d %H'),'N','1'
);

-- 生產線1B
INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
01,str_to_date('2018-04-24','%Y-%m-%d %H'),'1B',0,'Z7HC063','KA7970-AAX-11',
800,0,800,str_to_date('2018-04-26','%Y-%m-%d %H'),'N','1'
);

-- 生產線C
INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-24','%Y-%m-%d %H'),'C',0,'Z3I2077','CS692-AT',
600,0,600,str_to_date('2018-04-26','%Y-%m-%d %H'),'N','1'
);

-- 生產線A
INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-23','%Y-%m-%d %H'),'A',0,'Z3I3047','CS22U-RW',
4000,0,4000,str_to_date('2018-05-02','%Y-%m-%d %H'),'N','1'
);

INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-23','%Y-%m-%d %H'),'A',0,'Z3I3059','CS72UCZ-SW',
150,0,150,str_to_date('2018-04-25','%Y-%m-%d %H'),'Y','1'
);

INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-23','%Y-%m-%d %H'),'A',0,'Z3I3126','CS72UCZ-SW',
350,0,350,str_to_date('2018-04-25','%Y-%m-%d %H'),'N','1'
);

INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-23','%Y-%m-%d %H'),'A',0,'Z3I1086','CS1784A-AT-G',
200,0,200,str_to_date('2018-04-25','%Y-%m-%d %H'),'N','1'
);

INSERT INTO `order`(
department,start_date,beltline,total,work_number,product_number,
order_number,last_time_volume,today_volume,end_date,serial_number,check_model
)
VALUES(
02,str_to_date('2018-04-23','%Y-%m-%d %H'),'A',0,'Z3I2049','CS1316-AT-X',
240,0,240,str_to_date('2018-04-26','%Y-%m-%d %H'),'N','1'
);

commit;
slect * from `order`;




























