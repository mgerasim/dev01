\set ON_ERROR_STOP
\set ECHO all
BEGIN;
CREATE TYPE "public"."accountnode" AS (
"nodeid" int,
"measurepointcheckaccessmode" smallint,
"allowedsystemtypes" int
);
CREATE TYPE "public"."actreportlist" AS (
"acttypeid" smallint,
"reportid" int
);
CREATE TYPE "public"."attributevalue" AS (
"customattributeid" int,
"value" varchar(200)
);
CREATE TYPE "public"."balancegroupmeasurepoint" AS (
"measurepointid" int,
"ishead" boolean
);
CREATE TYPE "public"."contracttemperature" AS (
"t_outdoor" smallint,
"t_in" real,
"t_out" real
);
CREATE TYPE "public"."dataparametercell" AS (
"datatype" smallint,
"dataparameterid" smallint,
"cellid" int,
"pulseratio" real,
"unitid" smallint
);
CREATE TYPE "public"."datetimeintervallist" AS (
"startdatetime" timestamp(7),
"enddatetime" timestamp(7)
);
CREATE TYPE "public"."datetimelist" AS (
"datetime" timestamp
);
CREATE TYPE "public"."deviceerror" AS (
"archivetype" smallint,
"channelnumber" int,
"datetime" timestamp,
"eventcode" int,
"description" varchar(200),
"duration" int
);
CREATE TYPE "public"."diagparameters" AS (
"incidenttypeid" int,
"isenabled" boolean,
"value1" real,
"value2" real
);
CREATE TYPE "public"."eavlastparametervalue" AS (
"dataparameterid" smallint,
"value" double precision,
"isbad" boolean,
"iscalc" boolean
);
CREATE TYPE "public"."eavparametervalue" AS (
"datetime" timestamp,
"dataparameterid" smallint,
"value" double precision,
"isbad" boolean,
"iscalc" boolean,
"isinterpolated" boolean
);
CREATE TYPE "public"."electricconsumption" AS (
"datetime" timestamp,
"ap1" double precision,
"an1" double precision,
"rp1" double precision,
"rn1" double precision,
"ap2" double precision,
"an2" double precision,
"rp2" double precision,
"rn2" double precision,
"ap3" double precision,
"an3" double precision,
"rp3" double precision,
"rn3" double precision,
"ap4" double precision,
"an4" double precision,
"rp4" double precision,
"rn4" double precision,
"ap" double precision,
"an" double precision,
"rp" double precision,
"rn" double precision,
"normaloperationduration" double precision,
"attributes" smallint,
"calculatedvalues" int,
"badvalues" int,
"interpolatedvalues" int
);
CREATE TYPE "public"."electricpower" AS (
"datetime" timestamp,
"flags" smallint,
"interval" smallint,
"pp" double precision,
"pn" double precision,
"qp" double precision,
"qn" double precision,
"badvalues" int
);
CREATE TYPE "public"."electrictotals" AS (
"datetime" timestamp,
"ap1" double precision,
"an1" double precision,
"rp1" double precision,
"rn1" double precision,
"ap2" double precision,
"an2" double precision,
"rp2" double precision,
"rn2" double precision,
"ap3" double precision,
"an3" double precision,
"rp3" double precision,
"rn3" double precision,
"ap4" double precision,
"an4" double precision,
"rp4" double precision,
"rn4" double precision,
"ap" double precision,
"an" double precision,
"rp" double precision,
"rn" double precision,
"normaloperationduration" double precision,
"attributes" smallint,
"calculatedvalues" int,
"badvalues" int,
"resettedvalues" int,
"interpolatedvalues" int
);
CREATE TYPE "public"."gasconsumption" AS (
"datetime" timestamp,
"t" real,
"t_outdoor" real,
"p" real,
"p_delta" real,
"v" real,
"v_std" real,
"m" real,
"normaloperationduration" real,
"attributes" smallint,
"calculatedvalues" int,
"badvalues" int,
"interpolatedvalues" int
);
CREATE TYPE "public"."gastotals" AS (
"datetime" timestamp,
"v" double precision,
"v_std" double precision,
"m" double precision,
"normaloperationduration" double precision,
"attributes" smallint,
"calculatedvalues" int,
"badvalues" int,
"resettedvalues" int,
"interpolatedvalues" int
);
CREATE TYPE "public"."heatloss" AS (
"year" int,
"jan" real,
"feb" real,
"mar" real,
"apr" real,
"may" real,
"jun" real,
"jul" real,
"aug" real,
"sep" real,
"oct" real,
"nov" real,
"dec" real,
"percent" real,
"hour" real
);
CREATE TYPE "public"."idlist" AS (
"id" int
);
CREATE TYPE "public"."mapobjectappearance" AS (
"mapobjectid" int,
"appearancetype" smallint,
"bordercolor" int,
"borderwidth" smallint,
"fillcolor" int,
"fontcolor" int,
"fontsize" real,
"fontfamily" varchar(50),
"fontstyle" smallint,
"textvalignment" smallint,
"texthalignment" smallint,
"visible" boolean
);
CREATE TYPE "public"."measurepointexpression" AS (
"dataparameter" smallint,
"expression" varchar(500)
);
CREATE TYPE "public"."measurepointpollsettings" AS (
"measurepointid" int,
"performtimecorrection" boolean,
"requesteddatamask" smallint,
"autopollstartdate" timestamp
);
CREATE TYPE "public"."monthcontractconsumption" AS (
"measuredparameterid" smallint,
"year" int,
"jan" real,
"feb" real,
"mar" real,
"apr" real,
"may" real,
"jun" real,
"jul" real,
"aug" real,
"sep" real,
"oct" real,
"nov" real,
"dec" real,
"contractconsumptiontype" smallint
);
CREATE TYPE "public"."nodecustomattribute" AS (
"code" varchar(36),
"attribute" varchar(200)
);
CREATE TYPE "public"."nodesignaling" AS (
"id" int,
"signaltitle" varchar(50),
"controllerid" int,
"drycontactnumber" smallint,
"incidentimportanceset" smallint,
"incidentmessageset" varchar(100),
"incidentimportanceunset" smallint,
"incidentmessageunset" varchar(100)
);
CREATE TYPE "public"."nodesupplier" AS (
"systemtype" smallint,
"supplierid" int,
"contractnumber" varchar(20),
"contractdate" timestamp,
"inspectorid" int
);
CREATE TYPE "public"."notificationincident" AS (
"incidenttypeid" int
);
CREATE TYPE "public"."notificationjobtype" AS (
"nodejobtype" smallint
);
CREATE TYPE "public"."notificationmethod" AS (
"notificationtypeid" int,
"notificationmethodmask" smallint
);
CREATE TYPE "public"."notificationnode" AS (
"nodeid" int
);
CREATE TYPE "public"."outdoortemperature" AS (
"date" timestamp,
"value" real
);
CREATE TYPE "public"."permission" AS (
"operationid" int,
"isdisabled" boolean
);
CREATE TYPE "public"."permissionex" AS (
"accessrightid" int,
"isdenied" boolean
);
CREATE TYPE "public"."pollsessionlogmessage" AS (
"pollsessionid" int,
"importance" smallint,
"message" varchar(1999),
"datetime" timestamp
);
CREATE TYPE "public"."polltaskstate" AS (
"taskid" int,
"starttime" timestamp,
"endtime" timestamp,
"executionstate" smallint,
"attempt" smallint,
"lastattempttime" timestamp,
"lastattemptendtime" timestamp,
"lastattemptresultcode" int
);
CREATE TYPE "public"."roomcontractconsumption" AS (
"monthnumber" smallint,
"heatvalue" real,
"hotwatervalue" real,
"coldwatervalue" real,
"electricityvalue" real
);
CREATE TYPE "public"."roomcounter" AS (
"roomid" int,
"equipmentid" int,
"installlocation" varchar(100),
"totalsvalue1" double precision,
"totalsvalue2" double precision,
"measurepointid" int
);
CREATE TYPE "public"."scmmeasurepoints" AS (
"measurepointid" int
);
CREATE TYPE "public"."waterconsumption" AS (
"datetime" timestamp,
"t_in" real,
"t_out" real,
"t_cw" real,
"t_outdoor" real,
"t_indoor" real,
"m_in" real,
"m_out" real,
"m_delta" real,
"v_in" real,
"v_out" real,
"v_delta" real,
"p_in" real,
"p_out" real,
"q_in" real,
"q_out" real,
"q_delta" real,
"normaloperationduration" real,
"stopduration" real,
"flowunderrunduration" real,
"flowoverrunduration" real,
"tempdifflowduration" real,
"nopowerduration" real,
"incidentduration" real,
"saturatedsteamduration" real,
"attributes" smallint,
"calculatedvalues" int,
"badvalues" int,
"interpolatedvalues" int
);
CREATE TYPE "public"."watertotals" AS (
"datetime" timestamp,
"m_in" double precision,
"m_out" double precision,
"m_delta" double precision,
"v_in" double precision,
"v_out" double precision,
"v_delta" double precision,
"q_in" double precision,
"q_out" double precision,
"q_delta" double precision,
"normaloperationduration" double precision,
"stopduration" double precision,
"flowunderrunduration" double precision,
"flowoverrunduration" double precision,
"tempdifflowduration" double precision,
"nopowerduration" double precision,
"incidentduration" double precision,
"saturatedsteamduration" double precision,
"attributes" smallint,
"calculatedvalues" int,
"badvalues" int,
"resettedvalues" int,
"interpolatedvalues" int
);


CREATE TABLE "public"."accessright"( 
	"id" int NOT NULL,
	"title" varchar(100) NOT NULL,
	"constname" varchar(50) NOT NULL,
	"grouptitle" varchar(100) NOT NULL);

