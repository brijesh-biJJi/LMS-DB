
Temporary_MIS:
---------------

CREATE TABLE temporary_MIS(
Date_Time  DATE NOT NULL,
Cpu_Count int(11) NOT NULL,
Cpu_Working_Time DOUBLE(11,3) NOT NULL,
Cpu_idle_Time DOUBLE(11,3) NOT NULL,
cpu_percent Double(11,3) NOT NULL,
Usage_cpu_count int(11) NOT NULL,
number_of_software_interrupts_since_boot DOUBLE(11,3) NOT NULL,
number_of_system_calls_since_boot int(11) NOT NULL,
number_of_interrupts_since_boot int(11) NOT NULL,
cpu_avg_load_over_1_min DOUBLE(11,3) NOT NULL,
cpu_avg_load_over_5_min   DOUBLE(11,3) NOT NULL,
cpu_avg_load_over_15_min DOUBLE(11,3) NOT NULL,
system_total_memory BIGINT(20)NOT NULL,
system_used_memory BIGINT(20) NOT NULL,
system_free_memory BIGINT(20) NOT NULL,
system_active_memory BIGINT(20) NOT NULL,
system_inactive_memory BIGINT(20)NOT NULL,
system_buffers_memory BIGINT(20) NOT NULL,
system_cached_memory BIGINT(20) NOT NULL,
system_shared_memory BIGINT(20) NOT NULL,
system_avalible_memory BIGINT(20) NOT NULL,
disk_total_memory BIGINT(20) NOT NULL,
disk_used_memory BIGINT(20) NOT NULL,
disk_free_memory BIGINT(20) NOT NULL,
disk_read_count BIGINT(20) NOT NULL,
disk_write_count BIGINT(20) NOT NULL,
disk_read_bytes BIGINT(20) NOT NULL,
disk_write_bytes BIGINT(20) NOT NULL,
time_spent_reading_from_disk BIGINT(20) NOT NULL,
time_spent_writing_to_disk BIGINT(20) NOT NULL,
time_spent_doing_actual_Input_Output BIGINT(20) NOT NULL,
number_of_bytes_sent BIGINT(20) NOT NULL,
number_of_bytes_received BIGINT(20) NOT NULL,
number_of_packets_sent BIGINT(20) NOT NULL,
number_of_packets_recived BIGINT(20) NOT NULL,
total_number_of_errors_while_receiving BIGINT(20) NOT NULL,
total_number_of_errors_while_sending BIGINT(20) NOT NULL,
total_number_of_incoming_packets_which_were_dropped BIGINT(20) NOT NULL,
total_number_of_outgoing_packets_which_were_dropped BIGINT(20) NOT NULL,
boot_time varchar(100) NOT NULL,
user_name varchar(50) NOT NULL,
keyboard int(11) NOT NULL,
mouse int(11) NOT NULL,
technology varchar(100) NOT NULL,
files_changed int(11) NOT NULL,
PRIMARY KEY (user_name)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


Loading data from csv file to temporary_MIS table:
----------------------------------------------------

LOAD DATA LOCAL INFILE ' C:/Users/DELL/Desktop/CpuLogData2019-11-17-new.csv' INTO TABLE temporary_MIS FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (Date_Time ,
Cpu_Count ,
Cpu_Working_Time ,
Cpu_idle_Time ,
cpu_percent ,
Usage_cpu_count ,
number_of_software_interrupts_since_boot ,
number_of_system_calls_since_boot ,
number_of_interrupts_since_boot ,
cpu_avg_load_over_1_min,
cpu_avg_load_over_5_min  ,
cpu_avg_load_over_15_min ,
system_total_memory  ,
system_used_memory ,
system_free_memory ,
system_active_memory ,
system_inactive_memory ,
system_buffers_memory,
system_cached_memory ,
system_shared_memory ,
system_avalible_memory ,
disk_total_memory ,
disk_used_memory ,
disk_free_memory ,
disk_read_count ,
disk_write_count ,
disk_read_bytes ,
disk_write_bytes ,
time_spent_reading_from_disk ,
time_spent_writing_to_disk ,
time_spent_doing_actual_Input_Output ,
number_of_bytes_sent ,
number_of_bytes_received ,
number_of_packets_sent ,
number_of_packets_recived ,
total_number_of_errors_while_receiving ,
total_number_of_errors_while_sending ,
total_number_of_incoming_packets_which_were_dropped ,
total_number_of_outgoing_packets_which_were_dropped ,
boot_time,
user_name ,
keyboard ,
mouse ,
technology ,
files_changed
);

User_Engagement Tabale:
-------------------------
Update Query:
-------------
update user_engagement_mis set date_time='2020-09-01 08-55-12' where id=2

update user_engagement_mis set date_time='2020-09-01 08-55-12' where id=5

CREATE TABLE user_engagement_MIS(
id int(11) NOT NULL,
candidate_id int(11) NOT NULL,
Date_Time  DATE NOT NULL,
Cpu_Count int(11) NOT NULL,
Cpu_Working_Time DOUBLE(11,3) NOT NULL,
Cpu_idle_Time DOUBLE(11,3) NOT NULL,
cpu_percent Double(11,3) NOT NULL,
Usage_cpu_count int(11) NOT NULL,
number_of_software_interrupts_since_boot DOUBLE(11,3) NOT NULL,
number_of_system_calls_since_boot int(11) NOT NULL,
number_of_interrupts_since_boot int(11) NOT NULL,
cpu_avg_load_over_1_min DOUBLE(11,3) NOT NULL,
cpu_avg_load_over_5_min   DOUBLE(11,3) NOT NULL,
cpu_avg_load_over_15_min DOUBLE(11,3) NOT NULL,
system_total_memory BIGINT(20)NOT NULL,
system_used_memory BIGINT(20) NOT NULL,
system_free_memory BIGINT(20) NOT NULL,
system_active_memory BIGINT(20) NOT NULL,
system_inactive_memory BIGINT(20)NOT NULL,
system_buffers_memory BIGINT(20) NOT NULL,
system_cached_memory BIGINT(20) NOT NULL,
system_shared_memory BIGINT(20) NOT NULL,
system_avalible_memory BIGINT(20) NOT NULL,
disk_total_memory BIGINT(20) NOT NULL,
disk_used_memory BIGINT(20) NOT NULL,
disk_free_memory BIGINT(20) NOT NULL,
disk_read_count BIGINT(20) NOT NULL,
disk_write_count BIGINT(20) NOT NULL,
disk_read_bytes BIGINT(20) NOT NULL,
disk_write_bytes BIGINT(20) NOT NULL,
time_spent_reading_from_disk BIGINT(20) NOT NULL,
time_spent_writing_to_disk BIGINT(20) NOT NULL,
time_spent_doing_actual_Input_Output BIGINT(20) NOT NULL,
number_of_bytes_sent BIGINT(20) NOT NULL,
number_of_bytes_received BIGINT(20) NOT NULL,
number_of_packets_sent BIGINT(20) NOT NULL,
number_of_packets_recived BIGINT(20) NOT NULL,
total_number_of_errors_while_receiving BIGINT(20) NOT NULL,
total_number_of_errors_while_sending BIGINT(20) NOT NULL,
total_number_of_incoming_packets_which_were_dropped BIGINT(20) NOT NULL,
total_number_of_outgoing_packets_which_were_dropped BIGINT(20) NOT NULL,
boot_time varchar(100) NOT NULL,
keyboard int(11) NOT NULL,
mouse int(11) NOT NULL,
technology varchar(100) NOT NULL,
files_changed int(11) NOT NULL,
KEY `FK_user_engagement_mis_candidate_id` (`candidate_id`),
  CONSTRAINT `FK_user_engagemnt_mis_candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `fellowship_candidates` (`candidate_id`),
PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

Alter Query:
---------------
ALTER TABLE user_engagement_mis MODIFY id INT NOT NULL AUTO_INCREMENT;

    ALTER TABLE user_engagement_mis
ADD FOREIGN KEY (candidate_id) REFERENCES fellowship_candidate(candidate_id);

ALTER TABLE user_engagement_mis 
ADD CONSTRAINT candidate_id_unique UNIQUE (candidate_id);

Drop Index Keys:
----------------
ALTER TABLE user_engagement_mis DROP INDEX candidate_id_unique;

Show INDEX KEys:
------------------
show index from user_engagement_mis;

Update Query:
--------------


INSERT INTO user_engagement_mis ( 
candidate_id , 
Date_Time ,
Cpu_Count,
Cpu_Working_Time ,
Cpu_idle_Time ,
cpu_percent ,
Usage_cpu_count ,
number_of_software_interrupts_since_boot ,
number_of_system_calls_since_boot ,
number_of_interrupts_since_boot ,
cpu_avg_load_over_1_min ,
cpu_avg_load_over_5_min   ,
cpu_avg_load_over_15_min ,
system_total_memory ,
system_used_memory ,
system_free_memory ,
system_active_memory ,
system_inactive_memory ,
system_buffers_memory ,
system_cached_memory ,
system_shared_memory ,
system_avalible_memory ,
disk_total_memory ,
disk_used_memory ,
disk_free_memory ,
disk_read_count ,
disk_write_count ,
disk_read_bytes ,
disk_write_bytes ,
time_spent_reading_from_disk ,
time_spent_writing_to_disk ,
time_spent_doing_actual_Input_Output ,
number_of_bytes_sent ,
number_of_bytes_received ,
number_of_packets_sent ,
number_of_packets_recived ,
total_number_of_errors_while_receiving ,
total_number_of_errors_while_sending ,
total_number_of_incoming_packets_which_were_dropped ,
total_number_of_outgoing_packets_which_were_dropped ,
boot_time ,
keyboard ,
mouse ,
technology ,
files_changed
)
SELECT 
fc.candidate_id , 
tm.Date_Time ,
tm.Cpu_Count ,
tm.Cpu_Working_Time ,
tm.Cpu_idle_Time ,
tm.cpu_percent ,
tm.Usage_cpu_count ,
tm.number_of_software_interrupts_since_boot ,
tm.number_of_system_calls_since_boot ,
tm.number_of_interrupts_since_boot ,
tm.cpu_avg_load_over_1_min ,
tm.cpu_avg_load_over_5_min   ,
tm.cpu_avg_load_over_15_min ,
tm.system_total_memory ,
tm.system_used_memory ,
tm.system_free_memory ,
tm.system_active_memory ,
tm.system_inactive_memory ,
tm.system_buffers_memory ,
tm.system_cached_memory ,
tm.system_shared_memory ,
tm.system_avalible_memory ,
tm.disk_total_memory ,
tm.disk_used_memory ,
tm.disk_free_memory ,
tm.disk_read_count ,
tm.disk_write_count ,
tm.disk_read_bytes ,
tm.disk_write_bytes ,
tm.time_spent_reading_from_disk ,
tm.time_spent_writing_to_disk ,
tm.time_spent_doing_actual_Input_Output ,
tm.number_of_bytes_sent ,
tm.number_of_bytes_received ,
tm.number_of_packets_sent ,
tm.number_of_packets_recived ,
tm.total_number_of_errors_while_receiving ,
tm.total_number_of_errors_while_sending ,
tm.total_number_of_incoming_packets_which_were_dropped ,
tm.total_number_of_outgoing_packets_which_were_dropped ,
tm.boot_time ,
tm.keyboard ,
tm.mouse ,
tm.technology ,
tm.files_changed 
FROM fellowship_candidate as fc
INNER JOIN temporary_mis as tm
on fc.email = tm.user_name


TRIGGER Commands:
-------------------

CREATE TRIGGER tr_ins_User_Engagement_Mis
BEFORE INSERT ON  user_engagement_mis
FOR EACH ROW
SET NEW.technology = UPPER(NEW.technology);



