DROP SCHEMA IF EXISTS `ls_meals`;
CREATE SCHEMA `ls_meals`;
USE `ls_meals`;

CREATE TABLE IF NOT EXISTS `customer`(
	id BIGINT(20) AUTO_INCREMENT NOT NULL,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	phone VARCHAR(50),
	user_pass VARCHAR(50),
	
	PRIMARY KEY (id)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS `meal`(
	id BIGINT(20) AUTO_INCREMENT NOT NULL,
	name VARCHAR(50) NOT NULL,
	cost NUMERIC(6,2) NOT NULL,
	photo_url VARCHAR(100),
	
	PRIMARY KEY (id)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS `rating`(
	id BIGINT(20) AUTO_INCREMENT NOT NULL,
	rating_stars TINYINT,
	comments VARCHAR(100),
	meal_id BIGINT(20) NOT NULL,
	
	PRIMARY KEY (id),
	KEY `fk_meal` (`meal_id`),
	CONSTRAINT `fk_meal` FOREIGN KEY (`meal_id`) REFERENCES `meal` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS `customer_meal`(
	id BIGINT(20) AUTO_INCREMENT NOT NULL,
	customer_id BIGINT(20) NOT NULL,
	meal_id BIGINT(20) NOT NULL,
	date DATETIME,
	rating_stars TINYINT,
	comments VARCHAR(100),
	
	PRIMARY KEY (id),
	KEY `fk_customer_meal` (`customer_id`),
	CONSTRAINT `fk_customer_meal` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
	KEY `fk_meal_customer` (`meal_id`),
	CONSTRAINT `fk_meal_customer` FOREIGN KEY (`meal_id`) REFERENCES `meal` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

/* Customers: 100 */
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Hop","Brooks","interdum.Curabitur@tellus.com","(01383) 59591","XTO12UYS");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Holly","Pennington","nec.diam@egestasligulaNullam.co.uk","(018486) 82398","YEW42KUR");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Tana","David","mollis@asollicitudin.edu","0800 858037","IDZ34IIY");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Alexa","Langley","nulla.at@vitaeorci.com","0800 097 0515","CFK48KTZ");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Malik","Donaldson","ultrices.a@semmollisdui.edu","07624 789331","IGD13REW");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Ina","Reid","Duis@etmalesuadafames.co.uk","(0151) 773 2045","EVN57PQQ");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Ayanna","Holloway","conubia.nostra@aliquet.com","(012239) 91429","GSF03NDV");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Melyssa","Gentry","non.lacinia.at@consectetuercursuset.net","(016977) 2995","TQY48ZNP");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Chloe","Shaffer","Nullam@ligula.co.uk","07624 470017","TIZ12HVB");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Patience","Ferrell","rhoncus.id@nibhvulputate.co.uk","(0121) 646 9746","XAV89GMZ");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Bo","Phillips","eleifend.non@vulputatelacus.com","0500 456421","FWX07XLI");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Iola","Murphy","erat.semper@Vivamusmolestie.co.uk","0900 462 0821","XAW54CIC");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Jasper","Ratliff","pellentesque.Sed@tempordiam.com","070 9379 7088","ONH41TUI");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Shad","Soto","ut@ultricesDuis.ca","0851 447 7908","XNB28HTN");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Willow","Robinson","morbi.tristique.senectus@posuereenimnisl.ca","0800 645507","SOS70ODQ");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Althea","Livingston","mollis@porttitorinterdum.ca","0800 695662","INB27VVI");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Priscilla","Kim","elit.pellentesque.a@Quisquelibero.org","0500 467535","XRE88DAM");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Hammett","Rios","augue.ut.lacus@nec.net","0845 46 45","HHS28SJJ");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Elmo","Miranda","egestas@musDonecdignissim.ca","0344 787 0720","OQU45FSG");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Laurel","Maldonado","velit.dui.semper@eleifend.edu","076 3743 5551","QWG02SAZ");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Yoko","Barr","laoreet.lectus.quis@FuscemollisDuis.co.uk","(013464) 85364","DKG15YUM");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Noelle","Raymond","Aliquam.auctor@sempercursus.net","056 0243 9916","NIE95WEV");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Duncan","Gordon","tempus.mauris.erat@placeratorci.net","0985 219 2208","ANW76TVH");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Stuart","Gaines","sem.semper@nuncinterdumfeugiat.edu","0835 504 7010","ILH39CHP");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Ezra","Huffman","Fusce@aliquameros.com","(016977) 7116","BMZ30RRJ");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Laurel","Sherman","risus@SuspendissesagittisNullam.com","07211 672307","PSW53NOZ");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Logan","Tyson","ut.sem@laciniaSedcongue.ca","056 4469 0149","EWI80LUG");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Ronan","Estes","ut@libero.com","(0119) 160 5318","NPU53TSB");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Lesley","Richmond","urna.et.arcu@ridiculusmusProin.edu","(016977) 1558","MIW73JKH");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Ronan","Mckee","Aliquam.vulputate@elit.org","(01773) 73533","EDE16UFT");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Alexis","Beck","mauris.rhoncus.id@nunc.com","055 1388 6956","VAL71TMP");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Irene","Compton","mi.lacinia.mattis@interdum.net","0334 264 7090","BFU58EYF");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Hiram","Benton","erat.vel.pede@faucibusMorbi.org","0845 46 46","PCU28FJQ");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Destiny","Dickson","bibendum@rhoncusNullamvelit.edu","0500 318606","QGT62RAK");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Lev","Mcclure","et@rutrumjusto.org","076 7908 0507","XWN63YNR");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Leroy","Gay","accumsan.neque@quamafelis.com","(016977) 8422","GPA46OAQ");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Benjamin","Cohen","augue.ac.ipsum@pharetra.ca","(01044) 314134","LCQ93FUY");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Veda","Dunlap","quis.massa@Duis.ca","055 3836 7483","PJT89WEQ");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Clark","Garza","egestas@aliquamarcuAliquam.edu","(011528) 55059","FHZ09RNO");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Ocean","Hayes","facilisis@ligula.edu","07815 790111","BRS92YOJ");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Elton","Rivera","porttitor.vulputate@nonfeugiat.com","076 5008 2973","DXJ95WNS");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Fritz","Wallace","luctus.ipsum@sagittis.edu","(016977) 4415","SPS72CIN");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Iola","Hartman","dapibus@ante.org","056 7272 8429","KNG43QWD");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Yael","Hayes","vestibulum.Mauris@nondui.ca","07624 165404","NOD63YQV");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Gail","Berry","dolor.tempus.non@Inat.ca","0800 105326","SSI98EGX");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Trevor","Gardner","eu.sem.Pellentesque@Duis.com","(0101) 747 0802","UCT92YMW");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Xandra","Caldwell","vitae.semper@pede.co.uk","(0117) 940 9846","FJB44EXW");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Neville","Holder","commodo@Aeneangravida.net","076 2126 4724","TNP30JII");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Ryder","Walls","sed@Pellentesque.ca","0849 501 6316","SQE05PRI");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Eve","Dunn","Integer.aliquam.adipiscing@facilisis.ca","070 5730 3626","KLC30MVJ");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Shaine","Ellison","arcu.Vestibulum.ante@risusvarius.ca","07698 310668","ZJA59LLG");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Philip","Glenn","et@purus.net","(027) 0321 9497","HQT34SLB");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Susan","Montoya","primis.in@libero.ca","0810 434 9304","XXD91IQE");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Ezra","Macdonald","amet@elit.co.uk","0800 1111","YTR04YXV");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Daria","Church","turpis@malesuada.ca","07678 875060","URK76EDQ");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Davis","Herman","vitae.posuere.at@hendreritconsectetuercursus.edu","0927 411 5650","KXB44ZCF");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Barclay","Gregory","non@non.com","0811 407 7432","PMX79AKT");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Channing","Bass","magna.Cras@estacfacilisis.co.uk","0800 1111","RQX87LYP");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Claire","Fletcher","sollicitudin.a@egetvenenatisa.ca","055 7400 0208","JIQ05WJU");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Shelley","Williamson","ornare@utmolestie.org","0845 46 46","HOP53TYM");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Troy","Bernard","neque.non@iaculisodioNam.edu","(01356) 233119","WEW65RXQ");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Alyssa","Le","egestas@Quisquepurussapien.org","055 4347 6752","TWT98OKY");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Amy","Velasquez","sit@velitAliquam.net","0800 959892","FSH54ZEQ");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Harrison","Cortez","faucibus@quis.org","070 0516 6007","CLG52RBX");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Yoshio","Cooley","penatibus@dolorNullasemper.co.uk","070 7475 2862","HBX66FIV");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Tamekah","Underwood","amet.consectetuer.adipiscing@molestieintempus.edu","0845 46 41","BMS37RSD");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Ori","Johnson","eu.ligula@Nuncullamcorpervelit.edu","0806 516 0669","MJV30EUC");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Bert","Witt","est@idanteNunc.net","(028) 8902 0358","ADM43PCF");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Rebecca","Mooney","diam.Sed@nonlorem.org","(010533) 92132","BAN06TJQ");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Rosalyn","Sears","molestie@interdumlibero.com","0800 615 7465","ZGW33YBE");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Calista","Bullock","neque.pellentesque@euturpis.org","0882 630 2032","KDQ46FPB");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Stephen","Case","molestie.pharetra.nibh@penatibusetmagnis.org","(012619) 82545","WER57SBW");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Abbot","Newton","commodo.ipsum@velitCraslorem.org","(0118) 782 5905","DCL50HXX");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Courtney","Nash","auctor@dolorNulla.edu","056 8546 7763","QZB81VBP");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Pascale","Johnson","enim@nec.ca","076 4729 6563","VFJ10MTW");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Vance","Vega","ante@musDonecdignissim.co.uk","0800 684 3704","XFX79VKH");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Courtney","Calderon","libero.Integer.in@elitpretiumet.edu","0835 886 8448","HJK26AQR");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Clementine","Holloway","eget.venenatis@etrutrumnon.ca","07624 866813","HYQ67SRJ");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Luke","Valencia","Curabitur.consequat.lectus@euismodindolor.co.uk","07459 138929","HYD62FRQ");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Clark","Bradshaw","dictum.augue@metusfacilisislorem.edu","(01553) 78905","TEY81IJY");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Amos","Morgan","at.pretium.aliquet@euismodacfermentum.org","(019476) 14463","DMH53YUA");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Cynthia","Lindsey","mattis@ac.net","0845 46 47","TCB21NAK");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Zenaida","Ortiz","Cum.sociis.natoque@aliquet.co.uk","(0115) 859 9716","DMO00EJI");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Kermit","Chen","penatibus@venenatis.com","(01854) 810495","HMX34QJA");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Dominique","Shaffer","mauris@ornarelibero.com","(020) 7613 5440","MTG59SFN");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Colorado","Thornton","Quisque@etliberoProin.net","(021) 5355 3630","ZIL57HNY");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Colby","Davidson","cursus.Integer.mollis@lobortisquama.co.uk","07780 800131","RWC06CCR");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Hashim","Swanson","felis.ullamcorper@quispede.org","070 9922 7912","GYM18JHD");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Ocean","Donaldson","lorem@Integeraliquam.edu","07624 474168","JLL76PNU");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Graham","Atkinson","non.egestas.a@urnajustofaucibus.net","0937 417 5236","YGE99QVJ");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Levi","Rose","non.sollicitudin@euturpisNulla.edu","070 0155 6991","WVN35SAM");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Keely","Mcclure","sit.amet.luctus@magna.net","0500 383274","RVQ53MXA");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Lilah","Ward","mi@et.net","0350 422 9074","GNE47UAP");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Brenden","Atkinson","lobortis.nisi@scelerisquescelerisque.org","(01112) 03032","QUE39STN");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Hillary","Greer","molestie.dapibus@Aliquameratvolutpat.co.uk","056 4021 4469","UMY08MSO");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Lenore","Hahn","ut.lacus.Nulla@lobortis.com","0800 398 6063","XUT48IHW");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Summer","Bradford","odio.tristique@ametante.edu","07624 249315","OVW84FZF");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Calista","Dunlap","egestas@temporloremeget.co.uk","07169 606093","RVM45BMS");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Nissim","Johnston","Donec@euaugueporttitor.org","0939 262 7578","AKL39UCA");
INSERT INTO `Customer` (`first_name`,`last_name`,`email`,`phone`,`user_pass`) VALUES ("Lane","Sykes","Mauris.vel.turpis@egestasligula.co.uk","0500 884268","HPU31HZO");

