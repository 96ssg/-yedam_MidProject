-- 학과
INSERT ALL
    INTO department VALUES ('001','국어국문학과','053-950-5106')
    INTO department VALUES ('002','응용생명과학부','053-950-5706')
    INTO department VALUES ('003','전자공학과','053-950-5506')
    INTO department VALUES ('004','자율전공학부','053-950-4088')
SELECT * FROM dual;

-- 학생
INSERT ALL
    INTO student VALUES ('2011001001','배지수','1234','1990-01-01',1,1,'01051891592',NULL,20,'001',1)
    INTO student VALUES ('2011001002','강원기','1234','1991-02-28',2,2,'01057297288',NULL,20,'001',2)
    INTO student VALUES ('2011001003','박승권','1234','1990-01-02',4,1,'01075119835',NULL,20,'001',4)
    INTO student VALUES ('2011001004','이원기','1234','1991-03-01',4,2,'01074792592',NULL,20,'001',2)
    INTO student VALUES ('2011001005','강병현','1234','1990-01-03',2,1,'01082436766',NULL,20,'001',2)
    INTO student VALUES ('2011001006','권준희','1234','1991-03-02',3,2,'01054761744',NULL,20,'001',1)
    INTO student VALUES ('2011001007','김도엽','1234','1990-01-04',1,1,'01047591285',NULL,20,'001',4)
    INTO student VALUES ('2011001008','김도현','1234','1991-03-03',1,2,'01026943548',NULL,20,'001',4)
    INTO student VALUES ('2011001009','김성연','1234','1990-01-05',2,1,'01011569826',NULL,20,'001',3)
    INTO student VALUES ('2011001010','김수혁','1234','1991-03-04',3,2,'01059760487',NULL,20,'001',3)

    INTO student VALUES ('2012002001','최현서','1234','1992-04-01',2,1,'01059729321',NULL,20,'002',2)
    INTO student VALUES ('2012002002','김수환','1234','1993-06-30',1,2,'01036272265',NULL,20,'002',2)
    INTO student VALUES ('2012002003','김우진','1234','1992-04-02',3,1,'01051476957',NULL,20,'002',2)
    INTO student VALUES ('2012002004','류승수','1234','1993-07-01',2,2,'01041723541',NULL,20,'002',1)
    INTO student VALUES ('2012002005','이민화','1234','1992-04-03',3,1,'01059751621',NULL,20,'002',2)
    INTO student VALUES ('2012002006','배순철','1234','1993-07-02',2,2,'01015429197',NULL,20,'002',3)
    INTO student VALUES ('2012002007','박성철','1234','1992-04-04',3,1,'01051479621',NULL,20,'002',4)
    INTO student VALUES ('2012002008','배영훈','1234','1993-07-03',3,2,'01095478314',NULL,20,'002',2)
    INTO student VALUES ('2012002009','박지홍','1234','1992-04-05',3,1,'01047598774',NULL,20,'002',2)
    INTO student VALUES ('2012002010','박한수','1234','1993-07-04',4,2,'01052973468',NULL,20,'002',3)

    INTO student VALUES ('2013003001','정민교','1234','1992-07-31',4,1,'01085973264',NULL,20,'003',1)
    INTO student VALUES ('2013003002','이창형','1234','1990-09-01',3,2,'01058495276',NULL,20,'003',2)
    INTO student VALUES ('2013003003','이상준','1234','1991-08-01',2,1,'01058972983',NULL,20,'003',4)
    INTO student VALUES ('2013003004','최성현','1234','1991-09-02',1,2,'01058795832',NULL,20,'003',2)
    INTO student VALUES ('2013003005','정성헌','1234','1992-08-02',2,1,'01044897575',NULL,20,'003',2)
    INTO student VALUES ('2013003006','이동기','1234','1991-09-03',3,2,'01085795364',NULL,20,'003',3)
    INTO student VALUES ('2013003007','이상준','1234','1990-08-03',3,1,'01078955019',NULL,20,'003',1)
    INTO student VALUES ('2013003008','이유택','1234','1994-09-04',3,2,'01058793641',NULL,20,'003',1)
    INTO student VALUES ('2013003009','임영식','1234','1993-08-04',4,1,'01078951427',NULL,20,'003',2)
    INTO student VALUES ('2013003010','정혜리','1234','1993-09-05',2,2,'01015673829',NULL,20,'003',3)

    INTO student VALUES ('2014004001','조원용','1234','1993-11-01',2,1,'01058792146',NULL,20,'004',2)
    INTO student VALUES ('2014004002','서지현','1234','1993-12-31',1,2,'01057914673',NULL,20,'004',4)
    INTO student VALUES ('2014004003','이승은','1234','1994-11-02',4,1,'01057984132',NULL,20,'004',2)
    INTO student VALUES ('2014004004','배정두','1234','1994-01-01',3,2,'01057843927',NULL,20,'004',2)
    INTO student VALUES ('2014004005','이성복','1234','1995-11-03',2,1,'01078419020',NULL,20,'004',2)
    INTO student VALUES ('2014004006','정윤석','1234','1991-01-02',1,2,'01087956346',NULL,20,'004',1)
    INTO student VALUES ('2014004007','지민우','1234','1993-11-04',2,1,'01045916166',NULL,20,'004',3)
    INTO student VALUES ('2014004008','정민우','1234','1992-01-03',3,2,'01058794621',NULL,20,'004',3)
    INTO student VALUES ('2014004009','송치봉','1234','1992-11-04',3,1,'01054947523',NULL,20,'004',2)
    INTO student VALUES ('2014004010','박호용','1234','1994-01-04',3,2,'01005947586',NULL,20,'004',1)

    INTO student VALUES ('2015001001','이승환','1234','1994-01-01',4,1,'01057984132',NULL,20,'001',1)
    INTO student VALUES ('2015001002','김경한','1234','1995-02-28',2,2,'01032174191',NULL,20,'001',1)
    INTO student VALUES ('2015001003','허시현','1234','1994-01-02',2,1,'01058934125',NULL,20,'001',1)
    INTO student VALUES ('2015001004','이홍주','1234','1995-03-01',1,2,'01023212535',NULL,20,'001',1)
    INTO student VALUES ('2015001005','박민호','1234','1994-01-03',1,1,'01054329231',NULL,20,'001',1)
    INTO student VALUES ('2015001006','김진환','1234','1995-03-02',4,2,'01058321566',NULL,20,'001',1)
    INTO student VALUES ('2015001007','조민서','1234','1994-01-04',4,1,'01052318351',NULL,20,'001',1)
    INTO student VALUES ('2015001008','박호민','1234','1995-03-03',2,2,'01062148921',NULL,20,'001',1)
    INTO student VALUES ('2015001009','이동진','1234','1994-01-05',2,1,'01016253452',NULL,20,'001',3)
    INTO student VALUES ('2015001010','이유림','1234','1995-03-04',3,2,'01057942341',NULL,20,'001',2)

    INTO student VALUES ('2016002001','이강석','1234','1995-04-01',2,1,'01052194741',NULL,20,'002',2)
    INTO student VALUES ('2016002002','정민경','1234','1996-06-30',1,2,'01014726179',NULL,20,'002',3)
    INTO student VALUES ('2016002003','이상민','1234','1995-04-02',2,1,'01001763745',NULL,20,'002',1)
    INTO student VALUES ('2016002004','이정호','1234','1997-07-01',2,2,'01054974762',NULL,20,'002',1)
    INTO student VALUES ('2016002005','정민교','1234','1997-04-03',3,1,'01048974726',NULL,20,'002',2)
    INTO student VALUES ('2016002006','김민욱','1234','1995-07-02',3,2,'01057894152',NULL,20,'002',3)
    INTO student VALUES ('2016002007','백진석','1234','1997-04-04',3,1,'01012345276',NULL,20,'002',1)
    INTO student VALUES ('2016002008','백강석','1234','1995-07-03',2,2,'01078957946',NULL,20,'002',4)
    INTO student VALUES ('2016002009','조형석','1234','1996-04-05',1,1,'01047954674',NULL,20,'002',3)
    INTO student VALUES ('2016002010','박중원','1234','1997-07-04',1,2,'01042176324',NULL,20,'002',2)

    INTO student VALUES ('2017003001','김진수','1234','1998-07-31',3,1,'01024132167',NULL,20,'003',2)
    INTO student VALUES ('2017003002','이지아','1234','1999-09-01',2,2,'01041276498',NULL,20,'003',2)
    INTO student VALUES ('2017003003','강정호','1234','1998-08-01',3,1,'01042764497',NULL,20,'003',1)
    INTO student VALUES ('2017003004','이승권','1234','1999-09-02',3,2,'01049756415',NULL,20,'003',1)
    INTO student VALUES ('2017003005','서윤철','1234','1998-08-02',2,1,'01032594762',NULL,20,'003',1)
    INTO student VALUES ('2017003006','황하경','1234','1999-09-03',2,2,'01031246947',NULL,20,'003',1)
    INTO student VALUES ('2017003007','이채은','1234','1998-08-03',1,1,'01024671495',NULL,20,'003',1)
    INTO student VALUES ('2017003008','장보근','1234','1999-09-04',4,2,'01012404692',NULL,20,'003',3)
    INTO student VALUES ('2017003009','남상연','1234','1998-08-04',3,1,'01014567274',NULL,20,'003',2)
    INTO student VALUES ('2017003010','이준석','1234','1999-09-05',4,2,'01021437246',NULL,20,'003',4)

    INTO student VALUES ('2018004001','이경하','1234','1999-11-01',2,1,'01012476451',NULL,20,'004',2)
    INTO student VALUES ('2018004002','이재진','1234','2001-02-31',1,2,'01047124965',NULL,20,'004',1)
    INTO student VALUES ('2018004003','이민욱','1234','2000-11-02',2,1,'01015947547',NULL,20,'004',1)
    INTO student VALUES ('2018004004','정해완','1234','1999-01-01',3,2,'01043216732',NULL,20,'004',1)
    INTO student VALUES ('2018004005','이석준','1234','2000-11-03',2,1,'01032367391',NULL,20,'004',1)
    INTO student VALUES ('2018004006','이지홍','1234','1999-01-02',1,2,'01031246916',NULL,20,'004',1)
    INTO student VALUES ('2018004007','김채환','1234','1998-11-04',3,1,'01021679591',NULL,20,'004',1)
    INTO student VALUES ('2018004008','장동근','1234','1999-01-03',2,2,'01064795471',NULL,20,'004',2)
    INTO student VALUES ('2018004009','이시윤','1234','1999-11-04',1,1,'01017695298',NULL,20,'004',3)
    INTO student VALUES ('2018004010','이시은','1234','1999-01-04',2,2,'01016947974',NULL,20,'004',4)

    INTO student VALUES ('2019001001','정승권','1234','2000-11-01',2,1,'01037957941',NULL,20,'001',2)
    INTO student VALUES ('2019001002','김진호','1234','2000-03-31',2,2,'01047954191',NULL,20,'001',2)
    INTO student VALUES ('2019001003','이동현','1234','1998-11-02',2,1,'01059582431',NULL,20,'001',2)
    INTO student VALUES ('2019001004','박병현','1234','1996-01-01',4,2,'01045798977',NULL,20,'001',1)
    INTO student VALUES ('2019001005','최정민','1234','2000-11-03',3,1,'01096741796',NULL,20,'001',1)
    INTO student VALUES ('2019001006','윤호용','1234','1997-01-02',2,2,'01054975412',NULL,20,'001',1)
    INTO student VALUES ('2019001007','이채현','1234','1996-11-04',1,1,'01054795493',NULL,20,'001',1)
    INTO student VALUES ('2019001008','최민호','1234','2000-01-03',1,2,'01015245483',NULL,20,'001',1)
    INTO student VALUES ('2019001009','김진우','1234','2000-11-04',2,1,'01014975196',NULL,20,'001',1)
    INTO student VALUES ('2019001010','권희준','1234','1998-01-04',2,2,'01065289941',NULL,20,'001',1)

    INTO student VALUES ('2020002001','박수한','1234','2001-11-02',3,1,'01054879459',NULL,20,'002',1)
    INTO student VALUES ('2020002002','김오형','1234','2001-03-12',3,2,'01023573427',NULL,20,'002',1)
    INTO student VALUES ('2020002003','김민혁','1234','1999-11-03',1,1,'01078795947',NULL,20,'002',1)
    INTO student VALUES ('2020002004','장지운','1234','1997-01-02',2,2,'01026246741',NULL,20,'002',1)
    INTO student VALUES ('2020002005','최하경','1234','2001-11-04',2,1,'01054962912',NULL,20,'002',1)
    INTO student VALUES ('2020002006','최동민','1234','1998-01-03',3,2,'01069765443',NULL,20,'002',1)
    INTO student VALUES ('2020002007','윤명진','1234','1997-11-05',3,1,'01021972547',NULL,20,'002',2)
    INTO student VALUES ('2020002008','최민철','1234','2001-01-04',1,2,'01015974597',NULL,20,'002',2)
    INTO student VALUES ('2020002009','이민호','1234','2001-11-05',1,1,'01051947859',NULL,20,'002',2)
    INTO student VALUES ('2020002010','김지윤','1234','1999-01-05',2,2,'01047954972',NULL,20,'002',3)