CREATE TABLE "public"."account"( 
	"account_id" int NOT NULL,
	"account_login" varchar(30) NOT NULL,
	"account_displayname" varchar(50) NOT NULL,
	"account_disabled" boolean NOT NULL,
	"account_description" varchar(100) NOT NULL,
	"account_passwordsetdate" timestamp NOT NULL,
	"account_disableddate" timestamp,
	"account_expirationdate" timestamp,
	"account_sessiontimeout" int NOT NULL,
	"account_sessioncount" smallint NOT NULL,
	"account_ipaddressmode" boolean NOT NULL,
	"account_lastlogindate" timestamp,
	"account_issystem" boolean NOT NULL,
	"mobilephone" varchar(15) NOT NULL,
	"email" varchar(50) NOT NULL,
	"smsemail" varchar(50) NOT NULL,
	"sendsmsviamodem" boolean NOT NULL,
	"notifystarttime" smallint NOT NULL,
	"notifyendtime" smallint NOT NULL,
	"password" bytea NOT NULL,
	"salt" bytea NOT NULL,
	"hasallnodeaccess" boolean NOT NULL,
	"startpage" smallint NOT NULL,
	"tenantofficeonly" boolean NOT NULL,
	"allowallreports" boolean NOT NULL,
	"disablepasswordchange" boolean NOT NULL,
	"passwordresettoken" varchar(64) NOT NULL,
	"passwordresettokenexpiredatetime" timestamp,
	"allowallmaps" boolean NOT NULL,
	"reportcenterformmode" smallint NOT NULL,
	"usesendintervalforemail" boolean NOT NULL,
	"authenticationmodes" smallint NOT NULL,
	"windowssid" varchar(60),
	"divisionid" int,
	"loginnotallowed" boolean);

CREATE TABLE "public"."accountgroup"( 
	"id" int NOT NULL,
	"title" varchar(100) NOT NULL,
	"issystem" boolean NOT NULL,
	"divisionid" int);

CREATE TABLE "public"."accountgroupmembership"( 
	"accountid" int NOT NULL,
	"accountgroupid" int NOT NULL);

CREATE TABLE "public"."accountgrouppermissionex"( 
	"accountgroupid" int NOT NULL,
	"accessrightid" int NOT NULL,
	"isdenied" boolean NOT NULL);

CREATE TABLE "public"."accountlog"( 
	"date" timestamp NOT NULL,
	"accountid" int NOT NULL,
	"importance" smallint NOT NULL,
	"message" varchar(200) NOT NULL);

CREATE TABLE "public"."accountmap"( 
	"accountid" int NOT NULL,
	"mapid" int NOT NULL);

CREATE TABLE "public"."accountmeasurepoint"( 
	"accountid" int NOT NULL,
	"measurepointid" int NOT NULL);

CREATE TABLE "public"."accountnode"( 
	"accountid" int NOT NULL,
	"nodeid" int NOT NULL,
	"measurepointcheckaccessmode" smallint NOT NULL,
	"allowedsystemtypes" int NOT NULL);

CREATE TABLE "public"."accountnodegroup"( 
	"accountid" int NOT NULL,
	"nodegroupid" int NOT NULL);

CREATE TABLE "public"."accountnotification"( 
	"accountid" int NOT NULL,
	"notificationid" int NOT NULL,
	"isread" boolean NOT NULL);

CREATE TABLE "public"."accountnotificationincident"( 
	"accountid" int NOT NULL,
	"incidenttypeid" int NOT NULL);

CREATE TABLE "public"."accountnotificationmethod"( 
	"accountid" int NOT NULL,
	"notificationtypeid" int NOT NULL,
	"notificationmethodmask" smallint NOT NULL);

CREATE TABLE "public"."accountnotificationnode"( 
	"accountid" int NOT NULL,
	"notificationtypeid" int NOT NULL,
	"nodeid" int NOT NULL);

CREATE TABLE "public"."accountnotificationnodejobtype"( 
	"accountid" int NOT NULL,
	"nodejobtype" smallint NOT NULL);

CREATE TABLE "public"."accountpermissionex"( 
	"accountid" int NOT NULL,
	"accessrightid" int NOT NULL,
	"isdenied" boolean NOT NULL);

CREATE TABLE "public"."accountpersonalaccount"( 
	"accountid" int NOT NULL,
	"personalaccountid" int NOT NULL);

CREATE TABLE "public"."accountreport"( 
	"accountid" int NOT NULL,
	"reportid" int NOT NULL);

CREATE TABLE "public"."accountservicecompany"( 
	"accountid" int NOT NULL,
	"servicecompanyid" int NOT NULL);

CREATE TABLE "public"."adapter"( 
	"id" int NOT NULL,
	"title" varchar(100) NOT NULL,
	"comment" varchar(300) NOT NULL,
	"isaddressrequired" boolean NOT NULL);

CREATE TABLE "public"."balancegroup"( 
	"id" int NOT NULL,
	"title" varchar(150));

CREATE TABLE "public"."balancegroupmeasurepoint"( 
	"balancegroupid" int NOT NULL,
	"measurepointid" int NOT NULL,
	"ishead" boolean NOT NULL);

CREATE TABLE "public"."cell"( 
	"id" int NOT NULL,
	"name" varchar(30) NOT NULL,
	"drivercode" varchar(10) NOT NULL,
	"devicedatatype" smallint NOT NULL,
	"equipmentmodelid" int NOT NULL);

CREATE TABLE "public"."complex"( 
	"complex_responsedelay" smallint NOT NULL,
	"complex_pollsessionid" int,
	"protocoltypeid" int,
	"tag" bytea,
	"adapterid" int,
	"adapteraddress" int NOT NULL,
	"hardwareversion" varchar(20),
	"firmwareversion" varchar(30),
	"timedifference" int,
	"batterylevel" real,
	"equipmentid" int NOT NULL);

CREATE TABLE "public"."contingency"( 
	"id" int NOT NULL,
	"measurepointid" int,
	"nodeid" int NOT NULL,
	"contingencytypeid" int NOT NULL,
	"startdate" timestamp NOT NULL,
	"enddate" timestamp NOT NULL,
	"diagdate" timestamp NOT NULL,
	"importance" smallint NOT NULL,
	"isclosed" boolean NOT NULL,
	"description" varchar(500),
	"smsmessage" varchar(100),
	"equipmentid" int,
	"datatype" smallint NOT NULL,
	"distinction" bytea);

CREATE TABLE "public"."contingencylog"( 
	"contingencyid" int NOT NULL,
	"date" timestamp NOT NULL,
	"message" varchar(500),
	"shortmessage" varchar(100));

CREATE TABLE "public"."contractconsumption"( 
	"measuredparameterid" smallint NOT NULL,
	"year" smallint NOT NULL,
	"jan" real,
	"feb" real,
	"mar" real,
	"apr" real,
	"may" real,
	"jun" real,
	"jul" real,
	"aug" real,
	"sep" real,
	"oct" real,
	"nov" real,
	"dec" real,
	"measurepointid" int NOT NULL,
	"contractconsumptiontype" smallint NOT NULL);

CREATE TABLE "public"."contractconsumptionlimit"( 
	"measurepointid" int NOT NULL,
	"measuredparameterid" smallint NOT NULL,
	"year" smallint NOT NULL,
	"jan" real,
	"feb" real,
	"mar" real,
	"apr" real,
	"may" real,
	"jun" real,
	"jul" real,
	"aug" real,
	"sep" real,
	"oct" real,
	"nov" real,
	"dec" real,
	"contractconsumptiontype" smallint NOT NULL);

CREATE TABLE "public"."contracttemperature"( 
	"nodeid" int NOT NULL,
	"t_outdoor" smallint NOT NULL,
	"t_in" real NOT NULL,
	"t_out" real NOT NULL);

CREATE TABLE "public"."countertotals"( 
	"equipmentid" int NOT NULL,
	"datadate" timestamp NOT NULL,
	"value1" double precision NOT NULL,
	"value2" double precision NOT NULL,
	"istrustedvalue" boolean NOT NULL);

CREATE TABLE "public"."customattribute"( 
	"id" int NOT NULL,
	"title" varchar(100) NOT NULL,
	"code" varchar(36) NOT NULL,
	"comment" varchar(500) NOT NULL,
	"entities" smallint NOT NULL);

CREATE TABLE "public"."customer"( 
	"id" int NOT NULL,
	"title" varchar(255) NOT NULL,
	"isnaturalperson" boolean NOT NULL,
	"vatid" varchar(12) NOT NULL);

CREATE TABLE "public"."datainterface"( 
	"equipmentmodelid" int NOT NULL,
	"portsettings" varchar(50) NOT NULL,
	"supportedportspeeds" smallint NOT NULL,
	"supportedflowcontrols" smallint NOT NULL,
	"defaultpassword" varchar(50) NOT NULL,
	"passwordregex" varchar(100) NOT NULL,
	"passwordcomment" varchar(200) NOT NULL,
	"maxnetworksize" smallint NOT NULL,
	"networkaddressdefault" varchar(20) NOT NULL,
	"networkaddressusage" smallint NOT NULL,
	"networkaddresscomment" varchar(200) NOT NULL,
	"networkaddressregex" varchar(100) NOT NULL,
	"networkaddressrangemin" int NOT NULL,
	"networkaddressrangemax" int NOT NULL,
	"features" int NOT NULL,
	"secondlevelpasswordcomment" varchar(200) NOT NULL);

CREATE TABLE "public"."dataparameter"( 
	"id" smallint NOT NULL,
	"code" varchar(50) NOT NULL,
	"title" varchar(100) NOT NULL);

CREATE TABLE "public"."datastatus"( 
	"measurepointid" int NOT NULL,
	"devicedatatype" smallint NOT NULL,
	"startdate" timestamp NOT NULL,
	"enddate" timestamp NOT NULL,
	"datastatus" smallint NOT NULL);

