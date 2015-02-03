INSERT INTO users(username, password, enabled) VALUES ('Igor','1111',true);
--INSERT INTO Person VALUES (2, "B","2", 0);
--INSERT INTO Person VALUES (3, "C","3", 0);
--INSERT INTO Person VALUES (4, "D","4", 0);
commit;
INSERT INTO user_roles(user_role_id, username, role) VALUES (1, 'Igor','ROLE_ADMIN');

commit;