/* Meals: 20 */
INSERT INTO `Meal` (`name`,`cost`,`photo_url`) VALUES ("noodles","4.99","assets/images/meals/noodles.jepg");
INSERT INTO `Meal` (`name`,`cost`,`photo_url`) VALUES ("sandwich","6.99","assets/images/meals/sandwich.jepg");
INSERT INTO `Meal` (`name`,`cost`,`photo_url`) VALUES ("stews","13.99","assets/images/meals/stew.jepg");
INSERT INTO `Meal` (`name`,`cost`,`photo_url`) VALUES ("salad","3.99","assets/images/meals/salad.jepg");
INSERT INTO `Meal` (`name`,`cost`,`photo_url`) VALUES ("soups","2.99","assets/images/meals/soup.jepg");
INSERT INTO `Meal` (`name`,`cost`,`photo_url`) VALUES ("salads","9.99","assets/images/meals/noodles.jepg");
INSERT INTO `Meal` (`name`,`cost`,`photo_url`) VALUES ("cereals","1.99","assets/images/meals/cereals.jepg");
INSERT INTO `Meal` (`name`,`cost`,`photo_url`) VALUES ("tortellini","6.99","assets/images/meals/tortellini.jepg");
INSERT INTO `Meal` (`name`,`cost`,`photo_url`) VALUES ("pizza","15.99","assets/images/meals/pizza.jepg");
INSERT INTO `Meal` (`name`,`cost`,`photo_url`) VALUES ("hamburger","12.99","assets/images/meals/hamburger.jepg");

