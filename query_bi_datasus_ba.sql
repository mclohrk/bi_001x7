

# Projeto criado por redes: @mclohrk https://github.com/mclohrk marcelo.henrik@gmail.com
# NÃO EXECUTAR TODO O ARQUIVO # NÃO EXECUTAR TODO O ARQUIVO  # NÃO  @mclohrk ODO O ARQUIVO # NÃO EXECUTAR TODO O ARQUIVO
# NÃO EXECUTAR TODO O ARQUIVO # NÃO EXECUTAR TODO O ARQUIVO  # NÃO EXECUTAR TODO O ARQUIVO # NÃO EXECUT @mclohrk ARQUIVO
# NÃO EXECUTAR TODO O @mclohrk EXECUTAR TODO O ARQUIVO  # NÃO EXECUTAR TODO O ARQUIVO # NÃO EXECUTAR T @mclohrk  ARQUIVO
# NÃO EXECUTAR TODO O ARQUIVO # NÃO EXECUTAR TODO O ARQUIVO  # NÃO EXEC @mclohrk O ARQUIVO # NÃO EXECUTAR TODO O ARQUIVO
# NÃO EXECUTAR TODO O ARQUIVO # NÃO EXECUTAR TODO O ARQUIVO  # NÃO EXECUTAR TODO O ARQUIVO # NÃO EXECUTAR TODO O ARQUIVO

# passos para criar base de dados
# Download datasus
# conversão de dbc para dbf e dbc para csv
#importação para base sql criada
# importação via conexão/exportação para Microsoft Power BI
# criação de relatórios com base importada do MYSQL
# Ao final o relatório será gerado com dados públicos do DATASUS passando pelos softwares MYSQL e Power BI 

#PROCESSO DE CARGA NA BASE DE DADOS
# Processo poderia ser feito via scrip etc. 
# Download -> conversao .dbc -> .dbf -> .csv 
#import via script sql
#Proceso  de selecao de campos (ETL) e carga em  tabela dominio
 

####################### Criação da base #######################

create database if not exists db;
use db;

####################### CRIAÇÃO TABELAS #######################
# Estado: BAHIA  UF: BA

SET SQL_SAFE_UPDATES = 0;