CREATE TABLE "public"."deviceaddress"( 
	"address" int NOT NULL,
	"measurepointid" int NOT NULL,
	"dataparameterid" smallint NOT NULL,
	"devicedatatype" smallint NOT NULL,
	"unitid" smallint NOT NULL,
	"archivedepth" smallint NOT NULL,
	"equipmentid" int NOT NULL,
	"multiplier" real NOT NULL);

CREATE TABLE "public"."devicecell"( 
	"cellid" int NOT NULL,
	"measurepointid" int NOT NULL,
	"dataparameterid" smallint NOT NULL,
	"pulseratio" real NOT NULL,
	"unitid" smallint,
	"datatype" smallint NOT NULL,
	"equipmentid" int NOT NULL);

CREATE TABLE "public"."devicechannel"( 
	"heatleadin" smallint NOT NULL,
	"channelnumber" int NOT NULL,
	"measurepointid" int NOT NULL,
	"issupplychannel" boolean NOT NULL,
	"equipmentid" int NOT NULL);

CREATE TABLE "public"."deviceconfig"( 
	"datetime" timestamp NOT NULL,
	"paramid" int NOT NULL,
	"paramvalue" varchar(50) NOT NULL,
	"equipmentid" int NOT NULL);

CREATE TABLE "public"."deviceconfigparam"( 
	"id" int NOT NULL,
	"title" varchar(100) NOT NULL,
	"datatype" char(1) NOT NULL,
	"generaldeviceconfigparamid" int,
	"comment" varchar(200) NOT NULL,
	"heatleadinnum" smallint,
	"channelnum" smallint,
	"readaddress" int,
	"readdatatype" smallint,
	"drivercode" varchar(25),
	"equipmentmodelid" int NOT NULL);

CREATE TABLE "public"."devicedatatype"( 
	"id" smallint NOT NULL,
	"desc" varchar(100) NOT NULL);

CREATE TABLE "public"."deviceevent"( 
	"id" int NOT NULL,
	"startdatetime" timestamp,
	"eventcode" int NOT NULL,
	"description" varchar(200) NOT NULL,
	"heatleadin" smallint NOT NULL,
	"archivetype" smallint NOT NULL,
	"channelnumber" int NOT NULL,
	"enddatetime" timestamp,
	"equipmentid" int NOT NULL);

CREATE TABLE "public"."devicemeasurepoint"( 
	"measurepointid" int NOT NULL,
	"equipmentid" int NOT NULL);

CREATE TABLE "public"."division"( 
	"id" int NOT NULL,
	"title" varchar(128) NOT NULL);

CREATE TABLE "public"."driverinterface"( 
	"equipmentmodelid" int NOT NULL,
	"drivername" varchar(50) NOT NULL,
	"driverstatus" smallint NOT NULL,
	"channelcount" int NOT NULL,
	"heatsystemcount" smallint NOT NULL,
	"minmemoryaddress" int NOT NULL,
	"maxmemoryaddress" int NOT NULL,
	"features" int NOT NULL,
	"supporteddatatypes" smallint NOT NULL,
	"totalsresetthresholdm" double precision NOT NULL,
	"totalsresetthresholdq" double precision NOT NULL);

CREATE TABLE "public"."drycontactstate"( 
	"datetime" timestamp NOT NULL,
	"value" int NOT NULL,
	"equipmentid" int NOT NULL);

CREATE TABLE "public"."eavconsumptioncurrents"( 
	"measurepointid" int NOT NULL,
	"datetime" timestamp NOT NULL,
	"dataparameterid" smallint NOT NULL,
	"value" double precision NOT NULL,
	"isbad" boolean NOT NULL,
	"iscalc" boolean NOT NULL,
	"isinterpolated" boolean NOT NULL);

CREATE TABLE "public"."eavconsumptionday"( 
	"measurepointid" int NOT NULL,
	"datetime" timestamp NOT NULL,
	"dataparameterid" smallint NOT NULL,
	"value" double precision NOT NULL,
	"isbad" boolean NOT NULL,
	"iscalc" boolean NOT NULL,
	"isinterpolated" boolean NOT NULL);

CREATE TABLE "public"."eavconsumptionhour"( 
	"measurepointid" int NOT NULL,
	"datetime" timestamp NOT NULL,
	"dataparameterid" smallint NOT NULL,
	"value" double precision NOT NULL,
	"isbad" boolean NOT NULL,
	"iscalc" boolean NOT NULL,
	"isinterpolated" boolean NOT NULL);

CREATE TABLE "public"."eavconsumptionlast"( 
	"measurepointid" int NOT NULL,
	"datetime" timestamp NOT NULL,
	"datatype" smallint NOT NULL,
	"attributes" smallint NOT NULL);

CREATE TABLE "public"."eavconsumptionlastvalue"( 
	"measurepointid" int NOT NULL,
	"dataparameterid" smallint NOT NULL,
	"value" double precision NOT NULL,
	"isbad" boolean NOT NULL,
	"iscalc" boolean NOT NULL);

CREATE TABLE "public"."eavconsumptionmonth"( 
	"measurepointid" int NOT NULL,
	"datetime" timestamp NOT NULL,
	"dataparameterid" smallint NOT NULL,
	"value" double precision NOT NULL,
	"isbad" boolean NOT NULL,
	"iscalc" boolean NOT NULL,
	"isinterpolated" boolean NOT NULL);

CREATE TABLE "public"."eavtotalslast"( 
	"measurepointid" int NOT NULL,
	"datetime" timestamp NOT NULL,
	"attributes" smallint NOT NULL);

CREATE TABLE "public"."eavtotalslastvalue"( 
	"measurepointid" int NOT NULL,
	"dataparameterid" smallint NOT NULL,
	"value" double precision NOT NULL,
	"isbad" boolean NOT NULL,
	"iscalc" boolean NOT NULL);

CREATE TABLE "public"."electricconsumptionday"( 
	"measurepointid" int NOT NULL,
	"datadate" timestamp NOT NULL,
	"ap1" real,
	"an1" real,
	"rp1" real,
	"rn1" real,
	"ap2" real,
	"an2" real,
	"rp2" real,
	"rn2" real,
	"ap3" real,
	"an3" real,
	"rp3" real,
	"rn3" real,
	"ap4" real,
	"an4" real,
	"rp4" real,
	"rn4" real,
	"attributes" smallint,
	"calculatedvalues" int,
	"badvalues" int,
	"ap" real,
	"an" real,
	"rp" real,
	"rn" real,
	"interpolatedvalues" int,
	"normaloperationduration" real);

CREATE TABLE "public"."electricconsumptionhour"( 
	"measurepointid" int NOT NULL,
	"datadate" timestamp NOT NULL,
	"ap1" real,
	"an1" real,
	"rp1" real,
	"rn1" real,
	"ap2" real,
	"an2" real,
	"rp2" real,
	"rn2" real,
	"ap3" real,
	"an3" real,
	"rp3" real,
	"rn3" real,
	"ap4" real,
	"an4" real,
	"rp4" real,
	"rn4" real,
	"attributes" smallint,
	"calculatedvalues" int,
	"badvalues" int,
	"ap" real,
	"an" real,
	"rp" real,
	"rn" real,
	"interpolatedvalues" int,
	"normaloperationduration" real);

CREATE TABLE "public"."electricconsumptionmonth"( 
	"measurepointid" int NOT NULL,
	"datadate" timestamp NOT NULL,
	"ap1" real,
	"an1" real,
	"rp1" real,
	"rn1" real,
	"ap2" real,
	"an2" real,
	"rp2" real,
	"rn2" real,
	"ap3" real,
	"an3" real,
	"rp3" real,
	"rn3" real,
	"ap4" real,
	"an4" real,
	"rp4" real,
	"rn4" real,
	"attributes" smallint,
	"calculatedvalues" int,
	"badvalues" int,
	"ap" real,
	"an" real,
	"rp" real,
	"rn" real,
	"interpolatedvalues" int,
	"normaloperationduration" real);

CREATE TABLE "public"."electricpower"( 
	"measurepointid" int NOT NULL,
	"datadate" timestamp NOT NULL,
	"flags" smallint NOT NULL,
	"interval" smallint NOT NULL,
	"pp" double precision,
	"pn" double precision,
	"qp" double precision,
	"qn" double precision,
	"badvalues" int);

CREATE TABLE "public"."electricpowerquality"( 
	"measurepointid" int NOT NULL,
	"datadate" timestamp NOT NULL,
	"pp" real,
	"pn" real,
	"qp" real,
	"qn" real,
	"calculatedvalues" bigint,
	"badvalues" bigint,
	"s" real,
	"sa" real,
	"sb" real,
	"sc" real,
	"pa" real,
	"pb" real,
	"pc" real,
	"qa" real,
	"qb" real,
	"qc" real,
	"u" real,
	"ua" real,
	"ub" real,
	"uc" real,
	"i" real,
	"ia" real,
	"ib" real,
	"ic" real,
	"phiuab" real,
	"phiuac" real,
	"phiubc" real,
	"phiuia" real,
	"phiuib" real,
	"phiuic" real,
	"frequency" real,
	"p" real,
	"q" real,
	"cosphi" real,
	"cosphia" real,
	"cosphib" real,
	"cosphic" real);

CREATE TABLE "public"."electrictotals"( 
	"measurepointid" int NOT NULL,
	"datadate" timestamp NOT NULL,
	"ap1" double precision,
	"an1" double precision,
	"rp1" double precision,
	"rn1" double precision,
	"ap2" double precision,
	"an2" double precision,
	"rp2" double precision,
	"rn2" double precision,
	"ap3" double precision,
	"an3" double precision,
	"rp3" double precision,
	"rn3" double precision,
	"ap4" double precision,
	"an4" double precision,
	"rp4" double precision,
	"rn4" double precision,
	"flags" smallint NOT NULL,
	"calculatedvalues" int,
	"badvalues" int,
	"ap" double precision,
	"an" double precision,
	"rp" double precision,
	"rn" double precision,
	"resettedvalues" int,
	"interpolatedvalues" int,
	"normaloperationduration" double precision);

