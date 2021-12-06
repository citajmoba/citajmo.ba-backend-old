INSERT INTO locations VALUES(DEFAULT,'Sarajevo-1','Obala Maka Dizdara 7','Sarajevo',NOW(),NOW());
INSERT INTO locations VALUES(DEFAULT,'Sarajevo-2','Vojničko polje','Sarajevo',NOW(),NOW());

INSERT INTO roles VALUES(DEFAULT,'user',NOW(),NOW());
INSERT INTO roles VALUES(DEFAULT,'contributor',NOW(),NOW());
INSERT INTO roles VALUES(DEFAULT,'admin',NOW(),NOW());
INSERT INTO roles VALUES(DEFAULT,'editor',NOW(),NOW());
INSERT INTO roles VALUES(DEFAULT,'superuser',NOW(),NOW());

INSERT INTO genres VALUES(DEFAULT,'roman',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'zbirka poezije',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'knjiga za djecu',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'psihološki roman',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'narodna poezija',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'istorija',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'putopis',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'biografija',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'autobiografija',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'narodna poezija',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'zbirka pripovjetki',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'satira',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'drama',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'kratke priče',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'pozorišna drama',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'komedija',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'ratna',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'pozorišna komedija',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'patriotska',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'stručna',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'nauka',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'sport',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'umjetnost',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'društvena tematika',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'avanture',NOW(),NOW());
INSERT INTO genres VALUES(DEFAULT,'ljubavna',NOW(),NOW());


INSERT INTO periods VALUES(DEFAULT,'renesansa',NOW(),NOW());
INSERT INTO periods VALUES(DEFAULT,'prosvjetiteljstvo',NOW(),NOW());
INSERT INTO periods VALUES(DEFAULT,'romantizam',NOW(),NOW());
INSERT INTO periods VALUES(DEFAULT,'realizam',NOW(),NOW());
INSERT INTO periods VALUES(DEFAULT,'naturalizam',NOW(),NOW());
INSERT INTO periods VALUES(DEFAULT,'simbolizam',NOW(),NOW());
INSERT INTO periods VALUES(DEFAULT,'impresionizam',NOW(),NOW());
INSERT INTO periods VALUES(DEFAULT,'moderna književnost',NOW(),NOW());
INSERT INTO periods VALUES(DEFAULT,'postmodernizam',NOW(),NOW());
INSERT INTO periods VALUES(DEFAULT,'egzistencijalizam',NOW(),NOW());



INSERT INTO book_nationalities VALUES(DEFAULT,'bosanska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'srpska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'hrvatska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'crnogorska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'slovenačka',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'makedonska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'vojvođanska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'albanska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'američka',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'njemačka',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'francuska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'ruska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'španska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'turska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'italijanska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'britanska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'starogrčka',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'evropska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'arapska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'bliskoistočna',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'egipatska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'južnoamerička',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'kineska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'japanska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'persijska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'balkanska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'sjeverno-evropska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'istočno-evropska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'azijska',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'afrička',NOW(),NOW());
INSERT INTO book_nationalities VALUES(DEFAULT,'magribska',NOW(),NOW());

INSERT INTO question_categories VALUES(DEFAULT,'characters', NOW(), NOW());
INSERT INTO question_categories VALUES(DEFAULT,'places', NOW(), NOW());
INSERT INTO question_categories VALUES(DEFAULT,'times', NOW(), NOW());
INSERT INTO question_categories VALUES(DEFAULT,'plot', NOW(), NOW());
INSERT INTO question_categories VALUES(DEFAULT,'messages', NOW(), NOW());

INSERT INTO difficulty_levels VALUES(DEFAULT,'Basic',NOW(),NOW());
INSERT INTO difficulty_levels VALUES(DEFAULT,'Advanced',NOW(),NOW());
INSERT INTO difficulty_levels VALUES(DEFAULT,'Difficult',NOW(),NOW());

