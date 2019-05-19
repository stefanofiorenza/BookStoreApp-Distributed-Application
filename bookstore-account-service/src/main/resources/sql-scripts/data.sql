
INSERT INTO user (user_id, first_name, last_name, password, user_name, email) VALUES (1, 'John', 'Doe', '$2a$10$qtH0F1m488673KwgAfFXEOWxsoZSeHqqlB/8BTt3a6gsI5c2mdlfe', 'john.doe', 'john.doe@gmail.com');
INSERT INTO user (user_id, first_name, last_name, password, user_name, email) VALUES (2, 'Admin', 'Admin', '$2a$10$qtH0F1m488673KwgAfFXEOWxsoZSeHqqlB/8BTt3a6gsI5c2mdlfe', 'admin.admin', 'admin@gmail.com');

INSERT INTO role (role_id, role_name, role_description) VALUES (1, 'STANDARD_USER', 'Standard User - Has no admin rights');
INSERT INTO role (role_id, role_name, role_description) VALUES (2, 'ADMIN_USER', 'Admin User - Has permission to perform admin tasks');

INSERT INTO user_roles(user_id, role_id) VALUES(1,1);
INSERT INTO user_roles(user_id, role_id) VALUES(2,1);
INSERT INTO user_roles(user_id, role_id) VALUES(2,2);


INSERT INTO oauth_client_details (client_id, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES  ('fooClientIdPassword','secret', 'foo,read,write',  'password,authorization_code,refresh_token', null, null, 36000, 36000, null, true);