
CREATE UNIQUE INDEX "Idx_Account_WindowsSid" ON "public"."Account" ("WindowsSid" ASC)
WHERE (("WindowsSid" IS NOT NULL));
CREATE UNIQUE INDEX "UQ_Customer_VatId" ON "public"."Customer" ("VatId" ASC)
WHERE (("VatId"<>''));
COMMENT ON INDEX "public"."UQ_Customer_VatId" IS 'Обеспечивает уникальность ИНН';
CREATE UNIQUE INDEX "IX_Equipment_ModemIdentifier" ON "public"."Equipment" ("EquipmentModelId" ASC,"ModemIdentifier" ASC)
WHERE (("ModemIdentifier" IS NOT NULL));
CREATE UNIQUE INDEX "IX_Equipment_PollPortId" ON "public"."Equipment" ("ModemPollPortId" ASC)
WHERE (("ModemPollPortId" IS NOT NULL));
CREATE UNIQUE INDEX "IX_MeasurePoint_Number" ON "public"."MeasurePoint" ("MeasurePoint_ServiceNumber" ASC)
WHERE (("MeasurePoint_ServiceNumber" IS NOT NULL));
CREATE UNIQUE INDEX "IX_Node_Number" ON "public"."Node" ("Number" ASC)
WHERE (("Number" IS NOT NULL));
CREATE INDEX "IX_NodeSupplier_SupplierId" ON "public"."NodeSupplier" ("SupplierId" ASC)
WHERE (("SupplierId" IS NOT NULL));
CREATE UNIQUE INDEX "IX_PersonalAccount_PersonalAccountNumber" ON "public"."PersonalAccount" ("NodeId" ASC,"PersonalAccount_Number" ASC)
WHERE (("PersonalAccount_Number"<>''));
CREATE UNIQUE INDEX "IX_PollConnection_DialNumber" ON "public"."PollConnection" ("DialNumber" ASC)
WHERE (((("CommLinkType" IN ((2), (4))) AND "CommDeviceEquipmentId" IS NULL)));
CREATE UNIQUE INDEX "IX_PollConnection_InternetHostPort" ON "public"."PollConnection" ("InternetHost" ASC,"InternetPort" ASC)
WHERE ((("CommLinkType"=(16) AND "CommDeviceEquipmentId" IS NULL)));
CREATE UNIQUE INDEX "IX_PollPort_PollServiceId_GprsListenPort" ON "public"."PollPort" ("PollServiceId" ASC,"GprsListenPort" ASC)
WHERE (("PollPort_CommunicationLinkType"=(8)));
CREATE UNIQUE INDEX "IX_PollPort_PollService_PortNumber" ON "public"."PollPort" ("PollServiceId" ASC,"PollPort_PortNumber" ASC)
WHERE (("PollPort_CommunicationLinkType" IN ((1), (2), (4))));
CREATE UNIQUE INDEX "IX_PollService_Token" ON "public"."PollService" ("Token" ASC)
WHERE (("Token" IS NOT NULL));
ALTER TABLE "public"."Account" ADD CONSTRAINT "CK_Account_ReportCenterFormMode" CHECK (("ReportCenterFormMode">=(0) AND "ReportCenterFormMode"<=(1)));
ALTER TABLE "public"."AccountLog" ADD CONSTRAINT "CK_AccountLog_Importance" CHECK (("Importance"=(16) OR ("Importance"=(8) OR ("Importance"=(4) OR ("Importance"=(2) OR "Importance"=(1))))));
ALTER TABLE "public"."AccountNode" ADD CONSTRAINT "CK_AccountNode_MeasurePointCheckAccessMode" CHECK (("MeasurePointCheckAccessMode"=(1) OR "MeasurePointCheckAccessMode"=(0)));
ALTER TABLE "public"."Adapter" ADD CONSTRAINT "CK_Adapter" CHECK (char_length("Title")>(0));
ALTER TABLE "public"."Cell" ADD CONSTRAINT "CK_Cell_DataType" CHECK (("DataType"=(128) OR ("DataType"=(64) OR ("DataType"=(32) OR ("DataType"=(4) OR "DataType"=(0))))));
ALTER TABLE "public"."Contingency" ADD CONSTRAINT "CK_Contingency_NodeID_MeasurePointID" CHECK ((NOT ("NodeID" IS NULL AND "MeasurePointID" IS NULL)));
ALTER TABLE "public"."Contingency" ADD CONSTRAINT "CK_Contingency_StartDateEndDate" CHECK ("StartDate"<="EndDate");
ALTER TABLE "public"."ContractConsumption" ADD CONSTRAINT "CK_ResourceLoad_Year" CHECK (((1998)<"Year" AND "Year"<(2050)));
ALTER TABLE "public"."ContractConsumptionLimit" ADD CONSTRAINT "CK_ConsumptionLimit_Year" CHECK (((1998)<"Year" AND "Year"<(2050)));
ALTER TABLE "public"."ContractTemperature" ADD CONSTRAINT "CK_ContractTemperature_T_in" CHECK (("T_in">=(19) AND "T_in"<=(150)));
ALTER TABLE "public"."ContractTemperature" ADD CONSTRAINT "CK_ContractTemperature_T_out" CHECK (("T_out">=(19) AND "T_out"<=(70)));
ALTER TABLE "public"."ContractTemperature" ADD CONSTRAINT "CK_ContractTemperature_T_outdoor" CHECK (("T_outdoor">=(-60) AND "T_outdoor"<=(19)));
ALTER TABLE "public"."CustomAttribute" ADD CONSTRAINT "CK_CustomAttribute_Entities" CHECK (("Entities"=(1) OR ("Entities"=(2) OR "Entities"=(3))));
ALTER TABLE "public"."DataInterface" ADD CONSTRAINT "CK_DataInterface_MaxNetworkSize" CHECK ("MaxNetworkSize">=(0));
ALTER TABLE "public"."DataInterface" ADD CONSTRAINT "CK_DataInterface_NetworkAddressUsage" CHECK (("NetworkAddressUsage">=(0) AND "NetworkAddressUsage"<=(4)));
ALTER TABLE "public"."DataInterface" ADD CONSTRAINT "CK_DataInterface_SupportedPortSpeeds" CHECK ("SupportedPortSpeeds">=(0));
ALTER TABLE "public"."DataStatus" ADD CONSTRAINT "CK_DataStatus_DataStatus" CHECK (("DataStatus"=(4) OR ("DataStatus"=(3) OR ("DataStatus"=(2) OR ("DataStatus"=(1) OR "DataStatus"=(0))))));
ALTER TABLE "public"."DataStatus" ADD CONSTRAINT "CK_DataStatus_DeviceDataType" CHECK (("DeviceDataType"=(128) OR ("DeviceDataType"=(64) OR "DeviceDataType"=(32))));
ALTER TABLE "public"."DataStatus" ADD CONSTRAINT "CK_DataStatus_StartDate_EndDate" CHECK ("StartDate"<="EndDate");
ALTER TABLE "public"."DeviceAddress" ADD CONSTRAINT "CK_DeviceAddress_ArchiveDepth" CHECK (("ArchiveDepth"=(0) OR ("DeviceDataType"&(128))=(128) AND (("ArchiveDepth"=(64) OR ("ArchiveDepth"=(32) OR ("ArchiveDepth"=(16)) OR ("DeviceDataType"&(32))=(32) AND (("ArchiveDepth"=(48) OR "ArchiveDepth"=(12))))))));
ALTER TABLE "public"."DeviceAddress" ADD CONSTRAINT "CK_DeviceAddress_DeviceDataType" CHECK (("DeviceDataType"=(128) OR ("DeviceDataType"=(640) OR ("DeviceDataType"=(64) OR ("DeviceDataType"=(576) OR ("DeviceDataType"=(32) OR ("DeviceDataType"=(544) OR ("DeviceDataType"=(4) OR ("DeviceDataType"=(516) OR ("DeviceDataType"=(512) OR "DeviceDataType"=(0)))))))))));
ALTER TABLE "public"."DeviceCell" ADD CONSTRAINT "CK_DeviceCell_PulseRatio" CHECK ("PulseRatio">=(0));
ALTER TABLE "public"."DeviceChannel" ADD CONSTRAINT "CK_DeviceChannel_ChannelNumber" CHECK ("ChannelNumber"<>(0));
ALTER TABLE "public"."DeviceEvent" ADD CONSTRAINT "CK_DeviceEvent_StartEndDate" CHECK ("StartDateTime"<="EndDateTime");
ALTER TABLE "public"."DriverInterface" ADD CONSTRAINT "CK_DriverInterface_ChannelCount" CHECK ("ChannelCount">=(0));
ALTER TABLE "public"."DriverInterface" ADD CONSTRAINT "CK_DriverInterface_DriverName" CHECK (char_length("DriverName")>(0));
ALTER TABLE "public"."DriverInterface" ADD CONSTRAINT "CK_DriverInterface_DriverStatus" CHECK (("DriverStatus">=(0) AND "DriverStatus"<=(2)));
ALTER TABLE "public"."DriverInterface" ADD CONSTRAINT "CK_DriverInterface_Features" CHECK ("Features">=(0));
ALTER TABLE "public"."DriverInterface" ADD CONSTRAINT "CK_DriverInterface_SupportedDataTypes" CHECK ("SupportedDataTypes">=(0));
ALTER TABLE "public"."DriverInterface" ADD CONSTRAINT "CK_DriverInterface_TotalsResetThreshold" CHECK (("TotalsResetThresholdM">=(0) AND "TotalsResetThresholdQ">=(0)));
ALTER TABLE "public"."ElectricPower" ADD CONSTRAINT "CK_MeasurePointPower_Interval" CHECK ("Interval">(0));
ALTER TABLE "public"."Equipment" ADD CONSTRAINT "CK_Equipment_SerialNumber" CHECK (char_length("SerialNumber")>(0));
ALTER TABLE "public"."EquipmentHistory" ADD CONSTRAINT "CK_EquipmentHistory_Action" CHECK (("Action"=(1) OR ("Action"=(2) OR ("Action"=(3) OR ("Action"=(4) OR "Action"=(5))))));
ALTER TABLE "public"."EquipmentModelModification" ADD CONSTRAINT "CK_EquipmentModelModification_NominalDiameter" CHECK ("NominalDiameter">=(0));
ALTER TABLE "public"."EquipmentModelModification" ADD CONSTRAINT "CK_EquipmentModelModification_PressSensor" CHECK (("PressSensorMin"=(0) AND ("PressSensorMax"=(0) OR "PressSensorMin"<"PressSensorMax")));
ALTER TABLE "public"."EquipmentModelModification" ADD CONSTRAINT "CK_EquipmentModelModification_RelativeError" CHECK ("RelativeError">=(0));
ALTER TABLE "public"."EquipmentModelModification" ADD CONSTRAINT "CK_EquipmentModelModification_TempSensor" CHECK (("TempSensorMin"=(0) AND ("TempSensorMax"=(0) OR "TempSensorMin"<"TempSensorMax")));
ALTER TABLE "public"."GprsControllerSession" ADD CONSTRAINT "CK_GprsControllerSessionEndReason" CHECK (("EndReason">=(0) AND "EndReason"<=(8)));
ALTER TABLE "public"."IPAddress" ADD CONSTRAINT "CK_IpAddress_RangeEndIp" CHECK (("RangeEndIp">=(0) AND "RangeEndIp"<=(4294967295.)));
ALTER TABLE "public"."IPAddress" ADD CONSTRAINT "CK_IpAddress_StartIp" CHECK (("RangeStartIp">=(0) AND "RangeStartIp"<=(4294967295.)));
ALTER TABLE "public"."MapObjectAppearance" ADD CONSTRAINT "CK_MapObjectAppearance_FontStyle" CHECK (((0)<="FontStyle" AND "FontStyle"<=(15)));
ALTER TABLE "public"."MapObjectAppearance" ADD CONSTRAINT "CK_MapObjectAppearance_TextAlignment" CHECK ((("TextVAlignment"=(2) OR ("TextVAlignment"=(1) OR "TextVAlignment"=(0)))) AND (("TextHAlignment"=(2) OR ("TextHAlignment"=(1) OR "TextHAlignment"=(0)))));
ALTER TABLE "public"."MapObjectAppearance" ADD CONSTRAINT "CK_MapObjectAppearance_Type" CHECK (("AppearanceType"=(2) OR ("AppearanceType"=(1) OR "AppearanceType"=(0))));
ALTER TABLE "public"."MeasurePoint" ADD CONSTRAINT "CK_MeasurePoint_CalculateMissingHourConsumption" CHECK (("CalculateMissingHourConsumption"=(0) OR ("CalculateMissingHourConsumption"=(2) OR ("CalculateMissingHourConsumption"=(4) OR ("CalculateMissingHourConsumption"=(3) AND "MeasurePoint_SystemTypeID"=(32))))));
ALTER TABLE "public"."MeasurePoint" ADD CONSTRAINT "CK_MeasurePoint_CurrentRatio" CHECK (("CurrentRatio">(0) AND "CurrentRatio"<=(40000)));
ALTER TABLE "public"."MeasurePoint" ADD CONSTRAINT "CK_MeasurePoint_DevicePressureType" CHECK (("DevicePressureType"=(1) OR "DevicePressureType"=(2)));
ALTER TABLE "public"."MeasurePoint" ADD CONSTRAINT "CK_MeasurePoint_NodePersonalAccount" CHECK (("MeasurePoint_Type"=(0) AND ("MeasurePoint_NodeID" IS NOT NULL AND ("PersonalAccountID" IS NULL OR ("MeasurePoint_Type"=(1) AND ("PersonalAccountID" IS NOT NULL AND "MeasurePoint_NodeID" IS NULL))))));
ALTER TABLE "public"."MeasurePoint" ADD CONSTRAINT "CK_MeasurePoint_ReportingDay" CHECK (((1)<="ReportingDay" AND "ReportingDay"<=(28)));
ALTER TABLE "public"."MeasurePoint" ADD CONSTRAINT "CK_MeasurePoint_ReportingHour" CHECK (((0)<="ReportingHour" AND "ReportingHour"<=(23)));
ALTER TABLE "public"."MeasurePoint" ADD CONSTRAINT "CK_MeasurePoint_ServiceNumber" CHECK ("MeasurePoint_ServiceNumber">(0));
ALTER TABLE "public"."MeasurePoint" ADD CONSTRAINT "CK_MeasurePoint_State" CHECK (("MeasurePoint_State"=(3) OR ("MeasurePoint_State"=(2) OR ("MeasurePoint_State"=(1) OR "MeasurePoint_State"=(0)))));
ALTER TABLE "public"."MeasurePoint" ADD CONSTRAINT "CK_MeasurePoint_VoltageRatio" CHECK (("VoltageRatio">(0) AND "VoltageRatio"<=(11500)));
ALTER TABLE "public"."MeasurePointDataCopySettings" ADD CONSTRAINT "CK_MeasurePointDataCopySettings" CHECK ("TargetMeasurePointId"<>"SourceMeasurePointId");
ALTER TABLE "public"."MeasurePointExpression" ADD CONSTRAINT "CK_MeasurePointExpression_Expression" CHECK (char_length("Expression")<>(0));
ALTER TABLE "public"."ModemType" ADD CONSTRAINT "CK_ModemType_CommunicationLinkType" CHECK (("ModemType_CommunicationLinkType"=(16) OR ("ModemType_CommunicationLinkType"=(8) OR (("ModemType_CommunicationLinkType"=(4) OR (("ModemType_CommunicationLinkType"=(2) OR "ModemType_CommunicationLinkType"=(1))))))));
ALTER TABLE "public"."Node" ADD CONSTRAINT "CK_Node" CHECK ("LicenseCount">(0));
ALTER TABLE "public"."Node" ADD CONSTRAINT "CK_Node_IsCommunalPollEnabled" CHECK (("IsCommunalPollEnabled"=(0) OR ("IsCommunalPollEnabled"=(1) AND "Type"=(2))));
ALTER TABLE "public"."Node" ADD CONSTRAINT "CK_Node_Norms" CHECK (("NormColdWater">=(0) AND ("NormHotWater">=(0) AND ("NormHeat">=(0) AND ("NormElectricity">=(0) AND "NormGas">=(0))))));
ALTER TABLE "public"."Node" ADD CONSTRAINT "CK_Node_Number" CHECK ("Number">(0));
ALTER TABLE "public"."Node" ADD CONSTRAINT "CK_Node_Type" CHECK (("Type"=(2) OR "Type"=(1)));
ALTER TABLE "public"."Node" ADD CONSTRAINT "CK_TempCompAnalysisType" CHECK (("TemperatureComplianceAnalysisType"=(0) OR ("TemperatureComplianceAnalysisType"=(1) OR "TemperatureComplianceAnalysisType"=(2))));
ALTER TABLE "public"."NodeGeoLocation" ADD CONSTRAINT "CK_NodeGeoLocation_Latitude" CHECK (((-90)<="Latitude" AND "Latitude"<=(90)));
ALTER TABLE "public"."NodeGeoLocation" ADD CONSTRAINT "CK_NodeGeoLocation_Longitude" CHECK (((-180)<="Longitude" AND "Longitude"<=(180)));
ALTER TABLE "public"."NodeJob" ADD CONSTRAINT "CK_NodeJob_FactEndDate" CHECK (("State"=(0) AND ("FactEndDate" IS NULL OR ("State"=(1) AND "FactEndDate"<>NULL))));
ALTER TABLE "public"."NodeJob" ADD CONSTRAINT "CK_NodeJob_StartDate" CHECK (("StartDate"<="ScheduledEndDate" AND (("FactEndDate" IS NULL OR "FactEndDate">="StartDate"))));
ALTER TABLE "public"."NodeJob" ADD CONSTRAINT "CK_NodeJob_State" CHECK (("State">=(0) OR "State"<=(1)));
ALTER TABLE "public"."NodeJob" ADD CONSTRAINT "CK_NodeJob_Type" CHECK (("Type">=(0) OR "Type"<=(6)));
ALTER TABLE "public"."NodeUserDiagParams" ADD CONSTRAINT "CK_NodeUserDiagParams_DataTypes" CHECK (("DataTypes"&((((4)+(32))+(64))+(128)))<>(0) AND ("DataTypes"&~((((4)+(32))+(64))+(128)))=(0));
ALTER TABLE "public"."NodeUserDiagParams" ADD CONSTRAINT "CK_NodeUserDiagParams_Expression" CHECK (char_length("Expression")>(0));
ALTER TABLE "public"."NodeUserDiagParams" ADD CONSTRAINT "CK_NodeUserDiagParams_Importance" CHECK (("Importance"=(2) OR "Importance"=(4)));
ALTER TABLE "public"."NodeUserDiagParams" ADD CONSTRAINT "CK_NodeUserDiagParams_Message" CHECK (char_length("Message")>(0));
ALTER TABLE "public"."NodeUserDiagParams" ADD CONSTRAINT "CK_NodeUserDiagParams_Seasons" CHECK (("Seasons"=(1) OR ("Seasons"=(2) OR "Seasons"=(3))));
ALTER TABLE "public"."NodeUserDiagParams" ADD CONSTRAINT "CK_NodeUserDiagParams_ShortMessage" CHECK (char_length("ShortMessage")>(0));
ALTER TABLE "public"."Notification" ADD CONSTRAINT "CK_Notification_Importance" CHECK (("Importance"=(4) OR ("Importance"=(2) OR "Importance"=(1))));
ALTER TABLE "public"."PollConnection" ADD CONSTRAINT "CK_PollConnection_CommDevice" CHECK (("CommLinkType"=(8) AND ("CommDeviceEquipmentId" IS NOT NULL OR "CommLinkType"<>(8))));
ALTER TABLE "public"."PollConnection" ADD CONSTRAINT "CK_PollConnection_CommDevicePort" CHECK (("CommDevicePortId" IS NULL OR "CommDeviceEquipmentId" IS NOT NULL));
ALTER TABLE "public"."PollConnection" ADD CONSTRAINT "CK_PollConnection_CommDevicePortSettings" CHECK (("CommDevicePortSettingsId" IS NULL OR "CommDevicePortId" IS NOT NULL));
ALTER TABLE "public"."PollConnection" ADD CONSTRAINT "CK_PollConnection_CommLinkType" CHECK (("CommLinkType"=(16) OR ("CommLinkType"=(8) OR (("CommLinkType"=(4) OR (("CommLinkType"=(2) OR "CommLinkType"=(1))))))));
ALTER TABLE "public"."PollConnection" ADD CONSTRAINT "CK_PollConnection_CommLinkType_Protocol" CHECK (("CommLinkType"=(4) AND ("CommLinkProtocol"=(0) OR ("CommLinkType"=(4) AND ("CommLinkProtocol"=(1) OR ("CommLinkType"=(4) AND ("CommLinkProtocol"=(2) OR ("CommLinkType"=(4) AND ("CommLinkProtocol"=(3) OR ("CommLinkType"=(16) AND ("CommLinkProtocol"=(0) OR ("CommLinkType"=(16) AND ("CommLinkProtocol"=(1) OR ("CommLinkType"=(1) AND ("CommLinkProtocol"=(0) OR ("CommLinkType"=(2) AND ("CommLinkProtocol"=(0) OR ("CommLinkType"=(8) AND "CommLinkProtocol"=(0)))))))))))))))))));
ALTER TABLE "public"."PollConnection" ADD CONSTRAINT "CK_PollConnection_ConnectionTimeout" CHECK (("CommLinkType"=(1) AND ("ConnectionTimeout"=(0) OR ("CommLinkType"<>(1) AND "ConnectionTimeout">(0)))));
ALTER TABLE "public"."PollConnection" ADD CONSTRAINT "CK_PollConnection_DialNumber" CHECK ((("CommLinkType"=(4) OR ("CommLinkType"=(2)) AND (char_length("DialNumber")>(0) OR (NOT ("CommLinkType"=(4) OR "CommLinkType"=(2)))))));
ALTER TABLE "public"."PollConnection" ADD CONSTRAINT "CK_PollConnection_Direct" CHECK (("CommLinkType"<>(1) OR ("PortSpeed"<>(0) AND "FlowControl"<>(0))));
ALTER TABLE "public"."PollConnection" ADD CONSTRAINT "CK_PollConnection_GprsCallType" CHECK (("GprsCallType"=(4) OR ("GprsCallType"=(2) OR ("GprsCallType"=(1) OR "GprsCallType"=(0)))));
ALTER TABLE "public"."PollConnection" ADD CONSTRAINT "CK_PollConnection_GprsCallType_DialNumber" CHECK (("GprsCallType"=(0) OR len("DialNumber")>(0)));
ALTER TABLE "public"."PollConnection" ADD CONSTRAINT "CK_PollConnection_Internet" CHECK (("CommLinkType"<>(16) OR ("CommLinkType"=(16) AND (char_length("InternetHost")>(0) AND ("InternetPort">(0) AND "InternetPort"<(65536))))));
ALTER TABLE "public"."PollConnection" ADD CONSTRAINT "CK_PollConnection_PollPort" CHECK (("PollPortId" IS NULL OR "PollPortGroupId" IS NULL));
ALTER TABLE "public"."PollConnection" ADD CONSTRAINT "CK_PollConnection_PortSpeed" CHECK (("PortSpeed"=(115200) OR ("PortSpeed"=(57600) OR (("PortSpeed"=(38400) OR ("PortSpeed"=(28800) OR (("PortSpeed"=(19200) OR ("PortSpeed"=(14400) OR (("PortSpeed"=(9600) OR ("PortSpeed"=(4800) OR (("PortSpeed"=(2400) OR ("PortSpeed"=(1200) OR (("PortSpeed"=(600) OR (("PortSpeed"=(300) OR "PortSpeed"=(0))))))))))))))))))));
ALTER TABLE "public"."PollPort" ADD CONSTRAINT "CK_PollPort_BillingModel" CHECK (("BillingModel"=(0) OR "BillingModel"=(1)));
ALTER TABLE "public"."PollPort" ADD CONSTRAINT "CK_PollPort_CommunicationLinkType" CHECK (("PollPort_CommunicationLinkType"=(16) OR ("PollPort_CommunicationLinkType"=(8) OR (("PollPort_CommunicationLinkType"=(4) OR (("PollPort_CommunicationLinkType"=(2) OR "PollPort_CommunicationLinkType"=(1))))))));
ALTER TABLE "public"."PollPort" ADD CONSTRAINT "CK_PollPort_GprsProtocol" CHECK (("GprsProtocol"=(0) OR "GprsProtocol"=(1)));
ALTER TABLE "public"."PollPort" ADD CONSTRAINT "CK_PollPort_TariffPlanIncludedMinutes" CHECK ("TariffPlanIncludedMinutes">=(0));
ALTER TABLE "public"."PollSession" ADD CONSTRAINT "CK_PollSession_PollTaskType" CHECK (("PollTaskType"=(3) OR ("PollTaskType"=(2) OR ("PollTaskType"=(1) OR "PollTaskType"=(0)))));
ALTER TABLE "public"."PollSession" ADD CONSTRAINT "CK_PollSession_ResultCode" CHECK (("PollSession_ResultCode"=(255) OR ("PollSession_ResultCode"=(254) OR ("PollSession_ResultCode"=(253) OR ("PollSession_ResultCode"=(28) OR ("PollSession_ResultCode"=(27) OR ("PollSession_ResultCode"=(26) OR ("PollSession_ResultCode"=(25) OR ("PollSession_ResultCode"=(24) OR ("PollSession_ResultCode"=(23) OR ("PollSession_ResultCode"=(22) OR ("PollSession_ResultCode"=(21) OR ("PollSession_ResultCode"=(20) OR ("PollSession_ResultCode"=(18) OR ("PollSession_ResultCode"=(17) OR ("PollSession_ResultCode"=(16) OR ("PollSession_ResultCode"=(15) OR ("PollSession_ResultCode"=(14) OR ("PollSession_ResultCode"=(13) OR ("PollSession_ResultCode"=(12) OR ("PollSession_ResultCode"=(11) OR ("PollSession_ResultCode"=(10) OR ("PollSession_ResultCode"=(9) OR ("PollSession_ResultCode"=(8) OR ("PollSession_ResultCode"=(7) OR ("PollSession_ResultCode"=(6) OR ("PollSession_ResultCode"=(5) OR ("PollSession_ResultCode"=(4) OR ("PollSession_ResultCode"=(2) OR ("PollSession_ResultCode"=(1) OR "PollSession_ResultCode"=(0)))))))))))))))))))))))))))))));
ALTER TABLE "public"."PollTask" ADD CONSTRAINT "CK_PollTask_ExecutionState" CHECK (("ExecutionState"=(0) OR ("ExecutionState"=(1) OR "ExecutionState"=(2))));
ALTER TABLE "public"."PollTask" ADD CONSTRAINT "CK_PollTask_FreqInterval" CHECK (("FreqType"=(4) AND (("FreqInterval">(0) AND ("FreqInterval"<=(31)) OR "FreqType"=(8))) AND (("FreqInterval">(0) AND ("FreqInterval"<(128)) OR ("FreqType"=(16) AND (("FreqInterval">(0) AND ("FreqInterval"<=(31)) OR "FreqType"=(32))))))));
ALTER TABLE "public"."PollTask" ADD CONSTRAINT "CK_PollTask_LastAttemptResultCode" CHECK (("LastAttemptResultCode"=(0) OR ("LastAttemptResultCode"=(2) OR "LastAttemptResultCode"=(5))));
ALTER TABLE "public"."PollTask" ADD CONSTRAINT "CK_PollTask_Priority" CHECK (("Priority"=(5) OR ("Priority"=(4) OR ("Priority"=(3) OR ("Priority"=(2) OR ("Priority"=(1) OR "Priority"=(0)))))));
ALTER TABLE "public"."PollTask" ADD CONSTRAINT "CK_PollTask_StartEndDatetime" CHECK ("EndDatetime">"StartDatetime");
ALTER TABLE "public"."PollTask" ADD CONSTRAINT "CK_PollTask_Type" CHECK (("Type"=(3) OR ("Type"=(2) OR ("Type"=(1) OR "Type"=(0)))));
ALTER TABLE "public"."Report" ADD CONSTRAINT "CK_Report_PeriodDay" CHECK (("PeriodStartMonth"="PeriodEndMonth" AND ("PeriodStartDay"<="PeriodEndDay" OR "PeriodStartMonth"<"PeriodEndMonth")));
ALTER TABLE "public"."Report" ADD CONSTRAINT "CK_Report_PeriodEndDay" CHECK ("PeriodEndDay"<=(31));
ALTER TABLE "public"."Report" ADD CONSTRAINT "CK_Report_PeriodEndMonth" CHECK (("PeriodEndMonth"=(1) OR "PeriodEndMonth"=(0)));
ALTER TABLE "public"."Report" ADD CONSTRAINT "CK_Report_PeriodMonth" CHECK ("PeriodStartMonth"<="PeriodEndMonth");
ALTER TABLE "public"."Report" ADD CONSTRAINT "CK_Report_PeriodStartDay" CHECK ("PeriodStartDay"<=(31));
ALTER TABLE "public"."Report" ADD CONSTRAINT "CK_Report_PeriodStartMonth" CHECK (("PeriodStartMonth"=(1) OR "PeriodStartMonth"=(0)));
ALTER TABLE "public"."Report" ADD CONSTRAINT "CK_Report_ReportType" CHECK (("ReportType">=(1) AND "ReportType"<=(33)));
ALTER TABLE "public"."ReportParameterProperty" ADD CONSTRAINT "CK_ValueType" CHECK (("ValueType">=(1) AND "ValueType"<=(5)));
ALTER TABLE "public"."ReportTemplate" ADD CONSTRAINT "CK_ReportTemplate_EstimationAlgorithm" CHECK (("EstimationAlgorithm">=(0) AND "EstimationAlgorithm"<=(3)));
ALTER TABLE "public"."ReportTemplate" ADD CONSTRAINT "CK_ReportTemplate_IsUser" CHECK (("IsUser"=(1) AND ("Text" IS NOT NULL OR ("IsUser"=(0) AND "Text" IS NULL))));
ALTER TABLE "public"."ReportTemplate" ADD CONSTRAINT "CK_ReportTemplate_ReportType" CHECK (("ReportType">=(1) AND "ReportType"<=(33)));
ALTER TABLE "public"."ReportTemplate" ADD CONSTRAINT "CK_ReportTemplate_ReportUnits" CHECK (("ReportUnits">=(0) AND "ReportUnits"<=(1)));
ALTER TABLE "public"."RoomContractConsumption" ADD CONSTRAINT "CK_RoomContractConsumption_MonthNumber" CHECK (("MonthNumber">=(1) AND "MonthNumber"<=(12)));
ALTER TABLE "public"."Serviceman" ADD CONSTRAINT "CK_Serviceman_Name" CHECK (char_length("Name")>(0));
ALTER TABLE "public"."Supplier" ADD CONSTRAINT "CK_Supplier_SystemTypeMask" CHECK (("SystemTypeMask">(0) AND "SystemTypeMask"<(128)));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_AccountLogStorageTime" CHECK (((1)<="AccountLogStorageTime" AND "AccountLogStorageTime"<=(10000)));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_DefaultColdWaterSummerTemp" CHECK (("DefaultColdWaterSummerTemp"<=(20) AND "DefaultColdWaterSummerTemp">=(0)));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_DefaultColdWaterWinterTemp" CHECK (("DefaultColdWaterWinterTemp"<=(20) AND "DefaultColdWaterWinterTemp">=(0)));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_DefaultReturnPressure" CHECK (((1)<="DefaultReturnPressure" AND "DefaultReturnPressure"<=(20)));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_DefaultSupplyPressure" CHECK (((1)<="DefaultSupplyPressure" AND "DefaultSupplyPressure"<=(20)));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_DeviceRequestRetryCount" CHECK (((1)<="DeviceRequestRetryCount" AND "DeviceRequestRetryCount"<=(99)));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_EmailLogStorageTime" CHECK (((1)<="EmailLogStorageTime" AND "EmailLogStorageTime"<=(10000)));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_GsmModemBaudRate" CHECK (("GsmModemBaudRate"=(115200) OR ("GsmModemBaudRate"=(57600) OR ("GsmModemBaudRate"=(38400) OR ("GsmModemBaudRate"=(28800) OR ("GsmModemBaudRate"=(19200) OR ("GsmModemBaudRate"=(14400) OR ("GsmModemBaudRate"=(9600) OR ("GsmModemBaudRate"=(4800) OR ("GsmModemBaudRate"=(2400) OR "GsmModemBaudRate"=(1200)))))))))));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_GsmModemComPortNumber" CHECK ("GsmModemComPortNumber">(0));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_GsmModemFlowControl" CHECK (("GsmModemFlowControl"=(4) OR ("GsmModemFlowControl"=(2) OR "GsmModemFlowControl"=(1))));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_MaxMultipartSmsPartCount" CHECK (((1)<="MaxPartCountInMultipartSms" AND "MaxPartCountInMultipartSms"<=(10)));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_MinimumPasswordLength" CHECK (((1)<="MinimumPasswordLength" AND "MinimumPasswordLength"<=(30)));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_Notification_AdmissionDateNotifyDayCount" CHECK (("Notification_AdmissionDateNotifyDayCount">(0) AND "Notification_AdmissionDateNotifyDayCount"<=(360)));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_PollLogLevel" CHECK (("PollLogLevel"=(16) OR ("PollLogLevel"=(8) OR ("PollLogLevel"=(4) OR ("PollLogLevel"=(2) OR "PollLogLevel"=(1))))));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_PollLogStorageTime" CHECK (((1)<="PollLogStorageTime" AND "PollLogStorageTime"<=(10000)));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_PollMaxDuration" CHECK (((1)<="PollMaxDuration" AND "PollMaxDuration"<=(180)));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_PollMaxTimeDiff" CHECK (((0)<="PollMaxTimeDiff" AND "PollMaxTimeDiff"<=(86400)));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_PollPortBlockErrorCount" CHECK (((1)<="PollPortBlockErrorCount" AND "PollPortBlockErrorCount"<=(50)));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_PollPortBlockTimeout" CHECK (((1)<="PollPortBlockTimeout" AND "PollPortBlockTimeout"<=(120)));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_PressureDisplayType" CHECK (("PressureDisplayType"=(1) OR "PressureDisplayType"=(0)));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_SmtpPort" CHECK (("SmtpPort">=(0) AND "SmtpPort"<=(65535)));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_SystemLogStorageTime" CHECK (((1)<="SystemLogStorageTime" AND "SystemLogStorageTime"<=(10000)));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_UpdaterDataBaseBackupMode" CHECK (("UpdaterDataBaseBackupMode"=(2) OR ("UpdaterDataBaseBackupMode"=(1) OR "UpdaterDataBaseBackupMode"=(0))));
ALTER TABLE "public"."SystemParameters" ADD CONSTRAINT "CK_SystemParameters_UserSessionLogStorageTime" CHECK (((1)<="UserSessionLogStorageTime" AND "UserSessionLogStorageTime"<=(10000)));
ALTER TABLE "public"."Task" ADD CONSTRAINT "CK_Task_FreqInterval" CHECK (("FreqType"=(4) AND (("FreqInterval">(0) AND ("FreqInterval"<=(31)) OR "FreqType"=(8))) AND (("FreqInterval">(0) AND ("FreqInterval"<(128)) OR ("FreqType"=(16) AND (("FreqInterval">(0) AND ("FreqInterval"<=(31)) OR "FreqType"=(32))))))));
ALTER TABLE "public"."Task" ADD CONSTRAINT "CK_Task_StartEndTime" CHECK (("StartTime"<="EndTime" AND ("StartTime">=(0) AND ("EndTime">=(0) AND ("StartTime"<=(1439) AND "EndTime"<=(1439))))));
ALTER TABLE "public"."Task" ADD CONSTRAINT "CK_Task_Type" CHECK (("Type"=(13) OR ("Type"=(12) OR ("Type"=(11) OR ("Type"=(10) OR ("Type"=(9) OR ("Type"=(8) OR ("Type"=(7) OR ("Type"=(6) OR ("Type"=(5) OR ("Type"=(4) OR ("Type"=(3) OR ("Type"=(2) OR "Type"=(1))))))))))))));
ALTER TABLE "public"."Territory" ADD CONSTRAINT "CK_Territory_Name" CHECK (char_length("Name")>(0));
ALTER TABLE "public"."Unit" ADD CONSTRAINT "CK_Unit" CHECK ("Unit_ID">(0));
ALTER TABLE "public"."UserSessionLog" ADD CONSTRAINT "CK_UserSessionLog_ExitCode" CHECK (("ExitCode">=(0) AND "ExitCode"<=(9)));
ALTER TABLE "public"."Version_Old" ADD CONSTRAINT "CK_Version_Build" CHECK ("Build">(0));
ALTER TABLE "public"."Version_Old" ADD CONSTRAINT "CK_Version_Version" CHECK (char_length("Version")>(0));
ALTER TABLE "public"."WaterEstimatedConsumption" ADD CONSTRAINT "CK_WaterEstimatedConsumption" CHECK (("EstimationAlgorithm">=(1) AND "EstimationAlgorithm"<=(3)));
COMMENT ON CONSTRAINT "FK_Complex_ProtocolType" ON "public"."Complex" IS 'Протокол обмена с устройством (для устройств, поддерживающих более одного протокола обмена)';
COMMENT ON CONSTRAINT "CK_Contingency_NodeID_MeasurePointID" ON "public"."Contingency" IS 'Нештатная ситуация всегда должна быть связана либо с объектом учета, либо с точкой учета.';
COMMENT ON CONSTRAINT "CK_Customer_VatId" ON "public"."Customer" IS 'Проверяет длину ИНН (10 символов для юридических лиц и 12 символов для физических лиц)';
COMMENT ON CONSTRAINT "FK_DataStatus_MeasurePoint" ON "public"."DataStatus" IS 'Точка учета, по которой хранится состояние месячных данных';
COMMENT ON CONSTRAINT "PK_DeviceMeasurePoint" ON "public"."DeviceMeasurePoint" IS 'Обеспечивает выполнение условия, что одна точка учета может быть подключена только к одному устройству';
COMMENT ON CONSTRAINT "FK_MeasurePoint_Node" ON "public"."MeasurePoint" IS 'Точка учета должна входить в объект учета (за исключением квартирных ТУР)';
COMMENT ON CONSTRAINT "CK_MeasurePoint_CurrentRatio" ON "public"."MeasurePoint" IS 'Первичные номинальные токи по ГОСТ 7746-2001: 1; 5; 10; 15; 20; 30; 40; 50; 75; 80; 100; 150; 200; 300; 400; 500; 600; 750; 800; 1000;  1200; 500;  2000;  3000;  4000; 5000;  6000;  8000;  10000;  12000; 14000;  16000; 18000;  20000;  25000; 28000; 30000; 32000; 35000; 40000 А.
Вторичные токи выбираются из ряда 1; 2 и 5 А.';
COMMENT ON CONSTRAINT "CK_MeasurePoint_VoltageRatio" ON "public"."MeasurePoint" IS 'Первичные номинальные токи по ГОСТ 7746-2001: 0,1; 0,4; 0,66; 3; 6; 10; 15; 20; 24; 27; 35; 110; 150; 220; 330; 500; 750; 1150 кВ.
Вторичные токи выбираются из ряда 100; 110; 127; 220 и 400 В.';
ALTER TABLE "public"."Node" ALTER COLUMN "MinOutdoorTemp" SET DEFAULT (-31);
ALTER TABLE "public"."Task" ALTER COLUMN "StartDateTime" SET DEFAULT CURRENT_TIMESTAMP;
CREATE FUNCTION "public".trig_func_ins_or_upd() RETURNS trigger LANGUAGE plpgsql AS $def$
begin
  NEW.Length=datalength(NEW.Content);
  RETURN NEW;
end;
$def$;
CREATE TRIGGER trig_ins_or_upd before insert or update ON public.NodeFile for each row execute procedure public.trig_func_ins_or_upd();
COMMIT;
