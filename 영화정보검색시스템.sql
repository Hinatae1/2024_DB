--장르테이블
create table Genre(
    gno number(3) primary key,  --장르번호
    gename varchar2(10) --장르명
);
--영화테이블
create table actor(
    mvno number(3) primary key, --영화번호
    title varchar2(20), --제목
    rdate date, --개봉일
    stime VARCHAR2(5),  --상영시간
    rating VARCHAR2(7), --관람등급
    nation VARCHAR2(5), --국가
    toce VARCHAR2(10)   --총관객수
);
--장르지정 테이블
create table gende(
    geno number(3) primary key, --장르지정번호
    gno number(3),  --장르 번호
    mvno number(3), --영화번호
    CONSTRAINT fk_gende_gno FOREIGN key (gno) REFERENCES Genre(gno),
    CONSTRAINT fk_gende_mvno FOREIGN key (mvno) REFERENCES actor(mvno)
);
--감독 테이블
create table director (
    dno number(3) primary key,  --감독번호
    dname varchar2(20)  --감독명
    );
--감독 지정 테이블
create table directorde(
    dino number(3) primary key, --감독지정번호
    mvno number(3), --영화번호
    dno number(3),  --감독번호
    CONSTRAINT fk_directorde_mvno FOREIGN key (mvno) REFERENCES actor(mvno),
    CONSTRAINT fk_directorde_dno FOREIGN key (dno) REFERENCES director(dno)
);

--배우 테이블
create table movie(
    ano number(3) primary key,  --배우번호
    acname varchar2(10),    --배우명
    agency varchar2(10) --소속사
    );

--배우지정 테이블 
create table actde(
    actno number(3) primary key,    --배우지정번호
    mvno number(3), --영화번호
    ano number(3),  --배우번호
    CONSTRAINT fk_actde_mvno FOREIGN key (mvno) REFERENCES actor(mvno),
    CONSTRAINT fk_actde_ano FOREIGN key (ano) REFERENCES movie(ano)
);

--장르 테이블 확인
select * from Genre;

--장르 테이블 장르명 값 변경 
alter table Genre modify gename varchar2(20);

alter table actor modify stime varchar2(10);
alter table actor modify rating VARCHAR2(20); --관람등급
alter table actor modify nation VARCHAR2(20); --국가
alter table actor modify toce VARCHAR2(20);   --총관객수

alter table actor modify title varchar2(50);


alter table director modify dname varchar2(50);


alter table movie modify acname varchar2(50);
alter table movie modify agency varchar2(50);