CREATE TABLE if not exists tabela_aih (
	`UF_ZI` MEDIUMINT NOT NULL,
	`ANO_CMPT` SMALLINT NOT NULL,
	`MES_CMPT` VARCHAR(10) NOT NULL,
	`ESPEC` VARCHAR(10) NOT NULL,
	`CGC_HOSP` VARCHAR(20) NULL,
	`N_AIH` BIGINT NOT NULL,
	`IDENT` TINYINT NOT NULL,
	`CEP` VARCHAR(10) NOT NULL,
	`MUNIC_RES` MEDIUMINT NOT NULL,
	`NASC` INT NOT NULL,
	`SEXO` TINYINT NOT NULL,
	`UTI_MES_IN` TINYINT NULL,
	`UTI_MES_AN` TINYINT NULL,
	`UTI_MES_AL` TINYINT NULL,
	`UTI_MES_TO` TINYINT NULL,
	`MARCA_UTI` VARCHAR(10) NOT NULL,
	`UTI_INT_IN` TINYINT NULL,
	`UTI_INT_AN` TINYINT NULL,
	`UTI_INT_AL` TINYINT NULL,
	`UTI_INT_TO` TINYINT NULL,
	`DIAR_ACOM` TINYINT NULL,
	`QT_DIARIAS` TINYINT NULL,
	`PROC_SOLIC` VARCHAR(10) NOT NULL,
	`PROC_REA` VARCHAR(10) NOT NULL,
	`VAL_SH` DECIMAL(20,6) NOT NULL,
	`VAL_SP` DECIMAL(20,6) NOT NULL,
	`VAL_SADT` DECIMAL(20,6) NOT NULL,
	`VAL_RN` DECIMAL(20,6) NOT NULL,
	`VAL_ACOMP` DECIMAL(20,6) NOT NULL,
	`VAL_ORTP` DECIMAL(20,6) NOT NULL,
	`VAL_SANGUE` DECIMAL(20,6) NOT NULL,
	`VAL_SADTSR` DECIMAL(20,6) NOT NULL,
	`VAL_TRANSP` DECIMAL(20,6) NOT NULL,
	`VAL_OBSANG` DECIMAL(20,6) NOT NULL,
	`VAL_PED1AC` DECIMAL(20,6) NOT NULL,
	`VAL_TOT` DECIMAL(20,6) NOT NULL,
	`VAL_UTI` DECIMAL(20,6) NOT NULL,
	`US_TOT` DECIMAL(20,6) NOT NULL,
	`DT_INTER` INT NOT NULL,
	`DT_SAIDA` INT NOT NULL,
	`DIAG_PRINC` VARCHAR(10) NOT NULL,
	`DIAG_SECUN` VARCHAR(10) NOT NULL,
	`COBRANCA` TINYINT NOT NULL,
	`NATUREZA` VARCHAR(10) NOT NULL,
	`NAT_JUR` SMALLINT NOT NULL,
	`GESTAO` TINYINT NOT NULL,
	`RUBRICA` TINYINT NULL,
	`IND_VDRL` TINYINT NULL,
	`MUNIC_MOV` MEDIUMINT NOT NULL,
	`COD_IDADE` TINYINT NOT NULL,
	`IDADE` TINYINT NULL,
	`DIAS_PERM` TINYINT NULL,
	`MORTE` TINYINT NULL,
	`NACIONAL` VARCHAR(10) NOT NULL,
	`NUM_PROC` VARCHAR(10) NULL,
	`CAR_INT` VARCHAR(10) NOT NULL,
	`TOT_PT_SP` TINYINT NULL,
	`CPF_AUT` VARCHAR(10) NULL,
	`HOMONIMO` TINYINT NULL,
	`NUM_FILHOS` TINYINT NULL,
	`INSTRU` TINYINT NULL,
	`CID_NOTIF` VARCHAR(10) NULL,
	`CONTRACEP1` VARCHAR(10) NOT NULL,
	`CONTRACEP2` VARCHAR(10) NOT NULL,
	`GESTRISCO` TINYINT NULL,
	`INSC_PN` VARCHAR(20) NOT NULL,
	`SEQ_AIH5` VARCHAR(10) NOT NULL,
	`CBOR` VARCHAR(10) NOT NULL,
	`CNAER` VARCHAR(10) NOT NULL,
	`VINCPREV` TINYINT NULL,
	`GESTOR_COD` VARCHAR(10) NOT NULL,
	`GESTOR_TP` TINYINT NULL,
	`GESTOR_CPF` VARCHAR(20) NOT NULL,
	`GESTOR_DT` VARCHAR(10) NULL,
	`CNES` INT NOT NULL,
	`CNPJ_MANT` VARCHAR(20) NULL,
	`INFEHOSP` VARCHAR(10) NULL,
	`CID_ASSO` VARCHAR(10) NOT NULL,
	`CID_MORTE` VARCHAR(10) NOT NULL,
	`COMPLEX` VARCHAR(10) NOT NULL,
	`FINANC` VARCHAR(10) NOT NULL,
	`FAEC_TP` VARCHAR(10) NULL,
	`REGCT` VARCHAR(10) NOT NULL,
	`RACA_COR` VARCHAR(10) NOT NULL,
	`ETNIA` VARCHAR(10) NOT NULL,
	`SEQUENCIA` SMALLINT NOT NULL,
	`REMESSA` VARCHAR(30) NOT NULL,
	`AUD_JUST` VARCHAR(30) NULL,
	`SIS_JUST` VARCHAR(50) NULL,
	`VAL_SH_FED` DECIMAL(20,6) NOT NULL,
	`VAL_SP_FED` DECIMAL(20,6) NOT NULL,
	`VAL_SH_GES` DECIMAL(20,6) NOT NULL,
	`VAL_SP_GES` DECIMAL(20,6) NOT NULL,
	`VAL_UCI` DECIMAL(20,6) NOT NULL,
	`MARCA_UCI` VARCHAR(10) NOT NULL,
	`DIAGSEC1` VARCHAR(10) NULL,
	`DIAGSEC2` VARCHAR(10) NULL,
	`DIAGSEC3` VARCHAR(10) NULL,
	`DIAGSEC4` VARCHAR(10) NULL,
	`DIAGSEC5` VARCHAR(10) NULL,
	`DIAGSEC6` VARCHAR(10) NULL,
	`DIAGSEC7` VARCHAR(10) NULL,
	`DIAGSEC8` VARCHAR(10) NULL,
	`DIAGSEC9` VARCHAR(10) NULL,
	`TPDISEC1`  VARCHAR(10)   NULL,
	`TPDISEC2`  VARCHAR(10)   NULL,
	`TPDISEC3`  VARCHAR(10)   NULL,
	`TPDISEC4`  VARCHAR(10)   NULL,
	`TPDISEC5`  VARCHAR(10)   NULL,
	`TPDISEC6`  VARCHAR(10)   NULL,
	`TPDISEC7`  VARCHAR(10)   NULL,
	`TPDISEC8`  VARCHAR(10)   NULL,
	`TPDISEC9` VARCHAR(10)  NULL
);

