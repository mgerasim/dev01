\set ON_ERROR_STOP
\set ECHO all
BEGIN;
CREATE TYPE "public"."AccountNode" AS (
"NodeId" int,
"MeasurePointCheckAccessMode" smallint,
"AllowedSystemTypes" int
);
CREATE TYPE "public"."ActReportList" AS (
"ActTypeId" smallint,
"ReportId" int
);
CREATE TYPE "public"."AttributeValue" AS (
"CustomAttributeId" int,
"Value" varchar(200)
);
CREATE TYPE "public"."BalanceGroupMeasurePoint" AS (
"MeasurePointId" int,
"IsHead" boolean
);
CREATE TYPE "public"."ContractTemperature" AS (
"T_outdoor" smallint,
"T_in" real,
"T_out" real
);
CREATE TYPE "public"."DataParameterCell" AS (
"DataType" smallint,
"DataParameterId" smallint,
"CellId" int,
"PulseRatio" real,
"UnitId" smallint
);
CREATE TYPE "public"."DateTimeIntervalList" AS (
"StartDateTime" timestamp(7),
"EndDateTime" timestamp(7)
);
CREATE TYPE "public"."DateTimeList" AS (
"DateTime" timestamp
);
CREATE TYPE "public"."DeviceError" AS (
"ArchiveType" smallint,
"ChannelNumber" int,
"DateTime" timestamp,
"EventCode" int,
"Description" varchar(200),
"Duration" int
);
CREATE TYPE "public"."DiagParameters" AS (
"IncidentTypeId" int,
"IsEnabled" boolean,
"Value1" real,
"Value2" real
);
CREATE TYPE "public"."EavLastParameterValue" AS (
"DataParameterId" smallint,
"Value" double precision,
"IsBad" boolean,
"IsCalc" boolean
);
CREATE TYPE "public"."EavParameterValue" AS (
"DateTime" timestamp,
"DataParameterId" smallint,
"Value" double precision,
"IsBad" boolean,
"IsCalc" boolean,
"IsInterpolated" boolean
);
CREATE TYPE "public"."ElectricConsumption" AS (
"DateTime" timestamp,
"Ap1" double precision,
"An1" double precision,
"Rp1" double precision,
"Rn1" double precision,
"Ap2" double precision,
"An2" double precision,
"Rp2" double precision,
"Rn2" double precision,
"Ap3" double precision,
"An3" double precision,
"Rp3" double precision,
"Rn3" double precision,
"Ap4" double precision,
"An4" double precision,
"Rp4" double precision,
"Rn4" double precision,
"Ap" double precision,
"An" double precision,
"Rp" double precision,
"Rn" double precision,
"NormalOperationDuration" double precision,
"Attributes" smallint,
"CalculatedValues" int,
"BadValues" int,
"InterpolatedValues" int
);
CREATE TYPE "public"."ElectricPower" AS (
"DateTime" timestamp,
"Flags" smallint,
"Interval" smallint,
"Pp" double precision,
"Pn" double precision,
"Qp" double precision,
"Qn" double precision,
"BadValues" int
);
CREATE TYPE "public"."ElectricTotals" AS (
"DateTime" timestamp,
"Ap1" double precision,
"An1" double precision,
"Rp1" double precision,
"Rn1" double precision,
"Ap2" double precision,
"An2" double precision,
"Rp2" double precision,
"Rn2" double precision,
"Ap3" double precision,
"An3" double precision,
"Rp3" double precision,
"Rn3" double precision,
"Ap4" double precision,
"An4" double precision,
"Rp4" double precision,
"Rn4" double precision,
"Ap" double precision,
"An" double precision,
"Rp" double precision,
"Rn" double precision,
"NormalOperationDuration" double precision,
"Attributes" smallint,
"CalculatedValues" int,
"BadValues" int,
"ResettedValues" int,
"InterpolatedValues" int
);
CREATE TYPE "public"."GasConsumption" AS (
"DateTime" timestamp,
"T" real,
"T_outdoor" real,
"P" real,
"P_delta" real,
"V" real,
"V_std" real,
"M" real,
"NormalOperationDuration" real,
"Attributes" smallint,
"CalculatedValues" int,
"BadValues" int,
"InterpolatedValues" int
);
CREATE TYPE "public"."GasTotals" AS (
"DateTime" timestamp,
"V" double precision,
"V_std" double precision,
"M" double precision,
"NormalOperationDuration" double precision,
"Attributes" smallint,
"CalculatedValues" int,
"BadValues" int,
"ResettedValues" int,
"InterpolatedValues" int
);
CREATE TYPE "public"."HeatLoss" AS (
"Year" int,
"Jan" real,
"Feb" real,
"Mar" real,
"Apr" real,
"May" real,
"Jun" real,
"Jul" real,
"Aug" real,
"Sep" real,
"Oct" real,
"Nov" real,
"Dec" real,
"Percent" real,
"Hour" real
);
CREATE TYPE "public"."IdList" AS (
"Id" int
);
CREATE TYPE "public"."MapObjectAppearance" AS (
"MapObjectId" int,
"AppearanceType" smallint,
"BorderColor" int,
"BorderWidth" smallint,
"FillColor" int,
"FontColor" int,
"FontSize" real,
"FontFamily" varchar(50),
"FontStyle" smallint,
"TextVAlignment" smallint,
"TextHAlignment" smallint,
"Visible" boolean
);
CREATE TYPE "public"."MeasurePointExpression" AS (
"DataParameter" smallint,
"Expression" varchar(500)
);
CREATE TYPE "public"."MeasurePointPollSettings" AS (
"MeasurePointId" int,
"PerformTimeCorrection" boolean,
"RequestedDataMask" smallint,
"AutoPollStartDate" timestamp
);
CREATE TYPE "public"."MonthContractConsumption" AS (
"MeasuredParameterId" smallint,
"Year" int,
"Jan" real,
"Feb" real,
"Mar" real,
"Apr" real,
"May" real,
"Jun" real,
"Jul" real,
"Aug" real,
"Sep" real,
"Oct" real,
"Nov" real,
"Dec" real,
"ContractConsumptionType" smallint
);
CREATE TYPE "public"."NodeCustomAttribute" AS (
"Code" varchar(36),
"Attribute" varchar(200)
);
CREATE TYPE "public"."NodeSignaling" AS (
"Id" int,
"SignalTitle" varchar(50),
"ControllerId" int,
"DryContactNumber" smallint,
"IncidentImportanceSet" smallint,
"IncidentMessageSet" varchar(100),
"IncidentImportanceUnset" smallint,
"IncidentMessageUnset" varchar(100)
);
CREATE TYPE "public"."NodeSupplier" AS (
"SystemType" smallint,
"SupplierId" int,
"ContractNumber" varchar(20),
"ContractDate" timestamp,
"InspectorId" int
);
CREATE TYPE "public"."NotificationIncident" AS (
"IncidentTypeId" int
);
CREATE TYPE "public"."NotificationJobType" AS (
"NodeJobType" smallint
);
CREATE TYPE "public"."NotificationMethod" AS (
"NotificationTypeId" int,
"NotificationMethodMask" smallint
);
CREATE TYPE "public"."NotificationNode" AS (
"NodeId" int
);
CREATE TYPE "public"."OutdoorTemperature" AS (
"Date" timestamp,
"Value" real
);
CREATE TYPE "public"."Permission" AS (
"OperationId" int,
"IsDisabled" boolean
);
CREATE TYPE "public"."PermissionEx" AS (
"AccessRightId" int,
"IsDenied" boolean
);
CREATE TYPE "public"."PollSessionLogMessage" AS (
"PollSessionId" int,
"Importance" smallint,
"Message" varchar(1999),
"DateTime" timestamp
);
CREATE TYPE "public"."PollTaskState" AS (
"TaskId" int,
"StartTime" timestamp,
"EndTime" timestamp,
"ExecutionState" smallint,
"Attempt" smallint,
"LastAttemptTime" timestamp,
"LastAttemptEndTime" timestamp,
"LastAttemptResultCode" int
);
CREATE TYPE "public"."RoomContractConsumption" AS (
"MonthNumber" smallint,
"HeatValue" real,
"HotWaterValue" real,
"ColdWaterValue" real,
"ElectricityValue" real
);
CREATE TYPE "public"."RoomCounter" AS (
"RoomId" int,
"EquipmentId" int,
"InstallLocation" varchar(100),
"TotalsValue1" double precision,
"TotalsValue2" double precision,
"MeasurePointId" int
);
CREATE TYPE "public"."ScmMeasurePoints" AS (
"MeasurePointId" int
);
CREATE TYPE "public"."WaterConsumption" AS (
"DateTime" timestamp,
"T_in" real,
"T_out" real,
"T_cw" real,
"T_outdoor" real,
"T_indoor" real,
"M_in" real,
"M_out" real,
"M_delta" real,
"V_in" real,
"V_out" real,
"V_delta" real,
"P_in" real,
"P_out" real,
"Q_in" real,
"Q_out" real,
"Q_delta" real,
"NormalOperationDuration" real,
"StopDuration" real,
"FlowUnderrunDuration" real,
"FlowOverrunDuration" real,
"TempDiffLowDuration" real,
"NoPowerDuration" real,
"IncidentDuration" real,
"SaturatedSteamDuration" real,
"Attributes" smallint,
"CalculatedValues" int,
"BadValues" int,
"InterpolatedValues" int
);
CREATE TYPE "public"."WaterTotals" AS (
"DateTime" timestamp,
"M_in" double precision,
"M_out" double precision,
"M_delta" double precision,
"V_in" double precision,
"V_out" double precision,
"V_delta" double precision,
"Q_in" double precision,
"Q_out" double precision,
"Q_delta" double precision,
"NormalOperationDuration" double precision,
"StopDuration" double precision,
"FlowUnderrunDuration" double precision,
"FlowOverrunDuration" double precision,
"TempDiffLowDuration" double precision,
"NoPowerDuration" double precision,
"IncidentDuration" double precision,
"SaturatedSteamDuration" double precision,
"Attributes" smallint,
"CalculatedValues" int,
"BadValues" int,
"ResettedValues" int,
"InterpolatedValues" int
);


CREATE TABLE "public"."AccessRight"( 
	"Id" int NOT NULL,
	"Title" varchar(100) NOT NULL,
	"ConstName" varchar(50) NOT NULL,
	"GroupTitle" varchar(100) NOT NULL);

