DROP TABLE SWE_USER;

CREATE TABLE SWE_USER (
  FIRSTNAME   VARCHAR2(30) NOT NULL,
  LASTNAME    VARCHAR2(30) NOT NULL,
  EMAIL       VARCHAR2(40) NOT NULL,
  password    VARCHAR2(30) NOT NULL,
  dateOfBirth VARCHAR2(10) NOT NULL,
  country     VARCHAR2(30) NOT NULL,
  adresse     VARCHAR2(60) NOT NULL,
  gender      VARCHAR2(1)  NOT NULL,
  PRIMARY KEY (EMAIL)
);


DROP SEQUENCE prod_seq;
DROP TABLE SWE_PRODUKT;


INSERT INTO SWE_PRODUCT (productId, title, CATEGORY, description, startPrice, sofortKaufPrice, seller, image, durationAuction)
VALUES (prod_seq.nextval, 'titeltest', 'categor', 'des', 10, 20, 'y.baidiuk@gmail.com', 'image', 10);


CREATE SEQUENCE prod_seq START WITH 1;

CREATE TABLE SWE_PRODUCT (
  productId          NUMBER(7)            NOT NULL,
  title              VARCHAR2(40)         NOT NULL,
  CATEGORY           VARCHAR2(30)         NOT NULL,
  description        VARCHAR2(300)        NOT NULL,
  startPrice         NUMBER(8, 2)         NOT NULL,
  currentPrice       NUMBER(8, 2) DEFAULT 0,
  sofortKaufPrice    NUMBER(8, 2)         NOT NULL,
  seller             VARCHAR2(40)         NOT NULL,
  highestBidderEmail VARCHAR2(40),
  image              VARCHAR2(30),
  sold               CHAR(1)      DEFAULT 0,
  durationAuction    NUMBER(2)            NOT NULL,
  addDay             DATE DEFAULT sysdate NOT NULL,
  PRIMARY KEY (productId),
  FOREIGN KEY (seller) REFERENCES SWE_USER (EMAIL)
);

CREATE OR REPLACE TRIGGER prod_trig
BEFORE INSERT ON SWE_PRODUCT
FOR EACH ROW

  BEGIN
    SELECT prod_seq.NEXTVAL
    INTO :new.productId
    FROM dual;
  END;
/



CREATE OR REPLACE TRIGGER date_trig
BEFORE INSERT OR UPDATE ON SWE_PRODUCT
FOR EACH ROW
  BEGIN
    if  :new.addDay is null then
      :new.addDay := sysdate;
    end if;
  END;/


DROP TABLE MyWatchList;
CREATE TABLE SWE_MyWatchList (
  EMAIL     VARCHAR2(40) NOT NULL,
  productId NUMBER(7)    NOT NULL,
  FOREIGN KEY (EMAIL) REFERENCES SWE_USER,
  FOREIGN KEY (productId) REFERENCES PRODUKT
);