set timing on
spool load_data.log
 
truncate table h_lineitem;
truncate table h_order;
truncate table h_part;
truncate table h_customer;
truncate table h_nation;
truncate table h_region;
truncate table h_partsupp;
truncate table h_supplier;
alter session enable parallel dml;


INSERT INTO H_REGION VALUES (0,'AFRICA','lar deposits. blithely final packages cajole. regular waters are final requests. regular accounts are according to ');
INSERT INTO H_REGION VALUES (1,'AMERICA','hs use ironic, even requests. s');
INSERT INTO H_REGION VALUES (2,'ASIA','ges. thinly even pinto beans ca');
INSERT INTO H_REGION VALUES (3,'EUROPE','ly final courts cajole furiously final excuse');
INSERT INTO H_REGION VALUES (4,'MIDDLE EAST','uickly special accounts cajole carefully blithely close requests. carefully final asymptotes haggle furiousl');



INSERT INTO H_NATION VALUES (0,'ALGERIA',0,' haggle. carefully final deposits detect slyly agai');
INSERT INTO H_NATION VALUES (1,'ARGENTINA',1,'al foxes promise slyly according to the regular accounts. bold requests alon');
INSERT INTO H_NATION VALUES (2,'BRAZIL',1,'y alongside of the pending deposits. carefully special packages are about the ironic forges. slyly special ');
INSERT INTO H_NATION VALUES (3,'CANADA',1,'eas hang ironic, silent packages. slyly regular packages are furiously over the tithes. fluffily bold');
INSERT INTO H_NATION VALUES (4,'EGYPT',4,'y above the carefully unusual theodolites. final dugouts are quickly across the furiously regular d');
INSERT INTO H_NATION VALUES (5,'ETHIOPIA',0,'ven packages wake quickly. regu');
INSERT INTO H_NATION VALUES (6,'FRANCE',3,'refully final requests. regular, ironi');
INSERT INTO H_NATION VALUES (7,'GERMANY',3,'l platelets. regular accounts x-ray: unusual, regular acco');
INSERT INTO H_NATION VALUES (8,'INDIA',2,'ss excuses cajole slyly across the packages. deposits print aroun');
INSERT INTO H_NATION VALUES (9,'INDONESIA',2,' slyly express asymptotes. regular deposits haggle slyly. carefully ironic hockey players sleep blithely. carefull');
INSERT INTO H_NATION VALUES (10,'IRAN',4,'efully alongside of the slyly final dependencies. ');
INSERT INTO H_NATION VALUES (11,'IRAQ',4,'nic deposits boost atop the quickly final requests? quickly regula');
INSERT INTO H_NATION VALUES (12,'JAPAN',2,'ously. final, express gifts cajole a');
INSERT INTO H_NATION VALUES (13,'JORDAN',4,'ic deposits are blithely about the carefully regular pa');
INSERT INTO H_NATION VALUES (14,'KENYA',0,' pending excuses haggle furiously deposits. pending, express pinto beans wake fluffily past t');
INSERT INTO H_NATION VALUES (15,'MOROCCO',0,'rns. blithely bold courts among the closely regular packages use furiously bold platelets?');
INSERT INTO H_NATION VALUES (16,'MOZAMBIQUE',0,'s. ironic, unusual asymptotes wake blithely r');
INSERT INTO H_NATION VALUES (17,'PERU',1,'platelets. blithely pending dependencies use fluffily across the even pinto beans. carefully silent accoun');
INSERT INTO H_NATION VALUES (18,'CHINA',2,'c dependencies. furiously express notornis sleep slyly regular accounts. ideas sleep. depos');
INSERT INTO H_NATION VALUES (19,'ROMANIA',3,'ular asymptotes are about the furious multipliers. express dependencies nag above the ironically ironic account');
INSERT INTO H_NATION VALUES (20,'SAUDI ARABIA',4,'ts. silent requests haggle. closely express packages sleep across the blithely');
INSERT INTO H_NATION VALUES (21,'VIETNAM',2,'hely enticingly express accounts. even, final ');
INSERT INTO H_NATION VALUES (22,'RUSSIA',3,' requests against the platelets use never according to the quickly regular pint');
INSERT INTO H_NATION VALUES (23,'UNITED KINGDOM',3,'eans boost carefully special requests. accounts are. carefull');
INSERT INTO H_NATION VALUES (24,'UNITED STATES',1,'y final packages. slow foxes cajole quickly. quickly silent platelets breach ironic accounts. unusual pinto be');