SELECT * FROM dual;

-- 교수
INSERT ALL
    INTO professor VALUES ('001001','김정구','1234','1976-01-01','01045179612',NULL,'001')
    INTO professor VALUES ('001002','이부윤','1234','1984-05-15','01087624782',NULL,'001')
    INTO professor VALUES ('001003','이재천','1234','1975-03-08','01015890013',NULL,'001')
    INTO professor VALUES ('001004','호광수','1234','1960-04-11','01017890514',NULL,'001')
    INTO professor VALUES ('001005','하지수','1234','1966-12-03','01045790489',NULL,'001')
    INTO professor VALUES ('001006','최해운','1234','1965-07-14','01074250496',NULL,'001')

    INTO professor VALUES ('002001','조성은','1234','1968-08-28','01030247783',NULL,'002')
    INTO professor VALUES ('002002','배태일','1234','1975-09-06','01038784564',NULL,'002')
    INTO professor VALUES ('002003','홍광희','1234','1972-09-29','01017364823',NULL,'002')
    INTO professor VALUES ('002004','김대호','1234','1975-11-07','01068349824',NULL,'002')
    INTO professor VALUES ('002005','김우진','1234','1974-12-30','01016844525',NULL,'002')
    INTO professor VALUES ('002006','임덕성','1234','1975-02-08','01018762426',NULL,'002')

    INTO professor VALUES ('003001','김남희','1234','1973-01-19','01045654595',NULL,'003')
    INTO professor VALUES ('003002','김한구','1234','1972-08-24','01016484896',NULL,'003')
    INTO professor VALUES ('003003','공준호','1234','1970-07-20','01048947873',NULL,'003')
    INTO professor VALUES ('003004','전만식','1234','1969-04-25','01095844894',NULL,'003')
    INTO professor VALUES ('003005','한세경','1234','1964-06-21','01015985465',NULL,'003')
    INTO professor VALUES ('003006','김원찬','1234','1968-08-26','01048951266',NULL,'003')

    INTO professor VALUES ('004001','김정호','1234','1972-08-19','01037588307',NULL,'004')
    INTO professor VALUES ('004002','서창록','1234','1968-08-24','01038735008',NULL,'004')
    INTO professor VALUES ('004003','박성훈','1234','1960-07-20','01035440033',NULL,'004')
    INTO professor VALUES ('004004','이유미','1234','1962-02-25','01086940034',NULL,'004')
    INTO professor VALUES ('004005','김병기','1234','1976-01-21','01025340035',NULL,'004')
    INTO professor VALUES ('004006','안인혜','1234','1975-03-26','01068405036',NULL,'004')
SELECT * FROM dual;