CREATE TABLE "public"."Account"( 
	"Account_ID" int NOT NULL,
	"Account_Login" varchar(30) NOT NULL,
	"Account_DisplayName" varchar(50) NOT NULL,
	"Account_Disabled" boolean NOT NULL,
	"Account_Description" varchar(100) NOT NULL,
	"Account_PasswordSetDate" timestamp NOT NULL,
	"Account_DisabledDate" timestamp,
	"Account_ExpirationDate" timestamp,
	"Account_SessionTimeout" int NOT NULL,
	"Account_SessionCount" smallint NOT NULL,
	"Account_IpAddressMode" boolean NOT NULL,
	"Account_LastLoginDate" timestamp,
	"Account_IsSystem" boolean NOT NULL,
	"MobilePhone" varchar(15) NOT NULL,
	"EMail" varchar(50) NOT NULL,
	"SmsEMail" varchar(50) NOT NULL,
	"SendSmsViaModem" boolean NOT NULL,
	"NotifyStartTime" smallint NOT NULL,
	"NotifyEndTime" smallint NOT NULL,
	"Password" bytea NOT NULL,
	"Salt" bytea NOT NULL,
	"HasAllNodeAccess" boolean NOT NULL,
	"StartPage" smallint NOT NULL,
	"TenantOfficeOnly" boolean NOT NULL,
	"AllowAllReports" boolean NOT NULL,
	"DisablePasswordChange" boolean NOT NULL,
	"PasswordResetToken" varchar(64) NOT NULL,
	"PasswordResetTokenExpireDateTime" timestamp,
	"AllowAllMaps" boolean NOT NULL,
	"ReportCenterFormMode" smallint NOT NULL,
	"UseSendIntervalForEmail" boolean NOT NULL,
	"AuthenticationModes" smallint NOT NULL,
	"WindowsSid" varchar(60),
	"DivisionId" int,
	"LoginNotAllowed" boolean);

CREATE TABLE "public"."AccountGroup"( 
	"ID" int NOT NULL,
	"Title" varchar(100) NOT NULL,
	"IsSystem" boolean NOT NULL,
	"DivisionId" int);

CREATE TABLE "public"."AccountGroupMembership"( 
	"AccountID" int NOT NULL,
	"AccountGroupID" int NOT NULL);

CREATE TABLE "public"."AccountGroupPermissionEx"( 
	"AccountGroupId" int NOT NULL,
	"AccessRightId" int NOT NULL,
	"IsDenied" boolean NOT NULL);

CREATE TABLE "public"."AccountLog"( 
	"Date" timestamp NOT NULL,
	"AccountId" int NOT NULL,
	"Importance" smallint NOT NULL,
	"Message" varchar(200) NOT NULL);

CREATE TABLE "public"."AccountMap"( 
	"AccountId" int NOT NULL,
	"MapId" int NOT NULL);

CREATE TABLE "public"."AccountMeasurePoint"( 
	"AccountId" int NOT NULL,
	"MeasurePointId" int NOT NULL);

CREATE TABLE "public"."AccountNode"( 
	"AccountId" int NOT NULL,
	"NodeId" int NOT NULL,
	"MeasurePointCheckAccessMode" smallint NOT NULL,
	"AllowedSystemTypes" int NOT NULL);

CREATE TABLE "public"."AccountNodeGroup"( 
	"AccountId" int NOT NULL,
	"NodeGroupId" int NOT NULL);

CREATE TABLE "public"."AccountNotification"( 
	"AccountId" int NOT NULL,
	"NotificationId" int NOT NULL,
	"IsRead" boolean NOT NULL);

CREATE TABLE "public"."AccountNotificationIncident"( 
	"AccountId" int NOT NULL,
	"IncidentTypeId" int NOT NULL);

CREATE TABLE "public"."AccountNotificationMethod"( 
	"AccountId" int NOT NULL,
	"NotificationTypeId" int NOT NULL,
	"NotificationMethodMask" smallint NOT NULL);

CREATE TABLE "public"."AccountNotificationNode"( 
	"AccountId" int NOT NULL,
	"NotificationTypeId" int NOT NULL,
	"NodeId" int NOT NULL);

CREATE TABLE "public"."AccountNotificationNodeJobType"( 
	"AccountId" int NOT NULL,
	"NodeJobType" smallint NOT NULL);

CREATE TABLE "public"."AccountPermissionEx"( 
	"AccountId" int NOT NULL,
	"AccessRightId" int NOT NULL,
	"IsDenied" boolean NOT NULL);

CREATE TABLE "public"."AccountPersonalAccount"( 
	"AccountId" int NOT NULL,
	"PersonalAccountId" int NOT NULL);

CREATE TABLE "public"."AccountReport"( 
	"AccountId" int NOT NULL,
	"ReportId" int NOT NULL);

CREATE TABLE "public"."AccountServiceCompany"( 
	"AccountId" int NOT NULL,
	"ServiceCompanyId" int NOT NULL);

CREATE TABLE "public"."Adapter"( 
	"ID" int NOT NULL,
	"Title" varchar(100) NOT NULL,
	"Comment" varchar(300) NOT NULL,
	"IsAddressRequired" boolean NOT NULL);

CREATE TABLE "public"."BalanceGroup"( 
	"Id" int NOT NULL,
	"Title" varchar(150));

CREATE TABLE "public"."BalanceGroupMeasurePoint"( 
	"BalanceGroupId" int NOT NULL,
	"MeasurePointId" int NOT NULL,
	"IsHead" boolean NOT NULL);

CREATE TABLE "public"."Cell"( 
	"ID" int NOT NULL,
	"Name" varchar(30) NOT NULL,
	"DriverCode" varchar(10) NOT NULL,
	"DeviceDataType" smallint NOT NULL,
	"EquipmentModelId" int NOT NULL);

CREATE TABLE "public"."Complex"( 
	"Complex_ResponseDelay" smallint NOT NULL,
	"Complex_PollSessionID" int,
	"ProtocolTypeID" int,
	"Tag" bytea,
	"AdapterID" int,
	"AdapterAddress" int NOT NULL,
	"HardwareVersion" varchar(20),
	"FirmwareVersion" varchar(30),
	"TimeDifference" int,
	"BatteryLevel" real,
	"EquipmentId" int NOT NULL);

CREATE TABLE "public"."Contingency"( 
	"ID" int NOT NULL,
	"MeasurePointID" int,
	"NodeID" int NOT NULL,
	"ContingencyTypeID" int NOT NULL,
	"StartDate" timestamp NOT NULL,
	"EndDate" timestamp NOT NULL,
	"DiagDate" timestamp NOT NULL,
	"Importance" smallint NOT NULL,
	"IsClosed" boolean NOT NULL,
	"Description" varchar(500),
	"SmsMessage" varchar(100),
	"EquipmentId" int,
	"DataType" smallint NOT NULL,
	"Distinction" bytea);

CREATE TABLE "public"."ContingencyLog"( 
	"ContingencyID" int NOT NULL,
	"Date" timestamp NOT NULL,
	"Message" varchar(500),
	"ShortMessage" varchar(100));

CREATE TABLE "public"."ContractConsumption"( 
	"MeasuredParameterId" smallint NOT NULL,
	"Year" smallint NOT NULL,
	"Jan" real,
	"Feb" real,
	"Mar" real,
	"Apr" real,
	"May" real,
	"Jun" real,
	"Jul" real,
	"Aug" real,
	"Sep" real,
	"Oct" real,
	"Nov" real,
	"Dec" real,
	"MeasurePointId" int NOT NULL,
	"ContractConsumptionType" smallint NOT NULL);

CREATE TABLE "public"."ContractConsumptionLimit"( 
	"MeasurePointId" int NOT NULL,
	"MeasuredParameterId" smallint NOT NULL,
	"Year" smallint NOT NULL,
	"Jan" real,
	"Feb" real,
	"Mar" real,
	"Apr" real,
	"May" real,
	"Jun" real,
	"Jul" real,
	"Aug" real,
	"Sep" real,
	"Oct" real,
	"Nov" real,
	"Dec" real,
	"ContractConsumptionType" smallint NOT NULL);

CREATE TABLE "public"."ContractTemperature"( 
	"NodeId" int NOT NULL,
	"T_outdoor" smallint NOT NULL,
	"T_in" real NOT NULL,
	"T_out" real NOT NULL);

CREATE TABLE "public"."CounterTotals"( 
	"EquipmentId" int NOT NULL,
	"DataDate" timestamp NOT NULL,
	"Value1" double precision NOT NULL,
	"Value2" double precision NOT NULL,
	"IsTrustedValue" boolean NOT NULL);

CREATE TABLE "public"."CustomAttribute"( 
	"Id" int NOT NULL,
	"Title" varchar(100) NOT NULL,
	"Code" varchar(36) NOT NULL,
	"Comment" varchar(500) NOT NULL,
	"Entities" smallint NOT NULL);

CREATE TABLE "public"."Customer"( 
	"ID" int NOT NULL,
	"Title" varchar(255) NOT NULL,
	"IsNaturalPerson" boolean NOT NULL,
	"VatId" varchar(12) NOT NULL);

CREATE TABLE "public"."DataInterface"( 
	"EquipmentModelId" int NOT NULL,
	"PortSettings" varchar(50) NOT NULL,
	"SupportedPortSpeeds" smallint NOT NULL,
	"SupportedFlowControls" smallint NOT NULL,
	"DefaultPassword" varchar(50) NOT NULL,
	"PasswordRegEx" varchar(100) NOT NULL,
	"PasswordComment" varchar(200) NOT NULL,
	"MaxNetworkSize" smallint NOT NULL,
	"NetworkAddressDefault" varchar(20) NOT NULL,
	"NetworkAddressUsage" smallint NOT NULL,
	"NetworkAddressComment" varchar(200) NOT NULL,
	"NetworkAddressRegEx" varchar(100) NOT NULL,
	"NetworkAddressRangeMin" int NOT NULL,
	"NetworkAddressRangeMax" int NOT NULL,
	"Features" int NOT NULL,
	"SecondLevelPasswordComment" varchar(200) NOT NULL);

CREATE TABLE "public"."DataParameter"( 
	"ID" smallint NOT NULL,
	"Code" varchar(50) NOT NULL,
	"Title" varchar(100) NOT NULL);

CREATE TABLE "public"."DataStatus"( 
	"MeasurePointID" int NOT NULL,
	"DeviceDataType" smallint NOT NULL,
	"StartDate" timestamp NOT NULL,
	"EndDate" timestamp NOT NULL,
	"DataStatus" smallint NOT NULL);

