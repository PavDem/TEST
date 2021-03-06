CREATE TABLE FRIEND_RELATION
(
ID NUMBER NOT NULL,
CONSTRAINT FRIEND_RELATION_PK PRIMARY KEY (ID),
FROM_USER_ID NUMBER NOT NULL,
TO_USER_ID NUMBER NOT NULL,

CONSTRAINT FROM_USER_ID_FK FOREIGN KEY(FROM_USER_ID) REFERENCES USERS(ID),
CONSTRAINT TO_USER_ID_FK FOREIGN KEY(TO_USER_ID) REFERENCES USERS(ID)
);
CREATE SEQUENCE FRIEND_RELATION_SEQ MINVALUE 1000 MAXVALUE 10000000000 START WITH 1001 INCREMENT BY 1;