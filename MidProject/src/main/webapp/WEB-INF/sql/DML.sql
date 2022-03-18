-- 학과
INSERT ALL
    INTO department VALUES ('1','국어국문학과','053-950-5106')
    INTO department VALUES ('2','응용생명과학부','053-950-5706')
    INTO department VALUES ('3','전자공학과','053-950-5506')
    INTO department VALUES ('4','자율전공학부','053-950-4088')
SELECT * FROM dual;

-- 학생
INSERT ALL
    INTO student VALUES ('2011001001','김국어','1234','19900101',1,1,'010-1111-1111',NULL,20,'1')
    INTO student VALUES ('2011001002','이한글','1234','19910228',1,2,'010-12222-2222',NULL,20,'1')

    INTO student VALUES ('2012002001','박생명','1234','19920401',2,1,'010-3333-3333',NULL,20,'2')
    INTO student VALUES ('2012002002','최응생','1234','19930630',2,2,'010-4444-4444',NULL,20,'2')

    INTO student VALUES ('2013003001','윤전자','1234','19940731',3,1,'010-5555-5555',NULL,20,'3')
    INTO student VALUES ('2013003002','주삼성','1234','19950901',3,2,'010-6666-6666',NULL,20,'3')

    INTO student VALUES ('2014004001','장자율','1234','19961101',4,1,'010-7777-7777',NULL,20,'4')
    INTO student VALUES ('2014004002','백융합','1234','19971231',4,2,'010-8888-8888',NULL,20,'4')
SELECT * FROM dual;

-- 교수
INSERT ALL
    INTO professor VALUES ('001001','김교수','19600101','010-0000-0001',NULL,'1')
    INTO professor VALUES ('001002','이교수','19650515','010-0000-0002',NULL,'1')
    
    INTO professor VALUES ('002001','박교수','19700828','010-0000-0003',NULL,'2')
    INTO professor VALUES ('002002','최교수','19751006','010-0000-0004',NULL,'2')
    
    INTO professor VALUES ('003001','서교수','19800319','010-0000-0005',NULL,'3')
    INTO professor VALUES ('003002','주교수','19850724','010-0000-0006',NULL,'3')
    
    INTO professor VALUES ('004001','양교수','19900319','010-0000-0007',NULL,'4')
    INTO professor VALUES ('004002','신교수','19950724','010-0000-0008',NULL,'4')
SELECT * FROM dual;

--공지
INSERT ALL
    INTO board VALUES (1,'국어국문학과 공지1 제목','국어국문학과 공지1 내용',TO_DATE('202203021825','YYYYMMDDHH24MI'),'001001')
    INTO board VALUES (2,'국어국문학과 공지2 제목','국어국문학과 공지2 내용',TO_DATE('202203021825','YYYYMMDDHH24MI'),'001001')
    
    INTO board VALUES (3,'응용생명과학부 공지1 제목','응용생명과학부 공지1 내용',TO_DATE('202203021825','YYYYMMDDHH24MI'),'002001')
    INTO board VALUES (4,'응용생명과학부 공지2 제목','응용생명과학부 공지2 내용',TO_DATE('202203021825','YYYYMMDDHH24MI'),'002001')
    
    INTO board VALUES (5,'전자공학과 공지1 제목','전자공학과 공지1 내용',TO_DATE('202203021825','YYYYMMDDHH24MI'),'003001')
    INTO board VALUES (6,'전자공학과 공지2 제목','전자공학과 공지2 내용',TO_DATE('202203021825','YYYYMMDDHH24MI'),'003001')
    
    INTO board VALUES (7,'자율전공학부 공지1 제목','자율전공학부 공지1 내용',TO_DATE('202203021825','YYYYMMDDHH24MI'),'004001')
    INTO board VALUES (8,'자율전공학부 공지2 제목','자율전공학부 공지2 내용',TO_DATE('202203021825','YYYYMMDDHH24MI'),'004001')
SELECT * FROM dual;