CREATE TABLE "public"."DeviceAddress"( 
	"Address" int NOT NULL,
	"MeasurePointID" int NOT NULL,
	"DataParameterID" smallint NOT NULL,
	"DeviceDataType" smallint NOT NULL,
	"UnitID" smallint NOT NULL,
	"ArchiveDepth" smallint NOT NULL,
	"EquipmentId" int NOT NULL,
	"Multiplier" real NOT NULL);

CREATE TABLE "public"."DeviceCell"( 
	"CellID" int NOT NULL,
	"MeasurePointID" int NOT NULL,
	"DataParameterID" smallint NOT NULL,
	"PulseRatio" real NOT NULL,
	"UnitID" smallint,
	"DataType" smallint NOT NULL,
	"EquipmentId" int NOT NULL);

CREATE TABLE "public"."DeviceChannel"( 
	"HeatLeadIn" smallint NOT NULL,
	"ChannelNumber" int NOT NULL,
	"MeasurePointID" int NOT NULL,
	"IsSupplyChannel" boolean NOT NULL,
	"EquipmentId" int NOT NULL);

CREATE TABLE "public"."DeviceConfig"( 
	"DateTime" timestamp NOT NULL,
	"ParamId" int NOT NULL,
	"ParamValue" varchar(50) NOT NULL,
	"EquipmentId" int NOT NULL);

CREATE TABLE "public"."DeviceConfigParam"( 
	"Id" int NOT NULL,
	"Title" varchar(100) NOT NULL,
	"DataType" char(1) NOT NULL,
	"GeneralDeviceConfigParamId" int,
	"Comment" varchar(200) NOT NULL,
	"HeatLeadInNum" smallint,
	"ChannelNum" smallint,
	"ReadAddress" int,
	"ReadDataType" smallint,
	"DriverCode" varchar(25),
	"EquipmentModelId" int NOT NULL);

CREATE TABLE "public"."DeviceDataType"( 
	"ID" smallint NOT NULL,
	"Desc" varchar(100) NOT NULL);

CREATE TABLE "public"."DeviceEvent"( 
	"Id" int NOT NULL,
	"StartDateTime" timestamp,
	"EventCode" int NOT NULL,
	"Description" varchar(200) NOT NULL,
	"HeatLeadIn" smallint NOT NULL,
	"ArchiveType" smallint NOT NULL,
	"ChannelNumber" int NOT NULL,
	"EndDateTime" timestamp,
	"EquipmentId" int NOT NULL);

CREATE TABLE "public"."DeviceMeasurePoint"( 
	"MeasurePointID" int NOT NULL,
	"EquipmentId" int NOT NULL);

CREATE TABLE "public"."Division"( 
	"Id" int NOT NULL,
	"Title" varchar(128) NOT NULL);

CREATE TABLE "public"."DriverInterface"( 
	"EquipmentModelId" int NOT NULL,
	"DriverName" varchar(50) NOT NULL,
	"DriverStatus" smallint NOT NULL,
	"ChannelCount" int NOT NULL,
	"HeatSystemCount" smallint NOT NULL,
	"MinMemoryAddress" int NOT NULL,
	"MaxMemoryAddress" int NOT NULL,
	"Features" int NOT NULL,
	"SupportedDataTypes" smallint NOT NULL,
	"TotalsResetThresholdM" double precision NOT NULL,
	"TotalsResetThresholdQ" double precision NOT NULL);

CREATE TABLE "public"."DryContactState"( 
	"DateTime" timestamp NOT NULL,
	"Value" int NOT NULL,
	"EquipmentId" int NOT NULL);

CREATE TABLE "public"."EavConsumptionCurrents"( 
	"MeasurePointId" int NOT NULL,
	"DateTime" timestamp NOT NULL,
	"DataParameterId" smallint NOT NULL,
	"Value" double precision NOT NULL,
	"IsBad" boolean NOT NULL,
	"IsCalc" boolean NOT NULL,
	"IsInterpolated" boolean NOT NULL);

CREATE TABLE "public"."EavConsumptionDay"( 
	"MeasurePointId" int NOT NULL,
	"DateTime" timestamp NOT NULL,
	"DataParameterId" smallint NOT NULL,
	"Value" double precision NOT NULL,
	"IsBad" boolean NOT NULL,
	"IsCalc" boolean NOT NULL,
	"IsInterpolated" boolean NOT NULL);

CREATE TABLE "public"."EavConsumptionHour"( 
	"MeasurePointId" int NOT NULL,
	"DateTime" timestamp NOT NULL,
	"DataParameterId" smallint NOT NULL,
	"Value" double precision NOT NULL,
	"IsBad" boolean NOT NULL,
	"IsCalc" boolean NOT NULL,
	"IsInterpolated" boolean NOT NULL);

CREATE TABLE "public"."EavConsumptionLast"( 
	"MeasurePointId" int NOT NULL,
	"DateTime" timestamp NOT NULL,
	"DataType" smallint NOT NULL,
	"Attributes" smallint NOT NULL);

CREATE TABLE "public"."EavConsumptionLastValue"( 
	"MeasurePointId" int NOT NULL,
	"DataParameterId" smallint NOT NULL,
	"Value" double precision NOT NULL,
	"IsBad" boolean NOT NULL,
	"IsCalc" boolean NOT NULL);

CREATE TABLE "public"."EavConsumptionMonth"( 
	"MeasurePointId" int NOT NULL,
	"DateTime" timestamp NOT NULL,
	"DataParameterId" smallint NOT NULL,
	"Value" double precision NOT NULL,
	"IsBad" boolean NOT NULL,
	"IsCalc" boolean NOT NULL,
	"IsInterpolated" boolean NOT NULL);

CREATE TABLE "public"."EavTotalsLast"( 
	"MeasurePointId" int NOT NULL,
	"DateTime" timestamp NOT NULL,
	"Attributes" smallint NOT NULL);

CREATE TABLE "public"."EavTotalsLastValue"( 
	"MeasurePointId" int NOT NULL,
	"DataParameterId" smallint NOT NULL,
	"Value" double precision NOT NULL,
	"IsBad" boolean NOT NULL,
	"IsCalc" boolean NOT NULL);

CREATE TABLE "public"."ElectricConsumptionDay"( 
	"MeasurePointID" int NOT NULL,
	"DataDate" timestamp NOT NULL,
	"Ap1" real,
	"An1" real,
	"Rp1" real,
	"Rn1" real,
	"Ap2" real,
	"An2" real,
	"Rp2" real,
	"Rn2" real,
	"Ap3" real,
	"An3" real,
	"Rp3" real,
	"Rn3" real,
	"Ap4" real,
	"An4" real,
	"Rp4" real,
	"Rn4" real,
	"Attributes" smallint,
	"CalculatedValues" int,
	"BadValues" int,
	"Ap" real,
	"An" real,
	"Rp" real,
	"Rn" real,
	"InterpolatedValues" int,
	"NormalOperationDuration" real);

CREATE TABLE "public"."ElectricConsumptionHour"( 
	"MeasurePointID" int NOT NULL,
	"DataDate" timestamp NOT NULL,
	"Ap1" real,
	"An1" real,
	"Rp1" real,
	"Rn1" real,
	"Ap2" real,
	"An2" real,
	"Rp2" real,
	"Rn2" real,
	"Ap3" real,
	"An3" real,
	"Rp3" real,
	"Rn3" real,
	"Ap4" real,
	"An4" real,
	"Rp4" real,
	"Rn4" real,
	"Attributes" smallint,
	"CalculatedValues" int,
	"BadValues" int,
	"Ap" real,
	"An" real,
	"Rp" real,
	"Rn" real,
	"InterpolatedValues" int,
	"NormalOperationDuration" real);

CREATE TABLE "public"."ElectricConsumptionMonth"( 
	"MeasurePointID" int NOT NULL,
	"DataDate" timestamp NOT NULL,
	"Ap1" real,
	"An1" real,
	"Rp1" real,
	"Rn1" real,
	"Ap2" real,
	"An2" real,
	"Rp2" real,
	"Rn2" real,
	"Ap3" real,
	"An3" real,
	"Rp3" real,
	"Rn3" real,
	"Ap4" real,
	"An4" real,
	"Rp4" real,
	"Rn4" real,
	"Attributes" smallint,
	"CalculatedValues" int,
	"BadValues" int,
	"Ap" real,
	"An" real,
	"Rp" real,
	"Rn" real,
	"InterpolatedValues" int,
	"NormalOperationDuration" real);

CREATE TABLE "public"."ElectricPower"( 
	"MeasurePointId" int NOT NULL,
	"DataDate" timestamp NOT NULL,
	"Flags" smallint NOT NULL,
	"Interval" smallint NOT NULL,
	"Pp" double precision,
	"Pn" double precision,
	"Qp" double precision,
	"Qn" double precision,
	"BadValues" int);

CREATE TABLE "public"."ElectricPowerQuality"( 
	"MeasurePointID" int NOT NULL,
	"DataDate" timestamp NOT NULL,
	"Pp" real,
	"Pn" real,
	"Qp" real,
	"Qn" real,
	"CalculatedValues" bigint,
	"BadValues" bigint,
	"S" real,
	"SA" real,
	"SB" real,
	"SC" real,
	"PA" real,
	"PB" real,
	"PC" real,
	"QA" real,
	"QB" real,
	"QC" real,
	"U" real,
	"UA" real,
	"UB" real,
	"UC" real,
	"I" real,
	"IA" real,
	"IB" real,
	"IC" real,
	"PhiUAB" real,
	"PhiUAC" real,
	"PhiUBC" real,
	"PhiUIA" real,
	"PhiUIB" real,
	"PhiUIC" real,
	"Frequency" real,
	"P" real,
	"Q" real,
	"CosPhi" real,
	"CosPhiA" real,
	"CosPhiB" real,
	"CosPhiC" real);

CREATE TABLE "public"."ElectricTotals"( 
	"MeasurePointId" int NOT NULL,
	"DataDate" timestamp NOT NULL,
	"Ap1" double precision,
	"An1" double precision,
	"Rp1" double precision,
	"Rn1" double precision,
	"Ap2" double precision,
	"An2" double precision,
	"Rp2" double precision,
	"Rn2" double precision,
	"Ap3" double precision,
	"An3" double precision,
	"Rp3" double precision,
	"Rn3" double precision,
	"Ap4" double precision,
	"An4" double precision,
	"Rp4" double precision,
	"Rn4" double precision,
	"Flags" smallint NOT NULL,
	"CalculatedValues" int,
	"BadValues" int,
	"Ap" double precision,
	"An" double precision,
	"Rp" double precision,
	"Rn" double precision,
	"ResettedValues" int,
	"InterpolatedValues" int,
	"NormalOperationDuration" double precision);