--공지
INSERT ALL
    INTO board VALUES (1,'국어국문학과 공지1 제목','국어국문학과 공지1 내용',TO_DATE('202203011825','YYYYMMDDHH24MI'),'001001')
    INTO board VALUES (2,'국어국문학과 공지2 제목','국어국문학과 공지2 내용',TO_DATE('202203051825','YYYYMMDDHH24MI'),'001001')
    
    INTO board VALUES (3,'응용생명과학부 공지1 제목','응용생명과학부 공지1 내용',TO_DATE('202203091825','YYYYMMDDHH24MI'),'002001')
    INTO board VALUES (4,'응용생명과학부 공지2 제목','응용생명과학부 공지2 내용',TO_DATE('202203131825','YYYYMMDDHH24MI'),'002001')
    
    INTO board VALUES (5,'전자공학과 공지1 제목','전자공학과 공지1 내용',TO_DATE('202203171825','YYYYMMDDHH24MI'),'003001')
    INTO board VALUES (6,'전자공학과 공지2 제목','전자공학과 공지2 내용',TO_DATE('202203211825','YYYYMMDDHH24MI'),'003001')
    
    INTO board VALUES (7,'자율전공학부 공지1 제목','자율전공학부 공지1 내용',TO_DATE('202203021825','YYYYMMDDHH24MI'),'004001')
    INTO board VALUES (8,'자율전공학부 공지2 제목','자율전공학부 공지2 내용',TO_DATE('202203101825','YYYYMMDDHH24MI'),'004001')
    
    INTO board VALUES (9,'국어국문학과 공지3 제목','국어국문학과 공지3 내용',TO_DATE('202203012025','YYYYMMDDHH24MI'),'001001')
    INTO board VALUES (10,'국어국문학과 공지4 제목','국어국문학과 공지4 내용',TO_DATE('202203052025','YYYYMMDDHH24MI'),'001001')
    
    INTO board VALUES (11,'응용생명과학부 공지3 제목','응용생명과학부 공지3 내용',TO_DATE('202203092025','YYYYMMDDHH24MI'),'002001')
    INTO board VALUES (12,'응용생명과학부 공지4 제목','응용생명과학부 공지4 내용',TO_DATE('202203132025','YYYYMMDDHH24MI'),'002001')
    
    INTO board VALUES (13,'전자공학과 공지3 제목','전자공학과 공지3 내용',TO_DATE('202203172025','YYYYMMDDHH24MI'),'003001')
    INTO board VALUES (14,'전자공학과 공지4 제목','전자공학과 공지4 내용',TO_DATE('202203212025','YYYYMMDDHH24MI'),'003001')
    
    INTO board VALUES (15,'자율전공학부 공지3 제목','자율전공학부 공지3 내용',TO_DATE('202203022025','YYYYMMDDHH24MI'),'004001')
    INTO board VALUES (16,'자율전공학부 공지4 제목','자율전공학부 공지4 내용',TO_DATE('202203102025','YYYYMMDDHH24MI'),'004001')
    
    INTO board VALUES (17,'국어국문학과 공지5 제목','국어국문학과 공지5 내용',TO_DATE('202103141725','YYYYMMDDHH24MI'),'001001')
    INTO board VALUES (18,'국어국문학과 공지6 제목','국어국문학과 공지6 내용',TO_DATE('202103121725','YYYYMMDDHH24MI'),'001001')
    
    INTO board VALUES (19,'응용생명과학부 공지5 제목','응용생명과학부 공지5 내용',TO_DATE('202104191725','YYYYMMDDHH24MI'),'002001')
    INTO board VALUES (20,'응용생명과학부 공지6 제목','응용생명과학부 공지6 내용',TO_DATE('202103241725','YYYYMMDDHH24MI'),'002001')
    
    INTO board VALUES (21,'전자공학과 공지5 제목','전자공학과 공지5 내용',TO_DATE('202103281725','YYYYMMDDHH24MI'),'003001')
    INTO board VALUES (22,'전자공학과 공지6 제목','전자공학과 공지6 내용',TO_DATE('202103271725','YYYYMMDDHH24MI'),'003001')
    
    INTO board VALUES (23,'자율전공학부 공지5 제목','자율전공학부 공지5 내용',TO_DATE('202103301725','YYYYMMDDHH24MI'),'004001')
    INTO board VALUES (24,'자율전공학부 공지6 제목','자율전공학부 공지6 내용',TO_DATE('202103241725','YYYYMMDDHH24MI'),'004001')
    
    INTO board VALUES (25,'국어국문학과 공지7 제목','국어국문학과 공지7 내용',TO_DATE('202104141143','YYYYMMDDHH24MI'),'001001')
    INTO board VALUES (26,'국어국문학과 공지8 제목','국어국문학과 공지8 내용',TO_DATE('202104121143','YYYYMMDDHH24MI'),'001001')
    
    INTO board VALUES (27,'응용생명과학부 공지7 제목','응용생명과학부 공지7 내용',TO_DATE('202104191143','YYYYMMDDHH24MI'),'002001')
    INTO board VALUES (28,'응용생명과학부 공지8 제목','응용생명과학부 공지8 내용',TO_DATE('202104241143','YYYYMMDDHH24MI'),'002001')
    
    INTO board VALUES (29,'전자공학과 공지7 제목','전자공학과 공지7 내용',TO_DATE('202104281143','YYYYMMDDHH24MI'),'003001')
    INTO board VALUES (30,'전자공학과 공지8 제목','전자공학과 공지8 내용',TO_DATE('202104271143','YYYYMMDDHH24MI'),'003001')
    
    INTO board VALUES (31,'자율전공학부 공지7 제목','자율전공학부 공지7 내용',TO_DATE('202104301143','YYYYMMDDHH24MI'),'004001')
    INTO board VALUES (32,'자율전공학부 공지8 제목','자율전공학부 공지8 내용',TO_DATE('202104241143','YYYYMMDDHH24MI'),'004001')
    
    INTO board VALUES (33,'국어국문학과 공지9 제목','국어국문학과 공지9 내용',TO_DATE('202101141143','YYYYMMDDHH24MI'),'001001')
    INTO board VALUES (34,'국어국문학과 공지10 제목','국어국문학과 공지10 내용',TO_DATE('202101181143','YYYYMMDDHH24MI'),'001001')
    
    INTO board VALUES (35,'응용생명과학부 공지9 제목','응용생명과학부 공지9 내용',TO_DATE('202101191143','YYYYMMDDHH24MI'),'002001')
    INTO board VALUES (36,'응용생명과학부 공지10 제목','응용생명과학부 공지10 내용',TO_DATE('202101241143','YYYYMMDDHH24MI'),'002001')
    
    INTO board VALUES (37,'전자공학과 공지9 제목','전자공학과 공지9 내용',TO_DATE('202101281143','YYYYMMDDHH24MI'),'003001')
    INTO board VALUES (38,'전자공학과 공지10 제목','전자공학과 공지10 내용',TO_DATE('202101291143','YYYYMMDDHH24MI'),'003001')
    
    INTO board VALUES (39,'자율전공학부 공지9 제목','자율전공학부 공지9 내용',TO_DATE('202101201143','YYYYMMDDHH24MI'),'004001')
    INTO board VALUES (40,'자율전공학부 공지10 제목','자율전공학부 공지10 내용',TO_DATE('202101241143','YYYYMMDDHH24MI'),'004001')
    
    INTO board VALUES (41,'국어국문학과 공지13 제목','국어국문학과 공지13 내용',TO_DATE('201803011825','YYYYMMDDHH24MI'),'001001')
    INTO board VALUES (42,'국어국문학과 공지14 제목','국어국문학과 공지14 내용',TO_DATE('201804071825','YYYYMMDDHH24MI'),'001001')
    
    INTO board VALUES (43,'응용생명과학부 공지13 제목','응용생명과학부 공지13 내용',TO_DATE('201803091825','YYYYMMDDHH24MI'),'002001')
    INTO board VALUES (44,'응용생명과학부 공지14 제목','응용생명과학부 공지14 내용',TO_DATE('201803131825','YYYYMMDDHH24MI'),'002001')
    
    INTO board VALUES (45,'전자공학과 공지13 제목','전자공학과 공지13 내용',TO_DATE('201803171825','YYYYMMDDHH24MI'),'003001')
    INTO board VALUES (46,'전자공학과 공지14 제목','전자공학과 공지14 내용',TO_DATE('201703211825','YYYYMMDDHH24MI'),'003001')
    
    INTO board VALUES (47,'자율전공학부 공지13 제목','자율전공학부 공지13 내용',TO_DATE('201603021825','YYYYMMDDHH24MI'),'004001')
    INTO board VALUES (48,'자율전공학부 공지14 제목','자율전공학부 공지14 내용',TO_DATE('201703101825','YYYYMMDDHH24MI'),'004001')
    
    INTO board VALUES (49,'국어국문학과 공지15 제목','국어국문학과 공지15 내용',TO_DATE('201703012025','YYYYMMDDHH24MI'),'001001')
    INTO board VALUES (50,'국어국문학과 공지16 제목','국어국문학과 공지16 내용',TO_DATE('201603052025','YYYYMMDDHH24MI'),'001001')
    
    INTO board VALUES (51,'응용생명과학부 공지15 제목','응용생명과학부 공지15 내용',TO_DATE('201603092025','YYYYMMDDHH24MI'),'002001')
    INTO board VALUES (52,'응용생명과학부 공지16 제목','응용생명과학부 공지16 내용',TO_DATE('201703132025','YYYYMMDDHH24MI'),'002001')
    
    INTO board VALUES (53,'전자공학과 공지15 제목','전자공학과 공지15 내용',TO_DATE('202103172025','YYYYMMDDHH24MI'),'003001')
    INTO board VALUES (54,'전자공학과 공지16 제목','전자공학과 공지16 내용',TO_DATE('202003212025','YYYYMMDDHH24MI'),'003001')
    
    INTO board VALUES (55,'자율전공학부 공지15 제목','자율전공학부 공지15 내용',TO_DATE('202003022025','YYYYMMDDHH24MI'),'004001')
    INTO board VALUES (56,'자율전공학부 공지16 제목','자율전공학부 공지16 내용',TO_DATE('202103102025','YYYYMMDDHH24MI'),'004001')
    
    INTO board VALUES (57,'국어국문학과 공지17 제목','국어국문학과 공지17 내용',TO_DATE('202003141725','YYYYMMDDHH24MI'),'001001')
    INTO board VALUES (58,'국어국문학과 공지18 제목','국어국문학과 공지18 내용',TO_DATE('201903121725','YYYYMMDDHH24MI'),'001001')
    
    INTO board VALUES (59,'응용생명과학부 공지17 제목','응용생명과학부 공지17 내용',TO_DATE('201804191725','YYYYMMDDHH24MI'),'002001')
    INTO board VALUES (60,'응용생명과학부 공지18 제목','응용생명과학부 공지18 내용',TO_DATE('201803241725','YYYYMMDDHH24MI'),'002001')
    
    INTO board VALUES (61,'전자공학과 공지17 제목','전자공학과 공지17 내용',TO_DATE('201603281725','YYYYMMDDHH24MI'),'003001')
    INTO board VALUES (62,'전자공학과 공지18 제목','전자공학과 공지18 내용',TO_DATE('201403271725','YYYYMMDDHH24MI'),'003001')
    
    INTO board VALUES (63,'자율전공학부 공지17 제목','자율전공학부 공지17 내용',TO_DATE('201503301725','YYYYMMDDHH24MI'),'004001')
    INTO board VALUES (64,'자율전공학부 공지18 제목','자율전공학부 공지18 내용',TO_DATE('201403241725','YYYYMMDDHH24MI'),'004001')
    
    INTO board VALUES (65,'국어국문학과 공지19 제목','국어국문학과 공지19 내용',TO_DATE('201704141143','YYYYMMDDHH24MI'),'001001')
    INTO board VALUES (66,'국어국문학과 공지20 제목','국어국문학과 공지20 내용',TO_DATE('201604121143','YYYYMMDDHH24MI'),'001001')
    
    INTO board VALUES (67,'응용생명과학부 공지19 제목','응용생명과학부 공지19 내용',TO_DATE('201504191143','YYYYMMDDHH24MI'),'002001')
    INTO board VALUES (68,'응용생명과학부 공지20 제목','응용생명과학부 공지20 내용',TO_DATE('201704241143','YYYYMMDDHH24MI'),'002001')
    
    INTO board VALUES (69,'전자공학과 공지19 제목','전자공학과 공지19 내용',TO_DATE('202004281143','YYYYMMDDHH24MI'),'003001')
    INTO board VALUES (70,'전자공학과 공지20 제목','전자공학과 공지20 내용',TO_DATE('202004271143','YYYYMMDDHH24MI'),'003001')
    
    INTO board VALUES (71,'자율전공학부 공지19 제목','자율전공학부 공지19 내용',TO_DATE('202104301143','YYYYMMDDHH24MI'),'004001')
    INTO board VALUES (72,'자율전공학부 공지20 제목','자율전공학부 공지20 내용',TO_DATE('202204241143','YYYYMMDDHH24MI'),'004001')
    
    INTO board VALUES (73,'국어국문학과 공지21 제목','국어국문학과 공지21 내용',TO_DATE('201601141143','YYYYMMDDHH24MI'),'001001')
    INTO board VALUES (74,'국어국문학과 공지22 제목','국어국문학과 공지22 내용',TO_DATE('201701181143','YYYYMMDDHH24MI'),'001001')
    
    INTO board VALUES (75,'응용생명과학부 공지21 제목','응용생명과학부 공지21 내용',TO_DATE('201901191143','YYYYMMDDHH24MI'),'002001')
    INTO board VALUES (76,'응용생명과학부 공지22 제목','응용생명과학부 공지22 내용',TO_DATE('202001241143','YYYYMMDDHH24MI'),'002001')
    
    INTO board VALUES (77,'전자공학과 공지21 제목','전자공학과 공지21 내용',TO_DATE('201301281143','YYYYMMDDHH24MI'),'003001')
    INTO board VALUES (78,'전자공학과 공지22 제목','전자공학과 공지22 내용',TO_DATE('201601291143','YYYYMMDDHH24MI'),'003001')
    
    INTO board VALUES (79,'자율전공학부 공지21 제목','자율전공학부 공지21 내용',TO_DATE('201501201143','YYYYMMDDHH24MI'),'004001')
    INTO board VALUES (80,'자율전공학부 공지22 제목','자율전공학부 공지22 내용',TO_DATE('201201241143','YYYYMMDDHH24MI'),'004001')
    
    INTO board VALUES (81,'국어국문학과 공지23 제목','국어국문학과 공지23 내용',TO_DATE('201404011825','YYYYMMDDHH24MI'),'001001')
    INTO board VALUES (82,'국어국문학과 공지24 제목','국어국문학과 공지24 내용',TO_DATE('201607071825','YYYYMMDDHH24MI'),'001001')
    
    INTO board VALUES (83,'응용생명과학부 공지23 제목','응용생명과학부 공지23 내용',TO_DATE('201608091825','YYYYMMDDHH24MI'),'002001')
    INTO board VALUES (84,'응용생명과학부 공지24 제목','응용생명과학부 공지24 내용',TO_DATE('201706131825','YYYYMMDDHH24MI'),'002001')
    
    INTO board VALUES (85,'전자공학과 공지23 제목','전자공학과 공지23 내용',TO_DATE('201802181825','YYYYMMDDHH24MI'),'003001')
    INTO board VALUES (86,'전자공학과 공지24 제목','전자공학과 공지24 내용',TO_DATE('201904211825','YYYYMMDDHH24MI'),'003001')
    
    INTO board VALUES (87,'자율전공학부 공지23 제목','자율전공학부 공지23 내용',TO_DATE('201303021825','YYYYMMDDHH24MI'),'004001')
    INTO board VALUES (88,'자율전공학부 공지24 제목','자율전공학부 공지24 내용',TO_DATE('201203101825','YYYYMMDDHH24MI'),'004001')
    
    INTO board VALUES (89,'국어국문학과 공지25 제목','국어국문학과 공지25 내용',TO_DATE('201603012025','YYYYMMDDHH24MI'),'001001')
    INTO board VALUES (90,'국어국문학과 공지26 제목','국어국문학과 공지26 내용',TO_DATE('201503052025','YYYYMMDDHH24MI'),'001001')
    
    INTO board VALUES (91,'응용생명과학부 공지25 제목','응용생명과학부 공지25 내용',TO_DATE('201403092025','YYYYMMDDHH24MI'),'002001')
    INTO board VALUES (92,'응용생명과학부 공지26 제목','응용생명과학부 공지26 내용',TO_DATE('201603132025','YYYYMMDDHH24MI'),'002001')
    
    INTO board VALUES (93,'전자공학과 공지25 제목','전자공학과 공지25 내용',TO_DATE('201203172025','YYYYMMDDHH24MI'),'003001')
    INTO board VALUES (94,'전자공학과 공지26 제목','전자공학과 공지26 내용',TO_DATE('202203212025','YYYYMMDDHH24MI'),'003001')
    
    INTO board VALUES (95,'자율전공학부 공지25 제목','자율전공학부 공지25 내용',TO_DATE('202103022025','YYYYMMDDHH24MI'),'004001')
    INTO board VALUES (96,'자율전공학부 공지26 제목','자율전공학부 공지26 내용',TO_DATE('202203102025','YYYYMMDDHH24MI'),'004001')
    
    INTO board VALUES (97,'국어국문학과 공지27 제목','국어국문학과 공지27 내용',TO_DATE('201203141725','YYYYMMDDHH24MI'),'001001')
    INTO board VALUES (98,'국어국문학과 공지28 제목','국어국문학과 공지28 내용',TO_DATE('201503121725','YYYYMMDDHH24MI'),'001001')
    
    INTO board VALUES (99,'응용생명과학부 공지27 제목','응용생명과학부 공지27 내용',TO_DATE('201104191725','YYYYMMDDHH24MI'),'002001')
    INTO board VALUES (100,'응용생명과학부 공지28 제목','응용생명과학부 공지28 내용',TO_DATE('201603241725','YYYYMMDDHH24MI'),'002001')
    
    INTO board VALUES (101,'전자공학과 공지27 제목','전자공학과 공지27 내용',TO_DATE('201303281725','YYYYMMDDHH24MI'),'003001')
    INTO board VALUES (102,'전자공학과 공지28 제목','전자공학과 공지28 내용',TO_DATE('201603271725','YYYYMMDDHH24MI'),'003001')
    
    INTO board VALUES (103,'자율전공학부 공지27 제목','자율전공학부 공지27 내용',TO_DATE('201203301725','YYYYMMDDHH24MI'),'004001')
    INTO board VALUES (104,'자율전공학부 공지28 제목','자율전공학부 공지28 내용',TO_DATE('201703241725','YYYYMMDDHH24MI'),'004001')
    
    INTO board VALUES (105,'국어국문학과 공지29 제목','국어국문학과 공지29 내용',TO_DATE('201104141143','YYYYMMDDHH24MI'),'001001')
    INTO board VALUES (106,'국어국문학과 공지30 제목','국어국문학과 공지30 내용',TO_DATE('201104121143','YYYYMMDDHH24MI'),'001001')
    
    INTO board VALUES (107,'응용생명과학부 공지29 제목','응용생명과학부 공지29 내용',TO_DATE('201304191143','YYYYMMDDHH24MI'),'002001')
    INTO board VALUES (108,'응용생명과학부 공지30 제목','응용생명과학부 공지30 내용',TO_DATE('201504241143','YYYYMMDDHH24MI'),'002001')
    
    INTO board VALUES (109,'전자공학과 공지29 제목','전자공학과 공지29 내용',TO_DATE('201504281143','YYYYMMDDHH24MI'),'003001')
    INTO board VALUES (110,'전자공학과 공지30 제목','전자공학과 공지30 내용',TO_DATE('201704271143','YYYYMMDDHH24MI'),'003001')
    
    INTO board VALUES (111,'자율전공학부 공지29 제목','자율전공학부 공지29 내용',TO_DATE('201704301143','YYYYMMDDHH24MI'),'004001')
    INTO board VALUES (112,'자율전공학부 공지30 제목','자율전공학부 공지30 내용',TO_DATE('201804241143','YYYYMMDDHH24MI'),'004001')
    
    INTO board VALUES (113,'국어국문학과 공지31 제목','국어국문학과 공지31 내용',TO_DATE('201901141143','YYYYMMDDHH24MI'),'001001')
    INTO board VALUES (114,'국어국문학과 공지31 제목','국어국문학과 공지32 내용',TO_DATE('202001181143','YYYYMMDDHH24MI'),'001001')

    INTO board VALUES (115,'응용생명과학부 공지31 제목','응용생명과학부 공지31 내용',TO_DATE('202101191143','YYYYMMDDHH24MI'),'002001')
    INTO board VALUES (116,'응용생명과학부 공지32 제목','응용생명과학부 공지32 내용',TO_DATE('202201241143','YYYYMMDDHH24MI'),'002001')

    INTO board VALUES (117,'전자공학과 공지31 제목','전자공학과 공지31 내용',TO_DATE('201501281143','YYYYMMDDHH24MI'),'003001')
    INTO board VALUES (118,'전자공학과 공지32 제목','전자공학과 공지32 내용',TO_DATE('201701291143','YYYYMMDDHH24MI'),'003001')

    INTO board VALUES (119,'자율전공학부 공지31 제목','자율전공학부 공지31 내용',TO_DATE('201601201143','YYYYMMDDHH24MI'),'004001')
    INTO board VALUES (120,'자율전공학부 공지32 제목','자율전공학부 공지32 내용',TO_DATE('201801241143','YYYYMMDDHH24MI'),'004001')