CREATE TABLE tabela_cnes (
	`CNES` INT NOT NULL,
	`CODUFMUN` MEDIUMINT NOT NULL,
	`COD_CEP` INT NOT NULL,
	`CPF_CNPJ` VARCHAR(20) NOT NULL,
	`PF_PJ` TINYINT NOT NULL,
	`NIV_DEP` TINYINT NOT NULL,
	`CNPJ_MAN` VARCHAR(20) NOT NULL,
	`COD_IR` VARCHAR(10) NULL,
	`REGSAUDE` VARCHAR(10) NULL,
	`MICR_REG` VARCHAR(10) NULL,
	`DISTRSAN` VARCHAR(10) NULL,
	`DISTRADM` VARCHAR(10) NULL,
	`VINC_SUS` TINYINT NULL,
	`TPGESTAO` VARCHAR(10) NOT NULL,
	`ESFERA_A` VARCHAR(10) NULL,
	`RETENCAO` VARCHAR(10) NULL,
	`ATIVIDAD` VARCHAR(10) NOT NULL,
	`NATUREZA` VARCHAR(10) NULL,
	`CLIENTEL` VARCHAR(10) NULL,
	`TP_UNID` VARCHAR(10) NOT NULL,
	`TURNO_AT` VARCHAR(10) NULL,
	`NIV_HIER` VARCHAR(10) NULL,
	`TP_PREST` TINYINT NOT NULL,
	`CO_BANCO` VARCHAR(10) NULL,
	`CO_AGENC` VARCHAR(10) NULL,
	`C_CORREN` VARCHAR(20) NULL,
	`CONTRATM` VARCHAR(10) NULL,
	`DT_PUBLM` VARCHAR(10) NULL,
	`CONTRATE` VARCHAR(10) NULL,
	`DT_PUBLE` VARCHAR(10) NULL,
	`ALVARA` VARCHAR(30) NULL,
	`DT_EXPED` VARCHAR(10) NULL,
	`ORGEXPED` VARCHAR(10) NULL,
	`AV_ACRED` VARCHAR(10) NULL,
	`CLASAVAL` VARCHAR(10) NULL,
	`DT_ACRED` VARCHAR(10) NULL,
	`AV_PNASS` VARCHAR(10) NULL,
	`DT_PNASS` VARCHAR(10) NULL,
	`GESPRG1E` TINYINT NULL,
	`GESPRG1M` TINYINT NULL,
	`GESPRG2E` TINYINT NULL,
	`GESPRG2M` TINYINT NULL,
	`GESPRG4E` TINYINT NULL,
	`GESPRG4M` TINYINT NULL,
	`NIVATE_A` TINYINT NULL,
	`GESPRG3E` TINYINT NULL,
	`GESPRG3M` TINYINT NULL,
	`GESPRG5E` TINYINT NULL,
	`GESPRG5M` TINYINT NULL,
	`GESPRG6E` TINYINT NULL,
	`GESPRG6M` TINYINT NULL,
	`NIVATE_H` TINYINT NULL,
	`QTLEITP1` SMALLINT NULL,
	`QTLEITP2` SMALLINT NULL,
	`QTLEITP3` TINYINT NULL,
	`LEITHOSP` TINYINT NULL,
	`QTINST01` TINYINT NULL,
	`QTINST02` TINYINT NULL,
	`QTINST03` TINYINT NULL,
	`QTINST04` TINYINT NULL,
	`QTINST05` TINYINT NULL,
	`QTINST06` TINYINT NULL,
	`QTINST07` TINYINT NULL,
	`QTINST08` TINYINT NULL,
	`QTINST09` TINYINT NULL,
	`QTINST10` TINYINT NULL,
	`QTINST11` TINYINT NULL,
	`QTINST12` TINYINT NULL,
	`QTINST13` TINYINT NULL,
	`QTINST14` TINYINT NULL,
	`URGEMERG` TINYINT NULL,
	`QTINST15` TINYINT NULL,
	`QTINST16` TINYINT NULL,
	`QTINST17` TINYINT NULL,
	`QTINST18` TINYINT NULL,
	`QTINST19` TINYINT NULL,
	`QTINST20` TINYINT NULL,
	`QTINST21` TINYINT NULL,
	`QTINST22` TINYINT NULL,
	`QTINST23` TINYINT NULL,
	`QTINST24` TINYINT NULL,
	`QTINST25` TINYINT NULL,
	`QTINST26` TINYINT NULL,
	`QTINST27` TINYINT NULL,
	`QTINST28` TINYINT NULL,
	`QTINST29` TINYINT NULL,
	`QTINST30` TINYINT NULL,
	`ATENDAMB` TINYINT NULL,
	`QTINST31` TINYINT NULL,
	`QTINST32` TINYINT NULL,
	`QTINST33` TINYINT NULL,
	`CENTRCIR` TINYINT NULL,
	`QTINST34` TINYINT NULL,
	`QTINST35` TINYINT NULL,
	`QTINST36` TINYINT NULL,
	`QTINST37` TINYINT NULL,
	`CENTROBS` TINYINT NULL,
	`QTLEIT05` TINYINT NULL,
	`QTLEIT06` TINYINT NULL,
	`QTLEIT07` TINYINT NULL,
	`QTLEIT08` TINYINT NULL,
	`QTLEIT09` TINYINT NULL,
	`QTLEIT19` TINYINT NULL,
	`QTLEIT20` TINYINT NULL,
	`QTLEIT21` TINYINT NULL,
	`QTLEIT22` TINYINT NULL,
	`QTLEIT23` TINYINT NULL,
	`QTLEIT32` TINYINT NULL,
	`QTLEIT34` TINYINT NULL,
	`QTLEIT38` TINYINT NULL,
	`QTLEIT39` TINYINT NULL,
	`QTLEIT40` TINYINT NULL,
	`CENTRNEO` TINYINT NULL,
	`ATENDHOS` TINYINT NULL,
	`SERAP01P` TINYINT NULL,
	`SERAP01T` TINYINT NULL,
	`SERAP02P` TINYINT NULL,
	`SERAP02T` TINYINT NULL,
	`SERAP03P` TINYINT NULL,
	`SERAP03T` TINYINT NULL,
	`SERAP04P` TINYINT NULL,
	`SERAP04T` TINYINT NULL,
	`SERAP05P` TINYINT NULL,
	`SERAP05T` TINYINT NULL,
	`SERAP06P` TINYINT NULL,
	`SERAP06T` TINYINT NULL,
	`SERAP07P` TINYINT NULL,
	`SERAP07T` TINYINT NULL,
	`SERAP08P` TINYINT NULL,
	`SERAP08T` TINYINT NULL,
	`SERAP09P` TINYINT NULL,
	`SERAP09T` TINYINT NULL,
	`SERAP10P` TINYINT NULL,
	`SERAP10T` TINYINT NULL,
	`SERAP11P` TINYINT NULL,
	`SERAP11T` TINYINT NULL,
	`SERAPOIO` TINYINT NULL,
	`RES_BIOL` TINYINT NULL,
	`RES_QUIM` TINYINT NULL,
	`RES_RADI` TINYINT NULL,
	`RES_COMU` TINYINT NULL,
	`COLETRES` TINYINT NULL,
	`COMISS01` TINYINT NULL,
	`COMISS02` TINYINT NULL,
	`COMISS03` TINYINT NULL,
	`COMISS04` TINYINT NULL,
	`COMISS05` TINYINT NULL,
	`COMISS06` TINYINT NULL,
	`COMISS07` TINYINT NULL,
	`COMISS08` TINYINT NULL,
	`COMISS09` TINYINT NULL,
	`COMISS10` TINYINT NULL,
	`COMISS11` TINYINT NULL,
	`COMISS12` TINYINT NULL,
	`COMISSAO` TINYINT NULL,
	`AP01CV01` TINYINT NULL,
	`AP01CV02` TINYINT NULL,
	`AP01CV05` TINYINT NULL,
	`AP01CV06` TINYINT NULL,
	`AP01CV03` TINYINT NULL,
	`AP01CV04` TINYINT NULL,
	`AP02CV01` TINYINT NULL,
	`AP02CV02` TINYINT NULL,
	`AP02CV05` TINYINT NULL,
	`AP02CV06` TINYINT NULL,
	`AP02CV03` TINYINT NULL,
	`AP02CV04` TINYINT NULL,
	`AP03CV01` TINYINT NULL,
	`AP03CV02` TINYINT NULL,
	`AP03CV05` TINYINT NULL,
	`AP03CV06` TINYINT NULL,
	`AP03CV03` TINYINT NULL,
	`AP03CV04` TINYINT NULL,
	`AP04CV01` TINYINT NULL,
	`AP04CV02` TINYINT NULL,
	`AP04CV05` TINYINT NULL,
	`AP04CV06` TINYINT NULL,
	`AP04CV03` TINYINT NULL,
	`AP04CV04` TINYINT NULL,
	`AP05CV01` TINYINT NULL,
	`AP05CV02` TINYINT NULL,
	`AP05CV05` TINYINT NULL,
	`AP05CV06` TINYINT NULL,
	`AP05CV03` TINYINT NULL,
	`AP05CV04` TINYINT NULL,
	`AP06CV01` TINYINT NULL,
	`AP06CV02` TINYINT NULL,
	`AP06CV05` TINYINT NULL,
	`AP06CV06` TINYINT NULL,
	`AP06CV03` TINYINT NULL,
	`AP06CV04` TINYINT NULL,
	`AP07CV01` TINYINT NULL,
	`AP07CV02` TINYINT NULL,
	`AP07CV05` TINYINT NULL,
	`AP07CV06` TINYINT NULL,
	`AP07CV03` TINYINT NULL,
	`AP07CV04` TINYINT NULL,
	`ATEND_PR` TINYINT NULL,
	`DT_ATUAL` MEDIUMINT NOT NULL,
	`COMPETEN` MEDIUMINT NOT NULL,
	`NAT_JUR` VARCHAR(10) NOT NULL
);