CREATE TABLE "public"."Equipment"( 
	"Id" int NOT NULL,
	"EquipmentModelId" int NOT NULL,
	"SerialNumber" varchar(32) NOT NULL,
	"LastCalibrationDate" date,
	"ScheduledCalibrationDate" date,
	"ModificationId" int,
	"Password" varchar(50) NOT NULL,
	"Comment" varchar(1000) NOT NULL,
	"ModemIdentifier" varchar(32),
	"ModemPollPortId" int,
	"ModemIMEI" varchar(15),
	"NetworkAddress" varchar(20),
	"SecondLevelPassword" varchar(50),
	"IsShared" boolean NOT NULL,
	"ModemEnableKeepAlive" boolean,
	"DivisionId" int);

CREATE TABLE "public"."EquipmentHistory"( 
	"Id" bigint NOT NULL,
	"DateTime" timestamp NOT NULL,
	"NodeId" int NOT NULL,
	"MeasurePointId" int,
	"Action" smallint NOT NULL,
	"EquipmentModelId" int NOT NULL,
	"SerialNumber" varchar(32) NOT NULL);

CREATE TABLE "public"."EquipmentModel"( 
	"Id" int NOT NULL,
	"IsSystem" boolean NOT NULL,
	"LongTitle" varchar(200) NOT NULL,
	"Title" varchar(100) NOT NULL,
	"Capabilities" smallint NOT NULL,
	"Comment" varchar(1000) NOT NULL,
	"SerialNumberFormat" varchar(100) NOT NULL,
	"SerialNumberComment" varchar(200) NOT NULL,
	"StateRegisterNumber" varchar(30) NOT NULL,
	"CalibrationInterval" smallint NOT NULL,
	"IsTemperatureSensor" boolean NOT NULL,
	"IsPressureSensor" boolean NOT NULL,
	"IsFlowSensor" boolean NOT NULL,
	"SupportedSystemTypes" smallint NOT NULL,
	"SupportedCommLinks" smallint NOT NULL,
	"SupportedCallTypes" smallint NOT NULL,
	"ModemFeatures" smallint NOT NULL,
	"DryContactCount" smallint NOT NULL,
	"IsElectricMeter" boolean NOT NULL);

CREATE TABLE "public"."EquipmentModelAdapter"( 
	"EquipmentModelId" int NOT NULL,
	"AdapterId" int NOT NULL);

CREATE TABLE "public"."EquipmentModelModification"( 
	"Id" int NOT NULL,
	"EquipmentModelId" int NOT NULL,
	"IsSystem" boolean NOT NULL,
	"Comment" varchar(1000) NOT NULL,
	"PrecisionClass" varchar(4) NOT NULL,
	"NominalDiameter" smallint NOT NULL,
	"RelativeError" real NOT NULL,
	"TempSensorMin" real NOT NULL,
	"TempSensorMax" real NOT NULL,
	"PressSensorMin" real NOT NULL,
	"PressSensorMax" real NOT NULL,
	"FlowSensorMin" real NOT NULL,
	"FlowSensorMax" real NOT NULL);

CREATE TABLE "public"."EquipmentModelPort"( 
	"Id" int NOT NULL,
	"Title" varchar(20) NOT NULL,
	"EquipmentModelId" int NOT NULL);

CREATE TABLE "public"."EquipmentModelPortSettings"( 
	"Id" int NOT NULL,
	"Title" varchar(50) NOT NULL,
	"EquipmentModelPortId" int NOT NULL);

CREATE TABLE "public"."EquipmentPollConnection"( 
	"EquipmentId" int NOT NULL,
	"NodeId" int NOT NULL,
	"PollConnectionId" int NOT NULL);

CREATE TABLE "public"."EquipmentPollStatistics"( 
	"Id" int NOT NULL,
	"EquipmentId" int NOT NULL,
	"EndDate" timestamp NOT NULL,
	"PollResult" smallint NOT NULL,
	"PollType" smallint NOT NULL,
	"CommLinkType" smallint NOT NULL,
	"PollErrorCount" int NOT NULL);

CREATE TABLE "public"."GasConsumptionCurrent"( 
	"MeasurePointID" int NOT NULL,
	"DataDate" timestamp NOT NULL,
	"T" real,
	"P" real,
	"V" real,
	"V_std" real,
	"CalculatedValues" int,
	"BadValues" int,
	"T_outdoor" real,
	"M" real,
	"P_delta" real);

CREATE TABLE "public"."GasConsumptionDay"( 
	"MeasurePointID" int NOT NULL,
	"DataDate" timestamp NOT NULL,
	"T" real,
	"P" real,
	"V" real,
	"V_std" real,
	"NormalOperationDuration" real,
	"Attributes" smallint,
	"CalculatedValues" int,
	"BadValues" int,
	"T_outdoor" real,
	"InterpolatedValues" int,
	"M" real,
	"P_delta" real);

CREATE TABLE "public"."GasConsumptionHour"( 
	"MeasurePointID" int NOT NULL,
	"DataDate" timestamp NOT NULL,
	"T" real,
	"P" real,
	"V" real,
	"V_std" real,
	"NormalOperationDuration" real,
	"Attributes" smallint,
	"CalculatedValues" int,
	"BadValues" int,
	"T_outdoor" real,
	"InterpolatedValues" int,
	"M" real,
	"P_delta" real);

CREATE TABLE "public"."GasConsumptionMonth"( 
	"MeasurePointID" int NOT NULL,
	"DataDate" timestamp NOT NULL,
	"T" real,
	"P" real,
	"V" real,
	"V_std" real,
	"NormalOperationDuration" real,
	"Attributes" smallint,
	"CalculatedValues" int,
	"BadValues" int,
	"T_outdoor" real,
	"InterpolatedValues" int,
	"M" real,
	"P_delta" real);

CREATE TABLE "public"."GasTotals"( 
	"MeasurePointId" int NOT NULL,
	"DataDate" timestamp NOT NULL,
	"V" double precision,
	"V_std" double precision,
	"NormalOperationDuration" double precision,
	"Flags" smallint NOT NULL,
	"CalculatedValues" int,
	"BadValues" int,
	"ResettedValues" int,
	"InterpolatedValues" int,
	"M" double precision);

CREATE TABLE "public"."GeneralDeviceConfigParam"( 
	"Id" int NOT NULL,
	"Title" varchar(100) NOT NULL);

CREATE TABLE "public"."GprsControllerSession"( 
	"Id" int NOT NULL,
	"StartDateTime" timestamp NOT NULL,
	"EndDateTime" timestamp,
	"ControllerClock" timestamp,
	"SignalLevel" smallint,
	"HardwareVersion" varchar(30),
	"FirmwareVersion" varchar(30),
	"RemoteIPAddress" varchar(15) NOT NULL,
	"RemotePort" int NOT NULL,
	"Balance" real,
	"BytesSent" bigint NOT NULL,
	"BytesReceived" bigint NOT NULL,
	"ICCID" varchar(20),
	"ActiveSim" smallint,
	"SimPinEnabled" boolean,
	"EquipmentId" int NOT NULL,
	"EndReason" smallint NOT NULL);

CREATE TABLE "public"."HeatLoss"( 
	"MeasurePointId" int NOT NULL,
	"Year" smallint NOT NULL,
	"Jan" real,
	"Feb" real,
	"Mar" real,
	"Apr" real,
	"May" real,
	"Jun" real,
	"Jul" real,
	"Aug" real,
	"Sep" real,
	"Oct" real,
	"Nov" real,
	"Dec" real,
	"Percent" real,
	"Hour" real);

CREATE TABLE "public"."IPAddress"( 
	"AccountId" int NOT NULL,
	"RangeStartIp" bigint NOT NULL,
	"RangeEndIp" bigint NOT NULL);

CREATE TABLE "public"."IncidentType"( 
	"ID" int NOT NULL,
	"Title" varchar(100) NOT NULL);

CREATE TABLE "public"."Inspector"( 
	"Id" int NOT NULL,
	"Name" varchar(100) NOT NULL,
	"Post" varchar(100) NOT NULL,
	"Phone" varchar(200) NOT NULL,
	"Email" varchar(50) NOT NULL,
	"Comment" varchar(1000) NOT NULL,
	"SupplierId" int NOT NULL);

CREATE TABLE "public"."LimitTemps"( 
	"TempIn" smallint,
	"T0" smallint,
	"T2" smallint,
	"T4" smallint,
	"T6" smallint,
	"T8" smallint,
	"T10" smallint,
	"T12" smallint,
	"T14" smallint,
	"T16" smallint,
	"T18" smallint,
	"T20" smallint,
	"T22" smallint,
	"T24" smallint,
	"T26" smallint,
	"T28" smallint,
	"T30" smallint,
	"T32" smallint);

CREATE TABLE "public"."MailList"( 
	"TaskID" int NOT NULL,
	"SendSMS" boolean NOT NULL,
	"SendEmail" boolean NOT NULL,
	"AccountID" int NOT NULL);

CREATE TABLE "public"."Map"( 
	"Id" int NOT NULL,
	"Title" varchar(255) NOT NULL,
	"IsPublic" boolean NOT NULL);

CREATE TABLE "public"."MapImage"( 
	"Checksum" int NOT NULL,
	"Image" bytea NOT NULL);

CREATE TABLE "public"."MapObject"( 
	"ID" int NOT NULL,
	"MapID" int NOT NULL,
	"MapObjectTypeID" smallint NOT NULL,
	"MeasurePointID" int,
	"X" int NOT NULL,
	"Y" int NOT NULL,
	"dX" int NOT NULL,
	"dY" int NOT NULL,
	"Text" varchar(100) NOT NULL,
	"Tag" varchar(1500) NOT NULL,
	"Image" int,
	"Parameter" varchar(20),
	"Locked" boolean NOT NULL,
	"ZOrder" int NOT NULL,
	"NodeSignalingId" int);