SELECT * FROM dual;

-- 강의
INSERT ALL
INTO lecture VALUES (1,'국어학개론',3,'MON','5','7','인문대학 1호관 201호','001001',10)
INTO lecture VALUES (2,'국문학각론',3,'TUE','2','4','인문대학 1호관 302호','001002',10)

INTO lecture VALUES (3,'생명과학탐구 ',3,'WED','1','3','자연과학대학 1호관 423호','002001',10)
INTO lecture VALUES (4,'생명과학탐구 ',3,'FRI','5','7','자연과학대학 1호관 202호','002002',10)

INTO lecture VALUES (5,'기초전자실험 및 설계',3,'TUE','1','3','공과대학 1호관 303호','003001',10)
INTO lecture VALUES (6,'공학수학1',3,'THR','1','3','공과대학 1호관 507호','003002',10)

INTO lecture VALUES (7,'대학글쓰기',3,'WED','2','4','제1합동강의동 101호','004001',10)
INTO lecture VALUES (8,'논리와 비판적 사고',3,'THR','5','7','제1합동강의동 205호','004002',10)

INTO lecture VALUES (9,'한국고전소설론',3,'MON','5','8','인문대학 2호관 202호','001003',10)
INTO lecture VALUES (10,'한국고전소설론',3,'TUE','3','6','인문대학 2호관 303호','001004',10)