create table if not exists tabela_municipio(
uf_munic varchar (10),
nome_munic varchar(50)	
)engine = innodb;

create table meses(
num_mes char(2),
mes varchar (15)
);
insert into meses(num_mes,mes ) values("01","JANEIRO");
insert into meses(num_mes,mes ) values("02","FEVEREIRO");
insert into meses(num_mes,mes ) values("03","MARÇO");
insert into meses(num_mes,mes ) values("04","ABRIL");
insert into meses(num_mes,mes ) values("05","MAIO");
insert into meses(num_mes,mes ) values("06","JUNHO");
insert into meses(num_mes,mes ) values("07","JULHO");
insert into meses(num_mes,mes ) values("08","AGOSTO");
insert into meses(num_mes,mes ) values("09","SETEMBRO");
insert into meses(num_mes,mes ) values("10","OUTUBRO");
insert into meses(num_mes,mes ) values("11","NOVEMBRO");
insert into meses(num_mes,mes ) values("12","DEZENBRO");

create table if not exists tabela_cid(
id_cid int,
codigo_cid varchar(10),
descricao_cid varchar(400)
)ENGINE = innodb;

LOAD DATA INFILE 'cid_.csv' 
INTO TABLE dm_cid 
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 0 ROWS;
    
create table if not exists dm_procedimento(
id_dm_proc INT not null,
codigo_procedmnt int,
nome_procedmnt varchar(400)
)ENGINE = innodb;

