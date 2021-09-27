use legolas;

-- insert user data
INSERT INTO `users` (`user_id`,`email`,`password`,`first_name`,`last_name`,`mobile`,`country`, `user_status`) VALUES (1,'kbillington0@about.com','123456','Katlin','Billington','659-188-1025','Singapore', 'Active');
INSERT INTO `users` (`user_id`,`email`,`password`,`first_name`,`last_name`,`mobile`,`country`, `user_status`) VALUES (2,'hguiel1@technorati.com','123456','Heddie','Guiel','387-784-3623','Singapore', 'Active');
INSERT INTO `users` (`user_id`,`email`,`password`,`first_name`,`last_name`,`mobile`,`country`, `user_status`) VALUES (3,'aselley2@forbes.com','123456','Antonella','Selley','922-709-8028','Singapore', 'Active');
INSERT INTO `users` (`user_id`,`email`,`password`,`first_name`,`last_name`,`mobile`,`country`, `user_status`) VALUES (4,'lfairhead3@eepurl.com','123456','Lombard','Fairhead','325-534-4827','Singapore', 'Suspended');
INSERT INTO `users` (`user_id`,`email`,`password`,`first_name`,`last_name`,`mobile`,`country`, `user_status`) VALUES (5,'mmatus4@apache.org','123456','Moe','Matus','801-102-1427','Singapore', 'Active');
INSERT INTO `users` (`user_id`,`email`,`password`,`first_name`,`last_name`,`mobile`,`country`, `user_status`) VALUES (6,'sesser0@deliciousdays.com','123456','Sophia','Esser','200-301-8025','Philippines', 'Active');
INSERT INTO `users` (`user_id`,`email`,`password`,`first_name`,`last_name`,`mobile`,`country`, `user_status`) VALUES (7,'oskillern1@netvibes.com','123456','Olympe','Skillern','176-779-9204','Philippines', 'Active');
INSERT INTO `users` (`user_id`,`email`,`password`,`first_name`,`last_name`,`mobile`,`country`, `user_status`) VALUES (8,'cnoddings2@creativecommons.org','123456','Corabel','Noddings','520-917-0013','Philippines', 'Active');
INSERT INTO `users` (`user_id`,`email`,`password`,`first_name`,`last_name`,`mobile`,`country`, `user_status`) VALUES (9,'jblodg3@trellian.com','123456','Jonathon','Blodg','603-427-2842','Philippines', 'Suspended');
INSERT INTO `users` (`user_id`,`email`,`password`,`first_name`,`last_name`,`mobile`,`country`, `user_status`) VALUES (10,'dverralls4@wikia.com','123456','Daphene','Verralls','720-509-9480','Philippines', 'Active');
INSERT INTO `users` (`user_id`, `email`, `password`, `first_name`, `last_name`, `mobile`, `country`, `user_status`) VALUES ('11', 'supervisor@geco.asia', '123456', 'Supervisor', 'Supervisor', '61234567', 'Singapore', 'Active');
INSERT INTO `users` (`user_id`, `email`, `password`, `first_name`, `last_name`, `mobile`, `country`, `user_status`) VALUES ('12', 'admin@geco.asia', '123456', 'Admin', 'Admin', '61981234', 'Philippines', 'Active');

-- insert users_roles data
INSERT INTO `users_roles` (`row_id`,`fk_user_id`,`role`) VALUES (1,1,'TRAINEE');
INSERT INTO `users_roles` (`row_id`,`fk_user_id`,`role`) VALUES (2,2,'TRAINEE');
INSERT INTO `users_roles` (`row_id`,`fk_user_id`,`role`) VALUES (3,3,'TRAINEE');
INSERT INTO `users_roles` (`row_id`,`fk_user_id`,`role`) VALUES (4,4,'TRAINEE');
INSERT INTO `users_roles` (`row_id`,`fk_user_id`,`role`) VALUES (5,5,'MENTOR');
INSERT INTO `users_roles` (`row_id`,`fk_user_id`,`role`) VALUES (6,6,'TRAINEE');
INSERT INTO `users_roles` (`row_id`,`fk_user_id`,`role`) VALUES (7,7,'TRAINEE');
INSERT INTO `users_roles` (`row_id`,`fk_user_id`,`role`) VALUES (8,8,'TRAINEE');
INSERT INTO `users_roles` (`row_id`,`fk_user_id`,`role`) VALUES (9,9,'TRAINEE');
INSERT INTO `users_roles` (`row_id`,`fk_user_id`,`role`) VALUES (10,10,'MENTOR');
INSERT INTO `users_roles` (`row_id`,`fk_user_id`,`role`) VALUES (11,11,'ADMIN');
INSERT INTO `users_roles` (`row_id`,`fk_user_id`,`role`) VALUES (12,12,'SUPERVISOR');