-- 강의
INSERT ALL
    INTO lecture VALUES ('1','국문학총론',3,'MON','5','7','인문대학 1호관 201호','001001')
    INTO lecture VALUES ('2','국문학각론',3,'TUE','2','4','인문대학 1호관 302호','001002')
    
    INTO lecture VALUES ('3','재배학개론',3,'WED','1','3','농업생명과학대학 4호관 423호','002001')
    INTO lecture VALUES ('4','기초생화학',3,'FRI','5','7','자연과학대학 2호관 202호','002002')

    INTO lecture VALUES ('5','기초전자실험 및 설계',3,'TUE','1','3','공과대학 1호관 303호','003001')
    INTO lecture VALUES ('6','공학수학1',3,'THR','1','3','공과대학 3호관 507호','003002')
    
    INTO lecture VALUES ('7','대학글쓰기',3,'WED','2','4','제4합동강의동 101호','004001')
    INTO lecture VALUES ('8','논리와 비판적 사고',3,'THR','5','7','인문한국진흥관 205호','004002')
SELECT * FROM dual;

-- 담당
INSERT ALL
    INTO charge VALUES ('2011001001','001001')
    INTO charge VALUES ('2011001002','001002')
    
    INTO charge VALUES ('2012002001','002001')
    INTO charge VALUES ('2012002002','002002')
    
    INTO charge VALUES ('2013003001','003001')
    INTO charge VALUES ('2013003002','003002')
    
    INTO charge VALUES ('2014004001','004001')
    INTO charge VALUES ('2014004002','004002')
SELECT * FROM dual;

-- 수강
INSERT ALL
    INTO course VALUES (1,'2011001001',2020,1,90,90,'A')
    INTO course VALUES (1,'2011001002',2020,1,80,90,'B')
    INTO course VALUES (1,'2013003001',2020,1,90,50,'C')
    
    INTO course VALUES (2,'2011001001',2020,2,90,90,'A')
    INTO course VALUES (2,'2011001002',2020,2,90,90,'A')
    INTO course VALUES (2,'2014004002',2020,2,90,90,'A')
    
    INTO course VALUES (3,'2012002001',2020,1,90,90,'A')
    INTO course VALUES (3,'2012002002',2020,1,90,90,'A')
    INTO course VALUES (3,'2013003001',2020,1,90,90,'A')
    
    INTO course VALUES (4,'2012002001',2020,2,90,90,'A')
    INTO course VALUES (4,'2012002002',2020,2,90,90,'A')
    INTO course VALUES (4,'2014004002',2020,2,90,90,'A')
    
    INTO course VALUES (5,'2013003001',2020,1,90,90,'A')
    INTO course VALUES (5,'2013003002',2020,1,90,90,'A')
    INTO course VALUES (5,'2014004001',2020,1,90,90,'A')
    
    INTO course VALUES (6,'2013003001',2020,1,90,90,'A')
    INTO course VALUES (6,'2013003002',2020,1,90,90,'A')
    INTO course VALUES (6,'2011001001',2020,1,90,90,'A')
    
    INTO course VALUES (7,'2014004001',2020,1,90,90,'A')
    INTO course VALUES (7,'2014004002',2020,1,90,90,'A')
    INTO course VALUES (7,'2011001002',2020,1,90,90,'A')
    
    INTO course VALUES (8,'2014004001',2020,2,90,90,'A')
    INTO course VALUES (8,'2014004002',2020,2,90,90,'A')
    INTO course VALUES (8,'2012002002',2020,2,90,90,'A')
SELECT * FROM dual;

--SELECT * FROM department;	
--SELECT * FROM student;
--SELECT * FROM professor;
--SELECT * FROM board;
--SELECT * FROM lecture;
--SELECT * FROM charge;
--SELECT * FROM course;

--TRUNCATE TABLE charge;
--수강 / 강의 테이블 데이터 삭제
DELETE TABLE course;
DELETE FROM lecutre;