#carga procedimento
LOAD DATA INFILE 'procedimento.csv'
INTO TABLE dm_procedimento 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

create table if not exists dm_cid(
id_dm_cid int NOT NULL,
codigo_cid varchar(10),
descricao_cid varchar(400)
)ENGINE = innodb;


create table if not exists dm_cnes  (
	id_dm_cnes INT not null,
	CNES  int not null,
	CODUFMUN  mediumint not null,
	COD_CEP  int not null,
	CPF_CNPJ  varchar(20) not null,
	 PF_PJ  tinyint not null,
	 NAT_JUR   varchar(40) not null,
     COMPETEN MEDIUMINT NOT NULL
    )engine = innodb;
    
LOAD DATA INFILE 'cnes.csv'
INTO TABLE tabela_cnes 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

create table if not exists dm_municipio(
id_dm_munic int not null,
uf_munic varchar (10),
nome_munic varchar(50)
)engine = innodb;

LOAD DATA INFILE 'estados.csv'
INTO TABLE dm_estados 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;
select * from db.estados;

create table if not exists municipios_geo(
geocodigo_mun INT,
nome varchar(40),
longitude varchar(11),
latitude varchar(11)
)ENGINE = innodb;

LOAD DATA INFILE 'municipios_geo.csv'
INTO TABLE municipios_geo 
FIELDS TERMINATED BY ';' 
ENCLOSED BY '' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;
drop table dm_aih
create table IF NOT EXISTS dm_aih(
id_dm_aih int primary key not null auto_increment,
UF_ZI int(2), 
ANO_CMPT year,
MES_CMPT char(2),
N_AIH varchar(20),#
CEP bigint,#
NASC date,#
SEXO bigint,#
DIAR_ACOM bigint,#
QT_DIARIAS bigint,#
CGC_HOSP char(14),#
VAL_SH decimal(10,2),#
VAL_SP decimal(10,2),#
VAL_SADT decimal(10,2),#
VAL_RN decimal(10,2),#
VAL_TOT decimal(10,2),#
VAL_UTI decimal(10,2),#
US_TOT decimal(10,2),#
DT_INTER bigint,#
DT_SAIDA bigint,#
DIAG_PRINC char(4),#
MUNIC_MOV bigint,
DIAS_PERM bigint,#
MORTE bigint,#
CNES bigint,#
CID_MORTE VARCHAR(10),#
RACA_COR VARCHAR(10), #
SP_DTSAIDA date, 
SP_NAIH VARCHAR(10),
SP_PROCREA VARCHAR(10),
MUNIC_RES char(6),
SP_GESTOR VARCHAR(10),
SP_M_PAC VARCHAR(10),
SP_M_HOSP VARCHAR(10),
SP_DES_PAC CHAR (1),
PROC_SOLIC char(10),
PROC_REA char(10)
)engine = innodb;