CREATE TABLE "public"."MapObjectAppearance"( 
	"MapObjectId" int NOT NULL,
	"AppearanceType" smallint NOT NULL,
	"BorderColor" int NOT NULL,
	"BorderWidth" smallint NOT NULL,
	"FillColor" int NOT NULL,
	"FontColor" int NOT NULL,
	"FontSize" real NOT NULL,
	"FontFamily" varchar(50) NOT NULL,
	"FontStyle" smallint NOT NULL,
	"TextVAlignment" smallint NOT NULL,
	"TextHAlignment" smallint NOT NULL,
	"Visible" boolean NOT NULL);

CREATE TABLE "public"."MapObjectType"( 
	"ID" smallint NOT NULL,
	"Title" varchar(20) NOT NULL);

CREATE TABLE "public"."MeasurePoint"( 
	"MeasurePoint_ID" int NOT NULL,
	"MeasurePoint_Title" varchar(150) NOT NULL,
	"MeasurePoint_ServiceNumber" int NOT NULL,
	"MeasurePoint_Comment" varchar(1000) NOT NULL,
	"MeasurePoint_Type" smallint NOT NULL,
	"MeasurePoint_State" smallint NOT NULL,
	"MeasurePoint_SelectedParamsList" varchar(350) NOT NULL,
	"MeasurePoint_NodeID" int,
	"MeasurePoint_SystemTypeID" smallint NOT NULL,
	"AutoPollStartDate" timestamp,
	"IsDoublePipeSystem" boolean NOT NULL,
	"PersonalAccountID" int,
	"ContractHeat" real NOT NULL,
	"ContractFlow" real NOT NULL,
	"CurrentRatio" real NOT NULL,
	"VoltageRatio" real NOT NULL,
	"ContractPin" real NOT NULL,
	"ContractPout" real NOT NULL,
	"ContractTin" real NOT NULL,
	"ContractTout" real NOT NULL,
	"ShowCalculatedData" boolean NOT NULL,
	"DevicePressureType" smallint NOT NULL,
	"CounterId" int,
	"CalculateMissingTotals" boolean NOT NULL,
	"CalculateMissingTotalsEstimate" boolean NOT NULL,
	"CalculateMissingHourConsumption" smallint NOT NULL,
	"CalculateMissingDayConsumption" smallint NOT NULL,
	"CalculateMissingMonthConsumption" smallint NOT NULL,
	"CalculateMissingValues" boolean NOT NULL,
	"ReportingHour" smallint NOT NULL,
	"ReportingDay" smallint NOT NULL,
	"ShowBadValues" boolean NOT NULL,
	"CalculateMissingHeatValues" boolean NOT NULL,
	"CalculatedValuesAveragingMode" smallint NOT NULL,
	"IsReversibleFlow" boolean NOT NULL,
	"ReportingHourMode" smallint NOT NULL,
	"IsVirtual" boolean NOT NULL,
	"UseAdvancedTotalsInterpolation" boolean NOT NULL,
	"DiagDataTypes" smallint,
	"DisplayPressureType" smallint NOT NULL,
	"AdmissionDate" timestamp);

CREATE TABLE "public"."MeasurePointCustomAttribute"( 
	"Id" int NOT NULL,
	"CustomAttributeId" int NOT NULL,
	"MeasurePointId" int NOT NULL,
	"Value" varchar(200) NOT NULL);

CREATE TABLE "public"."MeasurePointDataCopySettings"( 
	"TargetMeasurePointId" int NOT NULL,
	"WaterParameter" int NOT NULL,
	"SourceMeasurePointId" int NOT NULL);

CREATE TABLE "public"."MeasurePointDeviceErrorDay"( 
	"MeasurePointId" int NOT NULL,
	"ArchiveType" smallint NOT NULL,
	"ChannelNumber" int NOT NULL,
	"DateTime" timestamp NOT NULL,
	"EventCode" int NOT NULL,
	"Description" varchar(200) NOT NULL,
	"Duration" int NOT NULL);

CREATE TABLE "public"."MeasurePointDeviceErrorHour"( 
	"MeasurePointId" int NOT NULL,
	"ArchiveType" smallint NOT NULL,
	"ChannelNumber" int NOT NULL,
	"DateTime" timestamp NOT NULL,
	"EventCode" int NOT NULL,
	"Description" varchar(200) NOT NULL,
	"Duration" int NOT NULL);

CREATE TABLE "public"."MeasurePointDeviceErrorMonth"( 
	"MeasurePointId" int NOT NULL,
	"ArchiveType" smallint NOT NULL,
	"ChannelNumber" int NOT NULL,
	"DateTime" timestamp NOT NULL,
	"EventCode" int NOT NULL,
	"Description" varchar(200) NOT NULL,
	"Duration" int NOT NULL);

CREATE TABLE "public"."MeasurePointDiagDefaults"( 
	"SystemTypeID" smallint NOT NULL,
	"IncidentTypeId" int NOT NULL,
	"IsEnabled" boolean NOT NULL,
	"Value1" real NOT NULL,
	"Value2" real NOT NULL,
	"IsSummerMode" boolean NOT NULL);

CREATE TABLE "public"."MeasurePointDiagParams"( 
	"MeasurePointID" int NOT NULL,
	"IncidentTypeId" int NOT NULL,
	"IsEnabled" boolean NOT NULL,
	"Value1" real NOT NULL,
	"Value2" real NOT NULL,
	"IsSummerMode" boolean NOT NULL);

CREATE TABLE "public"."MeasurePointExpression"( 
	"MeasurePointId" int NOT NULL,
	"DataParameter" smallint NOT NULL,
	"Expression" varchar(1999) NOT NULL);

CREATE TABLE "public"."MeasurePointOrder"( 
	"MeasurePointID" int NOT NULL,
	"OrderNumber" smallint NOT NULL);

CREATE TABLE "public"."MeasurePointReport"( 
	"MeasurePointId" int NOT NULL,
	"ReportId" int NOT NULL,
	"ReportTemplateId" int NOT NULL);

CREATE TABLE "public"."MeasurePointSensor"( 
	"MeasurePointId" int NOT NULL,
	"IsSupplyChannel" boolean NOT NULL,
	"MeasuredParameterId" smallint NOT NULL,
	"EquipmentId" int NOT NULL);

CREATE TABLE "public"."MeasuredParameter"( 
	"MeasuredParameter_ID" smallint NOT NULL,
	"MeasuredParameter_Title" varchar(30) NOT NULL,
	"MeasuredParameter_SystemUnitID" smallint,
	"MeasuredParameter_Code" varchar(40) NOT NULL);

CREATE TABLE "public"."MessageLog"( 
	"Id" int NOT NULL,
	"Date" timestamp NOT NULL,
	"SenderAccountId" int,
	"SenderName" varchar(50) NOT NULL,
	"RecipientName" varchar(50) NOT NULL,
	"RecipientAddress" varchar(50) NOT NULL,
	"Message" varchar(1999) NOT NULL,
	"MessageType" smallint NOT NULL,
	"SendResult" varchar(256) NOT NULL,
	"SendState" smallint NOT NULL,
	"SendScheduleDate" timestamp NOT NULL);

CREATE TABLE "public"."ModemCommand"( 
	"ModemCommand_ModemTypeID" smallint NOT NULL,
	"ModemCommand_ModemCommandTypeID" smallint NOT NULL,
	"ModemCommand_Text" varchar(70) NOT NULL,
	"ModemCommand_TerminationType" smallint NOT NULL,
	"ModemCommand_DelayBefore" int NOT NULL,
	"ModemCommand_Timeout" int NOT NULL,
	"ModemCommand_BadAnswerList" varchar(100) NOT NULL,
	"ModemCommand_GoodAnswerList" varchar(50) NOT NULL,
	"ModemCommand_Comment" varchar(250) NOT NULL);

CREATE TABLE "public"."ModemCommandType"( 
	"ModemCommandType_ID" smallint NOT NULL,
	"ModemCommandType_Title" varchar(50) NOT NULL,
	"ModemCommandType_Code" varchar(40) NOT NULL,
	"ModemCommandType_Comment" varchar(150) NOT NULL);

CREATE TABLE "public"."ModemType"( 
	"ModemType_ID" smallint NOT NULL,
	"ModemType_Title" varchar(50) NOT NULL,
	"ModemType_CommunicationLinkType" smallint NOT NULL,
	"ModemType_DataTransferDelay" int NOT NULL,
	"ModemType_PortSettings" varchar(15) NOT NULL,
	"ModemType_MaxCommandLen" smallint NOT NULL,
	"ModemType_ShieldCode" smallint);

CREATE TABLE "public"."NestedBalanceGroups"( 
	"ParentId" int NOT NULL,
	"ChildId" int NOT NULL);

CREATE TABLE "public"."Node"( 
	"ID" int NOT NULL,
	"Title" varchar(150) NOT NULL,
	"Address" varchar(100) NOT NULL,
	"Comment" varchar(1000) NOT NULL,
	"Number" int NOT NULL,
	"CustomerID" int,
	"ResponsibleName" varchar(100) NOT NULL,
	"ResponsiblePhone" varchar(25) NOT NULL,
	"ServiceCompanyID" int,
	"State" smallint NOT NULL,
	"ServicemanID" int,
	"Type" smallint NOT NULL,
	"NormColdWater" real NOT NULL,
	"NormHotWater" real NOT NULL,
	"NormHeat" real NOT NULL,
	"NormElectricity" real NOT NULL,
	"NormGas" real NOT NULL,
	"IsCommunalPollEnabled" boolean NOT NULL,
	"TimeZoneOffset" smallint NOT NULL,
	"ColdWaterTemp" real NOT NULL,
	"LicenseCount" smallint NOT NULL,
	"ContractMinTemp" smallint NOT NULL,
	"ContractMaxTemp" smallint NOT NULL,
	"ContractLowBreakTemp" smallint NOT NULL,
	"ContractHighBreakTemp" smallint NOT NULL,
	"MinOutdoorTemp" smallint NOT NULL,
	"TemperatureComplianceAnalysisType" smallint NOT NULL,
	"TerritoryId" int NOT NULL,
	"DivisionId" int);

CREATE TABLE "public"."NodeBalance"( 
	"ID" int NOT NULL,
	"NodeID" int NOT NULL,
	"Symbol" varchar(32) NOT NULL,
	"Expression" varchar(1999) NOT NULL);

CREATE TABLE "public"."NodeCustomAttribute"( 
	"Id" int NOT NULL,
	"NodeId" int NOT NULL,
	"CustomAttributeId" int NOT NULL,
	"Value" varchar(200) NOT NULL);