INTO lecture VALUES (11,'미생물학 ',3,'WED','1','4','자연과학대학 2호관 424호','002003',10)
INTO lecture VALUES (12,'생물다양성학',3,'FRI','6','9','자연과학대학 2호관 203호','002004',10)

INTO lecture VALUES (13,'전자회로 실험',3,'TUE','5','8','공과대학 2호관 304호','003003',10)
INTO lecture VALUES (14,'아날로그 및 디지털 집적 회로',3,'THR','2','4','공과대학 2호관 508호','003004',10)

INTO lecture VALUES (15,'의복과색채',3,'WED','4','5','제2합동강의동 102호','004003',10)
INTO lecture VALUES (16,'카메라스튜디오',3,'THR','5','8','제3합동강의동 206호','004004',10)

INTO lecture VALUES (17,'국어학개론',3,'WED','3','4','인문대학 3호관 208호','001005',10)
INTO lecture VALUES (18,'한국현대희곡론',3,'MON','2','4','인문대학 3호관 306호','001006',10)

INTO lecture VALUES (19,'바이오파이썬블렌디드',3,'WED','5','7','자연과학대학 3호관 313호','002005',10)
INTO lecture VALUES (20,'생명과학탐구',3,'TUE','3','5','자연과학대학 4호관 403호','002006',10)