INSERT INTO age_levels VALUES(DEFAULT,'0-3 years',NOW(),NOW());
INSERT INTO age_levels VALUES(DEFAULT,'4-7 years',NOW(),NOW());
INSERT INTO age_levels VALUES(DEFAULT,'8-12 years',NOW(),NOW());
INSERT INTO age_levels VALUES(DEFAULT,'13-16 years',NOW(),NOW());
INSERT INTO age_levels VALUES(DEFAULT,'17 years and above',NOW(),NOW());


INSERT INTO users VALUES(DEFAULT,101,'Amer','Ćatović','acatovic@eng.ucsd.edu','21-Mar-1972','axc4466','$2a$08$wpniw1y3wVPB7qY.UpWZG.6d/z/0ClMIesapKwK5Dx1oPIFLU.agy','redovni',0,NOW(),NOW());
INSERT INTO users VALUES(DEFAULT,102,'Zina','Ćatović','amer_catovic@yahoo.com','26-Sep-2009','zincat','$2a$08$wpniw1y3wVPB7qY.UpWZG.6d/z/0ClMIesapKwK5Dx1oPIFLU.agy','student',0,NOW(),NOW());
INSERT INTO users VALUES(DEFAULT,103,'Mensura','Ćatović','axc4466@hotmail.com','12-Jun-1946','mensa','$2a$08$wpniw1y3wVPB7qY.UpWZG.6d/z/0ClMIesapKwK5Dx1oPIFLU.agy','penzioner',0,NOW(),NOW());
INSERT INTO users VALUES(DEFAULT,104,'Marwah','Ćatović','marwah99@hotmail.com','12-Jun-1946','marwah','$2a$08$wpniw1y3wVPB7qY.UpWZG.6d/z/0ClMIesapKwK5Dx1oPIFLU.agy','redovni',0,NOW(),NOW());

INSERT INTO books VALUES(DEFAULT,'Orlovi rano lete','Branko Ćopić',1959,10,2,NOW(),NOW());
INSERT INTO books VALUES(DEFAULT,'Doživljaji Toma Sojera','Mark Twain',1876,12,2,NOW(),NOW());
INSERT INTO books VALUES(DEFAULT,'Derviš i smrt','Meša Selimović',1966,16,3,NOW(),NOW());


INSERT INTO users_roles VALUES(NOW(),NOW(),3,1);
INSERT INTO users_roles VALUES(NOW(),NOW(),1,2);
INSERT INTO users_roles VALUES(NOW(),NOW(),2,3);
INSERT INTO users_roles VALUES(NOW(),NOW(),1,4);

INSERT INTO books_genres VALUES(NOW(),NOW(),1,3);
INSERT INTO books_genres VALUES(NOW(),NOW(),1,1);
INSERT INTO books_genres VALUES(NOW(),NOW(),1,17);
INSERT INTO books_genres VALUES(NOW(),NOW(),2,3);
INSERT INTO books_genres VALUES(NOW(),NOW(),2,1);
INSERT INTO books_genres VALUES(NOW(),NOW(),2,16);
INSERT INTO books_genres VALUES(NOW(),NOW(),3,1);
INSERT INTO books_genres VALUES(NOW(),NOW(),3,4);

INSERT INTO books_periods VALUES(NOW(),NOW(),1,8);
INSERT INTO books_periods VALUES(NOW(),NOW(),1,6);
INSERT INTO books_periods VALUES(NOW(),NOW(),2,6);
INSERT INTO books_periods VALUES(NOW(),NOW(),3,6);

INSERT INTO books_nationalities VALUES(NOW(),NOW(),1,1);
INSERT INTO books_nationalities VALUES(NOW(),NOW(),1,2);
INSERT INTO books_nationalities VALUES(NOW(),NOW(),2,9);
INSERT INTO books_nationalities VALUES(NOW(),NOW(),3,1);
INSERT INTO books_nationalities VALUES(NOW(),NOW(),3,2);

INSERT INTO books_locations VALUES(NOW(),NOW(),1,1);
INSERT INTO books_locations VALUES(NOW(),NOW(),1,2);
INSERT INTO books_locations VALUES(NOW(),NOW(),2,1);
INSERT INTO books_locations VALUES(NOW(),NOW(),3,1);
INSERT INTO books_locations VALUES(NOW(),NOW(),3,2);