CREATE TABLE "public"."NodeDiagDefaults"( 
	"IncidentTypeId" int NOT NULL,
	"IsEnabled" boolean NOT NULL,
	"Value1" real NOT NULL,
	"Value2" real NOT NULL);

CREATE TABLE "public"."NodeDiagParams"( 
	"NodeID" int NOT NULL,
	"IncidentTypeId" int NOT NULL,
	"IsEnabled" boolean NOT NULL,
	"Value1" real NOT NULL,
	"Value2" real NOT NULL);

CREATE TABLE "public"."NodeEquipment"( 
	"NodeId" int NOT NULL,
	"EquipmentId" int NOT NULL);

CREATE TABLE "public"."NodeFile"( 
	"Id" int NOT NULL,
	"NodeId" int NOT NULL,
	"FileName" varchar(260) NOT NULL,
	"CreationTime" timestamp NOT NULL,
	"LastWriteTime" timestamp NOT NULL,
	"Content" bytea NOT NULL,
	"Hash" bytea NOT NULL,
	"PublicFile" boolean NOT NULL,
	"Thumbnail" bytea,
	"Length" varchar);

CREATE TABLE "public"."NodeGeoLocation"( 
	"NodeId" int NOT NULL,
	"Latitude" double precision NOT NULL,
	"Longitude" double precision NOT NULL);

CREATE TABLE "public"."NodeGroup"( 
	"Id" int NOT NULL,
	"Title" varchar(75) NOT NULL,
	"Comment" varchar(250) NOT NULL,
	"DivisionId" int);

CREATE TABLE "public"."NodeGroupMembership"( 
	"NodeGroupId" int NOT NULL,
	"NodeId" int NOT NULL);

CREATE TABLE "public"."NodeJob"( 
	"Id" int NOT NULL,
	"NodeId" int NOT NULL,
	"MeasurePointId" int,
	"CreatorAccountId" int,
	"CreatorName" varchar(50) NOT NULL,
	"PerformerAccountId" int,
	"PerformerName" varchar(50) NOT NULL,
	"StartDate" date NOT NULL,
	"ScheduledEndDate" date NOT NULL,
	"FactEndDate" date,
	"Title" varchar(200) NOT NULL,
	"Description" varchar(1000) NOT NULL,
	"State" smallint NOT NULL,
	"Type" smallint NOT NULL,
	"ResolutionId" int,
	"IncidentId" int,
	"WorkOrderNumber" varchar(20) NOT NULL);

CREATE TABLE "public"."NodeJobComment"( 
	"Id" int NOT NULL,
	"NodeJobId" int NOT NULL,
	"DateTime" timestamp NOT NULL,
	"AccountId" int,
	"AccountName" varchar(50) NOT NULL,
	"Text" varchar(1999));

CREATE TABLE "public"."NodeJobFile"( 
	"NodeJobId" int NOT NULL,
	"NodeFileId" int NOT NULL);

CREATE TABLE "public"."NodeJobResolution"( 
	"Id" int NOT NULL,
	"Title" varchar(128) NOT NULL);

CREATE TABLE "public"."NodePollConnection"( 
	"PollConnectionId" int NOT NULL,
	"NodeId" int NOT NULL);

CREATE TABLE "public"."NodeReport"( 
	"NodeId" int NOT NULL,
	"ReportId" int NOT NULL,
	"ReportTemplateId" int NOT NULL);

CREATE TABLE "public"."NodeSeasonHistory"( 
	"NodeId" int NOT NULL,
	"StartDate" date NOT NULL,
	"IsHeatingSeason" boolean NOT NULL);

CREATE TABLE "public"."NodeSignaling"( 
	"Id" int NOT NULL,
	"NodeId" int NOT NULL,
	"SignalTitle" varchar(50) NOT NULL,
	"DryContactNumber" smallint NOT NULL,
	"IncidentImportanceSet" smallint NOT NULL,
	"IncidentMessageSet" varchar(100) NOT NULL,
	"IncidentImportanceUnset" smallint NOT NULL,
	"IncidentMessageUnset" varchar(100) NOT NULL,
	"CurrentState" smallint NOT NULL,
	"EquipmentId" int NOT NULL);

CREATE TABLE "public"."NodeSupplier"( 
	"NodeId" int NOT NULL,
	"SystemType" smallint NOT NULL,
	"SupplierId" int,
	"ContractNumber" varchar(20) NOT NULL,
	"ContractDate" timestamp,
	"InspectorId" int);

CREATE TABLE "public"."NodeUserDiagParams"( 
	"Id" int NOT NULL,
	"NodeId" int NOT NULL,
	"Expression" varchar(1999) NOT NULL,
	"Seasons" smallint NOT NULL,
	"DataTypes" smallint NOT NULL,
	"Message" varchar(500) NOT NULL,
	"Enabled" boolean NOT NULL,
	"Importance" smallint NOT NULL,
	"ShortMessage" varchar(100) NOT NULL);

CREATE TABLE "public"."Notification"( 
	"Id" int NOT NULL,
	"NotificationTypeId" int NOT NULL,
	"DateTime" timestamp NOT NULL,
	"Message" varchar(500) NOT NULL,
	"Importance" smallint NOT NULL,
	"ExpiredDate" date,
	"EquipmentId" int,
	"IncidentId" int,
	"NodeJobId" int,
	"Url" varchar(256),
	"MeasurePointId" int);

CREATE TABLE "public"."NotificationType"( 
	"Id" int NOT NULL,
	"Title" varchar(100) NOT NULL);

CREATE TABLE "public"."OutdoorTemperature"( 
	"Date" timestamp NOT NULL,
	"Value" real NOT NULL,
	"TerritoryId" int NOT NULL);

CREATE TABLE "public"."PersonalAccount"( 
	"PersonalAccount_ID" int NOT NULL,
	"PersonalAccount_Number" varchar(50) NOT NULL,
	"PersonalAccount_NumberApartment" varchar(50) NOT NULL,
	"PersonalAccount_NumberResident" smallint NOT NULL,
	"PersonalAccount_AreaApartment" real NOT NULL,
	"NodeId" int NOT NULL,
	"Type" smallint NOT NULL,
	"ContractHotWater" real NOT NULL,
	"ContractColdWater" real NOT NULL,
	"ContractGas" real NOT NULL,
	"ContractElectricity" real NOT NULL,
	"ContractHeat" real NOT NULL,
	"ContractConsumptionType" smallint NOT NULL,
	"FloorNumber" smallint NOT NULL,
	"RoomCount" smallint NOT NULL,
	"EntranceNumber" smallint NOT NULL);

CREATE TABLE "public"."Plugin"( 
	"Identifier" uuid NOT NULL,
	"FileName" varchar(255) NOT NULL,
	"IsDisabled" boolean NOT NULL,
	"Settings" varchar NOT NULL);

CREATE TABLE "public"."PollConnection"( 
	"Id" int NOT NULL,
	"Title" varchar(150) NOT NULL,
	"CommLinkType" smallint NOT NULL,
	"PollPortId" int,
	"PollPortGroupId" int,
	"CommDeviceEquipmentId" int,
	"CommDevicePortId" int,
	"CommDevicePortSettingsId" int,
	"ConnectionTimeout" int,
	"DialNumber" varchar(30),
	"CommLinkProtocol" smallint NOT NULL,
	"GprsCallType" smallint NOT NULL,
	"GprsAutoDisconnect" boolean NOT NULL,
	"InternetHost" varchar(50) NOT NULL,
	"InternetPort" int NOT NULL,
	"ImitateModem" boolean NOT NULL,
	"PortSpeed" int NOT NULL,
	"FlowControl" smallint NOT NULL);

CREATE TABLE "public"."PollPort"( 
	"PollPort_ID" int NOT NULL,
	"PollPort_PortNumber" smallint NOT NULL,
	"PollPort_Enabled" boolean NOT NULL,
	"PollPort_Title" varchar(50) NOT NULL,
	"PollPort_DialPrefix" varchar(10) NOT NULL,
	"PollPort_CommunicationLinkType" smallint NOT NULL,
	"PollPort_ModemTypeID" smallint NOT NULL,
	"GprsListenIPAddress" varchar(15) NOT NULL,
	"GprsListenPort" smallint NOT NULL,
	"MaxConnectionsCount" smallint NOT NULL,
	"SoftwareCarrierControl" boolean NOT NULL,
	"Comment" varchar(200) NOT NULL,
	"PollPortGroupId" int,
	"BillingModel" smallint NOT NULL,
	"TariffPlanIncludedMinutes" int NOT NULL,
	"PollServiceId" int NOT NULL);

CREATE TABLE "public"."PollPortGroup"( 
	"Id" int NOT NULL,
	"Title" varchar(50) NOT NULL);

CREATE TABLE "public"."PollPortStatistics"( 
	"PollPortId" int NOT NULL,
	"Date" date NOT NULL,
	"CallCount" int NOT NULL,
	"TotalCallsDuration" int NOT NULL,
	"Traffic" bigint NOT NULL);

CREATE TABLE "public"."PollService"( 
	"Id" int NOT NULL,
	"Title" varchar(256) NOT NULL,
	"IpAddress" varchar(45) NOT NULL,
	"DebugEnabled" boolean NOT NULL,
	"Token" varchar(256));

CREATE TABLE "public"."PollSession"( 
	"PollSession_ID" int NOT NULL,
	"PollSession_ClientSessionID" int NOT NULL,
	"PollSession_TaskID" int,
	"PollSession_StartDatetime" timestamp NOT NULL,
	"PollSession_EndDatetime" timestamp,
	"PollSession_ResultCode" smallint,
	"PollSession_CommunicationLinkType" smallint NOT NULL,
	"DialTime" real NOT NULL,
	"PollPortId" int,
	"NodeId" int,
	"PhoneNumber" varchar(30) NOT NULL,
	"PollTaskType" smallint NOT NULL,
	"CallDuration" int NOT NULL,
	"BytesSent" bigint NOT NULL,
	"BytesReceived" bigint NOT NULL,
	"CommEquipmentId" int,
	"PollConnectionId" int);

CREATE TABLE "public"."PollSessionLog"( 
	"PollSessionLog_PollSessionID" int NOT NULL,
	"PollSessionLog_DataDate" timestamp NOT NULL,
	"PollSessionLog_Type" smallint NOT NULL,
	"PollSessionLog_Message" varchar(1999) NOT NULL);