LOAD DATA INFILE 'aih(1).csv'
INTO TABLE tabela_cnes 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n' 
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'cnes.csv'
INTO TABLE dm_cnes 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 0 ROWS;

######################### TABELAS AUXILIARES ########################

CREATE TABLE if not exists sexo(
cod_sexo CHAR(1),
nome varchar(60)
);

INSERT INTO sexo(cod_sexo,nome) values(1,"MASCULINO");
INSERT INTO sexo(cod_sexo,nome) values(3,"FEMININO");

create table if not exists raca_cor(
cod_raca_cor CHAR(2),
nome_raca_cor varchar(60)
);

INSERT INTO raca_cor(cod_raca_cor,nome_raca_cor) values("01","BRANCA");
INSERT INTO raca_cor(cod_raca_cor,nome_raca_cor) values("02","PRETA");
INSERT INTO raca_cor(cod_raca_cor,nome_raca_cor) values("03","PARDA");
INSERT INTO raca_cor(cod_raca_cor,nome_raca_cor) values("04","AMARELA");
INSERT INTO raca_cor(cod_raca_cor,nome_raca_cor) values("05","INDIGENA");
INSERT INTO raca_cor(cod_raca_cor,nome_raca_cor) values("99","SEM INFORMACAO");

CREATE TABLE if not exists morte(
cod_morte char(1),
is_morte varchar(10)
);
INSERT INTO morte(cod_morte,is_morte) values("0","NÃO MORTE");
INSERT INTO morte(cod_morte,is_morte) values("1","MORTE");

  ### INSERT DADOS BRUTOS X TABELAS DM
# dm_cid
   INSERT INTO dm_cid (codigo_cid,descricao_cid) 
   SELECT codigo_cid,descricao_cid 
   FROM TEBDFLY.tabela_cid;
   TRUNCATE TABLE TEBDFLY.dm_cid;
    
# dm_cnes

   INSERT INTO dm_cnes(CNES,CODUFMUN,COD_CEP,CPF_CNPJ,PF_PJ,NAT_JUR,COMPETEN)
   select CNES,CODUFMUN,COD_CEP,CPF_CNPJ,PF_PJ,NAT_JUR,COMPETEN 
   from TEBDFLY.tabela_cnes;

select * FROM fato limit 10;  
#procedimento
INSERT INTO TEBDFLY.dm_procedimento(codigo_procedmnt,nome_procedmnt) select codigo_procedmnt, nome_procedmnt
from TEBDFLY.tabela_procedimento;
	
# add via terminal para varcha grande >>> SET @@global.sql_mode= '';
select CNES,CNES,CODUFMUN,COD_CEP,CPF_CNPJ,PF_PJ,NAT_JUR from TEBDFLY.tabela_cnes;