CREATE TABLE "public"."equipment"( 
	"id" int NOT NULL,
	"equipmentmodelid" int NOT NULL,
	"serialnumber" varchar(32) NOT NULL,
	"lastcalibrationdate" date,
	"scheduledcalibrationdate" date,
	"modificationid" int,
	"password" varchar(50) NOT NULL,
	"comment" varchar(1000) NOT NULL,
	"modemidentifier" varchar(32),
	"modempollportid" int,
	"modemimei" varchar(15),
	"networkaddress" varchar(20),
	"secondlevelpassword" varchar(50),
	"isshared" boolean NOT NULL,
	"modemenablekeepalive" boolean,
	"divisionid" int);

CREATE TABLE "public"."equipmenthistory"( 
	"id" bigint NOT NULL,
	"datetime" timestamp NOT NULL,
	"nodeid" int NOT NULL,
	"measurepointid" int,
	"action" smallint NOT NULL,
	"equipmentmodelid" int NOT NULL,
	"serialnumber" varchar(32) NOT NULL);

CREATE TABLE "public"."equipmentmodel"( 
	"id" int NOT NULL,
	"issystem" boolean NOT NULL,
	"longtitle" varchar(200) NOT NULL,
	"title" varchar(100) NOT NULL,
	"capabilities" smallint NOT NULL,
	"comment" varchar(1000) NOT NULL,
	"serialnumberformat" varchar(100) NOT NULL,
	"serialnumbercomment" varchar(200) NOT NULL,
	"stateregisternumber" varchar(30) NOT NULL,
	"calibrationinterval" smallint NOT NULL,
	"istemperaturesensor" boolean NOT NULL,
	"ispressuresensor" boolean NOT NULL,
	"isflowsensor" boolean NOT NULL,
	"supportedsystemtypes" smallint NOT NULL,
	"supportedcommlinks" smallint NOT NULL,
	"supportedcalltypes" smallint NOT NULL,
	"modemfeatures" smallint NOT NULL,
	"drycontactcount" smallint NOT NULL,
	"iselectricmeter" boolean NOT NULL);

CREATE TABLE "public"."equipmentmodeladapter"( 
	"equipmentmodelid" int NOT NULL,
	"adapterid" int NOT NULL);

CREATE TABLE "public"."equipmentmodelmodification"( 
	"id" int NOT NULL,
	"equipmentmodelid" int NOT NULL,
	"issystem" boolean NOT NULL,
	"comment" varchar(1000) NOT NULL,
	"precisionclass" varchar(4) NOT NULL,
	"nominaldiameter" smallint NOT NULL,
	"relativeerror" real NOT NULL,
	"tempsensormin" real NOT NULL,
	"tempsensormax" real NOT NULL,
	"presssensormin" real NOT NULL,
	"presssensormax" real NOT NULL,
	"flowsensormin" real NOT NULL,
	"flowsensormax" real NOT NULL);

CREATE TABLE "public"."equipmentmodelport"( 
	"id" int NOT NULL,
	"title" varchar(20) NOT NULL,
	"equipmentmodelid" int NOT NULL);

CREATE TABLE "public"."equipmentmodelportsettings"( 
	"id" int NOT NULL,
	"title" varchar(50) NOT NULL,
	"equipmentmodelportid" int NOT NULL);

CREATE TABLE "public"."equipmentpollconnection"( 
	"equipmentid" int NOT NULL,
	"nodeid" int NOT NULL,
	"pollconnectionid" int NOT NULL);

CREATE TABLE "public"."equipmentpollstatistics"( 
	"id" int NOT NULL,
	"equipmentid" int NOT NULL,
	"enddate" timestamp NOT NULL,
	"pollresult" smallint NOT NULL,
	"polltype" smallint NOT NULL,
	"commlinktype" smallint NOT NULL,
	"pollerrorcount" int NOT NULL);

CREATE TABLE "public"."gasconsumptioncurrent"( 
	"measurepointid" int NOT NULL,
	"datadate" timestamp NOT NULL,
	"t" real,
	"p" real,
	"v" real,
	"v_std" real,
	"calculatedvalues" int,
	"badvalues" int,
	"t_outdoor" real,
	"m" real,
	"p_delta" real);

CREATE TABLE "public"."gasconsumptionday"( 
	"measurepointid" int NOT NULL,
	"datadate" timestamp NOT NULL,
	"t" real,
	"p" real,
	"v" real,
	"v_std" real,
	"normaloperationduration" real,
	"attributes" smallint,
	"calculatedvalues" int,
	"badvalues" int,
	"t_outdoor" real,
	"interpolatedvalues" int,
	"m" real,
	"p_delta" real);

CREATE TABLE "public"."gasconsumptionhour"( 
	"measurepointid" int NOT NULL,
	"datadate" timestamp NOT NULL,
	"t" real,
	"p" real,
	"v" real,
	"v_std" real,
	"normaloperationduration" real,
	"attributes" smallint,
	"calculatedvalues" int,
	"badvalues" int,
	"t_outdoor" real,
	"interpolatedvalues" int,
	"m" real,
	"p_delta" real);

CREATE TABLE "public"."gasconsumptionmonth"( 
	"measurepointid" int NOT NULL,
	"datadate" timestamp NOT NULL,
	"t" real,
	"p" real,
	"v" real,
	"v_std" real,
	"normaloperationduration" real,
	"attributes" smallint,
	"calculatedvalues" int,
	"badvalues" int,
	"t_outdoor" real,
	"interpolatedvalues" int,
	"m" real,
	"p_delta" real);

CREATE TABLE "public"."gastotals"( 
	"measurepointid" int NOT NULL,
	"datadate" timestamp NOT NULL,
	"v" double precision,
	"v_std" double precision,
	"normaloperationduration" double precision,
	"flags" smallint NOT NULL,
	"calculatedvalues" int,
	"badvalues" int,
	"resettedvalues" int,
	"interpolatedvalues" int,
	"m" double precision);

CREATE TABLE "public"."generaldeviceconfigparam"( 
	"id" int NOT NULL,
	"title" varchar(100) NOT NULL);

CREATE TABLE "public"."gprscontrollersession"( 
	"id" int NOT NULL,
	"startdatetime" timestamp NOT NULL,
	"enddatetime" timestamp,
	"controllerclock" timestamp,
	"signallevel" smallint,
	"hardwareversion" varchar(30),
	"firmwareversion" varchar(30),
	"remoteipaddress" varchar(15) NOT NULL,
	"remoteport" int NOT NULL,
	"balance" real,
	"bytessent" bigint NOT NULL,
	"bytesreceived" bigint NOT NULL,
	"iccid" varchar(20),
	"activesim" smallint,
	"simpinenabled" boolean,
	"equipmentid" int NOT NULL,
	"endreason" smallint NOT NULL);

CREATE TABLE "public"."heatloss"( 
	"measurepointid" int NOT NULL,
	"year" smallint NOT NULL,
	"jan" real,
	"feb" real,
	"mar" real,
	"apr" real,
	"may" real,
	"jun" real,
	"jul" real,
	"aug" real,
	"sep" real,
	"oct" real,
	"nov" real,
	"dec" real,
	"percent" real,
	"hour" real);

CREATE TABLE "public"."ipaddress"( 
	"accountid" int NOT NULL,
	"rangestartip" bigint NOT NULL,
	"rangeendip" bigint NOT NULL);

CREATE TABLE "public"."incidenttype"( 
	"id" int NOT NULL,
	"title" varchar(100) NOT NULL);

CREATE TABLE "public"."inspector"( 
	"id" int NOT NULL,
	"name" varchar(100) NOT NULL,
	"post" varchar(100) NOT NULL,
	"phone" varchar(200) NOT NULL,
	"email" varchar(50) NOT NULL,
	"comment" varchar(1000) NOT NULL,
	"supplierid" int NOT NULL);

CREATE TABLE "public"."limittemps"( 
	"tempin" smallint,
	"t0" smallint,
	"t2" smallint,
	"t4" smallint,
	"t6" smallint,
	"t8" smallint,
	"t10" smallint,
	"t12" smallint,
	"t14" smallint,
	"t16" smallint,
	"t18" smallint,
	"t20" smallint,
	"t22" smallint,
	"t24" smallint,
	"t26" smallint,
	"t28" smallint,
	"t30" smallint,
	"t32" smallint);

CREATE TABLE "public"."maillist"( 
	"taskid" int NOT NULL,
	"sendsms" boolean NOT NULL,
	"sendemail" boolean NOT NULL,
	"accountid" int NOT NULL);

CREATE TABLE "public"."map"( 
	"id" int NOT NULL,
	"title" varchar(255) NOT NULL,
	"ispublic" boolean NOT NULL);

CREATE TABLE "public"."mapimage"( 
	"checksum" int NOT NULL,
	"image" bytea NOT NULL);

CREATE TABLE "public"."mapobject"( 
	"id" int NOT NULL,
	"mapid" int NOT NULL,
	"mapobjecttypeid" smallint NOT NULL,
	"measurepointid" int,
	"x" int NOT NULL,
	"y" int NOT NULL,
	"dx" int NOT NULL,
	"dy" int NOT NULL,
	"text" varchar(100) NOT NULL,
	"tag" varchar(1500) NOT NULL,
	"image" int,
	"parameter" varchar(20),
	"locked" boolean NOT NULL,
	"zorder" int NOT NULL,
	"nodesignalingid" int);