INTO lecture VALUES (21,'광공학(레이저)',3,'MON','2','4','공과대학 3호관 104호','003005',10)
INTO lecture VALUES (22,'유기소자 및 디스플레이 공학',3,'FRI','1','4','공과대학 4호관 208호','003006',10)

INTO lecture VALUES (23,'심리학개론',3,'THR','3','4','제4합동강의동 104호','004005',10)
INTO lecture VALUES (24,'문예창작',3,'WED','4','6','제4합동강의동 208호','004006',10)

INTO lecture VALUES (25,'국문학각론',3,'TUE','6','9','인문대학 1호관 201호','001001',10)
INTO lecture VALUES (26,'국어학개론',3,'TUE','6','8','인문대학 1호관 302호','001002',10)

INTO lecture VALUES (27,'재배학개론',3,'WED','5','7','자연과학대학 1호관 423호','002001',10)
INTO lecture VALUES (28,'기초생화학',3,'TUE','1','3','자연과학대학 1호관 202호','002002',10)

INTO lecture VALUES (29,'기초전자실험 및 설계',3,'WED','7','9','공과대학 1호관 303호','003001',10)
INTO lecture VALUES (30,'공학수학1',3,'FRI','4','5','공과대학 1호관 507호','003002',10)

INTO lecture VALUES (31,'대학글쓰기',3,'THR','2','4','제1합동강의동 101호','004001',10)
INTO lecture VALUES (32,'논리와 비판적 사고',3,'FRI','3','5','제1합동강의동 205호','004002',10)

INTO lecture VALUES (33,'한국어음운론',3,'FRI','6','9','인문대학 1호관 206호','001001',10)
INTO lecture VALUES (34,'한국어음운론',3,'THR','3','4','인문대학 1호관 302호','001002',10)

INTO lecture VALUES (35,'기초생화학',3,'MON','3','4','자연과학대학 1호관 300호','002001',10)
INTO lecture VALUES (36,'재배학개론',3,'THR','2','4','자연과학대학 1호관 211호','002002',10)

INTO lecture VALUES (37,'전력설비',3,'MON','3','4','공과대학 3호관 306호','003001',10)
INTO lecture VALUES (38,'전력공학',3,'TUE','5','7','공과대학 1호관 511호','003002',10)

INTO lecture VALUES (39,'물리학1',3,'FRI','2','4','제1합동강의동 101호','004001',10)
INTO lecture VALUES (40,'화학1',3,'WED','3','5','제1합동강의동 208호','004002',10)

INTO lecture VALUES (41,'한국어학자료읽기',3,'TUE','8','9','인문대학 2호관 204호','001003',10)
INTO lecture VALUES (42,'한국어학자료읽기',3,'THR','2','4','인문대학 2호관 305호','001004',10)

INTO lecture VALUES (43,'생물다양성학 ',3,'MON','7','9','자연과학대학 2호관 302호','002003',10)
INTO lecture VALUES (44,'미생물학',3,'MON','6','8','자연과학대학 2호관 207호','002004',10)

INTO lecture VALUES (45,'아날로그 및 디지털 집적 회로',3,'THR','2','4','공과대학 2호관 304호','003003',10)
INTO lecture VALUES (46,'VLSI(대규모 집적 회로) 설계',3,'FRI','3','4','공과대학 2호관 509호','003004',10)

INTO lecture VALUES (47,'중국근세철학사',3,'FRI','7','9','제2합동강의동 105호','004003',10)
INTO lecture VALUES (48,'동양철학사',3,'TUE','6','9','제3합동강의동 203호','004004',10)

INTO lecture VALUES (49,'한국구비문학론',3,'TUE','4','5','인문대학 2호관 210호','001003',10)
INTO lecture VALUES (50,'한국구비문학론',3,'THR','5','6','인문대학 2호관 214호','001004',10)

INTO lecture VALUES (51,'생화학 ',3,'FRI','5','9','자연과학대학 2호관 308호','002003',10)
INTO lecture VALUES (52,'생화학',3,'TUE','7','9','자연과학대학 2호관 211호','002004',10)

INTO lecture VALUES (53,'디지털시스템 설계',3,'THR','4','5','공과대학 2호관 501호','003003',10)
INTO lecture VALUES (54,'SoC(System on Chip) 설계',3,'MON','2','4','공과대학 2호관 214호','003004',10)

INTO lecture VALUES (55,'문화철학',3,'TUE','2','4','제2합동강의동 115호','004003',10)
INTO lecture VALUES (56,'퇴계와 율곡의 철학',3,'THR','1','3','제3합동강의동 106호','004004',10)

INTO lecture VALUES (57,'한국현대시인론',3,'FRI','4','5','인문대학 3호관 213호','001005',10)
INTO lecture VALUES (58,'한국현대문학비평',3,'TUE','6','8','인문대학 3호관 213호','001006',10)

INTO lecture VALUES (59,'분자생물학실험',3,'FRI','5','9','자연과학대학 3호관 301호','002005',10)
INTO lecture VALUES (60,'분자생물학실험',3,'WED','7','9','자연과학대학 4호관 412호','002006',10)

INTO lecture VALUES (61,'유기소자 및 디스플레이 공학',3,'THR','4','5','공과대학 3호관 502호','003005',10)
INTO lecture VALUES (62,'통계역학',3,'TUE','2','4','공과대학 4호관 213호','003006',10)

INTO lecture VALUES (71,'일반물리실험1',3,'MON','2','4','제4합동강의동 114호','004005',10)
INTO lecture VALUES (64,'과학철학',3,'FRI','1','3','제4합동강의동 103호','004006',10)

INTO lecture VALUES (65,'한국현대문학비평',3,'TUE','2','4','인문대학 3호관 216호','001005',10)
INTO lecture VALUES (66,'한국현대시인론',3,'THR','6','8','인문대학 3호관 211호','001006',10)

INTO lecture VALUES (67,'생명과학탐구',3,'WED','2','4','자연과학대학 3호관 303호','002005',10)
INTO lecture VALUES (68,'바이오파이썬블렌디드',3,'MON','6','8','자연과학대학 4호관 409호','002006',10)

INTO lecture VALUES (69,'디지털신호처리(DSP)',3,'THR','1','3','공과대학 3호관 503호','003005',10)
INTO lecture VALUES (70,'전자재료',3,'MON','2','4','공과대학 4호관 217호','003006',10)

INTO lecture VALUES (63,'논리학',3,'FRI','2','4','제4합동강의동 112호','004005',10)
INTO lecture VALUES (72,'일반물리',3,'FRI','5','7','제4합동강의동 107호','004006',10)

SELECT * FROM dual;