--장르 입력
insert into Genre values(1,'액션');
insert into Genre values(2,'코미디');
insert into Genre values(3,'로맨스');
insert into Genre values(4,'스릴러');
insert into Genre values(5,'공포');
insert into Genre values(6,'판타지');
insert into Genre values(7,'SF');
insert into Genre values(8,'모험');
insert into Genre values(9,'범죄');
insert into Genre values(10,'애니메이션');
insert into Genre values(11,'가족');
insert into Genre values(12,'뮤직컬');
insert into Genre values(13,'드라마');
insert into Genre values(14,'어드벤처');
insert into Genre values(15,'슈퍼히어로');
--영화 입력
insert into actor values(101,'존윅','2015/01/21','101분','19세이상','미국','122,857명');
insert into actor values(102,'매트릭스','1999/05/15','136분','12세이상','미국','2,500,000명');
insert into actor values(103,'존윅:리로드','2017/02/22','122분','19세이상','미국','280,069명');
insert into actor values(104,'존윅3:파라벨룸','2019/06/26','131분','19세이상','미국','1,007,930명');
insert into actor values(105,'존윅4','2023/04/12','169분','19세이상','미국','1,924,768명');
insert into actor values(106,'범죄도시','2017/10/03','121분','19세이상','한국','6,880,546명');
insert into actor values(107,'범죄도시2','2022/05/18','106분','15세이상','한국','12,693,415명');
insert into actor values(108,'범죄도시3','2023/05/31','105분','15세이상','한국','10,682,820명');
insert into actor values(109,'범죄도시4','2024/04/24','109분','15세이상','한국','11,502,779명');
insert into actor values(110,'트루먼 쇼','1998/10/24','103분','12세이상','미국','294,928명');
insert into actor values(111,'나 홀로 집에','1991/07/06','103분','전체관람','미국','869,820명');
insert into actor values(112,'나 홀로 집에2:뉴욕을 헤메다','1992/12/18','120분','전체관람','미국','442,144명');
insert into actor values(113,'타이타닉','1998/02/20','195분','15세이상','미국','6,350,000명');
insert into actor values(114,'라라랜드','2016/12/07','128분','12세이상','미국','3,793,404명');
insert into actor values(115,'서울의 봄','2023/11/22','141분','12세이상','한국','13,127,990명');
insert into actor values(116,'부산행','2016/07/20','118분','15세이상','한국','11,573,003명');
insert into actor values(117,'해리 포터와 마법사의 돌','2001/12/14','152분','전체관람','미국','약425만명');
insert into actor values(118,'해리 포터와 비밀의 방','2002/12/13','161분','전체관람','미국','4,000,000명');
insert into actor values(119,'해리 포터와 아즈카반의 죄수','2004/07/16','141분','전체관람','미국','2,532,000명');
insert into actor values(120,'신과함께-죄와 벌','2017/12/20','140분','12세이상','한국','14,414,669명');
insert into actor values(121,'신과함께-인과 연','2018/08/01','141분','12세이상','한국','12,275,843명');
insert into actor values(122,'월-E ','2008/08/06','104분','전체관람','미국','1,320,830명');
insert into actor values(123,'인터스텔라','2014/11/06','169분','12세이상','미국','10,380,296명');
insert into actor values(124,'쥬만지','1996/01/20','104분','전체관람','미국',null);
insert into actor values(125,'데드풀과 울버린','2024/07/24','128분','19세이상','미국','1,977,010명');
insert into actor values(126,'살인의 추억','2003/04/25','132분','15세이상','한국','5,255,376명');
insert into actor values(127,'겨울왕국','2014/01/16','108분','전체관람','미국','10,329,222명');
insert into actor values(128,'겨울왕국2','2019/11/21','103분','전체관람','미국','13,768,709명');
insert into actor values(129,'모아나2','2024/11/27','100분','전체관람','미국','2,883,559명');
insert into actor values(130,'아저씨','2010/08/04','119분','19세이상','한국','6,282,774명');

COMMIT;
select * from actor;

--감독 입력
insert into director values(101, '채드 스타헬스키'); --존윅1,2,3,4 감독
insert into director values(102, '워쇼스키 형제'); --매트릭스 감독
insert into director values(103, '강윤성'); --범죄도시1 감독
insert into director values(104, '이상용'); --범죄도시2,3 감독
insert into director values(105, '허명행'); --범죄도시4 감독
insert into director values(106, '피터 위어'); --트루먼쇼 감독
insert into director values(107, '크리스 콜럼버스'); --나홀로1,2 /해리포터1,2감독
insert into director values(108, '제임스 카메론'); --타이타닉 감독
insert into director values(109, '데이미언 셔젤'); --라라랜드 감독
insert into director values(110, '김성수'); --서울의 봄 감독
insert into director values(201, '연상호'); --부산행 감독
insert into director values(202, '알폰소 쿠아론'); --해리포터3 감독
insert into director values(203, '김용화'); --신과함께1,2 감독
insert into director values(204, '앤드루 스탠튼'); --월-E 감독
insert into director values(205, '크리스토퍼 놀란'); --인터스텔라 감독
insert into director values(206, '조 존스턴'); --쥬만지 감독
insert into director values(207, '숀 레비'); --데드풀과 울버린 감독
insert into director values(208, '봉준호'); --살인의 추억 감독
insert into director values(209, '크리스 벅'); -- 겨울왕국1,2 감독
insert into director values(210, '제니퍼 리'); --겨울왕국1,2 감독
insert into director values(301, '데이비드 데릭 주니어'); --모아나2 감독
insert into director values(302, '데이나 리두 밀러'); --모아나2 감독
insert into director values(303, '제이슨 핸드'); --모아나2 감독
insert into director values(304, '이정범'); --아저씨 감독