INSERT INTO dm_aih(
UF_ZI,
ANO_CMPT ,
MES_CMPT,
N_AIH,
NASC,
SEXO, 
MUNIC_RES,
DIAR_ACOM,
QT_DIARIAS,
CGC_HOSP,
VAL_SH,
VAL_SP ,
VAL_SADT,
VAL_RN,
VAL_TOT,
VAL_UTI ,
US_TOT ,
DT_INTER, 
DT_SAIDA ,
DIAG_PRINC,
MUNIC_MOV,
DIAS_PERM,
MORTE ,
CNES ,
CID_MORTE, 
RACA_COR,
PROC_SOLIC,
PROC_REA
)
select 
UF_ZI,
ANO_CMPT ,
MES_CMPT,
N_AIH,
NASC,
SEXO, 
MUNIC_RES,
DIAR_ACOM,
QT_DIARIAS,
CGC_HOSP,
VAL_SH,
VAL_SP ,
VAL_SADT,
VAL_RN,
VAL_TOT,
VAL_UTI ,
US_TOT ,
DT_INTER, 
DT_SAIDA ,
DIAG_PRINC,
MUNIC_MOV,
DIAS_PERM,
MORTE ,
CNES ,
CID_MORTE, 
RACA_COR,
PROC_SOLIC,
PROC_REA
 from tabela_aih;


     
insert into TEBDFLY.fato_(
			natkey_proced ,
			natkey_cnes ,
			natkey_cid ,
			natkey_munic,
			natkey_aih
			)
			select 
			TEBDFLY.dm_procedimento.id_dm_proc as p,
			TEBDFLY.dm_cnes.id_dm_cnes as c,
			TEBDFLY.dm_cid.id_dm_cid as d,
			TEBDFLY.dm_municipio.id_dm_munic as m,
			TEBDFLY.dm_aih.id_dm_aih as a
			from   TEBDFLY.dm_procedimento, 
			TEBDFLY.dm_cnes, 
			TEBDFLY.dm_cid, 
			TEBDFLY.dm_municipio,
			TEBDFLY.dm_aih;

######################################################
# tabela fato com as FK 
# CASO NAO CONSIGA COM ERRO DA BASE DE DADOS PARA FAZER A CARGA, USE O METODO 2, USANDO
# TABELA POR TABELA

# TABELA FATO SEM FK USADA NO METODO 2
create table if not exists  fato (
	id_dm_fato int primary key not null auto_increment,
	natkey_proced int null,
    natkey_cnes int null,
    natkey_cid int null,
    natkey_munic int null,
	natkey_aih int null,
    qtd_aih  int default 1,
	val_tot  decimal(20,6)
)engine = innodb;

#insert na tb fato por partes,  por dm
insert into TEBDFLY.fato( natkey_aih ) select TEBDFLY.dm_aih.id_dm_aih from TEBDFLY.dm_aih;
 
 
#UPDATE FATO 

update TEBDFLY.fato_  
inner join TEBDFLY.dm_aih 
on   TEBDFLY.fato_.natkey_aih = TEBDFLY.dm_aih.id_dm_aih
set  TEBDFLY.fato_.natkey_munic  = TEBDFLY.dm_aih.MUNIC_RES;
select TEBDFLY.dm_aih.MUNIC_RES from TEBDFLY.dm_aih;
select * from TEBDFLY.fato_;

#nao tem cid em RD

 update TEBDFLY.fato_  
inner join TEBDFLY.dm_cid 
on   TEBDFLY.fato_.natkey_aih = TEBDFLY.dm_cid.codigo_cid # codigo cid?
set  TEBDFLY.fato_.natkey_cid  = TEBDFLY.dm_cid.codigo_cid;

update TEBDFLY.fato_  
inner join TEBDFLY.dm_aih  
on   TEBDFLY.fato_.natkey_aih = TEBDFLY.dm_aih.id_dm_aih
set  TEBDFLY.fato_.natkey_cnes  = TEBDFLY.dm_aih.CNES;
 
update TEBDFLY.fato_  
inner join TEBDFLY.dm_aih  
inner join dm_procedimento 
ON TEBDFLY.dm_procedimento.codigo_procedmnt = TEBDFLY.dm_aih.PROC_REA
ON TEBDFLY.fato_.natkey_aih = TEBDFLY.dm_aih.id_dm_aih
set  TEBDFLY.fato_.natkey_proced = TEBDFLY.dm_aih.PROC_REA;

delete from id_procedimento;
create table if not exists id_procedimento(
id int,
procedimento int
);

#gerar arquivo para importar na tabela
SELECT 
   TEBDFLY.dm_aih.id_dm_aih,TEBDFLY.dm_aih.PROC_REA	
FROM TEBDFLY.dm_aih
inner join TEBDFLY.fato_
on TEBDFLY.fato_.natkey_aih = TEBDFLY.dm_aih.id_dm_aih
INTO OUTFILE  '/var/lib/mysql/TEBDFLY/xyz.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' 
LINES TERMINATED BY '\r\n';