-- insert learning_track data
insert into learning_tracks (learning_track_id, learning_track_name) values (1, 'Java Developer');
insert into learning_tracks (learning_track_id, learning_track_name) values (2, 'Javascript');
insert into learning_tracks (learning_track_id, learning_track_name) values (3, 'C#');

-- insert learning_track_users data
insert into learning_tracks_users (row_id,fk_learning_track_id, fk_user_id, user_lt_start_date, user_lt_end_date, user_lt_status, mentor_id, cohort_id) values (1,1, 1, '2021-06-28', '2021-10-31', 'Active', 5, 'Batch 1');
insert into learning_tracks_users (row_id,fk_learning_track_id, fk_user_id, user_lt_start_date, user_lt_end_date, user_lt_status, mentor_id, cohort_id) values (2,1, 2, '2021-06-28', '2021-10-31', 'Active', 5, 'Batch 1');
insert into learning_tracks_users (row_id,fk_learning_track_id, fk_user_id, user_lt_start_date, user_lt_end_date, user_lt_status, mentor_id, cohort_id) values (3,1, 3, '2021-06-28', '2021-10-31', 'Active', 5, 'Batch 1');
insert into learning_tracks_users (row_id,fk_learning_track_id, fk_user_id, user_lt_start_date, user_lt_end_date, user_lt_status, mentor_id, cohort_id) values (4,1, 6, '2021-06-28', '2021-10-31', 'Active', 5, 'Batch 1');
insert into learning_tracks_users (row_id,fk_learning_track_id, fk_user_id, user_lt_start_date, user_lt_end_date, user_lt_status, mentor_id, cohort_id) values (5,1, 7, '2021-06-28', '2021-10-31', 'Active', 5, 'Batch 1');
insert into learning_tracks_users (row_id,fk_learning_track_id, fk_user_id, user_lt_start_date, user_lt_end_date, user_lt_status, mentor_id, cohort_id) values (6,1, 9, '2021-06-28', '2021-10-31', 'Active', 5, 'Batch 1');
insert into learning_tracks_users (row_id,fk_learning_track_id, fk_user_id, user_lt_start_date, user_lt_end_date, user_lt_status, mentor_id, cohort_id) values (7,2, 1, '2021-06-28', '2021-10-31', 'Active', 10, 'Batch 2');
insert into learning_tracks_users (row_id,fk_learning_track_id, fk_user_id, user_lt_start_date, user_lt_end_date, user_lt_status, mentor_id, cohort_id) values (8,2, 7, '2021-06-28', '2021-10-31', 'Active', 10, 'Batch 2');
insert into learning_tracks_users (row_id,fk_learning_track_id, fk_user_id, user_lt_start_date, user_lt_end_date, user_lt_status, mentor_id, cohort_id) values (9,3, 4, '2021-06-28', '2021-10-31', 'Active', 10, 'Batch 2');
insert into learning_tracks_users (row_id,fk_learning_track_id, fk_user_id, user_lt_start_date, user_lt_end_date, user_lt_status, mentor_id, cohort_id) values (10,3, 8, '2021-06-28', '2021-10-31', 'Suspended', 10, 'Batch 2');

-- insert modules data
INSERT INTO `modules` (`module_id`,`module_name`,`fk_learning_track_id`) VALUES (1,'Java Fundamental',1);
INSERT INTO `modules` (`module_id`,`module_name`,`fk_learning_track_id`) VALUES (2,'Java OOP Foundation',1);
INSERT INTO `modules` (`module_id`,`module_name`,`fk_learning_track_id`) VALUES (3,'Spring Foundation',1);
INSERT INTO `modules` (`module_id`,`module_name`,`fk_learning_track_id`) VALUES (4,'Javascript Fundamental',2);
INSERT INTO `modules` (`module_id`,`module_name`,`fk_learning_track_id`) VALUES (5,'Javascript Advanced',2);
INSERT INTO `modules` (`module_id`,`module_name`,`fk_learning_track_id`) VALUES (6,'C# Fundamental',3);
INSERT INTO `modules` (`module_id`,`module_name`,`fk_learning_track_id`) VALUES (7,'C# Advanced',3);