select *from movie;

--존윅1
insert into movie values(101, '키아누 리브스','도그스타');
insert into movie values(102, '윌렘 대포','');
insert into movie values(103, '이안 맥셰인','Independent Talent Group');

--존윅2
insert into movie values(104, '로렌스 피시번','CAA');
insert into movie values(105, '루비 로즈','ICM Partners');

--존윅3
insert into movie values(106, '할리 베리','CAA');
insert into movie values(107, '마크 다카스코스','');

--존윅4
insert into movie values(108, '도니 옌','');
insert into movie values(109, '빌 스카르스고르드','WME');

--범죄도시1
insert into movie values(110, '마동석','빅펀치엔터테인먼트');
insert into movie values(201, '윤계상','저스트엔터테인먼트');
insert into movie values(202, '조재윤','비에스컴퍼니');

--범죄도시2
insert into movie values(203, '손석구','샛별당엔터테인먼트');
insert into movie values(204, '박지환','비에스컴퍼니');

--범죄도시3
insert into movie values(205, '이준혁','에이스팩토리');
insert into movie values(206, '김민재','블러썸엔터테인먼트');

--범죄도시4
insert into movie values(207, '김무열','프레인TPC');
insert into movie values(208, '이동휘','키이스트');

--트루먼쇼
insert into movie values(209, '짐 캐리','');
insert into movie values(210, '로라 리니','Gersh Agency');
insert into movie values(301, '노아 에머리히','Independent Talent Group');

--나홀로1
insert into movie values(302, '맥컬리 컬킨','');
insert into movie values(303, '조 페시','');
insert into movie values(304, '대니얼 스턴','');

--나홀로2
insert into movie values(305, '캐서린 오하라','Gersh Agency');
insert into movie values(306, '팀 커리','');

--타이타닉
insert into movie values(307, '레오나르도 디카프리오','아피안 웨이 프로덕션');
insert into movie values(308, '케이트 윈슬렛','United Agents');
insert into movie values(309, '빌리 제인','');

--라라랜드 (2016)
insert into movie values(310, '라이언 고슬링','Anonymous Content');
insert into movie values(401, '엠마 스톤','Anonymous Content');
insert into movie values(402, 'J.K. 시먼스','Gersh Agency');

--서울의봄 
insert into movie values(403, '황정민','워크하우스컴퍼니');
insert into movie values(404, '정우성','아티스트컴퍼니');
insert into movie values(405, '이성민','호두앤유엔터테인먼트');
insert into movie values(406, '박해준','엘줄라이엔터테인먼트');
insert into movie values(407, '김성균','UL엔터테인먼트');
insert into movie values(408, '정동환','신엔터테인먼트');
insert into movie values(409, '김의성','씨제스엔터테인먼트');
insert into movie values(410, '서광재','미스틱스토리');
insert into movie values(501, '차건우','미스틱스토리');
insert into movie values(502, '유성주','미스틱스토리');

--해러포터
insert into movie values(503, '다니엘 래드클리프','United Talent Agency');
insert into movie values(504, '엠마 왓슨','Untitled Entertainment');
insert into movie values(505, '루퍼트 그린트','Independent Talent Group');

--신과함께-죄와 벌
insert into movie values(506, '하정우','워크하우스컴퍼니');
insert into movie values(507, '차태현','블러썸엔터테인먼트');
insert into movie values(508, '주지훈','H엔터테인먼트');
insert into movie values(509, '김향기','나무엑터스');
insert into movie values(510, '김동욱','키이스트');


--월-E (2008)
insert into movie values(601, '벤 버트','');
insert into movie values(602, '엘리사 나이트','Pixar 내부 소속');
insert into movie values(603, '제프 가를린','Independent Artists Agency');