#caso nao funcione no workbanch, usar no terminal com usuario root

LOAD DATA LOCAL INFILE  '/var/lib/mysql/TEBDFLY/xyz.csv' 
INTO TABLE id_procedimento
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' 
LINES TERMINATED BY '\r\n';

# usando tabela temporaria
update TEBDFLY.fato_   
inner join TEBDFLY.id_procedimento  
on TEBDFLY.fato_.natkey_aih = TEBDFLY.id_procedimento.id  
set  TEBDFLY.fato_.natkey_proced = TEBDFLY.id_procedimento.procedimento;

################## MÉTODO 1 NORMAL  ################

create table if not exists  fato (
	id_dm_fato int primary key not null auto_increment,
	natkey_proced int not null,
    natkey_cnes int not null,
    natkey_cid int not null,
    natkey_munic int not null,
	natkey_aih int not null,
    qtd_diarias  int null,
	constraint fk_local foreign key (natkey_munic) references dm_municipio ( id_dm_municipio ),
    constraint const_cid_fato foreign key (natkey_cid) references dm_cid ( id_dm_cid ),
    constraint const_proc_fato foreign key (natkey_proced) references dm_procedimento ( id_dm_procedimento),
    constraint const_cnes_fato foreign key (natkey_cnes) references dm_cnes ( id_dm_cnes),
    constraint const_aih_fato foreign key (natkey_aih) references dm_aih ( id_dm_aih)
on delete cascade
on update cascade
)engine = innodb;

CREATE TABLE municipios(
    codigo_ibge INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    latitude FLOAT(8) NOT NULL,
    longitude FLOAT(8) NOT NULL,
    capital BOOLEAN NOT NULL,
    codigo_uf INT NOT NULL,
    siafi_id VARCHAR(4) NOT NULL UNIQUE,
    ddd INT NOT NULL,
    fuso_horario VARCHAR(32) NOT NULL,
    PRIMARY KEY (codigo_ibge),
    FOREIGN KEY (codigo_uf) REFERENCES estados (codigo_uf)
);


CREATE TABLE estados(
    codigo_uf INT NOT NULL,
    uf VARCHAR(2) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    latitude FLOAT(8) NOT NULL,
    longitude FLOAT(8) NOT NULL,
    PRIMARY KEY (codigo_uf)
);

INSERT INTO estados VALUES
(11,'RO','Rondônia',-10.83,-63.34),
(12,'AC','Acre',-8.77,-70.55),
(13,'AM','Amazonas',-3.47,-65.1),
(14,'RR','Roraima',1.99,-61.33),
(15,'PA','Pará',-3.79,-52.48),
(16,'AP','Amapá',1.41,-51.77),
(17,'TO','Tocantins',-9.46,-48.26),
(21,'MA','Maranhão',-5.42,-45.44),
(22,'PI','Piauí',-6.6,-42.28),
(23,'CE','Ceará',-5.2,-39.53),
(24,'RN','Rio Grande do Norte',-5.81,-36.59),
(25,'PB','Paraíba',-7.28,-36.72),
(26,'PE','Pernambuco',-8.38,-37.86),
(27,'AL','Alagoas',-9.62,-36.82),
(28,'SE','Sergipe',-10.57,-37.45),
(29,'BA','Bahia',-13.29,-41.71),
(31,'MG','Minas Gerais',-18.1,-44.38),
(32,'ES','Espírito Santo',-19.19,-40.34),
(33,'RJ','Rio de Janeiro',-22.25,-42.66),
(35,'SP','São Paulo',-22.19,-48.79),
(41,'PR','Paraná',-24.89,-51.55),
(42,'SC','Santa Catarina',-27.45,-50.95),
(43,'RS','Rio Grande do Sul',-30.17,-53.5),
(50,'MS','Mato Grosso do Sul',-20.51,-54.54),
(51,'MT','Mato Grosso',-12.64,-55.42),
(52,'GO','Goiás',-15.98,-49.86),
(53,'DF','Distrito Federal',-15.83,-47.86);
select * from db.dm_aih limit 5;

update db.dm_aih as a
 set a.cod_uf = a.UF_ZI;

ALTER TABLE db.dm_aih	
 modify cod_uf char(2);

select * from db.dm_aih limit 5;
select * from db.estados;
select * from db.municipios_geo where geocodigo_mun;
select * from db.municipios_geo as m where m.geocodigo_mun like '%2%';

update db.municipios_geo
 set db.municipios_geo.cod_uf = db.municipios_geo.geocodigo_mun;


