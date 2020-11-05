
/* PRIVILEGIO 

0 - ADMIN GERAL
1 - GESTOR
2 - SUB GESTOR
3 - FUNCIONARIO
*/

+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | int          | NO   | PRI | NULL    | auto_increment |
| nome       | varchar(30)  | YES  |     | NULL    |                |
| sobrenome  | varchar(70)  | YES  |     | NULL    |                |
| cpf        | char(11)     | YES  |     | NULL    |                |
| matricula  | varchar(20)  | YES  |     | NULL    |                |
| id_setor   | int          | YES  | MUL | NULL    |                |
| privilegio | int          | YES  |     | NULL    |                |
| id_gestor  | int          | YES  |     | NULL    |                |
| id_escala  | int          | YES  | MUL | NULL    |                |
| status     | int          | YES  |     | NULL    |                |
| email      | varchar(100) | YES  |     | NULL    |                |
| senha      | varchar(30)  | YES  |     | NULL    |                |
| id_empresa | int          | YES  | MUL | NULL    |                |
| diafolga   | int          | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+

/*  dia de folga


1 - Seg
2 - Ter
3 - Qua
4 - Qui
5 - Sex
6 - Sab
7 - Dom
8 - Sab/Dom

*/


   
/* id, nome, sobrenome, cpf, matricula, setor, privilegio, id gestor, ,id escala, id status, email, senha, empresa, diafilga*/
INSERT INTO Funcionario (`id`,`nome`,`sobrenome`,`cpf`,`matricula`,`id_setor`,`privilegio`,`id_gestor`,`id_escala`,`status`,`email`,`senha`,`id_empresa`,`diafolga`)
values 
( null, 'Master', 'Funcionario', '00297896308', 'A99', 1, 0, 1, 1, 1, 'master.func@ADMIN.com', 'Admin@2020', 1, 8),
( null, 'Marcelo', 'Silva', '59350472170', 'AB01', 3, 1, 2, 3, 4, 'marcelo.silva@email.com', 'Admin@2020', 2, 8),
( null, 'Ana', 'Mara', '39433046988', 'ab9', 3, 3, 2, 2, 3, 'amara@email.com', 'Admin@2020', 2, 8),
( null, 'Joao', 'Don Valhao', '91715138761', 'ab7', 3, 3, 2, 3, 1, 'jvalaho@email.com', 'Admin@2020', 2, 8),
( null, 'Joana', 'Dymm', '68676323430', 'CC-22011', 4, 1, 5, 2, 1, 'jdymm@escola.edu', 'Admin@2020', 3, 8),
( null, 'Josenildo', 'Francisco SÃ¡', '72021927480', 'CC-330011', 2, 1, 6, 2, 1, 'chicosa@escola.edu', 'Admin@2020', 3, 8),
( null, 'Maria', 'Pia', '10131893027', 'CC-22011', 6, 3, 5, 4, 1, 'maria.pia@escola.edu', 'Admin@2020', 3, 8),
( null, 'Zilda', 'Arns', '92714351337', 'CC-22011', 7, 3, 5, 5, 1, 'zilda@escola.edu', 'Admin@2020', 3, 8),
( null, 'Bruno', 'Nogueira', '33845542050', 'CC-22011', 8, 3, 5, 6, 1, 'bruno.nogueiea@escola.com', 'Admin@2020', 3, 8),
( null, 'Hope', 'Espinoza', '98651470920', '218203-7735', 2, 3, 6, 2, 1, 'dapibus.ligula@Curabitur.co.uk', 'TOY92JWR0FJ', 3, 8),
( null, 'Geraldine', 'Lawrence', '19474513080', '779221-0903', 3, 1, 11, 2, 1, 'molestie@sociisnatoque.ca', 'GTK18PJK9OE', 16, 7),
( null, 'Philip', 'Curtis', '34995373204', '297414-0358', 3, 3, 11, 2, 1, 'magna@sedturpis.co.uk', 'AFK63SCN3GZ', 16, 7),
( null, 'Winter', 'Travis', '51370981916', '099508-5503', 3, 3, 11, 2, 1, 'Curabitur.dictum.Phasellus@Sedneque.co.uk', 'VAE38CGO6PZ', 16, 7),
( null, 'Rinah', 'Watts', '30631697578', '859552-5240', 15, 2, 11, 2, 1, 'magnis@Donec.org', 'YMF25SLN2MI', 16, 7),
( null, 'Cruz', 'Copeland', '93015555224', '154255-2961', 15, 3, 11, 2, 1, 'nec.metus@varius.ca', 'ZBU78RUR0HY', 16, 7),
( null, 'Sebastian', 'Madden', '81901227898', '035866-4381', 15, 3, 11, 2, 1, 'eget.ipsum@massaIntegervitae.co.uk', 'CKW12XLT9WG', 16, 7),
( null, 'Mohammad', 'Ryan', '26978934586', '504278-2259', 27, 2, 11, 2, 1, 'sit.amet@duiinsodales.ca', 'LWF60GFS8PO', 16, 7),
( null, 'Gretchen', 'Walker', '71832544610', '762654-1390', 27, 3, 11, 2, 1, 'eu.elit.Nulla@Vivamus.edu', 'MKL46EKN3EF', 16, 7),
( null, 'Amery', 'Cote', '77021249469', '959115-3722', 27, 3, 11, 2, 1, 'laoreet.lectus@mattisCras.org', 'EIE47JDC6DT', 16, 7),
( null, 'Colin', 'Miller', '39913155994', '162427-6588', 8, 3, 29, 4, 1, 'elit.Curabitur@consequat.org', 'LMO91GDL1RP', 21, 8),
( null, 'Hayley', 'Gill', '43710485958', '419773-9867', 8, 3, 29, 5, 1, 'Cras@consectetuermaurisid.org', 'SRP49MTX7JK', 21, 8),
( null, 'Philip', 'Haynes', '26408143117', '145052-6783', 8, 3, 29, 6, 1, 'commodo.ipsum@orcisem.ca', 'KSP81BMA6DS', 21, 8),
( null, 'Yetta', 'Henderson', '62663329730', '288371-7668', 8, 3, 29, 4, 1, 'auctor@sapienNuncpulvinar.co.uk', 'KLF62LFS1HI', 21, 8),
( null, 'Clinton', 'Wilkins', '96577061309', '524498-6138', 8, 3, 29, 5, 1, 'pretium@nequetellus.co.uk', 'YYL25XJD1QV', 21, 8),
( null, 'Breanna', 'Wiggins', '78567644068', '582569-1511', 7, 3, 29, 6, 1, 'laoreet@etlacinia.edu', 'MPR58FMW5YH', 21, 8),
( null, 'Declan', 'Matthews', '57484857372', '004295-8272', 7, 3, 29, 4, 1, 'nec.tempus.scelerisque@Curae.edu', 'JLP65EHQ2TV', 21, 8),
( null, 'Mason', 'Holcomb', '07264315758', '603758-0815', 7, 3, 29, 5, 1, 'tempus@euismodetcommodo.net', 'NZF61QMC9HW', 21, 8),
( null, 'Ezra', 'Swanson', '76641612070', '492956-2181', 7, 3, 29, 6, 1, 'risus.a@Nuncullamcorper.co.uk', 'SBB02LBU5CV', 21, 8),
( null, 'Otto', 'Delgado', '07495055406', '118145-7167', 4, 1, 29, 2, 1, 'eu@fermentumconvallis.com', 'LEB56CTC0PH', 21, 8),
( null, 'Emmanuel', 'Duncan', '16319862609', '382773-5899', 30, 1, 30, 2, 1, 'rutrum.justo@eu.edu', 'BKX24JYM2KT', 6, 8),
( null, 'Abra', 'Morales', '33479004644', '052853-6915', 30, 2, 30, 2, 1, 'arcu.iaculis@Nullatemporaugue.ca', 'OVT00CQF9SW', 6, 8),
( null, 'Hamilton', 'Sandoval', '53459143030', '596553-0925', 30, 3, 30, 2, 1, 'Vivamus@Proin.net', 'ZXH98RRB2LL', 6, 8),
( null, 'Wyoming', 'Moody', '86087793312', '952793-7396', 30, 3, 30, 2, 1, 'dolor@semperNam.com', 'HYN70QLA8LV', 6, 8),
( null, 'Ursa', 'Leblanc', '41634238775', '445191-5765', 30, 3, 30, 2, 1, 'justo.Praesent@dictum.com', 'ABC66WGY7JE', 6, 8),
( null, 'Maris', 'Crawford', '09822631715', '228254-7575', 30, 3, 30, 2, 1, 'libero@pellentesqueafacilisis.net', 'WZL04VHB0BF', 6, 8),
( null, 'Cameran', 'Cobb', '79069298025', '953365-6501', 30, 3, 30, 2, 1, 'ut.nulla.Cras@Nunc.net', 'GKL01AJM8WV', 6, 8),
( null, 'Nathaniel', 'Blanchard', '84325400566', '054050-6334', 30, 3, 30, 2, 1, 'nec@aneque.net', 'EHQ24SKK3MF', 6, 8),
( null, 'Hedley', 'Crawford', '05533684000', '242806-8395', 30, 3, 30, 2, 1, 'sed.pede@Nuncullamcorpervelit.co.uk', 'ZMD53LCH5PW', 6, 8),
( null, 'Azalia', 'Singleton', '77467261004', '565347-0384', 30, 3, 30, 2, 1, 'feugiat@urnajusto.co.uk', 'XRP47ECR9VO', 6, 8),
( null, 'Kenneth', 'Huffman', '34489807143', '876453-5459', 3, 2, 2, 3, 1, 'ipsum.primis@velvulputateeu.edu', 'SRA27GAX6TA', 2, 8),
( null, 'Holmes', 'Potts', '80544720308', '775116-1428', 3, 3, 2, 1, 1, 'at.iaculis@elitNulla.com', 'QCT05EBR6OX', 2, 8),
( null, 'Pandora', 'Parsons', '45441554102', '144162-4119', 3, 3, 2, 1, 1, 'Curabitur@Sedeueros.co.uk', 'YZZ80DCM0XI', 2, 8),
( null, 'Rigel', 'Case', '73675500713', '122471-5654', 3, 3, 2, 2, 1, 'eu.placerat.eget@malesuadaInteger.com', 'EQD34PMQ7KI', 2, 8),
( null, 'Isabella', 'Stein', '49378712858', '978547-4439', 28, 3, 48, 12, 1, 'dolor@auctorquistristique.co.uk', 'PER53QDZ3SC', 43, 6),
( null, 'Aubrey', 'Winters', '64411776689', '434749-6798', 28, 3, 48, 12, 1, 'eget.ipsum.Suspendisse@sapien.co.uk', 'KQT75ODZ8AM', 43, 7),
( null, 'Delilah', 'Cross', '34461642195', '968252-3072', 29, 3, 48, 12, 1, 'sit.amet@sapien.ca', 'VCI70LCR2MW', 43, 8),
( null, 'Emerald', 'Garcia', '61964505140', '383646-8078', 31, 3, 48, 12, 1, 'nascetur.ridiculus.mus@Nuncpulvinar.org', 'MPH07JIE6EO', 43, 7),
( null, 'Bert', 'Dickerson', '28648281380', '846836-1103', 32, 1, 48, 12, 1, 'aliquet.lobortis.nisi@Suspendisse.com', 'OCQ18FSP9ZX', 43, 7),
( null, 'Shad', 'Summers', '45338421359', '112150-0142', 42, 3, 48, 12, 1, 'tristique.aliquet@arcuetpede.com', 'DXC46WGE3TU', 43, 8),
( null, 'Kirby', 'Sweeney', '32051218997', '702913-1211', 28, 3, 48, 12, 1, 'magna@aliquetnec.ca', 'WNT10ZXL5JC', 43, 8),
( null, 'Chelsea', 'Hewitt', '63575805117', '076794-9746', 36, 2, 52, 3, 1, 'velit.Sed.malesuada@Integereu.org', 'ZXL26NNQ1NU', 12, 8),
( null, 'Carly', 'Pennington', '43112805721', '057461-9078', 36, 1, 52, 3, 1, 'ut.ipsum@nonhendreritid.ca', 'VHJ19MJT4JG', 12, 8),
( null, 'Hashim', 'Bradshaw', '40694215999', '977224-7376', 36, 3, 52, 3, 1, 'nibh@adipiscingelitEtiam.ca', 'GYX79CCQ0TT', 12, 8),
( null, 'Graiden', 'Jacobs', '74075366351', '735914-1780', 36, 3, 52, 3, 1, 'mi.lorem@adipiscingelit.co.uk', 'MBU68LFM0CC', 12, 8),
( null, 'Ann', 'Ramsey', '93325131800', '958871-2449', 36, 3, 52, 3, 1, 'faucibus@Nulla.ca', 'OXF59KPM6SN', 12, 8),
( null, 'Karyn', 'Snyder', '60594982133', '165460-0483', 36, 3, 52, 3, 1, 'ante.Nunc.mauris@vehiculaPellentesque.edu', 'AWE52PCF5JX', 12, 8),
( null, 'Gavin', 'Bryant', '21785123727', '193023-9817', 36, 3, 52, 3, 1, 'ornare.lectus.justo@ascelerisquesed.co.uk', 'CTO18HUX5XL', 12, 8),
( null, 'Quail', 'Bean', '75971012520', '843387-9395', 36, 3, 52, 3, 1, 'sed.dictum@semelitpharetra.edu', 'TJD11LEY8GM', 12, 8),
( null, 'Tasha', 'Talley', '00793202283', '558470-2228', 36, 3, 52, 3, 1, 'lorem.luctus.ut@Phasellus.com', 'YKL96UVU5PG', 12, 8),
( null, 'Ralph', 'Marshall', '66765917904', '679386-9444', 36, 3, 52, 3, 1, 'magnis@imperdietnonvestibulum.edu', 'RXY69TTY8WB', 12, 8),
( null, 'Cecilia', 'Hancock', '36476274025', '344137-7581', 17, 1, 61, 17, 1, 'quis.diam@iaculis.org', 'YIL68RNI4OS', 44, 8),
( null, 'Mannix', 'Oneill', '72130895600', '394499-8198', 17, 2, 61, 17, 1, 'at.egestas.a@nislNulla.org', 'VFB72XZV0RT', 44, 8),
( null, 'Owen', 'Anderson', '41174148522', '847573-3286', 17, 3, 61, 17, 1, 'elit.Nulla@turpis.com', 'CAI32EPE2SV', 44, 8),
( null, 'Uriel', 'Avery', '37714689650', '923836-7727', 17, 3, 61, 17, 1, 'hendrerit@loremacrisus.net', 'EJM23BHY1QE', 44, 8),
( null, 'Burton', 'English', '25546776032', '045124-5237', 9, 3, 2, 1, 1, 'dis.parturient@Namligula.com', 'PAH94IHD0EM', 2, 8),
( null, 'Rinah', 'Sharpe', '21875496909', '434780-4595', 9, 3, 2, 1, 1, 'pede@massaSuspendisse.net', 'HWA81TRP8VL', 2, 8),
( null, 'Jaime', 'Sweet', '81797813805', '167265-3480', 9, 3, 2, 2, 1, 'quam@disparturient.ca', 'DIH45PGT3JX', 2, 8),
( null, 'Oliver', 'Hinton', '74884307603', '873576-8080', 9, 3, 2, 2, 1, 'ut.dolor@egetmetusIn.com', 'ETG76WTE1HW', 2, 8),
( null, 'Mannix', 'Sanchez', '30847144286', '819930-9397', 9, 3, 2, 3, 1, 'id.risus.quis@Pellentesquehabitantmorbi.org', 'HWP07NGM0EW', 2, 8),
( null, 'Harriet', 'Tran', '25749297487', '669246-5450', 9, 3, 2, 3, 1, 'Aliquam.rutrum.lorem@Phasellus.co.uk', 'WYO64XBC0GY', 2, 8),
( null, 'Fletcher', 'Mckay', '63964701109', '538124-5447', 11, 1, 71, 2, 1, 'Proin.ultrices@Sed.ca', 'UGV39GFO3XM', 2, 8),
( null, 'Shea', 'Chavez', '05427204508', '834895-1651', 5, 3, 6, 2, 1, 'auctor.velit@vitaedolorDonec.org', 'PWE26HKF5XM', 3, 8),
( null, 'Keiko', 'Small', '43804632490', '103389-4070', 9, 3, 6, 2, 1, 'nunc.risus@sodales.com', 'VAV35KTQ3XP', 3, 8),
( null, 'Jared', 'Neal', '75966848663', '523372-9473', 8, 3, 5, 4, 1, 'in.consectetuer.ipsum@ornareFuscemollis.co.uk', 'FNB53MKU8BM', 3, 8),
( null, 'Violet', 'Berg', '02367284744', '678861-8038', 6, 3, 5, 5, 1, 'in.faucibus.orci@variusorci.net', 'SUQ13SUZ6KV', 3, 8),
( null, 'Dean', 'Murray', '53964546286', '786678-5731', 7, 3, 5, 6, 1, 'consectetuer.adipiscing@tristiqueaceleifend.net', 'FTO28SCR0AL', 3, 8),
( null, 'Carly', 'Rosa', '06201369952', '716154-7158', 31, 1, 77, 2, 1, 'vitae@euismodest.edu', 'JEF52LLT8CM', 16, 8),
( null, 'Suki', 'Bauer', '48941498425', '497522-3050', 31, 3, 77, 2, 1, 'iaculis@lectus.org', 'BHF29GWM9KK', 16, 8),
( null, 'Barrett', 'Compton', '80147518171', '045044-5028', 32, 1, 79, 2, 1, 'non@in.edu', 'KGF83TOA8GJ', 16, 8),
( null, 'Anthony', 'Chaney', '43446388166', '926165-8125', 32, 3, 79, 2, 1, 'Duis.sit.amet@nunc.com', 'KXR51FVY9WK', 16, 8),
( null, 'Gemma', 'Henry', '93293829670', '629825-8028', 32, 3, 79, 2, 1, 'mauris.aliquam.eu@Maurisutquam.edu', 'KRQ80PNU0FC', 16, 8),
( null, 'Hoyt', 'Johnson', '77751619307', '606232-8882', 37, 3, 11, 2, 1, 'dui.quis.accumsan@variusNamporttitor.net', 'JWC85PSG2BK', 16, 8),
( null, 'Geoffrey', 'Perkins', '41168812521', '918953-0752', 37, 3, 11, 2, 1, 'bibendum.sed.est@ataugue.net', 'USK80SFV3ZF', 16, 8),
( null, 'Abdul', 'Marks', '03477429710', '694143-2558', 11, 2, 71, 2, 1, 'molestie@loremac.org', 'PQV97FWH7OW', 2, 8),
( null, 'Sigourney', 'Giles', '45198250670', '376509-2329', 11, 3, 71, 2, 1, 'Phasellus.libero.mauris@suscipitnonummyFusce.org', 'LHJ90IOP0OQ', 2, 8),
( null, 'Gwendolyn', 'Miranda', '89773780443', '317544-5281', 11, 3, 71, 2, 1, 'dictum.placerat@posuere.net', 'BQC97PEI5DR', 2, 8),
( null, 'Yoshi', 'Roth', '98826086393', '416300-7737', 10, 1, 87, 2, 1, 'Nunc@eget.edu', 'GCK48KNS4TS', 2, 8),
( null, 'Kai', 'Valenzuela', '26270444787', '349661-8319', 10, 3, 87, 2, 1, 'ut.mi.Duis@aliquamiaculislacus.com', 'QEI71DHK5FG', 2, 8),
( null, 'Zane', 'Horne', '69929262762', '986128-1997', 10, 3, 87, 2, 1, 'dolor.Fusce@libero.com', 'CNE11RII2TA', 2, 8),
( null, 'Kennedy', 'Dean', '69243979483', '492073-4219', 14, 1, 90, 2, 1, 'eleifend.nunc@atiaculis.edu', 'FCG84YWD8VV', 2, 8),
( null, 'Rhonda', 'Stout', '75389375609', '396101-0265', 14, 2, 90, 2, 1, 'egestas.Sed@eleifend.co.uk', 'UHU10XTI9IR', 2, 8),
( null, 'Hiram', 'Richard', '91450274550', '563466-0277', 22, 3, 11, 2, 1, 'nascetur.ridiculus@sempertellusid.ca', 'PAX52AQV9GF', 16, 8),
( null, 'Darius', 'Collier', '56654649610', '853848-6427', 22, 3, 11, 2, 1, 'aliquam@metusAliquamerat.org', 'OPA12ZTE2GT', 16, 8),
( null, 'Mark', 'Pierce', '11469087415', '704267-1573', 10, 1, 94, 2, 1, 'enim.sit@Maurismagna.ca', 'HBN57XAQ2IJ', 16, 8),
( null, 'Aubrey', 'Hawkins', '40035652404', '154665-4367', 10, 3, 94, 2, 1, 'ac.tellus@pedeCrasvulputate.edu', 'BRA32IFX3JH', 16, 8),
( null, 'Lacota', 'Richmond', '30617463237', '355374-1616', 10, 3, 94, 2, 1, 'pretium.neque@semper.ca', 'SEB97WEU1BN', 16, 8),
( null, 'Abdul', 'Pace', '10215083062', '715890-3349', 27, 3, 94, 2, 1, 'Maecenas.mi@ametorci.org', 'KXA35HUR7ZI', 16, 8),
( null, 'Rachel', 'Garcia', '88833107483', '354277-7614', 27, 3, 94, 2, 1, 'aliquam.eu.accumsan@vitaealiquetnec.com', 'PGR69QET6KX', 16, 8),
( null, 'Avram', 'Willis', '59739430207', '977746-0560', 14, 3, 90, 2, 1, 'egestas.Aliquam@amagnaLorem.org', 'JYD46EAK2SJ', 2, 8),
( null, 'Irma', 'Durham', '23490137238', '074881-3029', 14, 3, 90, 2, 1, 'in@ullamcorper.co.uk', 'HQD72PWV9VC', 2, 8),
( null, 'Alisa', 'Dorsey', '71695156288', '844019-9787', 14, 3, 90, 2, 1, 'Ut.semper@cursusnonegestas.net', 'KPL09WEG4OP', 2, 8),
( null, 'Mannix', 'Puckett', '26978090746', '429262-4873', 15, 2, 2, 1, 1, 'magna@ipsum.co.uk', 'OMA64GWS5ZU', 2, 8),
( null, 'Bert', 'Wagner', '14118410939', '878668-5050', 15, 3, 2, 1, 1, 'auctor.odio.a@viverraMaecenas.net', 'KLG26CSY4HU', 2, 8),
( null, 'Tucker', 'Serrano', '32440964682', '388789-9080', 28, 2, 2, 3, 1, 'Phasellus.at@penatibuset.com', 'BBH98XGY5CP', 2, 8),
( null, 'Sharon', 'Dillard', '10346325079', '636927-0472', 28, 3, 2, 2, 1, 'lorem.tristique.aliquet@Aliquamvulputateullamcorper.ca', 'SBD43MON1XI', 2, 8),
( null, 'Jessamine', 'Cooley', '32793199439', '919439-2784', 28, 3, 2, 1, 1, 'consequat.lectus.sit@Cumsociis.com', 'SZA36MIJ2FQ', 2, 8),
( null, 'Bell', 'Morin', '20950931604', '184753-2494', 25, 2, 71, 2, 1, 'sociis.natoque.penatibus@erat.net', 'ORG59LLD2TC', 2, 8),
( null, 'Ezekiel', 'Jefferson', '73160651849', '284832-3974', 25, 3, 71, 2, 1, 'enim@elitAliquamauctor.ca', 'JPZ35TGL7JJ', 2, 8),
( null, 'Jescie', 'Mcfarland', '65787505173', '304063-4184', 25, 3, 71, 2, 1, 'aliquet.metus@aliquam.edu', 'SAS59TAX4YW', 2, 8);