--데드풀과 울버린
insert into movie values(604, '라이언 레이놀즈','Maximum Effort');
insert into movie values(605, '휴 잭맨','Creative Artists Agency');
insert into movie values(606, '모레나 바카린','United Talent Agency');

--살인의 추억 (2003)
insert into movie values(607, '송강호','써브라임 아티스트 에이전시');
insert into movie values(608, '김상경','국엔터테인먼트');
insert into movie values(609, '박해일','씨제스엔터테인먼트');

--겨울왕국 시리즈
insert into movie values(610, '크리스틴 벨','United Talent Agency');
insert into movie values(701, '이디나 멘젤','Paradigm Talent Agency');

--모아나2
insert into movie values(702, '아울리이 크러발리오','Paradigm Talent Agency');
insert into movie values(703, '드웨인 존슨','Seven Bucks Productions');

--아저씨
insert into movie values(704, '원빈','이든나인');
insert into movie values(705, '김새론','골드메달리스트');
insert into movie values(706, '김희원','프레인TPC');

--부산행
insert into movie values(707, '공유','매니지먼트 숲');
insert into movie values(708, '정유미','매니지먼트 숲');

--인터스텔라
insert into movie values(709, '매튜 매커너히','');
insert into movie values(710, '앤 해서웨이','');
insert into movie values(801, '제시카 차스테인','');
insert into movie values(802, '마이클 케인','');

--쥬만지
insert into movie values(803, '로빈 윌리엄스','');
insert into movie values(804, '보니 헌트','');
insert into movie values(805, '커스틴 던스트','');

-------------------------------------------------------------------------------------------
--장르 지정번호,장르 번호, 영화 번호

--존윅1/101
insert into gende values(101,1,101);
insert into gende values(102,4,101);
insert into gende values(103,9,101);

--매트릭스/102
insert into gende values(104,7,102);
insert into gende values(105,1,102);
insert into gende values(106,4,102);

--존윅2/103
insert into gende values(107,1,103);
insert into gende values(108,4,103);
insert into gende values(109,9,103);

--존윅3/104
insert into gende values(110,1,104);
insert into gende values(111,4,104);
insert into gende values(112,9,104);

--존윅4/105
insert into gende values(113,9,105);
insert into gende values(114,1,105);
insert into gende values(115,4,105);
insert into gende values(116,2,105);

