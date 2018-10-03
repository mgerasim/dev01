\set ON_ERROR_STOP
\set ECHO all
BEGIN;
CREATE TYPE "public"."account_node" AS (
"node_id" int,
"measure_point_check_access_mode" smallint,
"allowed_system_types" int
);
CREATE TYPE "public"."act_report_list" AS (
"act_type_id" smallint,
"report_id" int
);
CREATE TYPE "public"."attribute_value" AS (
"custom_attribute_id" int,
"value" varchar(200)
);
CREATE TYPE "public"."balance_group_measure_point" AS (
"measure_point_id" int,
"is_head" boolean
);
CREATE TYPE "public"."contract_temperature" AS (
"t_outdoor" smallint,
"t_in" real,
"t_out" real
);
CREATE TYPE "public"."data_parameter_cell" AS (
"data_type" smallint,
"data_parameter_id" smallint,
"cell_id" int,
"pulse_ratio" real,
"unit_id" smallint
);
CREATE TYPE "public"."date_time_interval_list" AS (
"start_date_time" timestamp(7),
"end_date_time" timestamp(7)
);
CREATE TYPE "public"."date_time_list" AS (
"date_time" timestamp
);
CREATE TYPE "public"."device_error" AS (
"archive_type" smallint,
"channel_number" int,
"date_time" timestamp,
"event_code" int,
"description" varchar(200),
"duration" int
);
CREATE TYPE "public"."diag_parameters" AS (
"incident_type_id" int,
"is_enabled" boolean,
"value1" real,
"value2" real
);
CREATE TYPE "public"."eav_last_parameter_value" AS (
"data_parameter_id" smallint,
"value" double precision,
"is_bad" boolean,
"is_calc" boolean
);
CREATE TYPE "public"."eav_parameter_value" AS (
"date_time" timestamp,
"data_parameter_id" smallint,
"value" double precision,
"is_bad" boolean,
"is_calc" boolean,
"is_interpolated" boolean
);
CREATE TYPE "public"."electric_consumption" AS (
"date_time" timestamp,
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
"normal_operation_duration" double precision,
"attributes" smallint,
"calculated_values" int,
"bad_values" int,
"interpolated_values" int
);
CREATE TYPE "public"."electric_power" AS (
"date_time" timestamp,
"flags" smallint,
"interval" smallint,
"pp" double precision,
"pn" double precision,
"qp" double precision,
"qn" double precision,
"bad_values" int
);
CREATE TYPE "public"."electric_totals" AS (
"date_time" timestamp,
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
"normal_operation_duration" double precision,
"attributes" smallint,
"calculated_values" int,
"bad_values" int,
"resetted_values" int,
"interpolated_values" int
);
CREATE TYPE "public"."gas_consumption" AS (
"date_time" timestamp,
"t" real,
"t_outdoor" real,
"p" real,
"p_delta" real,
"v" real,
"v_std" real,
"m" real,
"normal_operation_duration" real,
"attributes" smallint,
"calculated_values" int,
"bad_values" int,
"interpolated_values" int
);
CREATE TYPE "public"."gas_totals" AS (
"date_time" timestamp,
"v" double precision,
"v_std" double precision,
"m" double precision,
"normal_operation_duration" double precision,
"attributes" smallint,
"calculated_values" int,
"bad_values" int,
"resetted_values" int,
"interpolated_values" int
);
CREATE TYPE "public"."heat_loss" AS (
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
CREATE TYPE "public"."id_list" AS (
"id" int
);
CREATE TYPE "public"."map_object_appearance" AS (
"map_object_id" int,
"appearance_type" smallint,
"border_color" int,
"border_width" smallint,
"fill_color" int,
"font_color" int,
"font_size" real,
"font_family" varchar(50),
"font_style" smallint,
"text_valignment" smallint,
"text_halignment" smallint,
"visible" boolean
);
CREATE TYPE "public"."measure_point_expression" AS (
"data_parameter" smallint,
"expression" varchar(500)
);
CREATE TYPE "public"."measure_point_poll_settings" AS (
"measure_point_id" int,
"perform_time_correction" boolean,
"requested_data_mask" smallint,
"auto_poll_start_date" timestamp
);
CREATE TYPE "public"."month_contract_consumption" AS (
"measured_parameter_id" smallint,
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
"contract_consumption_type" smallint
);
CREATE TYPE "public"."node_custom_attribute" AS (
"code" varchar(36),
"attribute" varchar(200)
);
CREATE TYPE "public"."node_signaling" AS (
"id" int,
"signal_title" varchar(50),
"controller_id" int,
"dry_contact_number" smallint,
"incident_importance_set" smallint,
"incident_message_set" varchar(100),
"incident_importance_unset" smallint,
"incident_message_unset" varchar(100)
);
CREATE TYPE "public"."node_supplier" AS (
"system_type" smallint,
"supplier_id" int,
"contract_number" varchar(20),
"contract_date" timestamp,
"inspector_id" int
);
CREATE TYPE "public"."notification_incident" AS (
"incident_type_id" int
);
CREATE TYPE "public"."notification_job_type" AS (
"node_job_type" smallint
);
CREATE TYPE "public"."notification_method" AS (
"notification_type_id" int,
"notification_method_mask" smallint
);
CREATE TYPE "public"."notification_node" AS (
"node_id" int
);
CREATE TYPE "public"."outdoor_temperature" AS (
"date" timestamp,
"value" real
);
CREATE TYPE "public"."permission" AS (
"operation_id" int,
"is_disabled" boolean
);
CREATE TYPE "public"."permission_ex" AS (
"access_right_id" int,
"is_denied" boolean
);
CREATE TYPE "public"."poll_session_log_message" AS (
"poll_session_id" int,
"importance" smallint,
"message" varchar(1999),
"date_time" timestamp
);
CREATE TYPE "public"."poll_task_state" AS (
"task_id" int,
"start_time" timestamp,
"end_time" timestamp,
"execution_state" smallint,
"attempt" smallint,
"last_attempt_time" timestamp,
"last_attempt_end_time" timestamp,
"last_attempt_result_code" int
);
CREATE TYPE "public"."room_contract_consumption" AS (
"month_number" smallint,
"heat_value" real,
"hot_water_value" real,
"cold_water_value" real,
"electricity_value" real
);
CREATE TYPE "public"."room_counter" AS (
"room_id" int,
"equipment_id" int,
"install_location" varchar(100),
"totals_value1" double precision,
"totals_value2" double precision,
"measure_point_id" int
);
CREATE TYPE "public"."scm_measure_points" AS (
"measure_point_id" int
);
CREATE TYPE "public"."water_consumption" AS (
"date_time" timestamp,
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
"normal_operation_duration" real,
"stop_duration" real,
"flow_underrun_duration" real,
"flow_overrun_duration" real,
"temp_diff_low_duration" real,
"no_power_duration" real,
"incident_duration" real,
"saturated_steam_duration" real,
"attributes" smallint,
"calculated_values" int,
"bad_values" int,
"interpolated_values" int
);
CREATE TYPE "public"."water_totals" AS (
"date_time" timestamp,
"m_in" double precision,
"m_out" double precision,
"m_delta" double precision,
"v_in" double precision,
"v_out" double precision,
"v_delta" double precision,
"q_in" double precision,
"q_out" double precision,
"q_delta" double precision,
"normal_operation_duration" double precision,
"stop_duration" double precision,
"flow_underrun_duration" double precision,
"flow_overrun_duration" double precision,
"temp_diff_low_duration" double precision,
"no_power_duration" double precision,
"incident_duration" double precision,
"saturated_steam_duration" double precision,
"attributes" smallint,
"calculated_values" int,
"bad_values" int,
"resetted_values" int,
"interpolated_values" int
);


CREATE TABLE "public"."access_right"( 
	"id" int NOT NULL,
	"title" varchar(100) NOT NULL,
	"const_name" varchar(50) NOT NULL,
	"group_title" varchar(100) NOT NULL);

CREATE TABLE "public"."account"( 
	"account_id" int NOT NULL,
	"account_login" varchar(30) NOT NULL,
	"account_display_name" varchar(50) NOT NULL,
	"account_disabled" boolean NOT NULL,
	"account_description" varchar(100) NOT NULL,
	"account_password_set_date" timestamp NOT NULL,
	"account_disabled_date" timestamp,
	"account_expiration_date" timestamp,
	"account_session_timeout" int NOT NULL,
	"account_session_count" smallint NOT NULL,
	"account_ip_address_mode" boolean NOT NULL,
	"account_last_login_date" timestamp,
	"account_is_system" boolean NOT NULL,
	"mobile_phone" varchar(15) NOT NULL,
	"email" varchar(50) NOT NULL,
	"sms_email" varchar(50) NOT NULL,
	"send_sms_via_modem" boolean NOT NULL,
	"notify_start_time" smallint NOT NULL,
	"notify_end_time" smallint NOT NULL,
	"password" bytea NOT NULL,
	"salt" bytea NOT NULL,
	"has_all_node_access" boolean NOT NULL,
	"start_page" smallint NOT NULL,
	"tenant_office_only" boolean NOT NULL,
	"allow_all_reports" boolean NOT NULL,
	"disable_password_change" boolean NOT NULL,
	"password_reset_token" varchar(64) NOT NULL,
	"password_reset_token_expire_date_time" timestamp,
	"allow_all_maps" boolean NOT NULL,
	"report_center_form_mode" smallint NOT NULL,
	"use_send_interval_for_email" boolean NOT NULL,
	"authentication_modes" smallint NOT NULL,
	"windows_sid" varchar(60),
	"division_id" int,
	"login_not_allowed" boolean);

CREATE TABLE "public"."account_group"( 
	"id" int NOT NULL,
	"title" varchar(100) NOT NULL,
	"is_system" boolean NOT NULL,
	"division_id" int);

CREATE TABLE "public"."account_group_membership"( 
	"account_id" int NOT NULL,
	"account_group_id" int NOT NULL);

CREATE TABLE "public"."account_group_permission_ex"( 
	"account_group_id" int NOT NULL,
	"access_right_id" int NOT NULL,
	"is_denied" boolean NOT NULL);

CREATE TABLE "public"."account_log"( 
	"date" timestamp NOT NULL,
	"account_id" int NOT NULL,
	"importance" smallint NOT NULL,
	"message" varchar(200) NOT NULL);

CREATE TABLE "public"."account_map"( 
	"account_id" int NOT NULL,
	"map_id" int NOT NULL);

CREATE TABLE "public"."account_measure_point"( 
	"account_id" int NOT NULL,
	"measure_point_id" int NOT NULL);

CREATE TABLE "public"."account_node"( 
	"account_id" int NOT NULL,
	"node_id" int NOT NULL,
	"measure_point_check_access_mode" smallint NOT NULL,
	"allowed_system_types" int NOT NULL);

CREATE TABLE "public"."account_node_group"( 
	"account_id" int NOT NULL,
	"node_group_id" int NOT NULL);

CREATE TABLE "public"."account_notification"( 
	"account_id" int NOT NULL,
	"notification_id" int NOT NULL,
	"is_read" boolean NOT NULL);

CREATE TABLE "public"."account_notification_incident"( 
	"account_id" int NOT NULL,
	"incident_type_id" int NOT NULL);

CREATE TABLE "public"."account_notification_method"( 
	"account_id" int NOT NULL,
	"notification_type_id" int NOT NULL,
	"notification_method_mask" smallint NOT NULL);

CREATE TABLE "public"."account_notification_node"( 
	"account_id" int NOT NULL,
	"notification_type_id" int NOT NULL,
	"node_id" int NOT NULL);

CREATE TABLE "public"."account_notification_node_job_type"( 
	"account_id" int NOT NULL,
	"node_job_type" smallint NOT NULL);

CREATE TABLE "public"."account_permission_ex"( 
	"account_id" int NOT NULL,
	"access_right_id" int NOT NULL,
	"is_denied" boolean NOT NULL);

CREATE TABLE "public"."account_personal_account"( 
	"account_id" int NOT NULL,
	"personal_account_id" int NOT NULL);

CREATE TABLE "public"."account_report"( 
	"account_id" int NOT NULL,
	"report_id" int NOT NULL);

CREATE TABLE "public"."account_service_company"( 
	"account_id" int NOT NULL,
	"service_company_id" int NOT NULL);

CREATE TABLE "public"."adapter"( 
	"id" int NOT NULL,
	"title" varchar(100) NOT NULL,
	"comment" varchar(300) NOT NULL,
	"is_address_required" boolean NOT NULL);

CREATE TABLE "public"."balance_group"( 
	"id" int NOT NULL,
	"title" varchar(150));

CREATE TABLE "public"."balance_group_measure_point"( 
	"balance_group_id" int NOT NULL,
	"measure_point_id" int NOT NULL,
	"is_head" boolean NOT NULL);

CREATE TABLE "public"."cell"( 
	"id" int NOT NULL,
	"name" varchar(30) NOT NULL,
	"driver_code" varchar(10) NOT NULL,
	"device_data_type" smallint NOT NULL,
	"equipment_model_id" int NOT NULL);

CREATE TABLE "public"."complex"( 
	"complex_response_delay" smallint NOT NULL,
	"complex_poll_session_id" int,
	"protocol_type_id" int,
	"tag" bytea,
	"adapter_id" int,
	"adapter_address" int NOT NULL,
	"hardware_version" varchar(20),
	"firmware_version" varchar(30),
	"time_difference" int,
	"battery_level" real,
	"equipment_id" int NOT NULL);

CREATE TABLE "public"."contingency"( 
	"id" int NOT NULL,
	"measure_point_id" int,
	"node_id" int NOT NULL,
	"contingency_type_id" int NOT NULL,
	"start_date" timestamp NOT NULL,
	"end_date" timestamp NOT NULL,
	"diag_date" timestamp NOT NULL,
	"importance" smallint NOT NULL,
	"is_closed" boolean NOT NULL,
	"description" varchar(500),
	"sms_message" varchar(100),
	"equipment_id" int,
	"data_type" smallint NOT NULL,
	"distinction" bytea);

CREATE TABLE "public"."contingency_log"( 
	"contingency_id" int NOT NULL,
	"date" timestamp NOT NULL,
	"message" varchar(500),
	"short_message" varchar(100));

CREATE TABLE "public"."contract_consumption"( 
	"measured_parameter_id" smallint NOT NULL,
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
	"measure_point_id" int NOT NULL,
	"contract_consumption_type" smallint NOT NULL);

CREATE TABLE "public"."contract_consumption_limit"( 
	"measure_point_id" int NOT NULL,
	"measured_parameter_id" smallint NOT NULL,
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
	"contract_consumption_type" smallint NOT NULL);

CREATE TABLE "public"."contract_temperature"( 
	"node_id" int NOT NULL,
	"t_outdoor" smallint NOT NULL,
	"t_in" real NOT NULL,
	"t_out" real NOT NULL);

CREATE TABLE "public"."counter_totals"( 
	"equipment_id" int NOT NULL,
	"data_date" timestamp NOT NULL,
	"value1" double precision NOT NULL,
	"value2" double precision NOT NULL,
	"is_trusted_value" boolean NOT NULL);

CREATE TABLE "public"."custom_attribute"( 
	"id" int NOT NULL,
	"title" varchar(100) NOT NULL,
	"code" varchar(36) NOT NULL,
	"comment" varchar(500) NOT NULL,
	"entities" smallint NOT NULL);

CREATE TABLE "public"."customer"( 
	"id" int NOT NULL,
	"title" varchar(255) NOT NULL,
	"is_natural_person" boolean NOT NULL,
	"vat_id" varchar(12) NOT NULL);

CREATE TABLE "public"."data_interface"( 
	"equipment_model_id" int NOT NULL,
	"port_settings" varchar(50) NOT NULL,
	"supported_port_speeds" smallint NOT NULL,
	"supported_flow_controls" smallint NOT NULL,
	"default_password" varchar(50) NOT NULL,
	"password_reg_ex" varchar(100) NOT NULL,
	"password_comment" varchar(200) NOT NULL,
	"max_network_size" smallint NOT NULL,
	"network_address_default" varchar(20) NOT NULL,
	"network_address_usage" smallint NOT NULL,
	"network_address_comment" varchar(200) NOT NULL,
	"network_address_reg_ex" varchar(100) NOT NULL,
	"network_address_range_min" int NOT NULL,
	"network_address_range_max" int NOT NULL,
	"features" int NOT NULL,
	"second_level_password_comment" varchar(200) NOT NULL);

CREATE TABLE "public"."data_parameter"( 
	"id" smallint NOT NULL,
	"code" varchar(50) NOT NULL,
	"title" varchar(100) NOT NULL);

CREATE TABLE "public"."data_status"( 
	"measure_point_id" int NOT NULL,
	"device_data_type" smallint NOT NULL,
	"start_date" timestamp NOT NULL,
	"end_date" timestamp NOT NULL,
	"data_status" smallint NOT NULL);

CREATE TABLE "public"."device_address"( 
	"address" int NOT NULL,
	"measure_point_id" int NOT NULL,
	"data_parameter_id" smallint NOT NULL,
	"device_data_type" smallint NOT NULL,
	"unit_id" smallint NOT NULL,
	"archive_depth" smallint NOT NULL,
	"equipment_id" int NOT NULL,
	"multiplier" real NOT NULL);

CREATE TABLE "public"."device_cell"( 
	"cell_id" int NOT NULL,
	"measure_point_id" int NOT NULL,
	"data_parameter_id" smallint NOT NULL,
	"pulse_ratio" real NOT NULL,
	"unit_id" smallint,
	"data_type" smallint NOT NULL,
	"equipment_id" int NOT NULL);

CREATE TABLE "public"."device_channel"( 
	"heat_lead_in" smallint NOT NULL,
	"channel_number" int NOT NULL,
	"measure_point_id" int NOT NULL,
	"is_supply_channel" boolean NOT NULL,
	"equipment_id" int NOT NULL);

CREATE TABLE "public"."device_config"( 
	"date_time" timestamp NOT NULL,
	"param_id" int NOT NULL,
	"param_value" varchar(50) NOT NULL,
	"equipment_id" int NOT NULL);

CREATE TABLE "public"."device_config_param"( 
	"id" int NOT NULL,
	"title" varchar(100) NOT NULL,
	"data_type" char(1) NOT NULL,
	"general_device_config_param_id" int,
	"comment" varchar(200) NOT NULL,
	"heat_lead_in_num" smallint,
	"channel_num" smallint,
	"read_address" int,
	"read_data_type" smallint,
	"driver_code" varchar(25),
	"equipment_model_id" int NOT NULL);

CREATE TABLE "public"."device_data_type"( 
	"id" smallint NOT NULL,
	"desc" varchar(100) NOT NULL);

CREATE TABLE "public"."device_event"( 
	"id" int NOT NULL,
	"start_date_time" timestamp,
	"event_code" int NOT NULL,
	"description" varchar(200) NOT NULL,
	"heat_lead_in" smallint NOT NULL,
	"archive_type" smallint NOT NULL,
	"channel_number" int NOT NULL,
	"end_date_time" timestamp,
	"equipment_id" int NOT NULL);

CREATE TABLE "public"."device_measure_point"( 
	"measure_point_id" int NOT NULL,
	"equipment_id" int NOT NULL);

CREATE TABLE "public"."division"( 
	"id" int NOT NULL,
	"title" varchar(128) NOT NULL);

CREATE TABLE "public"."driver_interface"( 
	"equipment_model_id" int NOT NULL,
	"driver_name" varchar(50) NOT NULL,
	"driver_status" smallint NOT NULL,
	"channel_count" int NOT NULL,
	"heat_system_count" smallint NOT NULL,
	"min_memory_address" int NOT NULL,
	"max_memory_address" int NOT NULL,
	"features" int NOT NULL,
	"supported_data_types" smallint NOT NULL,
	"totals_reset_threshold_m" double precision NOT NULL,
	"totals_reset_threshold_q" double precision NOT NULL);

CREATE TABLE "public"."dry_contact_state"( 
	"date_time" timestamp NOT NULL,
	"value" int NOT NULL,
	"equipment_id" int NOT NULL);

CREATE TABLE "public"."eav_consumption_currents"( 
	"measure_point_id" int NOT NULL,
	"date_time" timestamp NOT NULL,
	"data_parameter_id" smallint NOT NULL,
	"value" double precision NOT NULL,
	"is_bad" boolean NOT NULL,
	"is_calc" boolean NOT NULL,
	"is_interpolated" boolean NOT NULL);

CREATE TABLE "public"."eav_consumption_day"( 
	"measure_point_id" int NOT NULL,
	"date_time" timestamp NOT NULL,
	"data_parameter_id" smallint NOT NULL,
	"value" double precision NOT NULL,
	"is_bad" boolean NOT NULL,
	"is_calc" boolean NOT NULL,
	"is_interpolated" boolean NOT NULL);

CREATE TABLE "public"."eav_consumption_hour"( 
	"measure_point_id" int NOT NULL,
	"date_time" timestamp NOT NULL,
	"data_parameter_id" smallint NOT NULL,
	"value" double precision NOT NULL,
	"is_bad" boolean NOT NULL,
	"is_calc" boolean NOT NULL,
	"is_interpolated" boolean NOT NULL);

CREATE TABLE "public"."eav_consumption_last"( 
	"measure_point_id" int NOT NULL,
	"date_time" timestamp NOT NULL,
	"data_type" smallint NOT NULL,
	"attributes" smallint NOT NULL);

CREATE TABLE "public"."eav_consumption_last_value"( 
	"measure_point_id" int NOT NULL,
	"data_parameter_id" smallint NOT NULL,
	"value" double precision NOT NULL,
	"is_bad" boolean NOT NULL,
	"is_calc" boolean NOT NULL);

CREATE TABLE "public"."eav_consumption_month"( 
	"measure_point_id" int NOT NULL,
	"date_time" timestamp NOT NULL,
	"data_parameter_id" smallint NOT NULL,
	"value" double precision NOT NULL,
	"is_bad" boolean NOT NULL,
	"is_calc" boolean NOT NULL,
	"is_interpolated" boolean NOT NULL);

CREATE TABLE "public"."eav_totals_last"( 
	"measure_point_id" int NOT NULL,
	"date_time" timestamp NOT NULL,
	"attributes" smallint NOT NULL);

CREATE TABLE "public"."eav_totals_last_value"( 
	"measure_point_id" int NOT NULL,
	"data_parameter_id" smallint NOT NULL,
	"value" double precision NOT NULL,
	"is_bad" boolean NOT NULL,
	"is_calc" boolean NOT NULL);

CREATE TABLE "public"."electric_consumption_day"( 
	"measure_point_id" int NOT NULL,
	"data_date" timestamp NOT NULL,
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
	"calculated_values" int,
	"bad_values" int,
	"ap" real,
	"an" real,
	"rp" real,
	"rn" real,
	"interpolated_values" int,
	"normal_operation_duration" real);

CREATE TABLE "public"."electric_consumption_hour"( 
	"measure_point_id" int NOT NULL,
	"data_date" timestamp NOT NULL,
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
	"calculated_values" int,
	"bad_values" int,
	"ap" real,
	"an" real,
	"rp" real,
	"rn" real,
	"interpolated_values" int,
	"normal_operation_duration" real);

CREATE TABLE "public"."electric_consumption_month"( 
	"measure_point_id" int NOT NULL,
	"data_date" timestamp NOT NULL,
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
	"calculated_values" int,
	"bad_values" int,
	"ap" real,
	"an" real,
	"rp" real,
	"rn" real,
	"interpolated_values" int,
	"normal_operation_duration" real);

CREATE TABLE "public"."electric_power"( 
	"measure_point_id" int NOT NULL,
	"data_date" timestamp NOT NULL,
	"flags" smallint NOT NULL,
	"interval" smallint NOT NULL,
	"pp" double precision,
	"pn" double precision,
	"qp" double precision,
	"qn" double precision,
	"bad_values" int);

CREATE TABLE "public"."electric_power_quality"( 
	"measure_point_id" int NOT NULL,
	"data_date" timestamp NOT NULL,
	"pp" real,
	"pn" real,
	"qp" real,
	"qn" real,
	"calculated_values" bigint,
	"bad_values" bigint,
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
	"phi_uab" real,
	"phi_uac" real,
	"phi_ubc" real,
	"phi_uia" real,
	"phi_uib" real,
	"phi_uic" real,
	"frequency" real,
	"p" real,
	"q" real,
	"cos_phi" real,
	"cos_phi_a" real,
	"cos_phi_b" real,
	"cos_phi_c" real);

CREATE TABLE "public"."electric_totals"( 
	"measure_point_id" int NOT NULL,
	"data_date" timestamp NOT NULL,
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
	"calculated_values" int,
	"bad_values" int,
	"ap" double precision,
	"an" double precision,
	"rp" double precision,
	"rn" double precision,
	"resetted_values" int,
	"interpolated_values" int,
	"normal_operation_duration" double precision);

CREATE TABLE "public"."equipment"( 
	"id" int NOT NULL,
	"equipment_model_id" int NOT NULL,
	"serial_number" varchar(32) NOT NULL,
	"last_calibration_date" date,
	"scheduled_calibration_date" date,
	"modification_id" int,
	"password" varchar(50) NOT NULL,
	"comment" varchar(1000) NOT NULL,
	"modem_identifier" varchar(32),
	"modem_poll_port_id" int,
	"modem_imei" varchar(15),
	"network_address" varchar(20),
	"second_level_password" varchar(50),
	"is_shared" boolean NOT NULL,
	"modem_enable_keep_alive" boolean,
	"division_id" int);

CREATE TABLE "public"."equipment_history"( 
	"id" bigint NOT NULL,
	"date_time" timestamp NOT NULL,
	"node_id" int NOT NULL,
	"measure_point_id" int,
	"action" smallint NOT NULL,
	"equipment_model_id" int NOT NULL,
	"serial_number" varchar(32) NOT NULL);

CREATE TABLE "public"."equipment_model"( 
	"id" int NOT NULL,
	"is_system" boolean NOT NULL,
	"long_title" varchar(200) NOT NULL,
	"title" varchar(100) NOT NULL,
	"capabilities" smallint NOT NULL,
	"comment" varchar(1000) NOT NULL,
	"serial_number_format" varchar(100) NOT NULL,
	"serial_number_comment" varchar(200) NOT NULL,
	"state_register_number" varchar(30) NOT NULL,
	"calibration_interval" smallint NOT NULL,
	"is_temperature_sensor" boolean NOT NULL,
	"is_pressure_sensor" boolean NOT NULL,
	"is_flow_sensor" boolean NOT NULL,
	"supported_system_types" smallint NOT NULL,
	"supported_comm_links" smallint NOT NULL,
	"supported_call_types" smallint NOT NULL,
	"modem_features" smallint NOT NULL,
	"dry_contact_count" smallint NOT NULL,
	"is_electric_meter" boolean NOT NULL);

CREATE TABLE "public"."equipment_model_adapter"( 
	"equipment_model_id" int NOT NULL,
	"adapter_id" int NOT NULL);

CREATE TABLE "public"."equipment_model_modification"( 
	"id" int NOT NULL,
	"equipment_model_id" int NOT NULL,
	"is_system" boolean NOT NULL,
	"comment" varchar(1000) NOT NULL,
	"precision_class" varchar(4) NOT NULL,
	"nominal_diameter" smallint NOT NULL,
	"relative_error" real NOT NULL,
	"temp_sensor_min" real NOT NULL,
	"temp_sensor_max" real NOT NULL,
	"press_sensor_min" real NOT NULL,
	"press_sensor_max" real NOT NULL,
	"flow_sensor_min" real NOT NULL,
	"flow_sensor_max" real NOT NULL);

CREATE TABLE "public"."equipment_model_port"( 
	"id" int NOT NULL,
	"title" varchar(20) NOT NULL,
	"equipment_model_id" int NOT NULL);

CREATE TABLE "public"."equipment_model_port_settings"( 
	"id" int NOT NULL,
	"title" varchar(50) NOT NULL,
	"equipment_model_port_id" int NOT NULL);

CREATE TABLE "public"."equipment_poll_connection"( 
	"equipment_id" int NOT NULL,
	"node_id" int NOT NULL,
	"poll_connection_id" int NOT NULL);

CREATE TABLE "public"."equipment_poll_statistics"( 
	"id" int NOT NULL,
	"equipment_id" int NOT NULL,
	"end_date" timestamp NOT NULL,
	"poll_result" smallint NOT NULL,
	"poll_type" smallint NOT NULL,
	"comm_link_type" smallint NOT NULL,
	"poll_error_count" int NOT NULL);

CREATE TABLE "public"."gas_consumption_current"( 
	"measure_point_id" int NOT NULL,
	"data_date" timestamp NOT NULL,
	"t" real,
	"p" real,
	"v" real,
	"v_std" real,
	"calculated_values" int,
	"bad_values" int,
	"t_outdoor" real,
	"m" real,
	"p_delta" real);

CREATE TABLE "public"."gas_consumption_day"( 
	"measure_point_id" int NOT NULL,
	"data_date" timestamp NOT NULL,
	"t" real,
	"p" real,
	"v" real,
	"v_std" real,
	"normal_operation_duration" real,
	"attributes" smallint,
	"calculated_values" int,
	"bad_values" int,
	"t_outdoor" real,
	"interpolated_values" int,
	"m" real,
	"p_delta" real);

CREATE TABLE "public"."gas_consumption_hour"( 
	"measure_point_id" int NOT NULL,
	"data_date" timestamp NOT NULL,
	"t" real,
	"p" real,
	"v" real,
	"v_std" real,
	"normal_operation_duration" real,
	"attributes" smallint,
	"calculated_values" int,
	"bad_values" int,
	"t_outdoor" real,
	"interpolated_values" int,
	"m" real,
	"p_delta" real);

CREATE TABLE "public"."gas_consumption_month"( 
	"measure_point_id" int NOT NULL,
	"data_date" timestamp NOT NULL,
	"t" real,
	"p" real,
	"v" real,
	"v_std" real,
	"normal_operation_duration" real,
	"attributes" smallint,
	"calculated_values" int,
	"bad_values" int,
	"t_outdoor" real,
	"interpolated_values" int,
	"m" real,
	"p_delta" real);

CREATE TABLE "public"."gas_totals"( 
	"measure_point_id" int NOT NULL,
	"data_date" timestamp NOT NULL,
	"v" double precision,
	"v_std" double precision,
	"normal_operation_duration" double precision,
	"flags" smallint NOT NULL,
	"calculated_values" int,
	"bad_values" int,
	"resetted_values" int,
	"interpolated_values" int,
	"m" double precision);

CREATE TABLE "public"."general_device_config_param"( 
	"id" int NOT NULL,
	"title" varchar(100) NOT NULL);

CREATE TABLE "public"."gprs_controller_session"( 
	"id" int NOT NULL,
	"start_date_time" timestamp NOT NULL,
	"end_date_time" timestamp,
	"controller_clock" timestamp,
	"signal_level" smallint,
	"hardware_version" varchar(30),
	"firmware_version" varchar(30),
	"remote_ipaddress" varchar(15) NOT NULL,
	"remote_port" int NOT NULL,
	"balance" real,
	"bytes_sent" bigint NOT NULL,
	"bytes_received" bigint NOT NULL,
	"iccid" varchar(20),
	"active_sim" smallint,
	"sim_pin_enabled" boolean,
	"equipment_id" int NOT NULL,
	"end_reason" smallint NOT NULL);

CREATE TABLE "public"."heat_loss"( 
	"measure_point_id" int NOT NULL,
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
	"account_id" int NOT NULL,
	"range_start_ip" bigint NOT NULL,
	"range_end_ip" bigint NOT NULL);

CREATE TABLE "public"."incident_type"( 
	"id" int NOT NULL,
	"title" varchar(100) NOT NULL);

CREATE TABLE "public"."inspector"( 
	"id" int NOT NULL,
	"name" varchar(100) NOT NULL,
	"post" varchar(100) NOT NULL,
	"phone" varchar(200) NOT NULL,
	"email" varchar(50) NOT NULL,
	"comment" varchar(1000) NOT NULL,
	"supplier_id" int NOT NULL);

CREATE TABLE "public"."limit_temps"( 
	"temp_in" smallint,
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

CREATE TABLE "public"."mail_list"( 
	"task_id" int NOT NULL,
	"send_sms" boolean NOT NULL,
	"send_email" boolean NOT NULL,
	"account_id" int NOT NULL);

CREATE TABLE "public"."map"( 
	"id" int NOT NULL,
	"title" varchar(255) NOT NULL,
	"is_public" boolean NOT NULL);

CREATE TABLE "public"."map_image"( 
	"checksum" int NOT NULL,
	"image" bytea NOT NULL);

CREATE TABLE "public"."map_object"( 
	"id" int NOT NULL,
	"map_id" int NOT NULL,
	"map_object_type_id" smallint NOT NULL,
	"measure_point_id" int,
	"x" int NOT NULL,
	"y" int NOT NULL,
	"d_x" int NOT NULL,
	"d_y" int NOT NULL,
	"text" varchar(100) NOT NULL,
	"tag" varchar(1500) NOT NULL,
	"image" int,
	"parameter" varchar(20),
	"locked" boolean NOT NULL,
	"zorder" int NOT NULL,
	"node_signaling_id" int);

CREATE TABLE "public"."map_object_appearance"( 
	"map_object_id" int NOT NULL,
	"appearance_type" smallint NOT NULL,
	"border_color" int NOT NULL,
	"border_width" smallint NOT NULL,
	"fill_color" int NOT NULL,
	"font_color" int NOT NULL,
	"font_size" real NOT NULL,
	"font_family" varchar(50) NOT NULL,
	"font_style" smallint NOT NULL,
	"text_valignment" smallint NOT NULL,
	"text_halignment" smallint NOT NULL,
	"visible" boolean NOT NULL);

CREATE TABLE "public"."map_object_type"( 
	"id" smallint NOT NULL,
	"title" varchar(20) NOT NULL);

CREATE TABLE "public"."measure_point"( 
	"measure_point_id" int NOT NULL,
	"measure_point_title" varchar(150) NOT NULL,
	"measure_point_service_number" int NOT NULL,
	"measure_point_comment" varchar(1000) NOT NULL,
	"measure_point_type" smallint NOT NULL,
	"measure_point_state" smallint NOT NULL,
	"measure_point_selected_params_list" varchar(350) NOT NULL,
	"measure_point_node_id" int,
	"measure_point_system_type_id" smallint NOT NULL,
	"auto_poll_start_date" timestamp,
	"is_double_pipe_system" boolean NOT NULL,
	"personal_account_id" int,
	"contract_heat" real NOT NULL,
	"contract_flow" real NOT NULL,
	"current_ratio" real NOT NULL,
	"voltage_ratio" real NOT NULL,
	"contract_pin" real NOT NULL,
	"contract_pout" real NOT NULL,
	"contract_tin" real NOT NULL,
	"contract_tout" real NOT NULL,
	"show_calculated_data" boolean NOT NULL,
	"device_pressure_type" smallint NOT NULL,
	"counter_id" int,
	"calculate_missing_totals" boolean NOT NULL,
	"calculate_missing_totals_estimate" boolean NOT NULL,
	"calculate_missing_hour_consumption" smallint NOT NULL,
	"calculate_missing_day_consumption" smallint NOT NULL,
	"calculate_missing_month_consumption" smallint NOT NULL,
	"calculate_missing_values" boolean NOT NULL,
	"reporting_hour" smallint NOT NULL,
	"reporting_day" smallint NOT NULL,
	"show_bad_values" boolean NOT NULL,
	"calculate_missing_heat_values" boolean NOT NULL,
	"calculated_values_averaging_mode" smallint NOT NULL,
	"is_reversible_flow" boolean NOT NULL,
	"reporting_hour_mode" smallint NOT NULL,
	"is_virtual" boolean NOT NULL,
	"use_advanced_totals_interpolation" boolean NOT NULL,
	"diag_data_types" smallint,
	"display_pressure_type" smallint NOT NULL,
	"admission_date" timestamp);

CREATE TABLE "public"."measure_point_custom_attribute"( 
	"id" int NOT NULL,
	"custom_attribute_id" int NOT NULL,
	"measure_point_id" int NOT NULL,
	"value" varchar(200) NOT NULL);

CREATE TABLE "public"."measure_point_data_copy_settings"( 
	"target_measure_point_id" int NOT NULL,
	"water_parameter" int NOT NULL,
	"source_measure_point_id" int NOT NULL);

CREATE TABLE "public"."measure_point_device_error_day"( 
	"measure_point_id" int NOT NULL,
	"archive_type" smallint NOT NULL,
	"channel_number" int NOT NULL,
	"date_time" timestamp NOT NULL,
	"event_code" int NOT NULL,
	"description" varchar(200) NOT NULL,
	"duration" int NOT NULL);

CREATE TABLE "public"."measure_point_device_error_hour"( 
	"measure_point_id" int NOT NULL,
	"archive_type" smallint NOT NULL,
	"channel_number" int NOT NULL,
	"date_time" timestamp NOT NULL,
	"event_code" int NOT NULL,
	"description" varchar(200) NOT NULL,
	"duration" int NOT NULL);

CREATE TABLE "public"."measure_point_device_error_month"( 
	"measure_point_id" int NOT NULL,
	"archive_type" smallint NOT NULL,
	"channel_number" int NOT NULL,
	"date_time" timestamp NOT NULL,
	"event_code" int NOT NULL,
	"description" varchar(200) NOT NULL,
	"duration" int NOT NULL);

CREATE TABLE "public"."measure_point_diag_defaults"( 
	"system_type_id" smallint NOT NULL,
	"incident_type_id" int NOT NULL,
	"is_enabled" boolean NOT NULL,
	"value1" real NOT NULL,
	"value2" real NOT NULL,
	"is_summer_mode" boolean NOT NULL);

CREATE TABLE "public"."measure_point_diag_params"( 
	"measure_point_id" int NOT NULL,
	"incident_type_id" int NOT NULL,
	"is_enabled" boolean NOT NULL,
	"value1" real NOT NULL,
	"value2" real NOT NULL,
	"is_summer_mode" boolean NOT NULL);

CREATE TABLE "public"."measure_point_expression"( 
	"measure_point_id" int NOT NULL,
	"data_parameter" smallint NOT NULL,
	"expression" varchar(1999) NOT NULL);

CREATE TABLE "public"."measure_point_order"( 
	"measure_point_id" int NOT NULL,
	"order_number" smallint NOT NULL);

CREATE TABLE "public"."measure_point_report"( 
	"measure_point_id" int NOT NULL,
	"report_id" int NOT NULL,
	"report_template_id" int NOT NULL);

CREATE TABLE "public"."measure_point_sensor"( 
	"measure_point_id" int NOT NULL,
	"is_supply_channel" boolean NOT NULL,
	"measured_parameter_id" smallint NOT NULL,
	"equipment_id" int NOT NULL);

CREATE TABLE "public"."measured_parameter"( 
	"measured_parameter_id" smallint NOT NULL,
	"measured_parameter_title" varchar(30) NOT NULL,
	"measured_parameter_system_unit_id" smallint,
	"measured_parameter_code" varchar(40) NOT NULL);

CREATE TABLE "public"."message_log"( 
	"id" int NOT NULL,
	"date" timestamp NOT NULL,
	"sender_account_id" int,
	"sender_name" varchar(50) NOT NULL,
	"recipient_name" varchar(50) NOT NULL,
	"recipient_address" varchar(50) NOT NULL,
	"message" varchar(1999) NOT NULL,
	"message_type" smallint NOT NULL,
	"send_result" varchar(256) NOT NULL,
	"send_state" smallint NOT NULL,
	"send_schedule_date" timestamp NOT NULL);

CREATE TABLE "public"."modem_command"( 
	"modem_command_modem_type_id" smallint NOT NULL,
	"modem_command_modem_command_type_id" smallint NOT NULL,
	"modem_command_text" varchar(70) NOT NULL,
	"modem_command_termination_type" smallint NOT NULL,
	"modem_command_delay_before" int NOT NULL,
	"modem_command_timeout" int NOT NULL,
	"modem_command_bad_answer_list" varchar(100) NOT NULL,
	"modem_command_good_answer_list" varchar(50) NOT NULL,
	"modem_command_comment" varchar(250) NOT NULL);

CREATE TABLE "public"."modem_command_type"( 
	"modem_command_type_id" smallint NOT NULL,
	"modem_command_type_title" varchar(50) NOT NULL,
	"modem_command_type_code" varchar(40) NOT NULL,
	"modem_command_type_comment" varchar(150) NOT NULL);

CREATE TABLE "public"."modem_type"( 
	"modem_type_id" smallint NOT NULL,
	"modem_type_title" varchar(50) NOT NULL,
	"modem_type_communication_link_type" smallint NOT NULL,
	"modem_type_data_transfer_delay" int NOT NULL,
	"modem_type_port_settings" varchar(15) NOT NULL,
	"modem_type_max_command_len" smallint NOT NULL,
	"modem_type_shield_code" smallint);

CREATE TABLE "public"."nested_balance_groups"( 
	"parent_id" int NOT NULL,
	"child_id" int NOT NULL);

CREATE TABLE "public"."node"( 
	"id" int NOT NULL,
	"title" varchar(150) NOT NULL,
	"address" varchar(100) NOT NULL,
	"comment" varchar(1000) NOT NULL,
	"number" int NOT NULL,
	"customer_id" int,
	"responsible_name" varchar(100) NOT NULL,
	"responsible_phone" varchar(25) NOT NULL,
	"service_company_id" int,
	"state" smallint NOT NULL,
	"serviceman_id" int,
	"type" smallint NOT NULL,
	"norm_cold_water" real NOT NULL,
	"norm_hot_water" real NOT NULL,
	"norm_heat" real NOT NULL,
	"norm_electricity" real NOT NULL,
	"norm_gas" real NOT NULL,
	"is_communal_poll_enabled" boolean NOT NULL,
	"time_zone_offset" smallint NOT NULL,
	"cold_water_temp" real NOT NULL,
	"license_count" smallint NOT NULL,
	"contract_min_temp" smallint NOT NULL,
	"contract_max_temp" smallint NOT NULL,
	"contract_low_break_temp" smallint NOT NULL,
	"contract_high_break_temp" smallint NOT NULL,
	"min_outdoor_temp" smallint NOT NULL,
	"temperature_compliance_analysis_type" smallint NOT NULL,
	"territory_id" int NOT NULL,
	"division_id" int);

CREATE TABLE "public"."node_balance"( 
	"id" int NOT NULL,
	"node_id" int NOT NULL,
	"symbol" varchar(32) NOT NULL,
	"expression" varchar(1999) NOT NULL);

CREATE TABLE "public"."node_custom_attribute"( 
	"id" int NOT NULL,
	"node_id" int NOT NULL,
	"custom_attribute_id" int NOT NULL,
	"value" varchar(200) NOT NULL);

CREATE TABLE "public"."node_diag_defaults"( 
	"incident_type_id" int NOT NULL,
	"is_enabled" boolean NOT NULL,
	"value1" real NOT NULL,
	"value2" real NOT NULL);

CREATE TABLE "public"."node_diag_params"( 
	"node_id" int NOT NULL,
	"incident_type_id" int NOT NULL,
	"is_enabled" boolean NOT NULL,
	"value1" real NOT NULL,
	"value2" real NOT NULL);

CREATE TABLE "public"."node_equipment"( 
	"node_id" int NOT NULL,
	"equipment_id" int NOT NULL);

CREATE TABLE "public"."node_file"( 
	"id" int NOT NULL,
	"node_id" int NOT NULL,
	"file_name" varchar(260) NOT NULL,
	"creation_time" timestamp NOT NULL,
	"last_write_time" timestamp NOT NULL,
	"content" bytea NOT NULL,
	"hash" bytea NOT NULL,
	"public_file" boolean NOT NULL,
	"thumbnail" bytea,
	"length" varchar);

CREATE TABLE "public"."node_geo_location"( 
	"node_id" int NOT NULL,
	"latitude" double precision NOT NULL,
	"longitude" double precision NOT NULL);

CREATE TABLE "public"."node_group"( 
	"id" int NOT NULL,
	"title" varchar(75) NOT NULL,
	"comment" varchar(250) NOT NULL,
	"division_id" int);

CREATE TABLE "public"."node_group_membership"( 
	"node_group_id" int NOT NULL,
	"node_id" int NOT NULL);

CREATE TABLE "public"."node_job"( 
	"id" int NOT NULL,
	"node_id" int NOT NULL,
	"measure_point_id" int,
	"creator_account_id" int,
	"creator_name" varchar(50) NOT NULL,
	"performer_account_id" int,
	"performer_name" varchar(50) NOT NULL,
	"start_date" date NOT NULL,
	"scheduled_end_date" date NOT NULL,
	"fact_end_date" date,
	"title" varchar(200) NOT NULL,
	"description" varchar(1000) NOT NULL,
	"state" smallint NOT NULL,
	"type" smallint NOT NULL,
	"resolution_id" int,
	"incident_id" int,
	"work_order_number" varchar(20) NOT NULL);

CREATE TABLE "public"."node_job_comment"( 
	"id" int NOT NULL,
	"node_job_id" int NOT NULL,
	"date_time" timestamp NOT NULL,
	"account_id" int,
	"account_name" varchar(50) NOT NULL,
	"text" varchar(1999));

CREATE TABLE "public"."node_job_file"( 
	"node_job_id" int NOT NULL,
	"node_file_id" int NOT NULL);

CREATE TABLE "public"."node_job_resolution"( 
	"id" int NOT NULL,
	"title" varchar(128) NOT NULL);

CREATE TABLE "public"."node_poll_connection"( 
	"poll_connection_id" int NOT NULL,
	"node_id" int NOT NULL);

CREATE TABLE "public"."node_report"( 
	"node_id" int NOT NULL,
	"report_id" int NOT NULL,
	"report_template_id" int NOT NULL);

CREATE TABLE "public"."node_season_history"( 
	"node_id" int NOT NULL,
	"start_date" date NOT NULL,
	"is_heating_season" boolean NOT NULL);

CREATE TABLE "public"."node_signaling"( 
	"id" int NOT NULL,
	"node_id" int NOT NULL,
	"signal_title" varchar(50) NOT NULL,
	"dry_contact_number" smallint NOT NULL,
	"incident_importance_set" smallint NOT NULL,
	"incident_message_set" varchar(100) NOT NULL,
	"incident_importance_unset" smallint NOT NULL,
	"incident_message_unset" varchar(100) NOT NULL,
	"current_state" smallint NOT NULL,
	"equipment_id" int NOT NULL);

CREATE TABLE "public"."node_supplier"( 
	"node_id" int NOT NULL,
	"system_type" smallint NOT NULL,
	"supplier_id" int,
	"contract_number" varchar(20) NOT NULL,
	"contract_date" timestamp,
	"inspector_id" int);

CREATE TABLE "public"."node_user_diag_params"( 
	"id" int NOT NULL,
	"node_id" int NOT NULL,
	"expression" varchar(1999) NOT NULL,
	"seasons" smallint NOT NULL,
	"data_types" smallint NOT NULL,
	"message" varchar(500) NOT NULL,
	"enabled" boolean NOT NULL,
	"importance" smallint NOT NULL,
	"short_message" varchar(100) NOT NULL);

CREATE TABLE "public"."notification"( 
	"id" int NOT NULL,
	"notification_type_id" int NOT NULL,
	"date_time" timestamp NOT NULL,
	"message" varchar(500) NOT NULL,
	"importance" smallint NOT NULL,
	"expired_date" date,
	"equipment_id" int,
	"incident_id" int,
	"node_job_id" int,
	"url" varchar(256),
	"measure_point_id" int);

CREATE TABLE "public"."notification_type"( 
	"id" int NOT NULL,
	"title" varchar(100) NOT NULL);

CREATE TABLE "public"."outdoor_temperature"( 
	"date" timestamp NOT NULL,
	"value" real NOT NULL,
	"territory_id" int NOT NULL);

CREATE TABLE "public"."personal_account"( 
	"personal_account_id" int NOT NULL,
	"personal_account_number" varchar(50) NOT NULL,
	"personal_account_number_apartment" varchar(50) NOT NULL,
	"personal_account_number_resident" smallint NOT NULL,
	"personal_account_area_apartment" real NOT NULL,
	"node_id" int NOT NULL,
	"type" smallint NOT NULL,
	"contract_hot_water" real NOT NULL,
	"contract_cold_water" real NOT NULL,
	"contract_gas" real NOT NULL,
	"contract_electricity" real NOT NULL,
	"contract_heat" real NOT NULL,
	"contract_consumption_type" smallint NOT NULL,
	"floor_number" smallint NOT NULL,
	"room_count" smallint NOT NULL,
	"entrance_number" smallint NOT NULL);

CREATE TABLE "public"."plugin"( 
	"identifier" uuid NOT NULL,
	"file_name" varchar(255) NOT NULL,
	"is_disabled" boolean NOT NULL,
	"settings" varchar NOT NULL);

CREATE TABLE "public"."poll_connection"( 
	"id" int NOT NULL,
	"title" varchar(150) NOT NULL,
	"comm_link_type" smallint NOT NULL,
	"poll_port_id" int,
	"poll_port_group_id" int,
	"comm_device_equipment_id" int,
	"comm_device_port_id" int,
	"comm_device_port_settings_id" int,
	"connection_timeout" int,
	"dial_number" varchar(30),
	"comm_link_protocol" smallint NOT NULL,
	"gprs_call_type" smallint NOT NULL,
	"gprs_auto_disconnect" boolean NOT NULL,
	"internet_host" varchar(50) NOT NULL,
	"internet_port" int NOT NULL,
	"imitate_modem" boolean NOT NULL,
	"port_speed" int NOT NULL,
	"flow_control" smallint NOT NULL);

CREATE TABLE "public"."poll_port"( 
	"poll_port_id" int NOT NULL,
	"poll_port_port_number" smallint NOT NULL,
	"poll_port_enabled" boolean NOT NULL,
	"poll_port_title" varchar(50) NOT NULL,
	"poll_port_dial_prefix" varchar(10) NOT NULL,
	"poll_port_communication_link_type" smallint NOT NULL,
	"poll_port_modem_type_id" smallint NOT NULL,
	"gprs_listen_ipaddress" varchar(15) NOT NULL,
	"gprs_listen_port" smallint NOT NULL,
	"max_connections_count" smallint NOT NULL,
	"software_carrier_control" boolean NOT NULL,
	"comment" varchar(200) NOT NULL,
	"poll_port_group_id" int,
	"billing_model" smallint NOT NULL,
	"tariff_plan_included_minutes" int NOT NULL,
	"poll_service_id" int NOT NULL);

CREATE TABLE "public"."poll_port_group"( 
	"id" int NOT NULL,
	"title" varchar(50) NOT NULL);

CREATE TABLE "public"."poll_port_statistics"( 
	"poll_port_id" int NOT NULL,
	"date" date NOT NULL,
	"call_count" int NOT NULL,
	"total_calls_duration" int NOT NULL,
	"traffic" bigint NOT NULL);

CREATE TABLE "public"."poll_service"( 
	"id" int NOT NULL,
	"title" varchar(256) NOT NULL,
	"ip_address" varchar(45) NOT NULL,
	"debug_enabled" boolean NOT NULL,
	"token" varchar(256));

CREATE TABLE "public"."poll_session"( 
	"poll_session_id" int NOT NULL,
	"poll_session_client_session_id" int NOT NULL,
	"poll_session_task_id" int,
	"poll_session_start_datetime" timestamp NOT NULL,
	"poll_session_end_datetime" timestamp,
	"poll_session_result_code" smallint,
	"poll_session_communication_link_type" smallint NOT NULL,
	"dial_time" real NOT NULL,
	"poll_port_id" int,
	"node_id" int,
	"phone_number" varchar(30) NOT NULL,
	"poll_task_type" smallint NOT NULL,
	"call_duration" int NOT NULL,
	"bytes_sent" bigint NOT NULL,
	"bytes_received" bigint NOT NULL,
	"comm_equipment_id" int,
	"poll_connection_id" int);

CREATE TABLE "public"."poll_session_log"( 
	"poll_session_log_poll_session_id" int NOT NULL,
	"poll_session_log_data_date" timestamp NOT NULL,
	"poll_session_log_type" smallint NOT NULL,
	"poll_session_log_message" varchar(1999) NOT NULL);

CREATE TABLE "public"."poll_task"( 
	"id" int NOT NULL,
	"description" varchar(255) NOT NULL,
	"start_datetime" timestamp NOT NULL,
	"end_datetime" timestamp NOT NULL,
	"execution_state" smallint NOT NULL,
	"max_attempts" smallint NOT NULL,
	"attempt" smallint NOT NULL,
	"last_attempt_time" timestamp,
	"last_attempt_result_code" int,
	"next_attempt_delay" int NOT NULL,
	"freq_type" smallint NOT NULL,
	"freq_interval" int NOT NULL,
	"start_time" smallint NOT NULL,
	"retry_interval" smallint NOT NULL,
	"end_time" smallint NOT NULL,
	"poll_interval_start_date" timestamp,
	"poll_interval_end_date" timestamp,
	"poll_instant_interval" int NOT NULL,
	"remote_console_mode" boolean NOT NULL,
	"last_attempt_end_time" timestamp,
	"priority" smallint NOT NULL,
	"type" smallint NOT NULL,
	"load_absent_data_only" boolean NOT NULL,
	"poll_connection_id" int NOT NULL);

CREATE TABLE "public"."poll_task_measure_point"( 
	"task_id" int NOT NULL,
	"measure_point_id" int NOT NULL,
	"perform_time_correction" boolean NOT NULL,
	"requested_data_mask" smallint NOT NULL,
	"backup_connection_id" int,
	"backup_last_poll_date" timestamp,
	"backup_start_time" smallint NOT NULL);

CREATE TABLE "public"."prepared_report"( 
	"id" int NOT NULL,
	"generation_date_time" timestamp NOT NULL,
	"report_title" varchar(100) NOT NULL,
	"template_title" varchar(200) NOT NULL,
	"report_type" smallint NOT NULL,
	"report_entity" smallint NOT NULL,
	"node_id" int,
	"measure_point_id" int,
	"data_type" smallint NOT NULL,
	"start_date" timestamp NOT NULL,
	"end_date" timestamp NOT NULL,
	"data" bytea NOT NULL,
	"thumbnail" bytea NOT NULL,
	"file_name" varchar(200) NOT NULL);

CREATE TABLE "public"."protocol_type"( 
	"id" int NOT NULL,
	"number" smallint NOT NULL,
	"title" varchar(50) NOT NULL,
	"equipment_model_id" int NOT NULL);

CREATE TABLE "public"."report"( 
	"id" int NOT NULL,
	"title" varchar(100) NOT NULL,
	"is_system" boolean NOT NULL,
	"data_type" smallint NOT NULL,
	"report_type" smallint NOT NULL,
	"period_start_day" smallint NOT NULL,
	"period_start_month" smallint NOT NULL,
	"period_end_day" smallint NOT NULL,
	"period_end_month" smallint NOT NULL,
	"period_type" smallint NOT NULL,
	"report_entity" smallint NOT NULL,
	"report_template_id" int,
	"file_name_format" varchar(200) NOT NULL,
	"use_report_parameter" boolean NOT NULL);

CREATE TABLE "public"."report_fixed_node"( 
	"report_template_id" int NOT NULL,
	"node_id" int NOT NULL);

CREATE TABLE "public"."report_generating_task_node"( 
	"task_id" int NOT NULL,
	"node_id" int NOT NULL);

CREATE TABLE "public"."report_generating_task_settings"( 
	"task_id" int NOT NULL,
	"measure_point_systems" smallint NOT NULL,
	"report_id" int NOT NULL,
	"mailing_file_format" smallint NOT NULL,
	"mailing_file_split_mode" smallint NOT NULL,
	"mail_subject" varchar(78) NOT NULL,
	"save_report" boolean NOT NULL,
	"mailing_enabled" boolean NOT NULL,
	"mail_message" varchar(500) NOT NULL,
	"pdf_export_properties" varchar NOT NULL,
	"report_save_directory" varchar(260) NOT NULL,
	"pack_attachments" boolean NOT NULL);

CREATE TABLE "public"."report_parameter"( 
	"id" int NOT NULL,
	"report_id" int NOT NULL,
	"report_parameter_property_id" int NOT NULL,
	"value" varchar(100) NOT NULL);

CREATE TABLE "public"."report_parameter_property"( 
	"id" int NOT NULL,
	"parameter_name" varchar(50) NOT NULL,
	"value_type" smallint NOT NULL,
	"comment" varchar(300) NOT NULL,
	"report_type" smallint NOT NULL,
	"report_entity" smallint NOT NULL,
	"is_system" boolean NOT NULL);

CREATE TABLE "public"."report_template"( 
	"id" int NOT NULL,
	"title" varchar(200) NOT NULL,
	"comment" varchar(300) NOT NULL,
	"is_user" boolean NOT NULL,
	"data_source_mask" bigint NOT NULL,
	"text" varchar,
	"report_entity" smallint NOT NULL,
	"report_type" smallint NOT NULL,
	"measure_point_count_heat" smallint NOT NULL,
	"measure_point_count_hot_water" smallint NOT NULL,
	"measure_point_count_cold_water" smallint NOT NULL,
	"measure_point_count_steam" smallint NOT NULL,
	"measure_point_count_gas" smallint NOT NULL,
	"measure_point_count_electricity" smallint NOT NULL,
	"build_number" int NOT NULL,
	"estimation_algorithm" smallint NOT NULL,
	"daily_average_calculating_period" smallint NOT NULL,
	"device_model" int NOT NULL,
	"measure_point_count_sewage" smallint NOT NULL);

CREATE TABLE "public"."room_contract_consumption"( 
	"room_id" int NOT NULL,
	"month_number" smallint NOT NULL,
	"heat_value" real,
	"hot_water_value" real,
	"cold_water_value" real,
	"electricity_value" real);

CREATE TABLE "public"."room_counter"( 
	"equipment_id" int NOT NULL,
	"room_id" int NOT NULL,
	"initial_totals_value1" double precision NOT NULL,
	"initial_totals_value2" double precision NOT NULL,
	"initial_totals_date" timestamp NOT NULL,
	"install_location" varchar(100) NOT NULL,
	"measure_point_id" int);

CREATE TABLE "public"."scm_measure_points"( 
	"measure_point_id" int NOT NULL);

CREATE TABLE "public"."service_company"( 
	"id" int NOT NULL,
	"title" varchar(200) NOT NULL,
	"phone" varchar(200) NOT NULL,
	"license_number" varchar(100) NOT NULL,
	"comment" varchar(1000) NOT NULL);

CREATE TABLE "public"."serviceman"( 
	"id" int NOT NULL,
	"name" varchar(100) NOT NULL,
	"service_company_id" int,
	"phone" varchar(40) NOT NULL,
	"email" varchar(30) NOT NULL,
	"comment" varchar(200) NOT NULL);

CREATE TABLE "public"."supplier"( 
	"id" int NOT NULL,
	"title" varchar(255) NOT NULL,
	"system_type_mask" smallint NOT NULL,
	"contacts" varchar(500) NOT NULL,
	"comment" varchar(1000) NOT NULL);

CREATE TABLE "public"."system_log"( 
	"id" int NOT NULL,
	"date_time" timestamp NOT NULL,
	"importance" smallint NOT NULL,
	"message" varchar(500) NOT NULL);

CREATE TABLE "public"."system_parameters"( 
	"log_debug_messages" boolean NOT NULL,
	"poll_log_storage_time" smallint NOT NULL,
	"system_log_storage_time" smallint NOT NULL,
	"user_session_log_storage_time" smallint NOT NULL,
	"account_log_storage_time" smallint NOT NULL,
	"email_log_storage_time" smallint NOT NULL,
	"is_auto_poll_enabled" boolean NOT NULL,
	"poll_log_level" smallint NOT NULL,
	"poll_max_duration" smallint NOT NULL,
	"poll_max_time_diff" int NOT NULL,
	"device_request_retry_count" smallint NOT NULL,
	"poll_port_block_error_count" smallint NOT NULL,
	"poll_port_block_timeout" smallint NOT NULL,
	"time_correction_enabled" boolean NOT NULL,
	"time_correction_threshold" int NOT NULL,
	"gsm_modem_enabled" boolean NOT NULL,
	"gsm_modem_com_port_number" smallint NOT NULL,
	"gsm_modem_baud_rate" int NOT NULL,
	"gsm_modem_flow_control" smallint NOT NULL,
	"default_supply_pressure" smallint NOT NULL,
	"default_return_pressure" smallint NOT NULL,
	"default_cold_water_temp" real NOT NULL,
	"pressure_display_type" smallint NOT NULL,
	"storage_time_current_data" smallint NOT NULL,
	"max_part_count_in_multipart_sms" smallint NOT NULL,
	"smtp_server" varchar(50) NOT NULL,
	"smtp_port" int NOT NULL,
	"smtp_sender_address" varchar(50) NOT NULL,
	"smtp_sender_display_name" varchar(50) NOT NULL,
	"smtp_login" varchar(30) NOT NULL,
	"smtp_password" varchar(30) NOT NULL,
	"is_communal_enabled" boolean NOT NULL,
	"diag_enabled" boolean NOT NULL,
	"diag_day_data_enabled" boolean NOT NULL,
	"diag_hour_data_enabled" boolean NOT NULL,
	"diag_current_data_enabled" boolean NOT NULL,
	"storage_time_month_data" smallint NOT NULL,
	"storage_time_day_data" smallint NOT NULL,
	"storage_time_hour_data" smallint NOT NULL,
	"storage_time_device_config" smallint NOT NULL,
	"storage_time_device_event" smallint NOT NULL,
	"storage_time_power_data" smallint NOT NULL,
	"web_site_address" varchar(50) NOT NULL,
	"smtp_enable_ssl" boolean NOT NULL,
	"ignore_not_all_data_read_error" boolean NOT NULL,
	"backup_directory" varchar(100) NOT NULL,
	"updater_data_base_backup_mode" smallint NOT NULL,
	"storage_time_totals_data" smallint NOT NULL,
	"backup_count" smallint NOT NULL,
	"calibration_notify_day_count" smallint NOT NULL,
	"job_due_date_notify_day_count" smallint NOT NULL,
	"allow_sms_notifications" boolean NOT NULL,
	"gsm_modem_model_id" smallint NOT NULL,
	"storage_time_prepared_reports" smallint NOT NULL,
	"id" int NOT NULL,
	"storage_time_incidents" smallint NOT NULL,
	"storage_time_gprs_sessions" smallint NOT NULL,
	"allowed_node_file_extensions" varchar(500),
	"minimum_password_length" int NOT NULL,
	"password_must_contain_numbers" boolean NOT NULL,
	"password_must_contain_uppercase_letters" boolean NOT NULL,
	"password_must_contain_lowercase_letters" boolean NOT NULL,
	"password_must_contain_special_chars" boolean NOT NULL,
	"gsm_modem_use_sip_for_voice_calls" boolean NOT NULL,
	"gsm_modem_sip_server_address" varchar(1999) NOT NULL,
	"gsm_modem_sip_login" varchar(50) NOT NULL,
	"gsm_modem_sip_password" varchar(128) NOT NULL,
	"gsm_modem_sip_from_domain" varchar(1999) NOT NULL,
	"save_generated_report_to_data_base" boolean NOT NULL,
	"log_system_log_gprs_ident_error" boolean NOT NULL,
	"log_system_log_gprs_modem_not_found" boolean NOT NULL,
	"log_system_log_time_corrected" boolean NOT NULL,
	"log_system_log_report_printed" boolean NOT NULL,
	"log_system_log_ratio_doesnt_match" boolean NOT NULL,
	"log_system_log_poll_error" boolean NOT NULL,
	"log_system_log_message_sent" boolean NOT NULL,
	"log_system_log_user_session_started" boolean NOT NULL,
	"log_system_log_authentication_error" boolean NOT NULL,
	"log_system_log_incident_closed" boolean NOT NULL,
	"notification_admission_date_notify_day_count" smallint NOT NULL,
	"storage_time_node_equipment_history" smallint NOT NULL,
	"poll_disable_port_error_count" smallint NOT NULL,
	"poll_reboot_port_error_count" smallint NOT NULL,
	"storage_time_notifications" smallint NOT NULL);

CREATE TABLE "public"."system_type"( 
	"id" smallint NOT NULL,
	"title" varchar(50) NOT NULL);

CREATE TABLE "public"."task"( 
	"id" int NOT NULL,
	"freq_type" smallint NOT NULL,
	"freq_interval" int NOT NULL,
	"start_time" smallint NOT NULL,
	"retry_interval" smallint NOT NULL,
	"end_time" smallint NOT NULL,
	"title" varchar(100) NOT NULL,
	"enabled" boolean NOT NULL,
	"last_run_time" timestamp,
	"last_result" boolean,
	"last_result_error_message" varchar(500) NOT NULL,
	"start_date_time" timestamp NOT NULL,
	"type" smallint NOT NULL);

CREATE TABLE "public"."territory"( 
	"id" int NOT NULL,
	"parent_id" int,
	"name" varchar(128) NOT NULL,
	"time_zone_offset" smallint NOT NULL,
	"outdoor_temp_source_measure_point_id" int);

CREATE TABLE "public"."time_zone"( 
	"offset" smallint NOT NULL,
	"title" varchar(100) NOT NULL);

CREATE TABLE "public"."unit"( 
	"unit_id" smallint NOT NULL,
	"unit_title" varchar(15) NOT NULL,
	"unit_comment" varchar(60) NOT NULL,
	"unit_measured_parameter_id" smallint NOT NULL,
	"unit_code" varchar(30) NOT NULL,
	"unit_base_unit_id" smallint NOT NULL,
	"unit_multiplier" double precision NOT NULL);

CREATE TABLE "public"."user_session_log"( 
	"id" int NOT NULL,
	"account_id" int NOT NULL,
	"account_login" varchar(30) NOT NULL,
	"account_display_name" varchar(50) NOT NULL,
	"ipaddress" varchar(15) NOT NULL,
	"start_datetime" timestamp NOT NULL,
	"end_datetime" timestamp,
	"exit_code" smallint NOT NULL,
	"application" varchar(100) NOT NULL);

CREATE TABLE "public"."user_session_restore_token"( 
	"id" bigint NOT NULL,
	"account_id" int NOT NULL,
	"expire_date" timestamp NOT NULL,
	"restore_token" varchar(256) NOT NULL,
	"creation_date" timestamp NOT NULL,
	"original_ip_address" varchar(15) NOT NULL,
	"last_activity_date" timestamp NOT NULL,
	"application" varchar(100) NOT NULL);

CREATE TABLE "public"."version"( 
	"build" int NOT NULL,
	"version" varchar(50) NOT NULL,
	"date" timestamp NOT NULL,
	"license" bytea NOT NULL,
	"last_migration_build" int NOT NULL);

CREATE TABLE "public"."water_consumption_current"( 
	"measure_point_id" int NOT NULL,
	"data_date" timestamp NOT NULL,
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
	"calculated_values" int,
	"bad_values" int,
	"v_delta" real,
	"m_delta" real,
	"t_indoor" real);

CREATE TABLE "public"."water_consumption_day"( 
	"measure_point_id" int NOT NULL,
	"data_date" timestamp NOT NULL,
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
	"normal_operation_duration" real,
	"t_cw" real,
	"t_outdoor" real,
	"h_delta" real,
	"attributes" smallint,
	"calculated_values" int,
	"bad_values" int,
	"interpolated_values" int,
	"stop_duration" real,
	"flow_underrun_duration" real,
	"flow_overrun_duration" real,
	"temp_diff_low_duration" real,
	"no_power_duration" real,
	"incident_duration" real,
	"saturated_steam_duration" real,
	"v_delta" real,
	"m_delta" real,
	"t_indoor" real);

CREATE TABLE "public"."water_consumption_hour"( 
	"measure_point_id" int NOT NULL,
	"data_date" timestamp NOT NULL,
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
	"normal_operation_duration" real,
	"t_cw" real,
	"t_outdoor" real,
	"h_delta" real,
	"attributes" smallint,
	"calculated_values" int,
	"bad_values" int,
	"interpolated_values" int,
	"stop_duration" real,
	"flow_underrun_duration" real,
	"flow_overrun_duration" real,
	"temp_diff_low_duration" real,
	"no_power_duration" real,
	"incident_duration" real,
	"saturated_steam_duration" real,
	"v_delta" real,
	"m_delta" real,
	"t_indoor" real);

CREATE TABLE "public"."water_consumption_month"( 
	"measure_point_id" int NOT NULL,
	"data_date" timestamp NOT NULL,
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
	"normal_operation_duration" real,
	"t_cw" real,
	"t_outdoor" real,
	"h_delta" real,
	"attributes" smallint,
	"calculated_values" int,
	"bad_values" int,
	"interpolated_values" int,
	"stop_duration" real,
	"flow_underrun_duration" real,
	"flow_overrun_duration" real,
	"temp_diff_low_duration" real,
	"no_power_duration" real,
	"incident_duration" real,
	"saturated_steam_duration" real,
	"v_delta" real,
	"m_delta" real,
	"t_indoor" real);

CREATE TABLE "public"."water_estimated_consumption"( 
	"measure_point_id" int NOT NULL,
	"previous_month" boolean NOT NULL,
	"start_date" timestamp NOT NULL,
	"estimation_algorithm" smallint NOT NULL,
	"end_date" timestamp NOT NULL,
	"m_in" real,
	"m_out" real,
	"m_delta" real,
	"v_in" real,
	"v_out" real,
	"v_delta" real,
	"h_in" real,
	"h_out" real,
	"h_delta" real);

CREATE TABLE "public"."water_totals"( 
	"measure_point_id" int NOT NULL,
	"data_date" timestamp NOT NULL,
	"v_in" double precision,
	"v_out" double precision,
	"m_in" double precision,
	"m_out" double precision,
	"h_in" double precision,
	"h_out" double precision,
	"h_delta" double precision,
	"normal_operation_duration" double precision,
	"flags" smallint NOT NULL,
	"calculated_values" int,
	"bad_values" int,
	"resetted_values" int,
	"interpolated_values" int,
	"stop_duration" double precision,
	"flow_underrun_duration" double precision,
	"flow_overrun_duration" double precision,
	"temp_diff_low_duration" double precision,
	"no_power_duration" double precision,
	"incident_duration" double precision,
	"saturated_steam_duration" double precision,
	"v_delta" double precision,
	"m_delta" double precision);

COMMIT;