INSERT INTO H_CUSTOMER VALUES (1,'Customer#000000001','IVhzIApeRb ot,c,E','15','25-989-741-2988','711.56','BUILDING','to the even, regular platelets. regular, ironic epitaphs nag e');
INSERT INTO H_CUSTOMER VALUES (2,'Customer#000000002','XSTf4,NCwDVaWNe6tEgvwfmRchLXak','13','23-768-687-3665','121.65','AUTOMOBILE','l accounts. blithely ironic theodolites integrate boldly: caref');
INSERT INTO H_CUSTOMER VALUES (3,'Customer#000000003','MG9kdTD2WBHm','1','11-719-748-3364','7498.12','AUTOMOBILE',' deposits eat slyly ironic, even instructions. express foxes detect slyly. blithely even accounts abov');
INSERT INTO H_CUSTOMER VALUES (4,'Customer#000000004','XxVSJsLAGtn','4','14-128-190-5944','2866.83','MACHINERY',' requests. final, regular ideas sleep final accou');
INSERT INTO H_CUSTOMER VALUES (5,'Customer#000000005','KvpyuHCplrB84WgAiGV6sYpZq7Tj','3','13-750-942-6364','794.47','HOUSEHOLD','n accounts will have to unwind. foxes cajole accor');
INSERT INTO H_CUSTOMER VALUES (6,'Customer#000000006','sKZz0CsnMD7mp4Xd0YrBvx,LREYKUWAh yVn','20','30-114-968-4951','7638.57','AUTOMOBILE','tions. even deposits boost according to the slyly bold packages. final accounts cajole requests. furious');
INSERT INTO H_CUSTOMER VALUES (7,'Customer#000000007','TcGe5gaZNgVePxU5kRrvXBfkasDTea','18','28-190-982-9759','9561.95','AUTOMOBILE','ainst the ironic, express theodolites. express, even pinto beans among the exp');
INSERT INTO H_CUSTOMER VALUES (8,'Customer#000000008','I0B10bB0AymmC, 0PrRYBCP1yGJ8xcBPmWhl5','17','27-147-574-9335','6819.74','BUILDING','among the slyly regular theodolites kindle blithely courts. carefully even theodolites haggle slyly along the ide');
INSERT INTO H_CUSTOMER VALUES (9,'Customer#000000009','xKiAFTjUsCuxfeleNqefumTrjS','8','18-338-906-3675','8324.07','FURNITURE','r theodolites according to the requests wake thinly excuses: pending requests haggle furiousl');
INSERT INTO H_CUSTOMER VALUES (10,'Customer#000000010','6LrEaV6KR6PLVcgl2ArL Q3rqzLzcT1 v2','5','15-741-346-9870','2753.54','HOUSEHOLD','es regular deposits haggle. fur');
INSERT INTO H_CUSTOMER VALUES (11,'Customer#000000011','PkWS 3HlXqwTuzrKg633BEi','23','33-464-151-3439','-272.60','BUILDING','ckages. requests sleep slyly. quickly even pinto beans promise above the slyly regular pinto beans. ');
INSERT INTO H_CUSTOMER VALUES (12,'Customer#000000012','9PWKuhzT4Zr1Q','13','23-791-276-1263','3396.49','HOUSEHOLD',' to the carefully final braids. blithely regular requests nag. ironic theodolites boost quickly along');
INSERT INTO H_CUSTOMER VALUES (13,'Customer#000000013','nsXQu0oVjD7PM659uC3SRSp','3','13-761-547-5974','3857.34','BUILDING','ounts sleep carefully after the close frays. carefully bold notornis use ironic requests. blithely');
INSERT INTO H_CUSTOMER VALUES (14,'Customer#000000014','KXkletMlL2JQEA ','1','11-845-129-3851','5266.30','FURNITURE',', ironic packages across the unus');
INSERT INTO H_CUSTOMER VALUES (15,'Customer#000000015','YtWggXoOLdwdo7b0y,BZaGUQMLJMX1Y,EC,6Dn','23','33-687-542-7601','2788.52','HOUSEHOLD',' platelets. regular deposits detect asymptotes. blithely unusual packages nag slyly at the fluf');
INSERT INTO H_CUSTOMER VALUES (16,'Customer#000000016','cYiaeMLZSMAOQ2 d0W,','10','20-781-609-3107','4681.03','FURNITURE','kly silent courts. thinly regular theodolites sleep fluffily after ');
INSERT INTO H_CUSTOMER VALUES (17,'Customer#000000017','izrh 6jdqtp2eqdtbkswDD8SG4SzXruMfIXyR7','2','12-970-682-3487','6.34','AUTOMOBILE','packages wake! blithely even pint');
INSERT INTO H_CUSTOMER VALUES (18,'Customer#000000018','3txGO AiuFux3zT0Z9NYaFRnZt','6','16-155-215-1315','5494.43','BUILDING','s sleep. carefully even instructions nag furiously alongside of t');
INSERT INTO H_CUSTOMER VALUES (19,'Customer#000000019','uc,3bHIx84H,wdrmLOjVsiqXCq2tr','18','28-396-526-5053','8914.71','HOUSEHOLD',' nag. furiously careful packages are slyly at the accounts. furiously regular in');
INSERT INTO H_CUSTOMER VALUES (20,'Customer#000000020','JrPk8Pqplj4Ne','22','32-957-234-8742','7603.40','FURNITURE','g alongside of the special excuses-- fluffily enticing packages wake ');
INSERT INTO H_CUSTOMER VALUES (21,'Customer#000000021','XYmVpr9yAHDEn','8','18-902-614-8344','1428.25','MACHINERY',' quickly final accounts integrate blithely furiously u');
INSERT INTO H_CUSTOMER VALUES (22,'Customer#000000022','QI6p41,FNs5k7RZoCCVPUTkUdYpB','3','13-806-545-9701','591.98','MACHINERY','s nod furiously above the furiously ironic ideas. ');
INSERT INTO H_CUSTOMER VALUES (23,'Customer#000000023','OdY W13N7Be3OC5MpgfmcYss0Wn6TKT','3','13-312-472-8245','3332.02','HOUSEHOLD','deposits. special deposits cajole slyly. fluffily special deposits about the furiously ');
INSERT INTO H_CUSTOMER VALUES (24,'Customer#000000024','HXAFgIAyjxtdqwimt13Y3OZO 4xeLe7U8PqG','13','23-127-851-8031','9255.67','MACHINERY','into beans. fluffily final ideas haggle fluffily');
INSERT INTO H_CUSTOMER VALUES (25,'Customer#000000025','Hp8GyFQgGHFYSilH5tBfe','12','22-603-468-3533','7133.70','FURNITURE','y. accounts sleep ruthlessly according to the regular theodolites. unusual instructions sleep. ironic, final');
INSERT INTO H_CUSTOMER VALUES (26,'Customer#000000026','8ljrc5ZeMl7UciP','22','32-363-455-4837','5182.05','AUTOMOBILE','c requests use furiously ironic requests. slyly ironic dependencies us');
INSERT INTO H_CUSTOMER VALUES (27,'Customer#000000027','IS8GIyxpBrLpMT0u7','3','13-137-193-2709','5679.84','BUILDING',' about the carefully ironic pinto beans. accoun');
INSERT INTO H_CUSTOMER VALUES (28,'Customer#000000028','iVyg0daQ,Tha8x2WPWA9m2529m','8','18-774-241-1462','1007.18','FURNITURE',' along the regular deposits. furiously final pac');
INSERT INTO H_CUSTOMER VALUES (29,'Customer#000000029','sJ5adtfyAkCK63df2,vF25zyQMVYE34uh','0','10-773-203-7342','7618.27','FURNITURE','its after the carefully final platelets x-ray against ');
INSERT INTO H_CUSTOMER VALUES (30,'Customer#000000030','nJDsELGAavU63Jl0c5NKsKfL8rIJQQkQnYL2QJY','1','11-764-165-5076','9321.01','BUILDING','lithely final requests. furiously unusual account');
INSERT INTO H_CUSTOMER VALUES (31,'Customer#000000031','LUACbO0viaAv6eXOAebryDB xjVst','23','33-197-837-7094','5236.89','HOUSEHOLD','s use among the blithely pending depo');
INSERT INTO H_CUSTOMER VALUES (32,'Customer#000000032','jD2xZzi UmId,DCtNBLXKj9q0Tlp2iQ6ZcO3J','15','25-430-914-2194','3471.53','BUILDING','cial ideas. final, furious requests across the e');
INSERT INTO H_CUSTOMER VALUES (33,'Customer#000000033','qFSlMuLucBmx9xnn5ib2csWUweg D','17','27-375-391-1280','-78.56','AUTOMOBILE','s. slyly regular accounts are furiously. carefully pending requests');
INSERT INTO H_CUSTOMER VALUES (34,'Customer#000000034','Q6G9wZ6dnczmtOx509xgE,M2KV','15','25-344-968-5422','8589.70','HOUSEHOLD','nder against the even, pending accounts. even');
INSERT INTO H_CUSTOMER VALUES (35,'Customer#000000035','TEjWGE4nBzJL2','17','27-566-888-7431','1228.24','HOUSEHOLD','requests. special, express requests nag slyly furiousl');
INSERT INTO H_CUSTOMER VALUES (36,'Customer#000000036','3TvCzjuPzpJ0,DdJ8kW5U','21','31-704-669-5769','4987.27','BUILDING','haggle. enticing, quiet platelets grow quickly bold sheaves. carefully regular acc');
INSERT INTO H_CUSTOMER VALUES (37,'Customer#000000037','7EV4Pwh,3SboctTWt','8','18-385-235-7162','-917.75','FURNITURE','ilent packages are carefully among the deposits. furiousl');
INSERT INTO H_CUSTOMER VALUES (38,'Customer#000000038','a5Ee5e9568R8RLP 2ap7','12','22-306-880-7212','6345.11','HOUSEHOLD','lar excuses. closely even asymptotes cajole blithely excuses. carefully silent pinto beans sleep carefully fin');
INSERT INTO H_CUSTOMER VALUES (39,'Customer#000000039','nnbRg,Pvy33dfkorYE FdeZ60','2','12-387-467-6509','6264.31','AUTOMOBILE','tions. slyly silent excuses slee');
INSERT INTO H_CUSTOMER VALUES (40,'Customer#000000040','gOnGWAyhSV1ofv','3','13-652-915-8939','1335.30','BUILDING','rges impress after the slyly ironic courts. foxes are. blithely ');
INSERT INTO H_CUSTOMER VALUES (41,'Customer#000000041','IM9mzmyoxeBmvNw8lA7G3Ydska2nkZF','10','20-917-711-4011','270.95','HOUSEHOLD','ly regular accounts hang bold, silent packages. unusual foxes haggle slyly above the special, final depo');
INSERT INTO H_CUSTOMER VALUES (42,'Customer#000000042','ziSrvyyBke','5','15-416-330-4175','8727.01','BUILDING','ssly according to the pinto beans: carefully special requests across the even, pending accounts wake special');
INSERT INTO H_CUSTOMER VALUES (43,'Customer#000000043','ouSbjHk8lh5fKX3zGso3ZSIj9Aa3PoaFd','19','29-316-665-2897','9904.28','MACHINERY','ial requests: carefully pending foxes detect quickly. carefully final courts cajole quickly. carefully');
INSERT INTO H_CUSTOMER VALUES (44,'Customer#000000044','Oi,dOSPwDu4jo4x,,P85E0dmhZGvNtBwi','16','26-190-260-5375','7315.94','AUTOMOBILE','r requests around the unusual, bold a');
INSERT INTO H_CUSTOMER VALUES (45,'Customer#000000045','4v3OcpFgoOmMG,CbnF,4mdC','9','19-715-298-9917','9983.38','AUTOMOBILE','nto beans haggle slyly alongside of t');
INSERT INTO H_CUSTOMER VALUES (46,'Customer#000000046','eaTXWWm10L9','6','16-357-681-2007','5744.59','AUTOMOBILE','ctions. accounts sleep furiously even requests. regular, regular accounts cajole blithely around the final pa');
INSERT INTO H_CUSTOMER VALUES (47,'Customer#000000047','b0UgocSqEW5 gdVbhNT','2','12-427-271-9466','274.58','BUILDING','ions. express, ironic instructions sleep furiously ironic ideas. furi');
INSERT INTO H_CUSTOMER VALUES (48,'Customer#000000048','0UU iPhBupFvemNB','0','10-508-348-5882','3792.50','BUILDING','re fluffily pending foxes. pending, bold platelets sleep slyly. even platelets cajo');
INSERT INTO H_CUSTOMER VALUES (49,'Customer#000000049','cNgAeX7Fqrdf7HQN9EwjUa4nxT,68L FKAxzl','10','20-908-631-4424','4573.94','FURNITURE','nusual foxes! fluffily pending packages maintain to the regular ');
INSERT INTO H_CUSTOMER VALUES (50,'Customer#000000050','9SzDYlkzxByyJ1QeTI o','6','16-658-112-3221','4266.13','MACHINERY','ts. furiously ironic accounts cajole furiously slyly ironic dinos.');
INSERT INTO H_CUSTOMER VALUES (51,'Customer#000000051','uR,wEaiTvo4','12','22-344-885-4251','855.87','FURNITURE','eposits. furiously regular requests integrate carefully packages. furious');
INSERT INTO H_CUSTOMER VALUES (52,'Customer#000000052','7 QOqGqqSy9jfV51BC71jcHJSD0','11','21-186-284-5998','5630.28','HOUSEHOLD','ic platelets use evenly even accounts. stealthy theodolites cajole furiou');
INSERT INTO H_CUSTOMER VALUES (53,'Customer#000000053','HnaxHzTfFTZs8MuCpJyTbZ47Cm4wFOOgib','15','25-168-852-5363','4113.64','HOUSEHOLD','ar accounts are. even foxes are blithely. fluffily pending deposits boost');
INSERT INTO H_CUSTOMER VALUES (54,'Customer#000000054',',k4vf 5vECGWFy,hosTE,','4','14-776-370-4745','868.90','AUTOMOBILE','sual, silent accounts. furiously express accounts cajole special deposits. final, final accounts use furi');
INSERT INTO H_CUSTOMER VALUES (55,'Customer#000000055','zIRBR4KNEl HzaiV3a i9n6elrxzDEh8r8pDom','10','20-180-440-8525','4572.11','MACHINERY','ully unusual packages wake bravely bold packages. unusual requests boost deposits! blithely ironic packages ab');
INSERT INTO H_CUSTOMER VALUES (56,'Customer#000000056','BJYZYJQk4yD5B','10','20-895-685-6920','6530.86','FURNITURE','. notornis wake carefully. carefully fluffy requests are furiously even accounts. slyly expre');
INSERT INTO H_CUSTOMER VALUES (57,'Customer#000000057','97XYbsuOPRXPWU','21','31-835-306-1650','4151.93','AUTOMOBILE','ove the carefully special packages. even, unusual deposits sleep slyly pend');
INSERT INTO H_CUSTOMER VALUES (58,'Customer#000000058','g9ap7Dk1Sv9fcXEWjpMYpBZIRUohi T','13','23-244-493-2508','6478.46','HOUSEHOLD','ideas. ironic ideas affix furiously express, final instructions. regular excuses use quickly e');
INSERT INTO H_CUSTOMER VALUES (59,'Customer#000000059','zLOCP0wh92OtBihgspOGl4','1','11-355-584-3112','3458.60','MACHINERY','ously final packages haggle blithely after the express deposits. furiou');
INSERT INTO H_CUSTOMER VALUES (60,'Customer#000000060','FyodhjwMChsZmUz7Jz0H','12','22-480-575-5866','2741.87','MACHINERY','latelets. blithely unusual courts boost furiously about the packages. blithely final instruct');
INSERT INTO H_CUSTOMER VALUES (61,'Customer#000000061','9kndve4EAJxhg3veF BfXr7AqOsT39o gtqjaYE','17','27-626-559-8599','1536.24','FURNITURE','egular packages shall have to impress along the ');
INSERT INTO H_CUSTOMER VALUES (62,'Customer#000000062','upJK2Dnw13,','7','17-361-978-7059','595.61','MACHINERY','kly special dolphins. pinto beans are slyly. quickly regular accounts are furiously a');
INSERT INTO H_CUSTOMER VALUES (63,'Customer#000000063','IXRSpVWWZraKII','21','31-952-552-9584','9331.13','AUTOMOBILE','ithely even accounts detect slyly above the fluffily ir');
INSERT INTO H_CUSTOMER VALUES (64,'Customer#000000064','MbCeGY20kaKK3oalJD,OT','3','13-558-731-7204','-646.64','BUILDING','structions after the quietly ironic theodolites cajole be');
INSERT INTO H_CUSTOMER VALUES (65,'Customer#000000065','RGT yzQ0y4l0H90P783LG4U95bXQFDRXbWa1sl,X','23','33-733-623-5267','8795.16','AUTOMOBILE','y final foxes serve carefully. theodolites are carefully. pending i');
INSERT INTO H_CUSTOMER VALUES (66,'Customer#000000066','XbsEqXH1ETbJYYtA1A','22','32-213-373-5094','242.77','HOUSEHOLD','le slyly accounts. carefully silent packages benea');
INSERT INTO H_CUSTOMER VALUES (67,'Customer#000000067','rfG0cOgtr5W8 xILkwp9fpCS8','9','19-403-114-4356','8166.59','MACHINERY','indle furiously final, even theodo');
INSERT INTO H_CUSTOMER VALUES (68,'Customer#000000068','o8AibcCRkXvQFh8hF,7o','12','22-918-832-2411','6853.37','HOUSEHOLD',' pending pinto beans impress realms. final dependencies ');
INSERT INTO H_CUSTOMER VALUES (69,'Customer#000000069','Ltx17nO9Wwhtdbe9QZVxNgP98V7xW97uvSH1prEw','9','19-225-978-5670','1709.28','HOUSEHOLD','thely final ideas around the quickly final dependencies affix carefully quickly final theodolites. final accounts c');
INSERT INTO H_CUSTOMER VALUES (70,'Customer#000000070','mFowIuhnHjp2GjCiYYavkW kUwOjIaTCQ','22','32-828-107-2832','4867.52','FURNITURE','fter the special asymptotes. ideas after the unusual frets cajole quickly regular pinto be');
INSERT INTO H_CUSTOMER VALUES (71,'Customer#000000071','TlGalgdXWBmMV,6agLyWYDyIz9MKzcY8gl,w6t1B','7','17-710-812-5403','-611.19','HOUSEHOLD','g courts across the regular, final pinto beans are blithely pending ac');
INSERT INTO H_CUSTOMER VALUES (72,'Customer#000000072','putjlmskxE,zs,HqeIA9Wqu7dhgH5BVCwDwHHcf','2','12-759-144-9689','-362.86','FURNITURE','ithely final foxes sleep always quickly bold accounts. final wat');
INSERT INTO H_CUSTOMER VALUES (73,'Customer#000000073','8IhIxreu4Ug6tt5mog4','0','10-473-439-3214','4288.50','BUILDING','usual, unusual packages sleep busily along the furiou');
INSERT INTO H_CUSTOMER VALUES (74,'Customer#000000074','IkJHCA3ZThF7qL7VKcrU nRLl,kylf ','4','14-199-862-7209','2764.43','MACHINERY','onic accounts. blithely slow packages would haggle carefully. qui');
INSERT INTO H_CUSTOMER VALUES (75,'Customer#000000075','Dh 6jZ,cwxWLKQfRKkiGrzv6pm','18','28-247-803-9025','6684.10','AUTOMOBILE',' instructions cajole even, even deposits. finally bold deposits use above the even pains. slyl');
INSERT INTO H_CUSTOMER VALUES (76,'Customer#000000076','m3sbCvjMOHyaOofH,e UkGPtqc4','0','10-349-718-3044','5745.33','FURNITURE','pecial deposits. ironic ideas boost blithely according to the closely ironic theodolites! furiously final deposits n');
INSERT INTO H_CUSTOMER VALUES (77,'Customer#000000077','4tAE5KdMFGD4byHtXF92vx','17','27-269-357-4674','1738.87','BUILDING','uffily silent requests. carefully ironic asymptotes among the ironic hockey players are carefully bli');
INSERT INTO H_CUSTOMER VALUES (78,'Customer#000000078','HBOta,ZNqpg3U2cSL0kbrftkPwzX','9','19-960-700-9191','7136.97','FURNITURE','ests. blithely bold pinto beans h');
INSERT INTO H_CUSTOMER VALUES (79,'Customer#000000079','n5hH2ftkVRwW8idtD,BmM2','15','25-147-850-4166','5121.28','MACHINERY','es. packages haggle furiously. regular, special requests poach after the quickly express ideas. blithely pending re');
INSERT INTO H_CUSTOMER VALUES (80,'Customer#000000080','K,vtXp8qYB ','0','10-267-172-7101','7383.53','FURNITURE','tect among the dependencies. bold accounts engage closely even pinto beans. ca');
INSERT INTO H_CUSTOMER VALUES (81,'Customer#000000081','SH6lPA7JiiNC6dNTrR','20','30-165-277-3269','2023.71','BUILDING','r packages. fluffily ironic requests cajole fluffily. ironically regular theodolit');
INSERT INTO H_CUSTOMER VALUES (82,'Customer#000000082','zhG3EZbap4c992Gj3bK,3Ne,Xn','18','28-159-442-5305','9468.34','AUTOMOBILE','s wake. bravely regular accounts are furiously. regula');
INSERT INTO H_CUSTOMER VALUES (83,'Customer#000000083','HnhTNB5xpnSF20JBH4Ycs6psVnkC3RDf','22','32-817-154-4122','6463.51','BUILDING','ccording to the quickly bold warhorses. final, regular foxes integrate carefully. bold packages nag blithely ev');
INSERT INTO H_CUSTOMER VALUES (84,'Customer#000000084','lpXz6Fwr9945rnbtMc8PlueilS1WmASr CB','11','21-546-818-3802','5174.71','FURNITURE','ly blithe foxes. special asymptotes haggle blithely against the furiously regular depo');
INSERT INTO H_CUSTOMER VALUES (85,'Customer#000000085','siRerlDwiolhYR 8FgksoezycLj','5','15-745-585-8219','3386.64','FURNITURE','ronic ideas use above the slowly pendin');
INSERT INTO H_CUSTOMER VALUES (86,'Customer#000000086','US6EGGHXbTTXPL9SBsxQJsuvy','0','10-677-951-2353','3306.32','HOUSEHOLD','quests. pending dugouts are carefully aroun');
INSERT INTO H_CUSTOMER VALUES (87,'Customer#000000087','hgGhHVSWQl 6jZ6Ev','23','33-869-884-7053','6327.54','FURNITURE','hely ironic requests integrate according to the ironic accounts. slyly regular pla');
INSERT INTO H_CUSTOMER VALUES (88,'Customer#000000088','wtkjBN9eyrFuENSMmMFlJ3e7jE5KXcg','16','26-516-273-2566','8031.44','AUTOMOBILE','s are quickly above the quickly ironic instructions; even requests about the carefully final deposi');
INSERT INTO H_CUSTOMER VALUES (89,'Customer#000000089','dtR, y9JQWUO6FoJExyp8whOU','14','24-394-451-5404','1530.76','FURNITURE','counts are slyly beyond the slyly final accounts. quickly final ideas wake. r');
INSERT INTO H_CUSTOMER VALUES (90,'Customer#000000090','QxCzH7VxxYUWwfL7','16','26-603-491-1238','7354.23','BUILDING','sly across the furiously even ');
INSERT INTO H_CUSTOMER VALUES (91,'Customer#000000091','S8OMYFrpHwoNHaGBeuS6E 6zhHGZiprw1b7 q','8','18-239-400-3677','4643.14','AUTOMOBILE','onic accounts. fluffily silent pinto beans boost blithely according to the fluffily exp');
INSERT INTO H_CUSTOMER VALUES (92,'Customer#000000092','obP PULk2LH LqNF,K9hcbNqnLAkJVsl5xqSrY,','2','12-446-416-8471','1182.91','MACHINERY','. pinto beans hang slyly final deposits. ac');
INSERT INTO H_CUSTOMER VALUES (93,'Customer#000000093','EHXBr2QGdh','7','17-359-388-5266','2182.52','MACHINERY','press deposits. carefully regular platelets r');
INSERT INTO H_CUSTOMER VALUES (94,'Customer#000000094','IfVNIN9KtkScJ9dUjK3Pg5gY1aFeaXewwf','9','19-953-499-8833','5500.11','HOUSEHOLD','latelets across the bold, final requests sleep according to the fluffily bold accounts. unusual deposits amon');
INSERT INTO H_CUSTOMER VALUES (95,'Customer#000000095','EU0xvmWvOmUUn5J,2z85DQyG7QCJ9Xq7','15','25-923-255-2929','5327.38','MACHINERY','ithely. ruthlessly final requests wake slyly alongside of the furiously silent pinto beans. even the');
INSERT INTO H_CUSTOMER VALUES (96,'Customer#000000096','vWLOrmXhRR','8','18-422-845-1202','6323.92','AUTOMOBILE','press requests believe furiously. carefully final instructions snooze carefully. ');
INSERT INTO H_CUSTOMER VALUES (97,'Customer#000000097','OApyejbhJG,0Iw3j rd1M','17','27-588-919-5638','2164.48','AUTOMOBILE','haggle slyly. bold, special ideas are blithely above the thinly bold theo');
INSERT INTO H_CUSTOMER VALUES (98,'Customer#000000098','7yiheXNSpuEAwbswDW','12','22-885-845-6889','-551.37','BUILDING','ages. furiously pending accounts are quickly carefully final foxes: busily pe');
INSERT INTO H_CUSTOMER VALUES (99,'Customer#000000099','szsrOiPtCHVS97Lt','15','25-515-237-9232','4088.65','HOUSEHOLD','cajole slyly about the regular theodolites! furiously bold requests nag along the pending, regular packages. somas');
INSERT INTO H_CUSTOMER VALUES (100,'Customer#000000100','fptUABXcmkC5Wx','20','30-749-445-4907','9889.89','FURNITURE','was furiously fluffily quiet deposits. silent, pending requests boost against ');

commit;
spool off

set timing on
spool constraints.log
 
spool off;

exit;