--범죄도시/106
insert into gende values(117,9,106);
insert into gende values(118,1,106);
insert into gende values(119,4,106);
insert into gende values(120,2,106);
--범죄도시2/107
insert into gende values(121,9,107);
insert into gende values(122,1,107);
insert into gende values(123,4,107);
insert into gende values(124,2,107);
--범죄도시3/108
insert into gende values(125,9,108);
insert into gende values(126,1,108);
insert into gende values(127,4,108);
insert into gende values(128,2,108);
--범죄도시4/109
insert into gende values(129,9,109);
insert into gende values(130,1,109);
insert into gende values(131,4,109);
insert into gende values(132,2,109);
--트루먼 쇼/110
insert into gende values(133,13,110);
insert into gende values(134,2,110);
--나홀로 집에/111
insert into gende values(135,2,111);
insert into gende values(136,11,111);
--나홀로 집에2/112
insert into gende values(137,2,112);
insert into gende values(138,11,112);
--타이타닉/113
insert into gende values(139,3,113);
insert into gende values(140,13,113);
insert into gende values(141,8,113);
insert into gende values(142,1,113);
insert into gende values(143,4,113);
--라라랜드/114
insert into gende values(144,12,114);
insert into gende values(145,2,114);
insert into gende values(146,13,114);
--서울의 봄/115
insert into gende values(147,13,115);
insert into gende values(148,4,115);
insert into gende values(149,1,115);
--부산행/116
insert into gende values(150,1,116);
insert into gende values(151,4,116);
insert into gende values(152,13,116);
--해리포터와 마법사의 돌/117
insert into gende values(153,6,117);
insert into gende values(154,11,117);
insert into gende values(155,8,117);
insert into gende values(156,1,117);
--해리포터와 비밀의 방/118
insert into gende values(157,6,118);
insert into gende values(158,11,118);
insert into gende values(159,8,118);
insert into gende values(160,1,118);
--해리포터와 아즈카반의 죄수/119
insert into gende values(161,6,119);
insert into gende values(162,8,119);
insert into gende values(163,11,119);
--신과함께 죄와벌/120
insert into gende values(164,6,120);
insert into gende values(165,13,120);
insert into gende values(166,1,120);
insert into gende values(167,2,120);
--신고함께 인과연/121
insert into gende values(168,6,121);
insert into gende values(169,13,121);
insert into gende values(170,1,121);
insert into gende values(171,2,121);
--월-E/122
insert into gende values(172,10,122);
insert into gende values(173,7,122);
insert into gende values(174,11,122);
insert into gende values(175,2,122);
insert into gende values(176,3,122);
--인터스텔라/123
insert into gende values(177,7,123);
insert into gende values(178,13,123);
insert into gende values(179,11,123);
insert into gende values(180,14,123);
--쥬만지/124
insert into gende values(181,6,124);
insert into gende values(182,8,124);
insert into gende values(183,11,124);
--데드풀과 울버린/125
insert into gende values(184,15,125);
insert into gende values(185,1,125);
insert into gende values(186,7,125);
insert into gende values(187,14,125);
--살인의 추억/126
insert into gende values(188,9,126);
insert into gende values(189,4,126);
insert into gende values(190,13,126);
--겨울왕국/127
insert into gende values(191,10,127);
insert into gende values(192,14,127);
insert into gende values(193,2,127);
insert into gende values(194,11,127);
insert into gende values(195,6,127);
insert into gende values(196,12,127);
--겨울왕국2/128
insert into gende values(197,10,128);
insert into gende values(198,14,128);
insert into gende values(199,2,128);
insert into gende values(201,11,128);
insert into gende values(202,6,128);
insert into gende values(203,12,128);
insert into gende values(204,1,128);
insert into gende values(205,13,128);
--모아나2/129
insert into gende values(206,10,129);
insert into gende values(207,11,129);
insert into gende values(208,12,129);
insert into gende values(209,1,129);
insert into gende values(210,14,129);
insert into gende values(211,6,129);
insert into gende values(212,2,129);

--아저씨/130
insert into gende values(213,1,130);
insert into gende values(214,9,130);
insert into gende values(215,13,130);
insert into gende values(216,4,130);
select * from gende;




--------------------------------------------------------------------------
--감독 지정 번호, 영화 번호, 감독 번호
--존윅1 감독
insert into directorde values(101,101,101);
--매트릭스 감독
insert into directorde values(102,102,102);
--존윅2 감독
insert into directorde values(103,103,101);
--존윅3 감독
insert into directorde values(104,104,101);
--존윅4 감독
insert into directorde values(105,105,101);
--범죄도시1 감독
insert into directorde values(106,106,103);
--범죄도시2 감독
insert into directorde values(107,107,104);
--범죄도시3 감독
insert into directorde values(108,108,104);
--범죄도시4 감독
insert into directorde values(109,109,105);
--트루먼쇼 감독
insert into directorde values(110,110,106);
--나홀로1 감독
insert into directorde values(111,111,107);
--나홀로2 감독
insert into directorde values(112,112,107);
--타이타닉 감독
insert into directorde values(113,113,108);
--라라랜드 감독
insert into directorde values(114,114,109);
--서울의 봄 감독
insert into directorde values(115,115,110);
--부산행 감독
insert into directorde values(116,116,201);
--해리포터1 감독
insert into directorde values(117,117,107);
--해리포터2 감독
insert into directorde values(118,118,107);
--해리포터3 감독
insert into directorde values(119,119,202);
--신과함께1 감독
insert into directorde values(120,120,203);
--신과함께2 감독
insert into directorde values(121,121,203);
--월-E 감독
insert into directorde values(122,122,204);
--인터스텔라 감독
insert into directorde values(123,123,205);
--쥬만지 감독
insert into directorde values(124,124,206);
--데드풀과 울버린 감독
insert into directorde values(125,125,207);
--살인의 추억 감독
insert into directorde values(126,126,208);
--겨울왕국1 감독
insert into directorde values(127,127,209);
insert into directorde values(128,127,210);
--겨울왕국2 감독
insert into directorde values(129,128,209);
insert into directorde values(130,128,210);
--모아나2 감독
insert into directorde values(131,129,301);
insert into directorde values(132,129,302);
insert into directorde values(133,129,303);
--아저씨 감독
insert into directorde values(134,130,304);

