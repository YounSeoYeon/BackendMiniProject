use nugunadb;
CREATE TABLE community(
	comNo INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    comTitle VARCHAR(30),
    comComent VARCHAR(10000),
    comPwd VARCHAR(30),
    comDate datetime default current_timestamp,
	comCount INT DEFAULT 0,
	memId VARCHAR(10) NOT NULL,
     CONSTRAINT FK_member FOREIGN KEY (memId) REFERENCES member (memId)
);

ALTER TABLE community MODIFY comDate datetime default current_timestamp;
ALTER TABLE community MODIFY comCount INT DEFAULT 0;

CREATE TABLE member (
		memId VARCHAR(10) NOT NULL PRIMARY KEY,
		memPwd VARCHAR(10),
        memName VARCHAR(30),
        memEmail VARCHAR(30),
        memJoinDate TIMESTAMP DEFAULT NOW(),
        memHP VARCHAR(13),
        memZipcode VARCHAR(5),
        memAddress1 VARCHAR(50),
        memAddress2 VARCHAR(50)
);

UPDATE community SET comTitle='우와',comComent='진짜?' WHERE comNo='1';

CREATE TABLE product (
	prdNo VARCHAR(10) NOT NULL PRIMARY KEY,
    prdName VARCHAR(30),
    prdDescript VARCHAR(100),
    prdCompany VARCHAR(30),
    prdPrice INT
);

CREATE TABLE member (
		memId VARCHAR(10) NOT NULL PRIMARY KEY,
		memPwd VARCHAR(10),
        memName VARCHAR(30),
        memEmail VARCHAR(30),
        memJoinDate TIMESTAMP DEFAULT NOW(),
        memHP VARCHAR(13),
        memZipcode VARCHAR(5),
        memAddress1 VARCHAR(50),
        memAddress2 VARCHAR(50)
);

ALTER TABLE product MODIFY prdDescript VARCHAR(500);

INSERT INTO product VALUES('1001', 'star', '세계인들의 생활 속에 스며들어 전 세계의 커피 문화를 선도하고 있는 스타벅스가 일상을 풍요롭게 하는 제3의 공간으로서 국내에서도 지역사회 속에서 고객 과 함께하며 새로운 커피문화를 정착시키고 있습니다.', '스타벅스', 1855000);
INSERT INTO product VALUES('1002', 'bhc', '더 맛있고! 더 깨끗한! 더 친절한!', 'BHC', 1190000);
INSERT INTO product VALUES('1003', 'mega', '더 크고, 더 맛있다! 빅사이즈에 우수한 품질의 커피&음료를 합리적인 가격으로 제공하는 MEGA MGC COFFEE 입니다. 더 큰 사이즈로 부담없이 여유롭게 다양하고 착한 음료를 제공합니다.', 'MEGA', 585000);
INSERT INTO product VALUES('1004', 'kimbab', '창업은 누구나 할 수 있지만 성공하기는 결코 쉽지 않습니다. 창업과 실패에는 반드시 그 원인이 있습니다. 김밥천국을 성공시킨 노하우를 통해 당신도 성공할 수 있습니다. 도전하십시오. 그리고 선택하십시오. 선택이 다르면 결과도 다릅니다.', 'KIMBAB', 623000);