CREATE TABLE "public"."PollTask"( 
	"ID" int NOT NULL,
	"Description" varchar(255) NOT NULL,
	"StartDatetime" timestamp NOT NULL,
	"EndDatetime" timestamp NOT NULL,
	"ExecutionState" smallint NOT NULL,
	"MaxAttempts" smallint NOT NULL,
	"Attempt" smallint NOT NULL,
	"LastAttemptTime" timestamp,
	"LastAttemptResultCode" int,
	"NextAttemptDelay" int NOT NULL,
	"FreqType" smallint NOT NULL,
	"FreqInterval" int NOT NULL,
	"StartTime" smallint NOT NULL,
	"RetryInterval" smallint NOT NULL,
	"EndTime" smallint NOT NULL,
	"PollIntervalStartDate" timestamp,
	"PollIntervalEndDate" timestamp,
	"PollInstantInterval" int NOT NULL,
	"RemoteConsoleMode" boolean NOT NULL,
	"LastAttemptEndTime" timestamp,
	"Priority" smallint NOT NULL,
	"Type" smallint NOT NULL,
	"LoadAbsentDataOnly" boolean NOT NULL,
	"PollConnectionId" int NOT NULL);

CREATE TABLE "public"."PollTaskMeasurePoint"( 
	"TaskID" int NOT NULL,
	"MeasurePointID" int NOT NULL,
	"PerformTimeCorrection" boolean NOT NULL,
	"RequestedDataMask" smallint NOT NULL,
	"BackupConnectionId" int,
	"BackupLastPollDate" timestamp,
	"BackupStartTime" smallint NOT NULL);

CREATE TABLE "public"."PreparedReport"( 
	"Id" int NOT NULL,
	"GenerationDateTime" timestamp NOT NULL,
	"ReportTitle" varchar(100) NOT NULL,
	"TemplateTitle" varchar(200) NOT NULL,
	"ReportType" smallint NOT NULL,
	"ReportEntity" smallint NOT NULL,
	"NodeId" int,
	"MeasurePointId" int,
	"DataType" smallint NOT NULL,
	"StartDate" timestamp NOT NULL,
	"EndDate" timestamp NOT NULL,
	"Data" bytea NOT NULL,
	"Thumbnail" bytea NOT NULL,
	"FileName" varchar(200) NOT NULL);

CREATE TABLE "public"."ProtocolType"( 
	"ID" int NOT NULL,
	"Number" smallint NOT NULL,
	"Title" varchar(50) NOT NULL,
	"EquipmentModelId" int NOT NULL);

CREATE TABLE "public"."Report"( 
	"Id" int NOT NULL,
	"Title" varchar(100) NOT NULL,
	"IsSystem" boolean NOT NULL,
	"DataType" smallint NOT NULL,
	"ReportType" smallint NOT NULL,
	"PeriodStartDay" smallint NOT NULL,
	"PeriodStartMonth" smallint NOT NULL,
	"PeriodEndDay" smallint NOT NULL,
	"PeriodEndMonth" smallint NOT NULL,
	"PeriodType" smallint NOT NULL,
	"ReportEntity" smallint NOT NULL,
	"ReportTemplateId" int,
	"FileNameFormat" varchar(200) NOT NULL,
	"UseReportParameter" boolean NOT NULL);

CREATE TABLE "public"."ReportFixedNode"( 
	"ReportTemplateId" int NOT NULL,
	"NodeId" int NOT NULL);

CREATE TABLE "public"."ReportGeneratingTaskNode"( 
	"TaskId" int NOT NULL,
	"NodeId" int NOT NULL);

CREATE TABLE "public"."ReportGeneratingTaskSettings"( 
	"TaskId" int NOT NULL,
	"MeasurePointSystems" smallint NOT NULL,
	"ReportId" int NOT NULL,
	"MailingFileFormat" smallint NOT NULL,
	"MailingFileSplitMode" smallint NOT NULL,
	"MailSubject" varchar(78) NOT NULL,
	"SaveReport" boolean NOT NULL,
	"MailingEnabled" boolean NOT NULL,
	"MailMessage" varchar(500) NOT NULL,
	"PdfExportProperties" varchar NOT NULL,
	"ReportSaveDirectory" varchar(260) NOT NULL,
	"PackAttachments" boolean NOT NULL);

CREATE TABLE "public"."ReportParameter"( 
	"Id" int NOT NULL,
	"ReportId" int NOT NULL,
	"ReportParameterPropertyId" int NOT NULL,
	"Value" varchar(100) NOT NULL);

CREATE TABLE "public"."ReportParameterProperty"( 
	"Id" int NOT NULL,
	"ParameterName" varchar(50) NOT NULL,
	"ValueType" smallint NOT NULL,
	"Comment" varchar(300) NOT NULL,
	"ReportType" smallint NOT NULL,
	"ReportEntity" smallint NOT NULL,
	"IsSystem" boolean NOT NULL);

CREATE TABLE "public"."ReportTemplate"( 
	"Id" int NOT NULL,
	"Title" varchar(200) NOT NULL,
	"Comment" varchar(300) NOT NULL,
	"IsUser" boolean NOT NULL,
	"DataSourceMask" bigint NOT NULL,
	"Text" varchar,
	"ReportEntity" smallint NOT NULL,
	"ReportType" smallint NOT NULL,
	"MeasurePointCountHeat" smallint NOT NULL,
	"MeasurePointCountHotWater" smallint NOT NULL,
	"MeasurePointCountColdWater" smallint NOT NULL,
	"MeasurePointCountSteam" smallint NOT NULL,
	"MeasurePointCountGas" smallint NOT NULL,
	"MeasurePointCountElectricity" smallint NOT NULL,
	"BuildNumber" int NOT NULL,
	"EstimationAlgorithm" smallint NOT NULL,
	"DailyAverageCalculatingPeriod" smallint NOT NULL,
	"DeviceModel" int NOT NULL,
	"MeasurePointCountSewage" smallint NOT NULL);

CREATE TABLE "public"."RoomContractConsumption"( 
	"RoomId" int NOT NULL,
	"MonthNumber" smallint NOT NULL,
	"HeatValue" real,
	"HotWaterValue" real,
	"ColdWaterValue" real,
	"ElectricityValue" real);

CREATE TABLE "public"."RoomCounter"( 
	"EquipmentId" int NOT NULL,
	"RoomId" int NOT NULL,
	"InitialTotalsValue1" double precision NOT NULL,
	"InitialTotalsValue2" double precision NOT NULL,
	"InitialTotalsDate" timestamp NOT NULL,
	"InstallLocation" varchar(100) NOT NULL,
	"MeasurePointId" int);

CREATE TABLE "public"."ScmMeasurePoints"( 
	"MeasurePointId" int NOT NULL);

CREATE TABLE "public"."ServiceCompany"( 
	"ID" int NOT NULL,
	"Title" varchar(200) NOT NULL,
	"Phone" varchar(200) NOT NULL,
	"LicenseNumber" varchar(100) NOT NULL,
	"Comment" varchar(1000) NOT NULL);

CREATE TABLE "public"."Serviceman"( 
	"ID" int NOT NULL,
	"Name" varchar(100) NOT NULL,
	"ServiceCompanyID" int,
	"Phone" varchar(40) NOT NULL,
	"Email" varchar(30) NOT NULL,
	"Comment" varchar(200) NOT NULL);

CREATE TABLE "public"."Supplier"( 
	"Id" int NOT NULL,
	"Title" varchar(255) NOT NULL,
	"SystemTypeMask" smallint NOT NULL,
	"Contacts" varchar(500) NOT NULL,
	"Comment" varchar(1000) NOT NULL);

CREATE TABLE "public"."SystemLog"( 
	"Id" int NOT NULL,
	"DateTime" timestamp NOT NULL,
	"Importance" smallint NOT NULL,
	"Message" varchar(500) NOT NULL);

CREATE TABLE "public"."SystemParameters"( 
	"LogDebugMessages" boolean NOT NULL,
	"PollLogStorageTime" smallint NOT NULL,
	"SystemLogStorageTime" smallint NOT NULL,
	"UserSessionLogStorageTime" smallint NOT NULL,
	"AccountLogStorageTime" smallint NOT NULL,
	"EmailLogStorageTime" smallint NOT NULL,
	"IsAutoPollEnabled" boolean NOT NULL,
	"PollLogLevel" smallint NOT NULL,
	"PollMaxDuration" smallint NOT NULL,
	"PollMaxTimeDiff" int NOT NULL,
	"DeviceRequestRetryCount" smallint NOT NULL,
	"PollPortBlockErrorCount" smallint NOT NULL,
	"PollPortBlockTimeout" smallint NOT NULL,
	"TimeCorrectionEnabled" boolean NOT NULL,
	"TimeCorrectionThreshold" int NOT NULL,
	"GsmModemEnabled" boolean NOT NULL,
	"GsmModemComPortNumber" smallint NOT NULL,
	"GsmModemBaudRate" int NOT NULL,
	"GsmModemFlowControl" smallint NOT NULL,
	"DefaultSupplyPressure" smallint NOT NULL,
	"DefaultReturnPressure" smallint NOT NULL,
	"DefaultColdWaterTemp" real NOT NULL,
	"PressureDisplayType" smallint NOT NULL,
	"StorageTimeCurrentData" smallint NOT NULL,
	"MaxPartCountInMultipartSms" smallint NOT NULL,
	"SmtpServer" varchar(50) NOT NULL,
	"SmtpPort" int NOT NULL,
	"SmtpSenderAddress" varchar(50) NOT NULL,
	"SmtpSenderDisplayName" varchar(50) NOT NULL,
	"SmtpLogin" varchar(30) NOT NULL,
	"SmtpPassword" varchar(30) NOT NULL,
	"IsCommunalEnabled" boolean NOT NULL,
	"DiagEnabled" boolean NOT NULL,
	"DiagDayDataEnabled" boolean NOT NULL,
	"DiagHourDataEnabled" boolean NOT NULL,
	"DiagCurrentDataEnabled" boolean NOT NULL,
	"StorageTimeMonthData" smallint NOT NULL,
	"StorageTimeDayData" smallint NOT NULL,
	"StorageTimeHourData" smallint NOT NULL,
	"StorageTimeDeviceConfig" smallint NOT NULL,
	"StorageTimeDeviceEvent" smallint NOT NULL,
	"StorageTimePowerData" smallint NOT NULL,
	"WebSiteAddress" varchar(50) NOT NULL,
	"SmtpEnableSsl" boolean NOT NULL,
	"IgnoreNotAllDataReadError" boolean NOT NULL,
	"BackupDirectory" varchar(100) NOT NULL,
	"UpdaterDataBaseBackupMode" smallint NOT NULL,
	"StorageTimeTotalsData" smallint NOT NULL,
	"BackupCount" smallint NOT NULL,
	"CalibrationNotifyDayCount" smallint NOT NULL,
	"JobDueDateNotifyDayCount" smallint NOT NULL,
	"AllowSmsNotifications" boolean NOT NULL,
	"GsmModemModelId" smallint NOT NULL,
	"StorageTimePreparedReports" smallint NOT NULL,
	"Id" int NOT NULL,
	"StorageTimeIncidents" smallint NOT NULL,
	"StorageTimeGprsSessions" smallint NOT NULL,
	"AllowedNodeFileExtensions" varchar(500),
	"MinimumPasswordLength" int NOT NULL,
	"PasswordMustContainNumbers" boolean NOT NULL,
	"PasswordMustContainUppercaseLetters" boolean NOT NULL,
	"PasswordMustContainLowercaseLetters" boolean NOT NULL,
	"PasswordMustContainSpecialChars" boolean NOT NULL,
	"GsmModem_UseSipForVoiceCalls" boolean NOT NULL,
	"GsmModem_SipServerAddress" varchar(1999) NOT NULL,
	"GsmModem_SipLogin" varchar(50) NOT NULL,
	"GsmModem_SipPassword" varchar(128) NOT NULL,
	"GsmModem_SipFromDomain" varchar(1999) NOT NULL,
	"SaveGeneratedReportToDataBase" boolean NOT NULL,
	"Log_SystemLog_GprsIdentError" boolean NOT NULL,
	"Log_SystemLog_GprsModemNotFound" boolean NOT NULL,
	"Log_SystemLog_TimeCorrected" boolean NOT NULL,
	"Log_SystemLog_ReportPrinted" boolean NOT NULL,
	"Log_SystemLog_RatioDoesntMatch" boolean NOT NULL,
	"Log_SystemLog_PollError" boolean NOT NULL,
	"Log_SystemLog_MessageSent" boolean NOT NULL,
	"Log_SystemLog_UserSessionStarted" boolean NOT NULL,
	"Log_SystemLog_AuthenticationError" boolean NOT NULL,
	"Log_SystemLog_IncidentClosed" boolean NOT NULL,
	"Notification_AdmissionDateNotifyDayCount" smallint NOT NULL,
	"StorageTimeNodeEquipmentHistory" smallint NOT NULL,
	"Poll_DisablePortErrorCount" smallint NOT NULL,
	"Poll_RebootPortErrorCount" smallint NOT NULL,
	"StorageTimeNotifications" smallint NOT NULL);