select * from directorde;

----------------------------------------------------------------------------
-- actde 배우지정번호, 영화번호,배우번호
--배우지정 테이블 
insert into actde values();
--존윅1 배우
insert into actde values(101,101,101);
insert into actde values(102,101,102);
insert into actde values(103,101,103);
--매트릭스 배우
insert into actde values(104,102,104);
insert into actde values(105,102,101);
--존윅2 배우
insert into actde values(105,103,101);
insert into actde values(106,103,104);
insert into actde values(107,103,105);
--존윅3 배우
insert into actde values(108,104,101);
insert into actde values(109,104,106);
insert into actde values(110,104,107);
insert into actde values(111,104,104);
insert into actde values(112,104,103);
--존윅4 배우
insert into actde values(113,105,101);
insert into actde values(114,105,109);
insert into actde values(115,105,104);
insert into actde values(116,105,103);
--범죄도시1 배우
insert into actde values(117,106,110);--마동석
insert into actde values(118,106,201);--윤계상
insert into actde values(119,106,202); --조재윤
--범죄도시2 배우
insert into actde values(120,107,110); --마동석
insert into actde values(121,107,203); --손석구
insert into actde values(122,107,204); --빅지환
--범죄도시3 배우
insert into actde values(123,108,110); --마동석
insert into actde values(124,108,205); 
insert into actde values(125,108,206); 
--범죄도시4 배우
insert into actde values(126,109,110);
insert into actde values(127,109,207);
insert into actde values(128,109,208);
--트루먼 쇼 배우
insert into actde values(129,110,209);
insert into actde values(130,110,210);
insert into actde values(131,110,301);
--나 홀로 집에 배우
insert into actde values(132,111,302);
insert into actde values(133,111,303);
insert into actde values(134,111,304);
insert into actde values(135,111,305);
--나 홀로 집에2:뉴욕을 헤메다 배우
insert into actde values(136,112,302);
insert into actde values(137,112,303);
insert into actde values(138,112,304);
insert into actde values(139,112,305);
insert into actde values(140,112,306);
--타이타닉 배우
insert into actde values(141,113,307);
insert into actde values(142,113,308);
insert into actde values(143,113,309);
--라라랜드 배우
insert into actde values(144,114,310);
insert into actde values(145,114,401);
insert into actde values(146,114,402);
--서울의 봄 배우
insert into actde values(147,115,403);
insert into actde values(148,115,404);
insert into actde values(149,115,406);
insert into actde values(150,115,406);
insert into actde values(151,115,407);
insert into actde values(152,115,408);
insert into actde values(153,115,409);
insert into actde values(154,115,410);
insert into actde values(155,115,501);
insert into actde values(156,115,502);
--부산행 배우
insert into actde values(157,116,110);
insert into actde values(158,116,707);
insert into actde values(159,116,708);
--해리 포터와 마법사의 돌 배우
insert into actde values(160,117,503);
insert into actde values(161,117,504);
insert into actde values(162,117,505);
--해리 포터와 비밀의 방 배우
insert into actde values(163,118,503);
insert into actde values(164,118,504);
insert into actde values(165,118,505);
--해리 포터와 아즈카반의 죄수 배우
insert into actde values(166,119,503);
insert into actde values(167,119,504);
insert into actde values(168,119,505);
--신과함께-죄와 벌 배우
insert into actde values(169,120,506);
insert into actde values(170,120,507);
insert into actde values(171,120,508);
insert into actde values(172,120,509);
insert into actde values(173,120,510);
--신과함께-인과 연 배우
insert into actde values(174,121,110);
insert into actde values(175,121,506);
insert into actde values(176,121,508);
insert into actde values(177,121,509);
insert into actde values(178,121,510);
--월-E   배우
insert into actde values(179,122,601);
insert into actde values(180,122,602);
insert into actde values(181,122,603);
--인터스텔라 배우
insert into actde values(182,123,709);
insert into actde values(183,123,710);
insert into actde values(184,123,801);
insert into actde values(185,123,802);
--쥬만지 배우
insert into actde values(186,124,803);
insert into actde values(187,124,804);
insert into actde values(188,124,805);
--데드풀과 울버린 배우
insert into actde values(189,125,604);
insert into actde values(190,125,605);
insert into actde values(191,125,606);
--살인의 추억 배우
insert into actde values(192,126,607);
insert into actde values(193,126,608);
insert into actde values(194,126,609);
--겨울왕국 배우
insert into actde values(195,127,610);
insert into actde values(196,127,701);
--겨울왕국2 배우
insert into actde values(197,128,610);
insert into actde values(198,128,701);
--모아나2 배우
insert into actde values(199,129,702);
insert into actde values(200,129,703);
--아저씨 배우
insert into actde values(201,130,704);
insert into actde values(202,130,705);
insert into actde values(203,130,706);