CREATE TABLE "public"."mapobjectappearance"( 
	"mapobjectid" int NOT NULL,
	"appearancetype" smallint NOT NULL,
	"bordercolor" int NOT NULL,
	"borderwidth" smallint NOT NULL,
	"fillcolor" int NOT NULL,
	"fontcolor" int NOT NULL,
	"fontsize" real NOT NULL,
	"fontfamily" varchar(50) NOT NULL,
	"fontstyle" smallint NOT NULL,
	"textvalignment" smallint NOT NULL,
	"texthalignment" smallint NOT NULL,
	"visible" boolean NOT NULL);

CREATE TABLE "public"."mapobjecttype"( 
	"id" smallint NOT NULL,
	"title" varchar(20) NOT NULL);

CREATE TABLE "public"."measurepoint"( 
	"measurepoint_id" int NOT NULL,
	"measurepoint_title" varchar(150) NOT NULL,
	"measurepoint_servicenumber" int NOT NULL,
	"measurepoint_comment" varchar(1000) NOT NULL,
	"measurepoint_type" smallint NOT NULL,
	"measurepoint_state" smallint NOT NULL,
	"measurepoint_selectedparamslist" varchar(350) NOT NULL,
	"measurepoint_nodeid" int,
	"measurepoint_systemtypeid" smallint NOT NULL,
	"autopollstartdate" timestamp,
	"isdoublepipesystem" boolean NOT NULL,
	"personalaccountid" int,
	"contractheat" real NOT NULL,
	"contractflow" real NOT NULL,
	"currentratio" real NOT NULL,
	"voltageratio" real NOT NULL,
	"contractpin" real NOT NULL,
	"contractpout" real NOT NULL,
	"contracttin" real NOT NULL,
	"contracttout" real NOT NULL,
	"showcalculateddata" boolean NOT NULL,
	"devicepressuretype" smallint NOT NULL,
	"counterid" int,
	"calculatemissingtotals" boolean NOT NULL,
	"calculatemissingtotalsestimate" boolean NOT NULL,
	"calculatemissinghourconsumption" smallint NOT NULL,
	"calculatemissingdayconsumption" smallint NOT NULL,
	"calculatemissingmonthconsumption" smallint NOT NULL,
	"calculatemissingvalues" boolean NOT NULL,
	"reportinghour" smallint NOT NULL,
	"reportingday" smallint NOT NULL,
	"showbadvalues" boolean NOT NULL,
	"calculatemissingheatvalues" boolean NOT NULL,
	"calculatedvaluesaveragingmode" smallint NOT NULL,
	"isreversibleflow" boolean NOT NULL,
	"reportinghourmode" smallint NOT NULL,
	"isvirtual" boolean NOT NULL,
	"useadvancedtotalsinterpolation" boolean NOT NULL,
	"diagdatatypes" smallint,
	"displaypressuretype" smallint NOT NULL,
	"admissiondate" timestamp);

CREATE TABLE "public"."measurepointcustomattribute"( 
	"id" int NOT NULL,
	"customattributeid" int NOT NULL,
	"measurepointid" int NOT NULL,
	"value" varchar(200) NOT NULL);

CREATE TABLE "public"."measurepointdatacopysettings"( 
	"targetmeasurepointid" int NOT NULL,
	"waterparameter" int NOT NULL,
	"sourcemeasurepointid" int NOT NULL);

CREATE TABLE "public"."measurepointdeviceerrorday"( 
	"measurepointid" int NOT NULL,
	"archivetype" smallint NOT NULL,
	"channelnumber" int NOT NULL,
	"datetime" timestamp NOT NULL,
	"eventcode" int NOT NULL,
	"description" varchar(200) NOT NULL,
	"duration" int NOT NULL);

CREATE TABLE "public"."measurepointdeviceerrorhour"( 
	"measurepointid" int NOT NULL,
	"archivetype" smallint NOT NULL,
	"channelnumber" int NOT NULL,
	"datetime" timestamp NOT NULL,
	"eventcode" int NOT NULL,
	"description" varchar(200) NOT NULL,
	"duration" int NOT NULL);

CREATE TABLE "public"."measurepointdeviceerrormonth"( 
	"measurepointid" int NOT NULL,
	"archivetype" smallint NOT NULL,
	"channelnumber" int NOT NULL,
	"datetime" timestamp NOT NULL,
	"eventcode" int NOT NULL,
	"description" varchar(200) NOT NULL,
	"duration" int NOT NULL);

CREATE TABLE "public"."measurepointdiagdefaults"( 
	"systemtypeid" smallint NOT NULL,
	"incidenttypeid" int NOT NULL,
	"isenabled" boolean NOT NULL,
	"value1" real NOT NULL,
	"value2" real NOT NULL,
	"issummermode" boolean NOT NULL);

CREATE TABLE "public"."measurepointdiagparams"( 
	"measurepointid" int NOT NULL,
	"incidenttypeid" int NOT NULL,
	"isenabled" boolean NOT NULL,
	"value1" real NOT NULL,
	"value2" real NOT NULL,
	"issummermode" boolean NOT NULL);

CREATE TABLE "public"."measurepointexpression"( 
	"measurepointid" int NOT NULL,
	"dataparameter" smallint NOT NULL,
	"expression" varchar(1999) NOT NULL);

CREATE TABLE "public"."measurepointorder"( 
	"measurepointid" int NOT NULL,
	"ordernumber" smallint NOT NULL);

CREATE TABLE "public"."measurepointreport"( 
	"measurepointid" int NOT NULL,
	"reportid" int NOT NULL,
	"reporttemplateid" int NOT NULL);

CREATE TABLE "public"."measurepointsensor"( 
	"measurepointid" int NOT NULL,
	"issupplychannel" boolean NOT NULL,
	"measuredparameterid" smallint NOT NULL,
	"equipmentid" int NOT NULL);

CREATE TABLE "public"."measuredparameter"( 
	"measuredparameter_id" smallint NOT NULL,
	"measuredparameter_title" varchar(30) NOT NULL,
	"measuredparameter_systemunitid" smallint,
	"measuredparameter_code" varchar(40) NOT NULL);

CREATE TABLE "public"."messagelog"( 
	"id" int NOT NULL,
	"date" timestamp NOT NULL,
	"senderaccountid" int,
	"sendername" varchar(50) NOT NULL,
	"recipientname" varchar(50) NOT NULL,
	"recipientaddress" varchar(50) NOT NULL,
	"message" varchar(1999) NOT NULL,
	"messagetype" smallint NOT NULL,
	"sendresult" varchar(256) NOT NULL,
	"sendstate" smallint NOT NULL,
	"sendscheduledate" timestamp NOT NULL);

CREATE TABLE "public"."modemcommand"( 
	"modemcommand_modemtypeid" smallint NOT NULL,
	"modemcommand_modemcommandtypeid" smallint NOT NULL,
	"modemcommand_text" varchar(70) NOT NULL,
	"modemcommand_terminationtype" smallint NOT NULL,
	"modemcommand_delaybefore" int NOT NULL,
	"modemcommand_timeout" int NOT NULL,
	"modemcommand_badanswerlist" varchar(100) NOT NULL,
	"modemcommand_goodanswerlist" varchar(50) NOT NULL,
	"modemcommand_comment" varchar(250) NOT NULL);

CREATE TABLE "public"."modemcommandtype"( 
	"modemcommandtype_id" smallint NOT NULL,
	"modemcommandtype_title" varchar(50) NOT NULL,
	"modemcommandtype_code" varchar(40) NOT NULL,
	"modemcommandtype_comment" varchar(150) NOT NULL);

CREATE TABLE "public"."modemtype"( 
	"modemtype_id" smallint NOT NULL,
	"modemtype_title" varchar(50) NOT NULL,
	"modemtype_communicationlinktype" smallint NOT NULL,
	"modemtype_datatransferdelay" int NOT NULL,
	"modemtype_portsettings" varchar(15) NOT NULL,
	"modemtype_maxcommandlen" smallint NOT NULL,
	"modemtype_shieldcode" smallint);

CREATE TABLE "public"."nestedbalancegroups"( 
	"parentid" int NOT NULL,
	"childid" int NOT NULL);

CREATE TABLE "public"."node"( 
	"id" int NOT NULL,
	"title" varchar(150) NOT NULL,
	"address" varchar(100) NOT NULL,
	"comment" varchar(1000) NOT NULL,
	"number" int NOT NULL,
	"customerid" int,
	"responsiblename" varchar(100) NOT NULL,
	"responsiblephone" varchar(25) NOT NULL,
	"servicecompanyid" int,
	"state" smallint NOT NULL,
	"servicemanid" int,
	"type" smallint NOT NULL,
	"normcoldwater" real NOT NULL,
	"normhotwater" real NOT NULL,
	"normheat" real NOT NULL,
	"normelectricity" real NOT NULL,
	"normgas" real NOT NULL,
	"iscommunalpollenabled" boolean NOT NULL,
	"timezoneoffset" smallint NOT NULL,
	"coldwatertemp" real NOT NULL,
	"licensecount" smallint NOT NULL,
	"contractmintemp" smallint NOT NULL,
	"contractmaxtemp" smallint NOT NULL,
	"contractlowbreaktemp" smallint NOT NULL,
	"contracthighbreaktemp" smallint NOT NULL,
	"minoutdoortemp" smallint NOT NULL,
	"temperaturecomplianceanalysistype" smallint NOT NULL,
	"territoryid" int NOT NULL,
	"divisionid" int);

CREATE TABLE "public"."nodebalance"( 
	"id" int NOT NULL,
	"nodeid" int NOT NULL,
	"symbol" varchar(32) NOT NULL,
	"expression" varchar(1999) NOT NULL);

CREATE TABLE "public"."nodecustomattribute"( 
	"id" int NOT NULL,
	"nodeid" int NOT NULL,
	"customattributeid" int NOT NULL,
	"value" varchar(200) NOT NULL);

CREATE TABLE "public"."nodediagdefaults"( 
	"incidenttypeid" int NOT NULL,
	"isenabled" boolean NOT NULL,
	"value1" real NOT NULL,
	"value2" real NOT NULL);