CREATE TABLE "public"."SystemType"( 
	"ID" smallint NOT NULL,
	"Title" varchar(50) NOT NULL);

CREATE TABLE "public"."Task"( 
	"ID" int NOT NULL,
	"FreqType" smallint NOT NULL,
	"FreqInterval" int NOT NULL,
	"StartTime" smallint NOT NULL,
	"RetryInterval" smallint NOT NULL,
	"EndTime" smallint NOT NULL,
	"Title" varchar(100) NOT NULL,
	"Enabled" boolean NOT NULL,
	"LastRunTime" timestamp,
	"LastResult" boolean,
	"LastResultErrorMessage" varchar(500) NOT NULL,
	"StartDateTime" timestamp NOT NULL,
	"Type" smallint NOT NULL);

CREATE TABLE "public"."Territory"( 
	"Id" int NOT NULL,
	"ParentId" int,
	"Name" varchar(128) NOT NULL,
	"TimeZoneOffset" smallint NOT NULL,
	"OutdoorTempSourceMeasurePointId" int);

CREATE TABLE "public"."TimeZone"( 
	"Offset" smallint NOT NULL,
	"Title" varchar(100) NOT NULL);

CREATE TABLE "public"."Unit"( 
	"Unit_ID" smallint NOT NULL,
	"Unit_Title" varchar(15) NOT NULL,
	"Unit_Comment" varchar(60) NOT NULL,
	"Unit_MeasuredParameterID" smallint NOT NULL,
	"Unit_Code" varchar(30) NOT NULL,
	"Unit_BaseUnitID" smallint NOT NULL,
	"Unit_Multiplier" double precision NOT NULL);

CREATE TABLE "public"."UserSessionLog"( 
	"Id" int NOT NULL,
	"AccountId" int NOT NULL,
	"AccountLogin" varchar(30) NOT NULL,
	"AccountDisplayName" varchar(50) NOT NULL,
	"IPAddress" varchar(15) NOT NULL,
	"StartDatetime" timestamp NOT NULL,
	"EndDatetime" timestamp,
	"ExitCode" smallint NOT NULL,
	"Application" varchar(100) NOT NULL);

CREATE TABLE "public"."UserSessionRestoreToken"( 
	"Id" bigint NOT NULL,
	"AccountId" int NOT NULL,
	"ExpireDate" timestamp NOT NULL,
	"RestoreToken" varchar(256) NOT NULL,
	"CreationDate" timestamp NOT NULL,
	"OriginalIpAddress" varchar(15) NOT NULL,
	"LastActivityDate" timestamp NOT NULL,
	"Application" varchar(100) NOT NULL);

CREATE TABLE "public"."Version"( 
	"Build" int NOT NULL,
	"Version" varchar(50) NOT NULL,
	"Date" timestamp NOT NULL,
	"License" bytea NOT NULL,
	"LastMigrationBuild" int NOT NULL);

CREATE TABLE "public"."WaterConsumptionCurrent"( 
	"MeasurePointID" int NOT NULL,
	"DataDate" timestamp NOT NULL,
	"T_in" real,
	"T_out" real,
	"T_cw" real,
	"T_outdoor" real,
	"M_in" real,
	"M_out" real,
	"V_in" real,
	"V_out" real,
	"H_in" real,
	"H_out" real,
	"P_in" real,
	"P_out" real,
	"P_cw" real,
	"H_delta" real,
	"CalculatedValues" int,
	"BadValues" int,
	"V_delta" real,
	"M_delta" real,
	"T_indoor" real);

CREATE TABLE "public"."WaterConsumptionDay"( 
	"MeasurePointID" int NOT NULL,
	"DataDate" timestamp NOT NULL,
	"T_in" real,
	"M_in" real,
	"T_out" real,
	"M_out" real,
	"H_in" real,
	"H_out" real,
	"P_in" real,
	"P_out" real,
	"V_in" real,
	"V_out" real,
	"NormalOperationDuration" real,
	"T_cw" real,
	"T_outdoor" real,
	"H_delta" real,
	"Attributes" smallint,
	"CalculatedValues" int,
	"BadValues" int,
	"InterpolatedValues" int,
	"StopDuration" real,
	"FlowUnderrunDuration" real,
	"FlowOverrunDuration" real,
	"TempDiffLowDuration" real,
	"NoPowerDuration" real,
	"IncidentDuration" real,
	"SaturatedSteamDuration" real,
	"V_delta" real,
	"M_delta" real,
	"T_indoor" real);

CREATE TABLE "public"."WaterConsumptionHour"( 
	"MeasurePointID" int NOT NULL,
	"DataDate" timestamp NOT NULL,
	"T_in" real,
	"M_in" real,
	"T_out" real,
	"M_out" real,
	"H_in" real,
	"H_out" real,
	"P_in" real,
	"P_out" real,
	"V_in" real,
	"V_out" real,
	"NormalOperationDuration" real,
	"T_cw" real,
	"T_outdoor" real,
	"H_delta" real,
	"Attributes" smallint,
	"CalculatedValues" int,
	"BadValues" int,
	"InterpolatedValues" int,
	"StopDuration" real,
	"FlowUnderrunDuration" real,
	"FlowOverrunDuration" real,
	"TempDiffLowDuration" real,
	"NoPowerDuration" real,
	"IncidentDuration" real,
	"SaturatedSteamDuration" real,
	"V_delta" real,
	"M_delta" real,
	"T_indoor" real);

CREATE TABLE "public"."WaterConsumptionMonth"( 
	"MeasurePointID" int NOT NULL,
	"DataDate" timestamp NOT NULL,
	"T_in" real,
	"M_in" real,
	"T_out" real,
	"M_out" real,
	"H_in" real,
	"H_out" real,
	"P_in" real,
	"P_out" real,
	"V_in" real,
	"V_out" real,
	"NormalOperationDuration" real,
	"T_cw" real,
	"T_outdoor" real,
	"H_delta" real,
	"Attributes" smallint,
	"CalculatedValues" int,
	"BadValues" int,
	"InterpolatedValues" int,
	"StopDuration" real,
	"FlowUnderrunDuration" real,
	"FlowOverrunDuration" real,
	"TempDiffLowDuration" real,
	"NoPowerDuration" real,
	"IncidentDuration" real,
	"SaturatedSteamDuration" real,
	"V_delta" real,
	"M_delta" real,
	"T_indoor" real);

CREATE TABLE "public"."WaterEstimatedConsumption"( 
	"MeasurePointId" int NOT NULL,
	"PreviousMonth" boolean NOT NULL,
	"StartDate" timestamp NOT NULL,
	"EstimationAlgorithm" smallint NOT NULL,
	"EndDate" timestamp NOT NULL,
	"M_in" real,
	"M_out" real,
	"M_delta" real,
	"V_in" real,
	"V_out" real,
	"V_delta" real,
	"H_in" real,
	"H_out" real,
	"H_delta" real);

CREATE TABLE "public"."WaterTotals"( 
	"MeasurePointId" int NOT NULL,
	"DataDate" timestamp NOT NULL,
	"V_in" double precision,
	"V_out" double precision,
	"M_in" double precision,
	"M_out" double precision,
	"H_in" double precision,
	"H_out" double precision,
	"H_delta" double precision,
	"NormalOperationDuration" double precision,
	"Flags" smallint NOT NULL,
	"CalculatedValues" int,
	"BadValues" int,
	"ResettedValues" int,
	"InterpolatedValues" int,
	"StopDuration" double precision,
	"FlowUnderrunDuration" double precision,
	"FlowOverrunDuration" double precision,
	"TempDiffLowDuration" double precision,
	"NoPowerDuration" double precision,
	"IncidentDuration" double precision,
	"SaturatedSteamDuration" double precision,
	"V_delta" double precision,
	"M_delta" double precision);

COMMIT;
