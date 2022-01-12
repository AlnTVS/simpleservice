INSERT INTO address
( address) VALUES
('г.Москва, ул.Первая д.1'),
('г.Москва, ул.Вторая д.2'),
('г.Москва, ул.Третья д.3');

INSERT INTO organization
( name, 		full_name, 				inn, 			kpp, 		phone, 				address_id, is_active) VALUES
('РиК', 		'Рога и Копыта', 		'123456789012', '123456789', '+79991234567', 	1,			true),
('ООО Компани', 'ООО ПАО ЗАО Компани', 	'210987654321', '987654321', '+79997654321', 	2,			true);

INSERT INTO office
( organization_id, 	name, 		phone, 			address_id, is_active) VALUES
(1, 				'Рога', 	'+79001234567', 1,			true),
(1, 				'Копыта', 	'+70991234567', 3,			true),
(2, 				'Офис_1', 	'+79007654321', 2,			true),
(2, 				'Офис_2', 	'+70997654321', 1,			true);

INSERT INTO position
(position_name) VALUES
('Операционист-кассир'),
('Старший кассир'),
('Контролер');

INSERT INTO type_document
(code, type) VALUES
('03','Свидетельство о рождении'),
('07','Военный билет'),
('08','Временное удостоверение, выданное взамен военного билета'),
('10','Паспорт иностранного гражданина'),
('11','Свидетельство о рассмотрении ходатайства о признании лица беженцем на территории Российской Федерации по существу'),
('12','Вид на жительство в Российской Федерации'),
('13','Удостоверение беженца'),
('15','Разрешение на временное проживание в Российской Федерации'),
('18','Свидетельство о предоставлении временного убежища на территории Российской Федерации'),
('21','Паспорт гражданина Российской Федерации'),
('23','Свидетельство о рождении, выданное уполномоченным органом иностранного государства'),
('24','Удостоверение личности военнослужащего Российской Федерации'),
('91','Иные документы ');