CREATE TABLE "public"."nodediagparams"( 
	"nodeid" int NOT NULL,
	"incidenttypeid" int NOT NULL,
	"isenabled" boolean NOT NULL,
	"value1" real NOT NULL,
	"value2" real NOT NULL);

CREATE TABLE "public"."nodeequipment"( 
	"nodeid" int NOT NULL,
	"equipmentid" int NOT NULL);

CREATE TABLE "public"."nodefile"( 
	"id" int NOT NULL,
	"nodeid" int NOT NULL,
	"filename" varchar(260) NOT NULL,
	"creationtime" timestamp NOT NULL,
	"lastwritetime" timestamp NOT NULL,
	"content" bytea NOT NULL,
	"hash" bytea NOT NULL,
	"publicfile" boolean NOT NULL,
	"thumbnail" bytea,
	"length" varchar);

CREATE TABLE "public"."nodegeolocation"( 
	"nodeid" int NOT NULL,
	"latitude" double precision NOT NULL,
	"longitude" double precision NOT NULL);

CREATE TABLE "public"."nodegroup"( 
	"id" int NOT NULL,
	"title" varchar(75) NOT NULL,
	"comment" varchar(250) NOT NULL,
	"divisionid" int);

CREATE TABLE "public"."nodegroupmembership"( 
	"nodegroupid" int NOT NULL,
	"nodeid" int NOT NULL);

CREATE TABLE "public"."nodejob"( 
	"id" int NOT NULL,
	"nodeid" int NOT NULL,
	"measurepointid" int,
	"creatoraccountid" int,
	"creatorname" varchar(50) NOT NULL,
	"performeraccountid" int,
	"performername" varchar(50) NOT NULL,
	"startdate" date NOT NULL,
	"scheduledenddate" date NOT NULL,
	"factenddate" date,
	"title" varchar(200) NOT NULL,
	"description" varchar(1000) NOT NULL,
	"state" smallint NOT NULL,
	"type" smallint NOT NULL,
	"resolutionid" int,
	"incidentid" int,
	"workordernumber" varchar(20) NOT NULL);

CREATE TABLE "public"."nodejobcomment"( 
	"id" int NOT NULL,
	"nodejobid" int NOT NULL,
	"datetime" timestamp NOT NULL,
	"accountid" int,
	"accountname" varchar(50) NOT NULL,
	"text" varchar(1999));

CREATE TABLE "public"."nodejobfile"( 
	"nodejobid" int NOT NULL,
	"nodefileid" int NOT NULL);

CREATE TABLE "public"."nodejobresolution"( 
	"id" int NOT NULL,
	"title" varchar(128) NOT NULL);

CREATE TABLE "public"."nodepollconnection"( 
	"pollconnectionid" int NOT NULL,
	"nodeid" int NOT NULL);

CREATE TABLE "public"."nodereport"( 
	"nodeid" int NOT NULL,
	"reportid" int NOT NULL,
	"reporttemplateid" int NOT NULL);

CREATE TABLE "public"."nodeseasonhistory"( 
	"nodeid" int NOT NULL,
	"startdate" date NOT NULL,
	"isheatingseason" boolean NOT NULL);

CREATE TABLE "public"."nodesignaling"( 
	"id" int NOT NULL,
	"nodeid" int NOT NULL,
	"signaltitle" varchar(50) NOT NULL,
	"drycontactnumber" smallint NOT NULL,
	"incidentimportanceset" smallint NOT NULL,
	"incidentmessageset" varchar(100) NOT NULL,
	"incidentimportanceunset" smallint NOT NULL,
	"incidentmessageunset" varchar(100) NOT NULL,
	"currentstate" smallint NOT NULL,
	"equipmentid" int NOT NULL);

CREATE TABLE "public"."nodesupplier"( 
	"nodeid" int NOT NULL,
	"systemtype" smallint NOT NULL,
	"supplierid" int,
	"contractnumber" varchar(20) NOT NULL,
	"contractdate" timestamp,
	"inspectorid" int);

CREATE TABLE "public"."nodeuserdiagparams"( 
	"id" int NOT NULL,
	"nodeid" int NOT NULL,
	"expression" varchar(1999) NOT NULL,
	"seasons" smallint NOT NULL,
	"datatypes" smallint NOT NULL,
	"message" varchar(500) NOT NULL,
	"enabled" boolean NOT NULL,
	"importance" smallint NOT NULL,
	"shortmessage" varchar(100) NOT NULL);

CREATE TABLE "public"."notification"( 
	"id" int NOT NULL,
	"notificationtypeid" int NOT NULL,
	"datetime" timestamp NOT NULL,
	"message" varchar(500) NOT NULL,
	"importance" smallint NOT NULL,
	"expireddate" date,
	"equipmentid" int,
	"incidentid" int,
	"nodejobid" int,
	"url" varchar(256),
	"measurepointid" int);

CREATE TABLE "public"."notificationtype"( 
	"id" int NOT NULL,
	"title" varchar(100) NOT NULL);

CREATE TABLE "public"."outdoortemperature"( 
	"date" timestamp NOT NULL,
	"value" real NOT NULL,
	"territoryid" int NOT NULL);

CREATE TABLE "public"."personalaccount"( 
	"personalaccount_id" int NOT NULL,
	"personalaccount_number" varchar(50) NOT NULL,
	"personalaccount_numberapartment" varchar(50) NOT NULL,
	"personalaccount_numberresident" smallint NOT NULL,
	"personalaccount_areaapartment" real NOT NULL,
	"nodeid" int NOT NULL,
	"type" smallint NOT NULL,
	"contracthotwater" real NOT NULL,
	"contractcoldwater" real NOT NULL,
	"contractgas" real NOT NULL,
	"contractelectricity" real NOT NULL,
	"contractheat" real NOT NULL,
	"contractconsumptiontype" smallint NOT NULL,
	"floornumber" smallint NOT NULL,
	"roomcount" smallint NOT NULL,
	"entrancenumber" smallint NOT NULL);

CREATE TABLE "public"."plugin"( 
	"identifier" uuid NOT NULL,
	"filename" varchar(255) NOT NULL,
	"isdisabled" boolean NOT NULL,
	"settings" varchar NOT NULL);

CREATE TABLE "public"."pollconnection"( 
	"id" int NOT NULL,
	"title" varchar(150) NOT NULL,
	"commlinktype" smallint NOT NULL,
	"pollportid" int,
	"pollportgroupid" int,
	"commdeviceequipmentid" int,
	"commdeviceportid" int,
	"commdeviceportsettingsid" int,
	"connectiontimeout" int,
	"dialnumber" varchar(30),
	"commlinkprotocol" smallint NOT NULL,
	"gprscalltype" smallint NOT NULL,
	"gprsautodisconnect" boolean NOT NULL,
	"internethost" varchar(50) NOT NULL,
	"internetport" int NOT NULL,
	"imitatemodem" boolean NOT NULL,
	"portspeed" int NOT NULL,
	"flowcontrol" smallint NOT NULL);

CREATE TABLE "public"."pollport"( 
	"pollport_id" int NOT NULL,
	"pollport_portnumber" smallint NOT NULL,
	"pollport_enabled" boolean NOT NULL,
	"pollport_title" varchar(50) NOT NULL,
	"pollport_dialprefix" varchar(10) NOT NULL,
	"pollport_communicationlinktype" smallint NOT NULL,
	"pollport_modemtypeid" smallint NOT NULL,
	"gprslistenipaddress" varchar(15) NOT NULL,
	"gprslistenport" smallint NOT NULL,
	"maxconnectionscount" smallint NOT NULL,
	"softwarecarriercontrol" boolean NOT NULL,
	"comment" varchar(200) NOT NULL,
	"pollportgroupid" int,
	"billingmodel" smallint NOT NULL,
	"tariffplanincludedminutes" int NOT NULL,
	"pollserviceid" int NOT NULL);

CREATE TABLE "public"."pollportgroup"( 
	"id" int NOT NULL,
	"title" varchar(50) NOT NULL);

CREATE TABLE "public"."pollportstatistics"( 
	"pollportid" int NOT NULL,
	"date" date NOT NULL,
	"callcount" int NOT NULL,
	"totalcallsduration" int NOT NULL,
	"traffic" bigint NOT NULL);

CREATE TABLE "public"."pollservice"( 
	"id" int NOT NULL,
	"title" varchar(256) NOT NULL,
	"ipaddress" varchar(45) NOT NULL,
	"debugenabled" boolean NOT NULL,
	"token" varchar(256));

CREATE TABLE "public"."pollsession"( 
	"pollsession_id" int NOT NULL,
	"pollsession_clientsessionid" int NOT NULL,
	"pollsession_taskid" int,
	"pollsession_startdatetime" timestamp NOT NULL,
	"pollsession_enddatetime" timestamp,
	"pollsession_resultcode" smallint,
	"pollsession_communicationlinktype" smallint NOT NULL,
	"dialtime" real NOT NULL,
	"pollportid" int,
	"nodeid" int,
	"phonenumber" varchar(30) NOT NULL,
	"polltasktype" smallint NOT NULL,
	"callduration" int NOT NULL,
	"bytessent" bigint NOT NULL,
	"bytesreceived" bigint NOT NULL,
	"commequipmentid" int,
	"pollconnectionid" int);

CREATE TABLE "public"."pollsessionlog"( 
	"pollsessionlog_pollsessionid" int NOT NULL,
	"pollsessionlog_datadate" timestamp NOT NULL,
	"pollsessionlog_type" smallint NOT NULL,
	"pollsessionlog_message" varchar(1999) NOT NULL);

