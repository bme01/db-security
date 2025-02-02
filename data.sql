
TRUNCATE TABLE ATTENDANCE;
TRUNCATE TABLE HIRE;
TRUNCATE TABLE SALARY;
TRUNCATE TABLE STAFF;
TRUNCATE TABLE POSITION;


INSERT INTO POSITION VALUES ('Software Development Engineer','ORACLE','SG',20000);
INSERT INTO POSITION VALUES ('Data Scientist','ORACLE','NY',20000);
INSERT INTO POSITION VALUES ('AI Specialist','ORACLE','NY',20000);
INSERT INTO POSITION VALUES ('Human Resource','ORACLE','SG',20000);
INSERT INTO POSITION VALUES ('Accountant','ORACLE','SG',20000);
INSERT INTO STAFF VALUES ('HR','DAVE','Human Resource','ORACLE','67453210','2-7122487-5',0);
INSERT INTO STAFF VALUES ('ACCOUNTANT','BOB','Accountant','ORACLE','67543210','2-7122488-9',0);
INSERT INTO STAFF VALUES ('STAFF1','SAM','Software Development Engineer','ORACLE','64573210','2-7122489-1',1);
INSERT INTO STAFF VALUES ('STAFF2','PAUL','Software Development Engineer','ORACLE','64473210','2-7122490-3',2);
INSERT INTO ATTENDANCE VALUES ('ACCOUNTANT','BOB',TO_DATE('2020-10-01','YYYY-MM-DD'),5,5,5);
INSERT INTO ATTENDANCE VALUES ('HR','DAVE',TO_DATE('2020-10-01','YYYY-MM-DD'),4,4,4);
INSERT INTO ATTENDANCE VALUES ('STAFF1','SAM',TO_DATE('2020-10-01','YYYY-MM-DD'),3,3,3);
INSERT INTO HIRE VALUES ('A101','Software Development Engineer','ORACLE','Bachelor Degree Needed',2,1);
INSERT INTO HIRE VALUES ('A201','Data Scientist','ORACLE','Proficient in Python',5,0);
INSERT INTO HIRE VALUES ('A401','AI Specialist','ORACLE','Graduate preferred',2,1);
INSERT INTO SALARY VALUES ('HR','DAVE',TO_DATE('2020-10-01','YYYY-MM-DD'),5000,4000,3000,6000);
INSERT INTO SALARY VALUES ('ACCOUNTANT','BOB',TO_DATE('2020-10-01','YYYY-MM-DD'),4000,5000,2000,7000);
INSERT INTO SALARY VALUES ('STAFF1','SAM',TO_DATE('2020-10-01','YYYY-MM-DD'),4000,4000,2000,6000);
INSERT INTO INTERVIEW VALUES (20200021,'STEVE','65573210','Software Development Engineer','STAFF1',TO_DATE('2020-10-01 10:00:00','YYYY-MM-DD HH24:MI:SS'),0);
INSERT INTO INTERVIEW VALUES (20200023,'DAVID','67533210','Software Development Engineer','STAFF1',TO_DATE('2020-10-02 10:00:00','YYYY-MM-DD HH24:MI:SS'),1);
INSERT INTO PROJECT VALUES (20201007,'A PROJECT','STAFF1',1,TO_DATE('2020-10-01','YYYY-MM-DD'),TO_DATE('2020-11-01','YYYY-MM-DD'));
INSERT INTO PROJECT VALUES (20201021,'ANOTHER PROJECT','STAFF2',2,TO_DATE('2020-10-01','YYYY-MM-DD'),TO_DATE('2020-12-01','YYYY-MM-DD'));
INSERT INTO PROJECTGROUP VALUES (20201007,'STAFF1','B');
INSERT INTO PROJECTGROUP VALUES (20201007,'STAFF2','A');
INSERT INTO PROJECTGROUP VALUES (20201021,'STAFF2','A');
INSERT INTO PROJECTGROUP VALUES (20201021,'STAFF1','B');