INSERT INTO citizenship
(code, name) VALUES
('004','АФГАНИСТАН'),
('008','АЛБАНИЯ'),
('010','АНТАРКТИДА'),
('012','АЛЖИР'),
('016','АМЕРИКАНСКОЕ САМОА'),
('020','АНДОРРА'),
('024','АНГОЛА'),
('028','АНТИГУА И БАРБУДА'),
('031','АЗЕРБАЙДЖАН'),
('032','АРГЕНТИНА'),
('036','АВСТРАЛИЯ'),
('040','АВСТРИЯ'),
('044','БАГАМЫ'),
('048','БАХРЕЙН'),
('050','БАНГЛАДЕШ'),
('051','АРМЕНИЯ'),
('052','БАРБАДОС'),
('056','БЕЛЬГИЯ'),
('060','БЕРМУДЫ'),
('064','БУТАН'),
('068','БОЛИВИЯ'),
('070','БОСНИЯ И ГЕРЦЕГОВИНА'),
('072','БОТСВАНА'),
('074','ОСТРОВ БУВЕ'),
('076','БРАЗИЛИЯ'),
('084','БЕЛИЗ'),
('086','БРИТАНСКАЯ ТЕРРИТОРИЯ В ИНДИЙСКОМ ОКЕАНЕ'),
('090','СОЛОМОНОВЫ ОСТРОВА'),
('092','ВИРГИНСКИЕ ОСТРОВА, БРИТАНСКИЕ'),
('096','БРУНЕЙ-ДАРУССАЛАМ'),
('100','БОЛГАРИЯ'),
('104','МЬЯНМА'),
('108','БУРУНДИ'),
('112','БЕЛАРУСЬ'),
('116','КАМБОДЖА'),
('120','КАМЕРУН'),
('124','КАНАДА'),
('132','КАБО-ВЕРДЕ'),
('136','ОСТРОВА КАЙМАН'),
('140','ЦЕНТРАЛЬНО-АФРИКАНСКАЯ РЕСПУБЛИКА'),
('144','ШРИ-ЛАНКА'),
('148','ЧАД'),
('152','ЧИЛИ'),
('156','КИТАЙ'),
('158','ТАЙВАНЬ (КИТАЙ)'),
('162','ОСТРОВ РОЖДЕСТВА'),
('166','КОКОСОВЫЕ (КИЛИНГ) ОСТРОВА'),
('170','КОЛУМБИЯ'),
('174','КОМОРЫ'),
('175','МАЙОТТА'),
('178','КОНГО'),
('180','КОНГО, ДЕМОКРАТИЧЕСКАЯ РЕСПУБЛИКА'),
('184','ОСТРОВА КУКА'),
('188','КОСТА-РИКА'),
('191','ХОРВАТИЯ'),
('192','КУБА'),
('196','КИПР'),
('203','ЧЕШСКАЯ РЕСПУБЛИКА'),
('204','БЕНИН'),
('208','ДАНИЯ'),
('212','ДОМИНИКА'),
('214','ДОМИНИКАНСКАЯ РЕСПУБЛИКА'),
('218','ЭКВАДОР'),
('222','ЭЛЬ-САЛЬВАДОР'),
('226','ЭКВАТОРИАЛЬНАЯ ГВИНЕЯ'),
('231','ЭФИОПИЯ'),
('232','ЭРИТРЕЯ'),
('233','ЭСТОНИЯ'),
('234','ФАРЕРСКИЕ ОСТРОВА'),
('238','ФОЛКЛЕНДСКИЕ ОСТРОВА (МАЛЬВИНСКИЕ)'),
('239','ЮЖНАЯ ДЖОРДЖИЯ И ЮЖНЫЕ САНДВИЧЕВЫ ОСТРОВА'),
('242','ФИДЖИ'),
('246','ФИНЛЯНДИЯ'),
('248','ЭЛАНДСКИЕ ОСТРОВА'),
('250','ФРАНЦИЯ'),
('254','ФРАНЦУЗСКАЯ ГВИАНА'),
('258','ФРАНЦУЗСКАЯ ПОЛИНЕЗИЯ'),
('260','ФРАНЦУЗСКИЕ ЮЖНЫЕ ТЕРРИТОРИИ'),
('262','ДЖИБУТИ'),
('266','ГАБОН'),
('268','ГРУЗИЯ'),
('270','ГАМБИЯ'),
('275','ПАЛЕСТИНСКАЯ ТЕРРИТОРИЯ, ОККУПИРОВАННАЯ'),
('276','ГЕРМАНИЯ'),
('288','ГАНА'),
('292','ГИБРАЛТАР'),
('296','КИРИБАТИ'),
('300','ГРЕЦИЯ'),
('304','ГРЕНЛАНДИЯ'),
('308','ГРЕНАДА'),
('312','ГВАДЕЛУПА'),
('316','ГУАМ'),
('320','ГВАТЕМАЛА'),
('324','ГВИНЕЯ'),
('328','ГАЙАНА'),
('332','ГАИТИ'),
('334','ОСТРОВ ХЕРД И ОСТРОВА МАКДОНАЛЬД'),
('336','ПАПСКИЙ ПРЕСТОЛ (ГОСУДАРСТВО - ГОРОД)'),
('340','ГОНДУРАС'),
('344','ГОНКОНГ'),
('348','ВЕНГРИЯ'),
('352','ИСЛАНДИЯ'),
('356','ИНДИЯ'),
('360','ИНДОНЕЗИЯ'),
('364','ИРАН, ИСЛАМСКАЯ РЕСПУБЛИКА'),
('368','ИРАК'),
('372','ИРЛАНДИЯ'),
('376','ИЗРАИЛЬ'),
('380','ИТАЛИЯ'),
('384','КОТ ДИВУАР'),
('388','ЯМАЙКА'),
('392','ЯПОНИЯ'),
('398','КАЗАХСТАН'),
('400','ИОРДАНИЯ'),
('404','КЕНИЯ'),
('408','КОРЕЯ, НАРОДНО-ДЕМОКРАТИЧЕСКАЯ РЕСПУБЛИКА'),
('410','КОРЕЯ, РЕСПУБЛИКА'),
('414','КУВЕЙТ'),
('417','КИРГИЗИЯ'),
('418','ЛАОССКАЯ НАРОДНО-ДЕМОКРАТИЧЕСКАЯ РЕСПУБЛИКА'),
('422','ЛИВАН'),
('426','ЛЕСОТО'),
('428','ЛАТВИЯ'),
('430','ЛИБЕРИЯ'),
('434','ЛИВИЯ'),
('438','ЛИХТЕНШТЕЙН'),
('440','ЛИТВА'),
('442','ЛЮКСЕМБУРГ'),
('446','МАКАО'),
('450','МАДАГАСКАР'),
('454','МАЛАВИ'),
('458','МАЛАЙЗИЯ'),
('462','МАЛЬДИВЫ'),
('466','МАЛИ'),
('470','МАЛЬТА'),
('474','МАРТИНИКА'),
('478','МАВРИТАНИЯ'),
('480','МАВРИКИЙ'),
('484','МЕКСИКА'),
('492','МОНАКО'),
('496','МОНГОЛИЯ'),
('498','МОЛДОВА, РЕСПУБЛИКА'),
('499','ЧЕРНОГОРИЯ'),
('500','МОНТСЕРРАТ'),
('504','МАРОККО'),
('508','МОЗАМБИК'),
('512','ОМАН'),
('516','НАМИБИЯ'),
('520','НАУРУ'),
('524','НЕПАЛ'),
('528','НИДЕРЛАНДЫ'),
('531','КЮРАСАО'),
('533','АРУБА'),
('534','СЕН-МАРТЕН (нидерландская часть)'),
('535','БОНЭЙР, СИНТ-ЭСТАТИУС И САБА'),
('540','НОВАЯ КАЛЕДОНИЯ'),
('548','ВАНУАТУ'),
('554','НОВАЯ ЗЕЛАНДИЯ'),
('558','НИКАРАГУА'),
('562','НИГЕР'),
('566','НИГЕРИЯ'),
('570','НИУЭ'),
('574','ОСТРОВ НОРФОЛК'),
('578','НОРВЕГИЯ'),
('580','СЕВЕРНЫЕ МАРИАНСКИЕ ОСТРОВА'),
('581','МАЛЫЕ ТИХООКЕАНСКИЕ ОТДАЛЕННЫЕ ОСТРОВА'),
('583','МИКРОНЕЗИЯ, ФЕДЕРАТИВНЫЕ ШТАТЫ'),
('584','МАРШАЛЛОВЫ ОСТРОВА'),
('585','ПАЛАУ'),
('586','ПАКИСТАН'),
('591','ПАНАМА'),
('598','ПАПУА - НОВАЯ ГВИНЕЯ'),
('600','ПАРАГВАЙ'),
('604','ПЕРУ'),
('608','ФИЛИППИНЫ'),
('612','ПИТКЕРН'),
('616','ПОЛЬША'),
('620','ПОРТУГАЛИЯ'),
('624','ГВИНЕЯ-БИСАУ'),
('626','ТИМОР-ЛЕСТЕ'),
('630','ПУЭРТО-РИКО'),
('634','КАТАР'),
('638','РЕЮНЬОН'),
('642','РУМЫНИЯ'),
('643','РОССИЯ'),
('646','РУАНДА'),
('652','СЕН-БАРТЕЛЕМИ'),
('654','СВЯТАЯ ЕЛЕНА, ОСТРОВ ВОЗНЕСЕНИЯ'),
('659','СЕНТ-КИТС И НЕВИС'),
('660','АНГИЛЬЯ'),
('662','СЕНТ-ЛЮСИЯ'),
('663','СЕН-МАРТЕН'),
('666','СЕН-ПЬЕР И МИКЕЛОН'),
('670','СЕНТ-ВИНСЕНТ И ГРЕНАДИНЫ'),
('674','САН-МАРИНО'),
('678','САН-ТОМЕ И ПРИНСИПИ'),
('682','САУДОВСКАЯ АРАВИЯ'),
('686','СЕНЕГАЛ'),
('688','СЕРБИЯ'),
('690','СЕЙШЕЛЫ'),
('694','СЬЕРРА-ЛЕОНЕ'),
('702','СИНГАПУР'),
('703','СЛОВАКИЯ'),
('704','ВЬЕТНАМ'),
('705','СЛОВЕНИЯ'),
('706','СОМАЛИ'),
('710','ЮЖНАЯ АФРИКА'),
('716','ЗИМБАБВЕ'),
('724','ИСПАНИЯ'),
('728','ЮЖНЫЙ СУДАН'),
('729','СУДАН'),
('732','ЗАПАДНАЯ САХАРА'),
('740','СУРИНАМ'),
('744','ШПИЦБЕРГЕН И ЯН МАЙЕН'),
('748','СВАЗИЛЕНД'),
('752','ШВЕЦИЯ'),
('756','ШВЕЙЦАРИЯ'),
('760','СИРИЙСКАЯ АРАБСКАЯ РЕСПУБЛИКА'),
('762','ТАДЖИКИСТАН'),
('764','ТАИЛАНД'),
('768','ТОГО'),
('772','ТОКЕЛАУ'),
('776','ТОНГА'),
('780','ТРИНИДАД И ТОБАГО'),
('784','ОБЪЕДИНЕННЫЕ АРАБСКИЕ ЭМИРАТЫ'),
('788','ТУНИС'),
('792','ТУРЦИЯ'),
('795','ТУРКМЕНИЯ'),
('796','ОСТРОВА ТЕРКС И КАЙКОС'),
('798','ТУВАЛУ'),
('800','УГАНДА'),
('804','УКРАИНА'),
('807','РЕСПУБЛИКА МАКЕДОНИЯ'),
('818','ЕГИПЕТ'),
('826','СОЕДИНЕННОЕ КОРОЛЕВСТВО'),
('831','ГЕРНСИ'),
('832','ДЖЕРСИ'),
('833','ОСТРОВ МЭН'),
('834','ТАНЗАНИЯ, ОБЪЕДИНЕННАЯ РЕСПУБЛИКА'),
('840','СОЕДИНЕННЫЕ ШТАТЫ'),
('850','ВИРГИНСКИЕ ОСТРОВА, США'),
('854','БУРКИНА-ФАСО'),
('858','УРУГВАЙ'),
('860','УЗБЕКИСТАН'),
('862','ВЕНЕСУЭЛА'),
('876','УОЛЛИС И ФУТУНА'),
('882','САМОА'),
('887','ЙЕМЕН'),
('894','ЗАМБИЯ'),
('895','АБХАЗИЯ'),
('896','ЮЖНАЯ ОСЕТИЯ');

INSERT INTO user
(office_id, first_name, citizenship_id, phone, 			is_active) VALUES
(1,			'Вася',		185,			'+79881234567',	true),
(1,			'Василий',	34,				'+78881234567',	true),
(2,			'Петрович',	185,			'+77881234567',	true),
(3,			'Петр',		232,			'+76881234567',	true),
(4,			'Петя',		185,			'+75881234567',	true);

INSERT INTO document
(number, 		date, 			type_document_id) VALUES
('111111111',	'1999-01-08',	1),
('222222222',	'2000-02-09',	2),
('333333333',	'2001-03-10',	3),
('444444444',	'2002-04-11',	4),
('555555555',	'2003-05-12',	5);

INSERT INTO user_position
(user_id, position_id) VALUES
(1,1),
(1,2),
(2,1),
(2,3),
(3,1),
(4,2);