CREATE TABLE "public"."polltask"( 
	"id" int NOT NULL,
	"description" varchar(255) NOT NULL,
	"startdatetime" timestamp NOT NULL,
	"enddatetime" timestamp NOT NULL,
	"executionstate" smallint NOT NULL,
	"maxattempts" smallint NOT NULL,
	"attempt" smallint NOT NULL,
	"lastattempttime" timestamp,
	"lastattemptresultcode" int,
	"nextattemptdelay" int NOT NULL,
	"freqtype" smallint NOT NULL,
	"freqinterval" int NOT NULL,
	"starttime" smallint NOT NULL,
	"retryinterval" smallint NOT NULL,
	"endtime" smallint NOT NULL,
	"pollintervalstartdate" timestamp,
	"pollintervalenddate" timestamp,
	"pollinstantinterval" int NOT NULL,
	"remoteconsolemode" boolean NOT NULL,
	"lastattemptendtime" timestamp,
	"priority" smallint NOT NULL,
	"type" smallint NOT NULL,
	"loadabsentdataonly" boolean NOT NULL,
	"pollconnectionid" int NOT NULL);

CREATE TABLE "public"."polltaskmeasurepoint"( 
	"taskid" int NOT NULL,
	"measurepointid" int NOT NULL,
	"performtimecorrection" boolean NOT NULL,
	"requesteddatamask" smallint NOT NULL,
	"backupconnectionid" int,
	"backuplastpolldate" timestamp,
	"backupstarttime" smallint NOT NULL);

CREATE TABLE "public"."preparedreport"( 
	"id" int NOT NULL,
	"generationdatetime" timestamp NOT NULL,
	"reporttitle" varchar(100) NOT NULL,
	"templatetitle" varchar(200) NOT NULL,
	"reporttype" smallint NOT NULL,
	"reportentity" smallint NOT NULL,
	"nodeid" int,
	"measurepointid" int,
	"datatype" smallint NOT NULL,
	"startdate" timestamp NOT NULL,
	"enddate" timestamp NOT NULL,
	"data" bytea NOT NULL,
	"thumbnail" bytea NOT NULL,
	"filename" varchar(200) NOT NULL);

CREATE TABLE "public"."protocoltype"( 
	"id" int NOT NULL,
	"number" smallint NOT NULL,
	"title" varchar(50) NOT NULL,
	"equipmentmodelid" int NOT NULL);

CREATE TABLE "public"."report"( 
	"id" int NOT NULL,
	"title" varchar(100) NOT NULL,
	"issystem" boolean NOT NULL,
	"datatype" smallint NOT NULL,
	"reporttype" smallint NOT NULL,
	"periodstartday" smallint NOT NULL,
	"periodstartmonth" smallint NOT NULL,
	"periodendday" smallint NOT NULL,
	"periodendmonth" smallint NOT NULL,
	"periodtype" smallint NOT NULL,
	"reportentity" smallint NOT NULL,
	"reporttemplateid" int,
	"filenameformat" varchar(200) NOT NULL,
	"usereportparameter" boolean NOT NULL);

CREATE TABLE "public"."reportfixednode"( 
	"reporttemplateid" int NOT NULL,
	"nodeid" int NOT NULL);

CREATE TABLE "public"."reportgeneratingtasknode"( 
	"taskid" int NOT NULL,
	"nodeid" int NOT NULL);

CREATE TABLE "public"."reportgeneratingtasksettings"( 
	"taskid" int NOT NULL,
	"measurepointsystems" smallint NOT NULL,
	"reportid" int NOT NULL,
	"mailingfileformat" smallint NOT NULL,
	"mailingfilesplitmode" smallint NOT NULL,
	"mailsubject" varchar(78) NOT NULL,
	"savereport" boolean NOT NULL,
	"mailingenabled" boolean NOT NULL,
	"mailmessage" varchar(500) NOT NULL,
	"pdfexportproperties" varchar NOT NULL,
	"reportsavedirectory" varchar(260) NOT NULL,
	"packattachments" boolean NOT NULL);

CREATE TABLE "public"."reportparameter"( 
	"id" int NOT NULL,
	"reportid" int NOT NULL,
	"reportparameterpropertyid" int NOT NULL,
	"value" varchar(100) NOT NULL);

CREATE TABLE "public"."reportparameterproperty"( 
	"id" int NOT NULL,
	"parametername" varchar(50) NOT NULL,
	"valuetype" smallint NOT NULL,
	"comment" varchar(300) NOT NULL,
	"reporttype" smallint NOT NULL,
	"reportentity" smallint NOT NULL,
	"issystem" boolean NOT NULL);

CREATE TABLE "public"."reporttemplate"( 
	"id" int NOT NULL,
	"title" varchar(200) NOT NULL,
	"comment" varchar(300) NOT NULL,
	"isuser" boolean NOT NULL,
	"datasourcemask" bigint NOT NULL,
	"text" varchar,
	"reportentity" smallint NOT NULL,
	"reporttype" smallint NOT NULL,
	"measurepointcountheat" smallint NOT NULL,
	"measurepointcounthotwater" smallint NOT NULL,
	"measurepointcountcoldwater" smallint NOT NULL,
	"measurepointcountsteam" smallint NOT NULL,
	"measurepointcountgas" smallint NOT NULL,
	"measurepointcountelectricity" smallint NOT NULL,
	"buildnumber" int NOT NULL,
	"estimationalgorithm" smallint NOT NULL,
	"dailyaveragecalculatingperiod" smallint NOT NULL,
	"devicemodel" int NOT NULL,
	"measurepointcountsewage" smallint NOT NULL);

CREATE TABLE "public"."roomcontractconsumption"( 
	"roomid" int NOT NULL,
	"monthnumber" smallint NOT NULL,
	"heatvalue" real,
	"hotwatervalue" real,
	"coldwatervalue" real,
	"electricityvalue" real);

CREATE TABLE "public"."roomcounter"( 
	"equipmentid" int NOT NULL,
	"roomid" int NOT NULL,
	"initialtotalsvalue1" double precision NOT NULL,
	"initialtotalsvalue2" double precision NOT NULL,
	"initialtotalsdate" timestamp NOT NULL,
	"installlocation" varchar(100) NOT NULL,
	"measurepointid" int);

CREATE TABLE "public"."scmmeasurepoints"( 
	"measurepointid" int NOT NULL);

CREATE TABLE "public"."servicecompany"( 
	"id" int NOT NULL,
	"title" varchar(200) NOT NULL,
	"phone" varchar(200) NOT NULL,
	"licensenumber" varchar(100) NOT NULL,
	"comment" varchar(1000) NOT NULL);

CREATE TABLE "public"."serviceman"( 
	"id" int NOT NULL,
	"name" varchar(100) NOT NULL,
	"servicecompanyid" int,
	"phone" varchar(40) NOT NULL,
	"email" varchar(30) NOT NULL,
	"comment" varchar(200) NOT NULL);

CREATE TABLE "public"."supplier"( 
	"id" int NOT NULL,
	"title" varchar(255) NOT NULL,
	"systemtypemask" smallint NOT NULL,
	"contacts" varchar(500) NOT NULL,
	"comment" varchar(1000) NOT NULL);

CREATE TABLE "public"."systemlog"( 
	"id" int NOT NULL,
	"datetime" timestamp NOT NULL,
	"importance" smallint NOT NULL,
	"message" varchar(500) NOT NULL);

CREATE TABLE "public"."systemparameters"( 
	"logdebugmessages" boolean NOT NULL,
	"polllogstoragetime" smallint NOT NULL,
	"systemlogstoragetime" smallint NOT NULL,
	"usersessionlogstoragetime" smallint NOT NULL,
	"accountlogstoragetime" smallint NOT NULL,
	"emaillogstoragetime" smallint NOT NULL,
	"isautopollenabled" boolean NOT NULL,
	"pollloglevel" smallint NOT NULL,
	"pollmaxduration" smallint NOT NULL,
	"pollmaxtimediff" int NOT NULL,
	"devicerequestretrycount" smallint NOT NULL,
	"pollportblockerrorcount" smallint NOT NULL,
	"pollportblocktimeout" smallint NOT NULL,
	"timecorrectionenabled" boolean NOT NULL,
	"timecorrectionthreshold" int NOT NULL,
	"gsmmodemenabled" boolean NOT NULL,
	"gsmmodemcomportnumber" smallint NOT NULL,
	"gsmmodembaudrate" int NOT NULL,
	"gsmmodemflowcontrol" smallint NOT NULL,
	"defaultsupplypressure" smallint NOT NULL,
	"defaultreturnpressure" smallint NOT NULL,
	"defaultcoldwatertemp" real NOT NULL,
	"pressuredisplaytype" smallint NOT NULL,
	"storagetimecurrentdata" smallint NOT NULL,
	"maxpartcountinmultipartsms" smallint NOT NULL,
	"smtpserver" varchar(50) NOT NULL,
	"smtpport" int NOT NULL,
	"smtpsenderaddress" varchar(50) NOT NULL,
	"smtpsenderdisplayname" varchar(50) NOT NULL,
	"smtplogin" varchar(30) NOT NULL,
	"smtppassword" varchar(30) NOT NULL,
	"iscommunalenabled" boolean NOT NULL,
	"diagenabled" boolean NOT NULL,
	"diagdaydataenabled" boolean NOT NULL,
	"diaghourdataenabled" boolean NOT NULL,
	"diagcurrentdataenabled" boolean NOT NULL,
	"storagetimemonthdata" smallint NOT NULL,
	"storagetimedaydata" smallint NOT NULL,
	"storagetimehourdata" smallint NOT NULL,
	"storagetimedeviceconfig" smallint NOT NULL,
	"storagetimedeviceevent" smallint NOT NULL,
	"storagetimepowerdata" smallint NOT NULL,
	"websiteaddress" varchar(50) NOT NULL,
	"smtpenablessl" boolean NOT NULL,
	"ignorenotalldatareaderror" boolean NOT NULL,
	"backupdirectory" varchar(100) NOT NULL,
	"updaterdatabasebackupmode" smallint NOT NULL,
	"storagetimetotalsdata" smallint NOT NULL,
	"backupcount" smallint NOT NULL,
	"calibrationnotifydaycount" smallint NOT NULL,
	"jobduedatenotifydaycount" smallint NOT NULL,
	"allowsmsnotifications" boolean NOT NULL,
	"gsmmodemmodelid" smallint NOT NULL,
	"storagetimepreparedreports" smallint NOT NULL,
	"id" int NOT NULL,
	"storagetimeincidents" smallint NOT NULL,
	"storagetimegprssessions" smallint NOT NULL,
	"allowednodefileextensions" varchar(500),
	"minimumpasswordlength" int NOT NULL,
	"passwordmustcontainnumbers" boolean NOT NULL,
	"passwordmustcontainuppercaseletters" boolean NOT NULL,
	"passwordmustcontainlowercaseletters" boolean NOT NULL,
	"passwordmustcontainspecialchars" boolean NOT NULL,
	"gsmmodem_usesipforvoicecalls" boolean NOT NULL,
	"gsmmodem_sipserveraddress" varchar(1999) NOT NULL,
	"gsmmodem_siplogin" varchar(50) NOT NULL,
	"gsmmodem_sippassword" varchar(128) NOT NULL,
	"gsmmodem_sipfromdomain" varchar(1999) NOT NULL,
	"savegeneratedreporttodatabase" boolean NOT NULL,
	"log_systemlog_gprsidenterror" boolean NOT NULL,
	"log_systemlog_gprsmodemnotfound" boolean NOT NULL,
	"log_systemlog_timecorrected" boolean NOT NULL,
	"log_systemlog_reportprinted" boolean NOT NULL,
	"log_systemlog_ratiodoesntmatch" boolean NOT NULL,
	"log_systemlog_pollerror" boolean NOT NULL,
	"log_systemlog_messagesent" boolean NOT NULL,
	"log_systemlog_usersessionstarted" boolean NOT NULL,
	"log_systemlog_authenticationerror" boolean NOT NULL,
	"log_systemlog_incidentclosed" boolean NOT NULL,
	"notification_admissiondatenotifydaycount" smallint NOT NULL,
	"storagetimenodeequipmenthistory" smallint NOT NULL,
	"poll_disableporterrorcount" smallint NOT NULL,
	"poll_rebootporterrorcount" smallint NOT NULL,
	"storagetimenotifications" smallint NOT NULL);