-- insert modules_progress data
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (1,1, 1, 100);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (2,1, 2, 55);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (3,1, 3, 0);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (4,2, 1, 80);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (5,2, 2, 45);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (6,2, 3, 10);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (7,1, 4, 80);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (8,1, 5, 25);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (9,7, 4, 10);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (10,7, 5, 0);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (11,3, 1, 10);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (12,3, 2, 0);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (13,3, 3, 25);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (14,4, 6, 50);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (15,4, 7, 50);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (16,6, 1, 70);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (17,6, 2, 50);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (18,6, 3, 0);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (19,7, 1, 40);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (20,7, 2, 20);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (21,7, 3, 0);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (22,9, 1, 100);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (23,9, 2, 100);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (24,9, 3, 50);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (25,8, 6, 100);
insert into modules_progress (row_id,fk_user_id, fk_module_id, module_progress) values (26,8, 7, 30);

-- insert topics data
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (1,'Java-abc',1);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (2,'Java-def',1);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (3,'Java-ghi',1);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (4,'Java-OOP-123',2);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (5,'Java-OOP-456',2);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (6,'Java-Spring1',3);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (7,'Java-Spring2',3);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (8,'JS-abc',4);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (9,'JS-def',4);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (10,'JS-Adv-123',5);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (11,'JS-Adv-456',5);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (12,'C#-abc',6);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (13,'C#-def',6);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (14,'C#-Adv-123',7);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (15,'C#-Adv-456',7);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (1001,'Examination',1);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (1002,'Examination',2);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (1003,'Examination',3);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (1004,'Examination',4);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (1005,'Examination',5);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (1006,'Examination',6);
INSERT INTO `topics` (`topic_id`,`topic_name`,`fk_module_id`) VALUES (1007,'Examination',7);

-- insert topics_users data
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (1,1, 1);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (2,2, 1);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (3,3, 1);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (4,4, 1);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (5,5, 1);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (6,6, 1);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (7,7, 1);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (8,8, 1);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (9,9, 1);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (10,10, 1);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (11,11, 1);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (12,1001, 1);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (13,1002, 1);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (14,1003, 1);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (15,1004, 1);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (16,1005, 1);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (17,1, 2);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (18,2, 2);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (19,3, 2);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (20,4, 2);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (21,5, 2);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (22,6, 2);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (23,7, 2);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (24,1001, 2);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (25,1002, 2);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (26,1003, 2);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (27,4, 7);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (28,5, 7);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (29,1004, 7);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (30,1005, 7);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (31,1, 3);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (32,2, 3);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (33,3, 3);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (34,4, 3);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (35,5, 3);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (36,6, 3);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (37,7, 3);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (38,1001, 3);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (39,1002, 3);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (40,1003, 3);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (41,12, 4);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (42,13, 4);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (43,14, 4);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (44,15, 4);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (45,1006, 4);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (46,1007, 4);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (47,1, 6);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (48,2, 6);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (49,3, 6);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (50,4, 6);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (51,5, 6);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (52,6, 6);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (53,7, 6);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (54,1001, 6);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (55,1002, 6);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (56,1003, 6);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (57,1, 7);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (58,2, 7);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (59,3, 7);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (60,4, 7);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (61,5, 7);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (62,6, 7);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (63,7, 7);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (64,1001, 7);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (65,1002, 7);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (66,1003, 7);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (67,1, 9);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (68,2, 9);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (69,3, 9);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (70,4, 9);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (71,5, 9);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (72,6, 9);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (73,7, 9);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (74,1001, 9);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (75,1002, 9);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (76,1003, 9);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (77,12, 8);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (78,13, 8);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (79,14, 8);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (80,15, 8);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (81,1006, 8);
INSERT INTO `topics_users` (`row_id`,`fk_topic_id`, `fk_user_id`) VALUES (82,1007, 8);