/* Ratings: 40 */
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (4,"Lorem ipsum dolor sit",3);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (5,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed",1);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (2,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",4);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (2,"Lorem ipsum dolor sit amet, consectetuer",6);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (1,"Lorem ipsum dolor sit amet, consectetuer adipiscing",7);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (1,"Lorem ipsum dolor",6);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",9);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (5,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",10);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (1,"Lorem ipsum dolor",9);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (5,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed",9);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (4,"Lorem ipsum dolor sit amet,",4);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (2,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed",6);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (1,"Lorem ipsum dolor sit",1);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (2,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",9);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (4,"Lorem ipsum dolor sit amet,",7);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (2,"Lorem ipsum dolor sit amet, consectetuer adipiscing",3);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (1,"Lorem ipsum",2);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (5,"Lorem ipsum dolor",4);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (4,"Lorem ipsum dolor sit amet, consectetuer",6);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (2,"Lorem ipsum dolor sit amet, consectetuer",1);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (5,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",2);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (4,"Lorem ipsum dolor",4);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (5,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",6);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (1,"Lorem ipsum dolor sit",3);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (1,"Lorem ipsum dolor sit",8);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (3,"Lorem ipsum dolor sit amet, consectetuer",5);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (3,"Lorem ipsum dolor sit",8);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (2,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",3);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (2,"Lorem",3);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (3,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",6);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (2,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed",10);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (5,"Lorem ipsum dolor sit amet, consectetuer adipiscing",1);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (4,"Lorem ipsum",10);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (1,"Lorem ipsum dolor sit amet, consectetuer adipiscing",6);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (2,"Lorem ipsum dolor sit",2);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (4,"Lorem ipsum dolor",9);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (5,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur",10);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (5,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",8);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (5,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",7);
INSERT INTO `rating` (`rating_stars`,`comments`,`meal_id`) VALUES (5,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed",1);

/* customer_meal: 200 */
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (12,5,"2021-04-18 17:46:58",4,"Lorem ipsum dolor sit amet, consectetuer");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (97,5,"2020-06-12 20:31:28",4,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (28,9,"2021-05-03 17:08:36",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (40,9,"2020-07-13 18:20:00",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (34,3,"2020-12-18 08:26:59",2,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (23,8,"2021-03-01 07:38:56",2,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (72,6,"2020-12-19 09:47:27",4,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (3,2,"2020-11-23 03:57:39",3,"Lorem ipsum dolor");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (88,3,"2021-01-27 00:45:24",4,"Lorem");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (78,10,"2020-10-17 22:54:02",2,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (69,3,"2020-08-30 23:20:12",2,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (82,1,"2020-08-29 02:07:33",3,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (34,8,"2020-10-29 20:08:03",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (87,1,"2020-12-09 04:32:53",2,"Lorem ipsum dolor sit");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (12,3,"2021-04-16 19:21:37",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (64,4,"2020-05-30 00:36:39",2,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (24,2,"2020-11-01 01:36:31",4,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (89,9,"2021-02-25 15:47:43",1,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (82,7,"2020-06-19 02:45:43",3,"Lorem ipsum dolor");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (74,6,"2020-07-11 05:45:02",5,"Lorem ipsum dolor sit amet, consectetuer");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (72,10,"2020-09-04 00:05:06",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (55,8,"2020-11-30 06:07:28",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (46,5,"2021-01-30 09:45:43",2,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (91,5,"2020-09-20 20:44:20",3,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (95,2,"2020-11-15 12:06:47",3,"Lorem ipsum dolor sit");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (89,8,"2020-09-15 10:50:54",2,"Lorem ipsum dolor sit");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (78,4,"2020-09-20 13:03:55",1,"Lorem ipsum dolor");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (41,4,"2020-05-20 01:49:49",3,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (48,6,"2020-07-29 08:53:34",2,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (55,6,"2020-08-14 15:57:07",2,"Lorem");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (31,5,"2020-05-28 02:16:25",3,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (71,6,"2020-06-08 13:11:36",2,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (29,5,"2021-03-10 15:04:43",3,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (22,2,"2020-09-29 04:23:53",1,"Lorem");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (27,6,"2020-05-27 15:03:44",3,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (22,7,"2020-05-03 08:38:55",2,"Lorem");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (64,8,"2021-04-03 04:58:41",5,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (23,8,"2020-08-21 09:35:26",1,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (69,3,"2021-04-11 10:34:33",2,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (9,1,"2020-11-10 10:45:27",2,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (65,2,"2020-12-24 06:47:59",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (55,2,"2021-02-20 19:44:35",5,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (40,3,"2020-05-22 19:38:32",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (99,3,"2021-04-27 06:50:29",5,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (94,6,"2021-04-16 10:37:59",2,"Lorem ipsum dolor");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (56,4,"2020-07-07 12:13:48",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (68,4,"2020-06-02 09:29:56",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (13,6,"2021-02-15 15:47:03",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (74,2,"2020-09-19 05:37:27",4,"Lorem ipsum dolor");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (23,10,"2020-11-08 08:14:54",5,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (95,7,"2021-04-30 14:15:24",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (2,2,"2021-01-01 18:30:54",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (86,1,"2020-06-19 09:05:06",2,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (84,5,"2020-11-15 14:02:24",2,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (46,7,"2020-08-25 20:27:41",3,"Lorem ipsum dolor sit");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (5,9,"2020-05-10 15:31:11",5,"Lorem");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (22,1,"2020-12-26 11:24:14",5,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (85,5,"2020-07-16 13:45:32",4,"Lorem ipsum dolor sit");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (87,6,"2021-04-21 11:47:56",1,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (60,6,"2021-03-13 19:55:38",2,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (7,8,"2020-05-25 06:28:14",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (81,6,"2020-06-27 22:52:20",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (40,4,"2020-12-15 15:28:04",4,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (66,5,"2020-06-21 08:39:00",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (3,8,"2021-02-18 23:47:28",3,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (84,5,"2021-04-29 15:51:59",1,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (13,4,"2021-01-12 02:53:04",1,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (95,2,"2020-09-17 08:35:31",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (13,10,"2020-09-18 05:05:55",4,"Lorem");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (18,5,"2020-06-25 20:05:15",3,"Lorem ipsum dolor");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (86,9,"2020-07-20 05:23:41",1,"Lorem");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (38,7,"2020-09-05 02:26:09",4,"Lorem ipsum dolor sit amet, consectetuer");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (19,2,"2020-07-17 15:37:40",2,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (83,8,"2020-10-09 01:24:17",2,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (93,6,"2020-10-01 08:47:44",3,"Lorem");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (73,10,"2020-11-27 16:22:16",1,"Lorem ipsum dolor");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (67,9,"2020-07-15 08:21:54",5,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (29,4,"2021-03-26 12:05:23",2,"Lorem");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (58,5,"2020-10-10 02:18:02",5,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (32,8,"2021-04-28 19:46:30",4,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (55,10,"2021-04-03 20:13:50",3,"Lorem ipsum dolor sit amet, consectetuer");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (5,7,"2021-04-23 12:59:04",1,"Lorem ipsum dolor");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (55,10,"2020-06-03 12:37:56",4,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (92,7,"2020-12-26 07:58:26",5,"Lorem ipsum dolor sit");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (93,4,"2020-12-30 09:53:02",2,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (62,3,"2020-08-19 04:35:41",5,"Lorem ipsum dolor sit amet, consectetuer");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (62,1,"2021-01-12 16:48:11",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (12,2,"2021-01-30 03:47:28",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (5,8,"2020-09-18 18:09:57",1,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (72,10,"2020-09-21 11:27:00",3,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (58,8,"2020-07-04 12:21:35",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (2,5,"2020-11-22 08:36:49",4,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (84,5,"2020-07-01 20:57:30",3,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (57,4,"2020-10-02 05:15:40",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (95,5,"2021-04-03 08:51:18",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (98,3,"2020-12-06 17:17:59",1,"Lorem");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (58,3,"2021-04-09 15:47:40",3,"Lorem");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (30,7,"2021-02-08 23:37:40",2,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (70,8,"2020-08-26 08:45:07",1,"Lorem ipsum dolor sit amet, consectetuer");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (52,5,"2020-10-22 20:15:22",3,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (43,1,"2020-11-01 15:28:32",5,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (77,2,"2020-12-12 03:57:06",2,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (92,5,"2021-02-16 09:30:49",2,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (14,7,"2020-06-10 09:49:09",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (10,5,"2020-05-08 12:58:37",4,"Lorem ipsum dolor sit amet, consectetuer");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (51,4,"2020-09-25 07:27:28",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (25,2,"2021-05-01 19:29:26",1,"Lorem ipsum dolor");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (72,8,"2020-06-08 15:57:57",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (22,6,"2020-10-21 14:35:24",1,"Lorem ipsum dolor");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (94,8,"2020-10-04 17:29:19",2,"Lorem ipsum dolor");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (48,1,"2020-07-08 12:46:33",3,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (88,6,"2021-01-06 05:25:21",2,"Lorem");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (57,5,"2020-07-10 04:18:54",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (48,8,"2020-12-29 12:35:30",4,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (7,7,"2021-03-07 10:12:04",3,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (67,5,"2020-06-29 15:29:05",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (3,5,"2021-03-16 18:58:10",3,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (81,9,"2020-07-10 19:37:04",3,"Lorem ipsum dolor sit");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (95,3,"2020-07-29 08:14:35",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (96,1,"2020-10-10 04:51:38",4,"Lorem ipsum dolor sit");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (44,9,"2021-03-22 00:06:05",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (17,9,"2020-07-06 07:50:18",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (20,4,"2020-09-13 04:33:23",2,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (91,4,"2021-02-19 08:58:16",5,"Lorem");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (85,5,"2020-08-10 15:22:16",1,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (12,2,"2020-09-23 02:29:23",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (18,5,"2020-10-31 00:21:27",3,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (87,7,"2021-02-22 19:18:38",2,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (20,9,"2021-02-17 17:13:31",5,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (17,9,"2020-06-18 12:19:16",5,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (99,4,"2021-04-01 14:05:08",5,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (18,1,"2020-11-12 23:21:49",5,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (56,10,"2020-12-04 16:31:01",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (19,6,"2020-12-10 00:50:05",3,"Lorem ipsum dolor sit amet, consectetuer");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (70,4,"2020-12-06 22:04:48",3,"Lorem ipsum dolor sit");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (98,7,"2020-08-17 01:12:21",3,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (37,8,"2020-07-23 23:24:33",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (66,5,"2021-04-19 05:08:28",4,"Lorem ipsum dolor sit amet, consectetuer");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (84,6,"2021-03-03 21:48:13",3,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (42,5,"2020-08-30 16:14:14",3,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (89,2,"2020-05-19 03:29:29",3,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (97,6,"2020-08-11 18:59:47",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (32,10,"2020-12-16 11:02:07",3,"Lorem ipsum dolor sit");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (75,3,"2020-06-28 03:14:52",5,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (53,8,"2020-12-08 15:01:28",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (2,3,"2020-08-22 16:58:01",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (54,10,"2020-11-30 17:14:01",1,"Lorem ipsum dolor");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (95,3,"2020-11-14 11:46:04",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (86,6,"2021-04-14 11:12:44",3,"Lorem ipsum dolor");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (36,4,"2020-12-13 16:17:57",2,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (93,1,"2021-01-09 15:09:04",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (34,2,"2020-10-22 00:47:21",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (41,4,"2021-01-27 07:36:33",1,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (41,10,"2020-07-07 01:15:14",5,"Lorem");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (48,9,"2020-12-24 22:12:41",4,"Lorem ipsum dolor sit");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (43,2,"2020-08-20 06:43:20",5,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (46,2,"2020-09-29 17:43:49",4,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (99,8,"2020-05-19 15:14:32",1,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (26,1,"2020-06-21 16:29:50",5,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (70,8,"2021-01-31 12:14:01",5,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (99,2,"2020-08-12 22:18:06",3,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (61,6,"2020-09-11 07:58:41",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (60,10,"2020-07-30 00:17:05",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (6,10,"2020-11-30 17:16:06",3,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (47,10,"2021-04-17 23:13:03",3,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (41,9,"2021-03-10 04:19:16",2,"Lorem ipsum dolor sit amet, consectetuer");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (54,9,"2020-10-19 18:07:05",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (34,7,"2020-12-01 06:27:50",3,"Lorem ipsum dolor sit amet, consectetuer adipiscing");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (65,6,"2020-12-12 05:38:06",3,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (34,7,"2020-06-10 04:49:40",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (63,3,"2020-10-30 06:15:50",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (82,4,"2020-08-11 11:05:59",5,"Lorem");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (87,4,"2020-12-06 21:53:02",3,"Lorem ipsum dolor");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (95,8,"2020-09-10 08:42:58",5,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (96,6,"2020-11-08 17:50:48",5,"Lorem ipsum dolor");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (23,7,"2020-11-30 22:38:41",5,"Lorem ipsum dolor");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (71,1,"2021-01-12 20:26:43",4,"Lorem ipsum dolor sit");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (26,2,"2020-08-06 14:05:38",2,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (75,8,"2020-10-15 00:27:01",5,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (100,8,"2020-09-09 20:15:18",4,"Lorem ipsum dolor sit amet, consectetuer");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (79,4,"2020-05-15 14:39:38",1,"Lorem ipsum dolor sit");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (53,10,"2021-04-02 17:21:59",3,"Lorem ipsum dolor sit");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (27,8,"2020-06-04 02:53:13",5,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (15,7,"2020-08-11 19:38:44",5,"Lorem ipsum dolor sit amet, consectetuer");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (68,5,"2021-01-01 21:40:03",2,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (96,8,"2020-11-15 10:40:30",2,"Lorem");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (90,8,"2020-09-29 20:21:12",5,"Lorem ipsum");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (23,2,"2021-03-31 12:12:08",5,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (44,6,"2020-08-29 23:51:42",1,"Lorem ipsum dolor sit amet,");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (65,4,"2021-03-13 21:32:21",1,"Lorem ipsum dolor");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (33,9,"2021-02-05 17:37:49",2,"Lorem ipsum dolor sit");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (18,4,"2020-12-24 19:05:39",1,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (77,4,"2020-10-01 04:50:20",3,"Lorem ipsum dolor sit");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (28,10,"2020-06-10 04:15:26",4,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (8,4,"2021-02-24 06:37:16",3,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (70,4,"2020-10-14 03:48:30",3,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit.");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (3,9,"2021-01-08 22:27:46",1,"Lorem ipsum dolor sit amet, consectetuer");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (36,9,"2021-03-15 17:41:25",4,"Lorem ipsum dolor");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (66,6,"2021-05-02 12:30:17",3,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed");
INSERT INTO `customer_meal` (`customer_id`,`meal_id`,`date`,`rating_stars`,`comments`) VALUES (36,9,"2020-10-10 03:02:20",3,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur");