CREATE TABLE "public"."systemtype"( 
	"id" smallint NOT NULL,
	"title" varchar(50) NOT NULL);

CREATE TABLE "public"."task"( 
	"id" int NOT NULL,
	"freqtype" smallint NOT NULL,
	"freqinterval" int NOT NULL,
	"starttime" smallint NOT NULL,
	"retryinterval" smallint NOT NULL,
	"endtime" smallint NOT NULL,
	"title" varchar(100) NOT NULL,
	"enabled" boolean NOT NULL,
	"lastruntime" timestamp,
	"lastresult" boolean,
	"lastresulterrormessage" varchar(500) NOT NULL,
	"startdatetime" timestamp NOT NULL,
	"type" smallint NOT NULL);

CREATE TABLE "public"."territory"( 
	"id" int NOT NULL,
	"parentid" int,
	"name" varchar(128) NOT NULL,
	"timezoneoffset" smallint NOT NULL,
	"outdoortempsourcemeasurepointid" int);

CREATE TABLE "public"."timezone"( 
	"offset" smallint NOT NULL,
	"title" varchar(100) NOT NULL);

CREATE TABLE "public"."unit"( 
	"unit_id" smallint NOT NULL,
	"unit_title" varchar(15) NOT NULL,
	"unit_comment" varchar(60) NOT NULL,
	"unit_measuredparameterid" smallint NOT NULL,
	"unit_code" varchar(30) NOT NULL,
	"unit_baseunitid" smallint NOT NULL,
	"unit_multiplier" double precision NOT NULL);

CREATE TABLE "public"."usersessionlog"( 
	"id" int NOT NULL,
	"accountid" int NOT NULL,
	"accountlogin" varchar(30) NOT NULL,
	"accountdisplayname" varchar(50) NOT NULL,
	"ipaddress" varchar(15) NOT NULL,
	"startdatetime" timestamp NOT NULL,
	"enddatetime" timestamp,
	"exitcode" smallint NOT NULL,
	"application" varchar(100) NOT NULL);

CREATE TABLE "public"."usersessionrestoretoken"( 
	"id" bigint NOT NULL,
	"accountid" int NOT NULL,
	"expiredate" timestamp NOT NULL,
	"restoretoken" varchar(256) NOT NULL,
	"creationdate" timestamp NOT NULL,
	"originalipaddress" varchar(15) NOT NULL,
	"lastactivitydate" timestamp NOT NULL,
	"application" varchar(100) NOT NULL);

CREATE TABLE "public"."version"( 
	"build" int NOT NULL,
	"version" varchar(50) NOT NULL,
	"date" timestamp NOT NULL,
	"license" bytea NOT NULL,
	"lastmigrationbuild" int NOT NULL);

CREATE TABLE "public"."waterconsumptioncurrent"( 
	"measurepointid" int NOT NULL,
	"datadate" timestamp NOT NULL,
	"t_in" real,
	"t_out" real,
	"t_cw" real,
	"t_outdoor" real,
	"m_in" real,
	"m_out" real,
	"v_in" real,
	"v_out" real,
	"h_in" real,
	"h_out" real,
	"p_in" real,
	"p_out" real,
	"p_cw" real,
	"h_delta" real,
	"calculatedvalues" int,
	"badvalues" int,
	"v_delta" real,
	"m_delta" real,
	"t_indoor" real);

CREATE TABLE "public"."waterconsumptionday"( 
	"measurepointid" int NOT NULL,
	"datadate" timestamp NOT NULL,
	"t_in" real,
	"m_in" real,
	"t_out" real,
	"m_out" real,
	"h_in" real,
	"h_out" real,
	"p_in" real,
	"p_out" real,
	"v_in" real,
	"v_out" real,
	"normaloperationduration" real,
	"t_cw" real,
	"t_outdoor" real,
	"h_delta" real,
	"attributes" smallint,
	"calculatedvalues" int,
	"badvalues" int,
	"interpolatedvalues" int,
	"stopduration" real,
	"flowunderrunduration" real,
	"flowoverrunduration" real,
	"tempdifflowduration" real,
	"nopowerduration" real,
	"incidentduration" real,
	"saturatedsteamduration" real,
	"v_delta" real,
	"m_delta" real,
	"t_indoor" real);

CREATE TABLE "public"."waterconsumptionhour"( 
	"measurepointid" int NOT NULL,
	"datadate" timestamp NOT NULL,
	"t_in" real,
	"m_in" real,
	"t_out" real,
	"m_out" real,
	"h_in" real,
	"h_out" real,
	"p_in" real,
	"p_out" real,
	"v_in" real,
	"v_out" real,
	"normaloperationduration" real,
	"t_cw" real,
	"t_outdoor" real,
	"h_delta" real,
	"attributes" smallint,
	"calculatedvalues" int,
	"badvalues" int,
	"interpolatedvalues" int,
	"stopduration" real,
	"flowunderrunduration" real,
	"flowoverrunduration" real,
	"tempdifflowduration" real,
	"nopowerduration" real,
	"incidentduration" real,
	"saturatedsteamduration" real,
	"v_delta" real,
	"m_delta" real,
	"t_indoor" real);

CREATE TABLE "public"."waterconsumptionmonth"( 
	"measurepointid" int NOT NULL,
	"datadate" timestamp NOT NULL,
	"t_in" real,
	"m_in" real,
	"t_out" real,
	"m_out" real,
	"h_in" real,
	"h_out" real,
	"p_in" real,
	"p_out" real,
	"v_in" real,
	"v_out" real,
	"normaloperationduration" real,
	"t_cw" real,
	"t_outdoor" real,
	"h_delta" real,
	"attributes" smallint,
	"calculatedvalues" int,
	"badvalues" int,
	"interpolatedvalues" int,
	"stopduration" real,
	"flowunderrunduration" real,
	"flowoverrunduration" real,
	"tempdifflowduration" real,
	"nopowerduration" real,
	"incidentduration" real,
	"saturatedsteamduration" real,
	"v_delta" real,
	"m_delta" real,
	"t_indoor" real);

CREATE TABLE "public"."waterestimatedconsumption"( 
	"measurepointid" int NOT NULL,
	"previousmonth" boolean NOT NULL,
	"startdate" timestamp NOT NULL,
	"estimationalgorithm" smallint NOT NULL,
	"enddate" timestamp NOT NULL,
	"m_in" real,
	"m_out" real,
	"m_delta" real,
	"v_in" real,
	"v_out" real,
	"v_delta" real,
	"h_in" real,
	"h_out" real,
	"h_delta" real);

CREATE TABLE "public"."watertotals"( 
	"measurepointid" int NOT NULL,
	"datadate" timestamp NOT NULL,
	"v_in" double precision,
	"v_out" double precision,
	"m_in" double precision,
	"m_out" double precision,
	"h_in" double precision,
	"h_out" double precision,
	"h_delta" double precision,
	"normaloperationduration" double precision,
	"flags" smallint NOT NULL,
	"calculatedvalues" int,
	"badvalues" int,
	"resettedvalues" int,
	"interpolatedvalues" int,
	"stopduration" double precision,
	"flowunderrunduration" double precision,
	"flowoverrunduration" double precision,
	"tempdifflowduration" double precision,
	"nopowerduration" double precision,
	"incidentduration" double precision,
	"saturatedsteamduration" double precision,
	"v_delta" double precision,
	"m_delta" double precision);

COMMIT;