-- 담당
INSERT ALL
    INTO charge VALUES ('2011001001','001001')
    INTO charge VALUES ('2011001002','001002')
    INTO charge VALUES ('2011001003','001001')
    INTO charge VALUES ('2011001004','001001')
    INTO charge VALUES ('2011001005','001001')
    INTO charge VALUES ('2011001006','001002')
    INTO charge VALUES ('2011001007','001002')
    INTO charge VALUES ('2011001008','001002')
    INTO charge VALUES ('2011001009','001002')
    INTO charge VALUES ('2011001010','001002')
    
    INTO charge VALUES ('2015001001','001003')
    INTO charge VALUES ('2015001002','001003')
    INTO charge VALUES ('2015001003','001003')
    INTO charge VALUES ('2015001004','001003')
    INTO charge VALUES ('2015001005','001003')
    INTO charge VALUES ('2015001006','001004')
    INTO charge VALUES ('2015001007','001004')
    INTO charge VALUES ('2015001008','001004')
    INTO charge VALUES ('2015001009','001004')
    INTO charge VALUES ('2015001010','001004')

    INTO charge VALUES ('2019001001','001005')
    INTO charge VALUES ('2019001002','001005')
    INTO charge VALUES ('2019001003','001005')
    INTO charge VALUES ('2019001004','001005')
    INTO charge VALUES ('2019001005','001005')
    INTO charge VALUES ('2019001006','001006')
    INTO charge VALUES ('2019001007','001006')
    INTO charge VALUES ('2019001008','001006')
    INTO charge VALUES ('2019001009','001006')
    INTO charge VALUES ('2019001010','001006')

    INTO charge VALUES ('2012002001','002001')
    INTO charge VALUES ('2012002002','002002')
    INTO charge VALUES ('2012002003','002001')
    INTO charge VALUES ('2012002004','002001')
    INTO charge VALUES ('2012002005','002001')
    INTO charge VALUES ('2012002006','002002')
    INTO charge VALUES ('2012002007','002002')
    INTO charge VALUES ('2012002008','002002')
    INTO charge VALUES ('2012002009','002002')
    INTO charge VALUES ('2012002010','002002')
    
    INTO charge VALUES ('2016002001','002003')
    INTO charge VALUES ('2016002002','002003')
    INTO charge VALUES ('2016002003','002003')
    INTO charge VALUES ('2016002004','002003')
    INTO charge VALUES ('2016002005','002003')
    INTO charge VALUES ('2016002006','002004')
    INTO charge VALUES ('2016002007','002004')
    INTO charge VALUES ('2016002008','002004')
    INTO charge VALUES ('2016002009','002004')
    INTO charge VALUES ('2016002010','002004')

    INTO charge VALUES ('2020002001','002005')
    INTO charge VALUES ('2020002002','002005')
    INTO charge VALUES ('2020002003','002005')
    INTO charge VALUES ('2020002004','002005')
    INTO charge VALUES ('2020002005','002005')
    INTO charge VALUES ('2020002006','002006')
    INTO charge VALUES ('2020002007','002006')
    INTO charge VALUES ('2020002008','002006')
    INTO charge VALUES ('2020002009','002006')
    INTO charge VALUES ('2020002010','002006')
    
    INTO charge VALUES ('2013003001','003001')
    INTO charge VALUES ('2013003002','003002')
    INTO charge VALUES ('2013003003','003001')
    INTO charge VALUES ('2013003004','003002')
    INTO charge VALUES ('2013003005','003001')
    INTO charge VALUES ('2013003006','003002')
    INTO charge VALUES ('2013003007','003001')
    INTO charge VALUES ('2013003008','003002')
    INTO charge VALUES ('2013003009','003001')
    INTO charge VALUES ('2013003010','003002')
    
    INTO charge VALUES ('2017003001','003003')
    INTO charge VALUES ('2017003002','003004')
    INTO charge VALUES ('2017003003','003003')
    INTO charge VALUES ('2017003004','003004')
    INTO charge VALUES ('2017003005','003005')
    INTO charge VALUES ('2017003006','003006')
    INTO charge VALUES ('2017003007','003005')
    INTO charge VALUES ('2017003008','003006')
    INTO charge VALUES ('2017003009','003003')
    INTO charge VALUES ('2017003010','003005')
    
    INTO charge VALUES ('2014004001','004001')
    INTO charge VALUES ('2014004002','004002')
    INTO charge VALUES ('2014004003','004003')
    INTO charge VALUES ('2014004004','004004')
    INTO charge VALUES ('2014004005','004005')
    INTO charge VALUES ('2014004006','004006')
    INTO charge VALUES ('2014004007','004003')
    INTO charge VALUES ('2014004008','004004')
    INTO charge VALUES ('2014004009','004001')
    INTO charge VALUES ('2014004010','004002')
    
SELECT * FROM dual;