select * from Genre;
select * from actor; --영화
select * from gende;
select * from director;
select * from directorde;
select * from movie;
select * from actde;

select * from actor where nation='미국';

select rating, title from actor order by rating;

select toce from actor group by toce; --관객수

select stime from actor group by stime having count(*) >1;

select rating as 등급, count(title) as 영화개수 from actor group by rating order by rating;

select extract(year from rdate) as 년도, count(title) as 영화개수 from actor 
group by extract(year from rdate) having count(title) >=2; 

--모든 영화와 장르 조희
select a.title, g.gename from actor a 
join gende ge on a.mvno = ge.mvno 
join genre g on ge.gno = g.gno;

--감독별 영화 목록 조회
select d.dname, a.title from director d join 
directorde de on d.dno = de.dno join 
actor a on de.mvno = a.mvno;

--코미디 장르 영화 조회
select a.title from actor a join 
gende ge on a.mvno = ge.mvno where ge.gno = 2;

--영화 배우 조회
select a.title, m.acname from actor a join
actde ad on a.mvno = ad.mvno join movie m on ad.ano = m.ano;

--크로스 조인 사용
select a.title, g.gename from actor a cross join genre g;

--101번 감독 이 연출한 영화 조회
select title from actor where mvno in(select mvno from directorde where dno =101);

--여러감독이 있을경우 첫번째 감독만 조회
select a.title as 제목,
    (select d.dname from directorde de join 
    director d on de.dno = d.dno where de.mvno = a.mvno
    fetch first 1 rows only) 
as 감독명, a.toce as 관객수 from actor a;


--영화가 두개이상 있는 감독 조회
select d.dname as 감독, count(*) as 영화수 
from director d 
join directorde de on d.dno = de.dno 
group by d.dname
having count(*) > (select avg(영화수) from (select count(*) as 영화수 from directorde group by dno));

--천만관객 영화 조회하기 
select title, toce from actor
where to_number(replace(replace(toce, '명',''), ',', '')) >=10000000
and mvno in (select mvno from actor where 
to_number(replace(replace(toce, '명',''), ',', '')) >=10000000);



SELECT title, toce
FROM actor
WHERE TO_NUMBER(REPLACE(REPLACE(toce, '명', ''), ',', '')) >= 10000000
  AND mvno IN (SELECT mvno 
               FROM actor 
               WHERE TO_NUMBER(REPLACE(REPLACE(toce, '명', ''), ',', '')) >= 10000000);




--해리포터와 마법사의돌 관객수 변경하기
update actor set toce ='4,250,000명' where mvno = 117;