-- 수강
INSERT ALL
    INTO course VALUES (1,'2011001001',2022,1,90,90,'A')
    INTO course VALUES (1,'2011001002',2022,1,80,90,'B')
    INTO course VALUES (1,'2013003001',2022,1,90,50,'C')

    INTO course VALUES (2,'2011001001',2022,1,90,90,'A')
    INTO course VALUES (2,'2011001002',2022,1,90,90,'A')
    INTO course VALUES (2,'2014004002',2022,1,90,90,'A')

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
    INTO course VALUES (6,'2011001001',2022,1,90,90,'A')

    INTO course VALUES (7,'2014004001',2020,1,90,90,'A')
    INTO course VALUES (7,'2014004002',2020,1,90,90,'A')
    INTO course VALUES (7,'2011001002',2020,1,90,90,'A')

    INTO course VALUES (8,'2014004001',2020,2,90,90,'A')
    INTO course VALUES (8,'2014004002',2020,2,90,90,'A')
    INTO course VALUES (8,'2012002002',2020,2,90,90,'A')

    INTO course VALUES (9, '2011001003', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (9, '2011001004', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (9, '2011001005', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (9, '2011001006', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (9, '2011001007', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (9, '2011001008', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (9, '2011001009', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (9, '2011001010', 2022, 1, 60, 60, 'D' )

    INTO course VALUES (10, '2011001003', 2022, 2, 90, 90, 'A' )
    INTO course VALUES (10, '2011001004', 2021, 2, 80, 80, 'B' )
    INTO course VALUES (10, '2011001005', 2021, 2, 70, 70, 'C' )
    INTO course VALUES (10, '2011001006', 2022, 2, 60, 60, 'D' )
    INTO course VALUES (10, '2011001007', 2022, 2, 90, 90, 'A' )
    INTO course VALUES (10, '2011001008', 2022, 2, 80, 80, 'B' )
    INTO course VALUES (10, '2011001009', 2021, 2, 70, 70, 'C' )
    INTO course VALUES (10, '2011001010', 2020, 2, 60, 60, 'D' )

    INTO course VALUES (12, '2012002003', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (12, '2012002004', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (12, '2012002005', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (12, '2012002006', 2021, 1, 80, 80, 'B' )
    INTO course VALUES (12, '2012002007', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (12, '2012002008', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (12, '2012002009', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (12, '2012002010', 2020, 1, 80, 80, 'B' )

    INTO course VALUES (13, '2012002003', 2022, 2, 70, 70, 'C' )
    INTO course VALUES (13, '2012002004', 2022, 2, 60, 60, 'D' )
    INTO course VALUES (13, '2012002005', 2022, 2, 90, 90, 'A' )
    INTO course VALUES (13, '2012002006', 2021, 2, 80, 80, 'B' )
    INTO course VALUES (13, '2012002007', 2022, 2, 70, 70, 'C' )
    INTO course VALUES (13, '2012002008', 2022, 2, 60, 60, 'D' )
    INTO course VALUES (13, '2012002009', 2022, 2, 90, 90, 'A' )
    INTO course VALUES (13, '2012002010', 2020, 2, 80, 80, 'B' )

    INTO course VALUES (14, '2013003001', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (14, '2013003002', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (14, '2013003003', 2021, 2, 70, 70, 'C' )
    INTO course VALUES (14, '2013003004', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (14, '2013003005', 2020, 2, 90, 90, 'A' )
    INTO course VALUES (14, '2013003006', 2020, 2, 80, 80, 'B' )
    INTO course VALUES (14, '2013003007', 2020, 2, 70, 70, 'C' )
    INTO course VALUES (14, '2013003008', 2021, 2, 60, 60, 'D' )
    INTO course VALUES (14, '2013003009', 2021, 2, 90, 90, 'A' )
    INTO course VALUES (14, '2013003010', 2022, 1, 80, 80, 'B' )

    INTO course VALUES (15, '2013003001', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (15, '2013003002', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (15, '2013003003', 2021, 1, 70, 70, 'C' )
    INTO course VALUES (15, '2013003004', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (15, '2013003005', 2020, 1, 90, 90, 'A' )
    INTO course VALUES (15, '2013003006', 2020, 1, 80, 80, 'B' )
    INTO course VALUES (15, '2013003007', 2020, 1, 70, 70, 'C' )
    INTO course VALUES (15, '2013003008', 2021, 1, 60, 60, 'D' )
    INTO course VALUES (15, '2013003009', 2021, 1, 90, 90, 'A' )
    INTO course VALUES (15, '2013003010', 2022, 1, 80, 80, 'B' )

    INTO course VALUES (17, '2014004003', 2021, 1, 70, 70, 'C' )
    INTO course VALUES (17, '2014004004', 2021, 1, 60, 60, 'D' )
    INTO course VALUES (17, '2014004005', 2020, 1, 90, 90, 'A' )
    INTO course VALUES (17, '2014004006', 2021, 1, 80, 80, 'B' )
    INTO course VALUES (17, '2014004007', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (17, '2014004008', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (17, '2014004009', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (17, '2014004010', 2022, 1, 80, 80, 'B' )

    INTO course VALUES (18, '2014004003', 2021, 2, 70, 70, 'C' )
    INTO course VALUES (18, '2014004004', 2021, 2, 60, 60, 'D' )
    INTO course VALUES (18, '2014004005', 2020, 2, 90, 90, 'A' )
    INTO course VALUES (18, '2014004006', 2021, 2, 80, 80, 'B' )
    INTO course VALUES (18, '2014004007', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (18, '2014004008', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (18, '2014004009', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (18, '2014004010', 2022, 1, 80, 80, 'B' )

    INTO course VALUES (19, '2015001001', 2021, 1, 90, 90, 'A' )
    INTO course VALUES (19, '2015001002', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (19, '2015001003', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (19, '2015001004', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (19, '2015001005', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (19, '2015001006', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (19, '2015001007', 2021, 1, 70, 70, 'C' )
    INTO course VALUES (19, '2015001008', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (19, '2015001009', 2019, 1, 90, 90, 'A' )
    INTO course VALUES (19, '2011001001', 2021, 1, 80, 80, 'B' )

    INTO course VALUES (20, '2015001001', 2021, 2, 90, 90, 'A' )
    INTO course VALUES (20, '2015001001', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (20, '2015001003', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (20, '2015001004', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (20, '2015001005', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (20, '2015001006', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (20, '2015001007', 2021, 2, 70, 70, 'C' )
    INTO course VALUES (20, '2015001008', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (20, '2015001009', 2019, 2, 90, 90, 'A' )
    INTO course VALUES (20, '2015001010', 2021, 2, 80, 80, 'B' )

    INTO course VALUES (21, '2016002001', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (21, '2016002002', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (21, '2016002003', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (21, '2016002004', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (21, '2016002005', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (21, '2016002006', 2021, 1, 80, 80, 'B' )
    INTO course VALUES (21, '2016002007', 2021, 1, 70, 70, 'C' )
    INTO course VALUES (21, '2016002008', 2021, 1, 60, 60, 'D' )
    INTO course VALUES (21, '2016002009', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (21, '2016002010', 2021, 1, 80, 80, 'B' )

    INTO course VALUES (22, '2016002001', 2022, 2, 90, 90, 'A' )
    INTO course VALUES (22, '2016002002', 2022, 2, 80, 80, 'B' )
    INTO course VALUES (22, '2016002003', 2022, 2, 70, 70, 'C' )
    INTO course VALUES (22, '2016002004', 2022, 2, 60, 60, 'D' )
    INTO course VALUES (22, '2016002005', 2022, 2, 90, 90, 'A' )
    INTO course VALUES (22, '2016002006', 2021, 2, 80, 80, 'B' )
    INTO course VALUES (22, '2016002007', 2021, 2, 70, 70, 'C' )
    INTO course VALUES (22, '2016002008', 2021, 2, 60, 60, 'D' )
    INTO course VALUES (22, '2016002009', 2022, 2, 90, 90, 'A' )
    INTO course VALUES (22, '2016002010', 2021, 2, 80, 80, 'B' )

    INTO course VALUES (23, '2017003001', 2020, 1, 90, 90, 'A' )
    INTO course VALUES (23, '2017003002', 2021, 1, 80, 80, 'B' )
    INTO course VALUES (23, '2017003003', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (23, '2017003004', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (23, '2017003005', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (23, '2017003006', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (23, '2017003007', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (23, '2017003008', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (23, '2017003009', 2021, 1, 90, 90, 'A' )
    INTO course VALUES (23, '2017003010', 2022, 1, 80, 80, 'B' )

    INTO course VALUES (24, '2017003001', 2020, 2, 90, 90, 'A' )
    INTO course VALUES (24, '2017003002', 2021, 2, 80, 80, 'B' )
    INTO course VALUES (24, '2017003001', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (24, '2017003004', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (24, '2017003005', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (24, '2017003006', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (24, '2017003007', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (24, '2017003008', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (24, '2017003009', 2021, 2, 90, 90, 'A' )
    INTO course VALUES (24, '2017003010', 2022, 2, 80, 80, 'B' )

    INTO course VALUES (25, '2011001001', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (25, '2018004002', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (25, '2018004003', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (25, '2018004004', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (25, '2018004005', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (25, '2018004006', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (25, '2018004007', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (25, '2018004008', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (25, '2018004009', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (25, '2018004010', 2022, 1, 80, 80, 'B' )

    INTO course VALUES (26, '2011001001', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (26, '2018004002', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (26, '2018004003', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (26, '2018004004', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (26, '2018004005', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (26, '2018004006', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (26, '2018004007', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (26, '2018004008', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (26, '2018004009', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (26, '2018004010', 2022, 1, 80, 80, 'B' )

    INTO course VALUES (27, '2019001001', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (27, '2019001002', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (27, '2019001003', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (27, '2019001004', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (27, '2019001005', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (27, '2019001006', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (27, '2019001007', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (27, '2019001008', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (27, '2019001009', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (27, '2019001010', 2022, 1, 80, 80, 'B' )

    INTO course VALUES (28, '2020002001', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (28, '2020002002', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (28, '2020002003', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (28, '2020002004', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (28, '2020002005', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (28, '2020002006', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (28, '2020002007', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (28, '2020002008', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (28, '2020002009', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (28, '2020002010', 2022, 1, 80, 80, 'B' )

    INTO course VALUES (33, '2019001001', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (33, '2019001002', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (33, '2019001003', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (33, '2019001004', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (33, '2019001005', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (33, '2019001006', 2022, 1, 80, 80, 'B' )
    INTO course VALUES (33, '2019001007', 2022, 1, 70, 70, 'C' )
    INTO course VALUES (33, '2019001008', 2022, 1, 60, 60, 'D' )
    INTO course VALUES (33, '2019001009', 2022, 1, 90, 90, 'A' )
    INTO course VALUES (33, '2019001010', 2022, 1, 80, 80, 'B' )

    INTO course VALUES (34, '2020002001', 2022, 2, 90, 90, 'A' )
    INTO course VALUES (34, '2020002002', 2022, 2, 80, 80, 'B' )
    INTO course VALUES (34, '2020002003', 2022, 2, 70, 70, 'C' )
    INTO course VALUES (34, '2020002004', 2022, 2, 60, 60, 'D' )
    INTO course VALUES (34, '2020002005', 2022, 2, 90, 90, 'A' )
    INTO course VALUES (34, '2020002006', 2022, 2, 80, 80, 'B' )
    INTO course VALUES (34, '2020002007', 2022, 2, 70, 70, 'C' )
    INTO course VALUES (34, '2020002008', 2022, 2, 60, 60, 'D' )
    INTO course VALUES (34, '2020002009', 2022, 2, 90, 90, 'A' )
    INTO course VALUES (34, '2020002010', 2022, 2, 80, 80, 'B' )
SELECT * FROM dual;


--SELECT * FROM department;
--SELECT * FROM student;
--SELECT * FROM professor;
--SELECT * FROM board;
--SELECT * FROM lecture;
--SELECT * FROM charge;
--SELECT * FROM course;