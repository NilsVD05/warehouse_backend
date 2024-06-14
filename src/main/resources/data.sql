-- Insert initial user profiles
INSERT INTO user_profile (first_name, last_name, address, profilepicture_url) VALUES ('John', 'Doe', '123 Main St', 'http://example.com/johndoe.jpg');
INSERT INTO user_profile (first_name, last_name, address, profilepicture_url) VALUES ('Jane', 'Doe', '456 Maple Ave', 'http://example.com/janedoe.jpg');
INSERT INTO user_profile (first_name, last_name, address, profilepicture_url) VALUES ('Bob', 'Smith', '789 Oak Dr', 'http://example.com/bobsmith.jpg');
INSERT INTO user_profile (first_name, last_name, address, profilepicture_url) VALUES ('Ben', 'Dog', '187 Cockroad', 'http://example.com/bendog.jpg');

-- Insert initial roles
INSERT INTO app_role (name) VALUES ('ROLE_USER');
INSERT INTO app_role (name) VALUES ('ROLE_ADMIN');
INSERT INTO app_role (name) VALUES ('ROLE_STAFF_MEMBER');
INSERT INTO app_role (name) VALUES ('ROLE_ASSISTANT_MANAGER');
INSERT INTO app_role (name) VALUES ('ROLE_MANAGER');

-- Insert initial users with hashed passwords
INSERT INTO app_user (username, password) VALUES ('user1', '$2a$12$Ggp2LRs6t1jioMiS35zA9.0LnOFA9hlVqNVg2k416SBt9bPR0t5hm'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('user2', '$2a$12$Ggp2LRs6t1jioMiS35zA9.0LnOFA9hlVqNVg2k416SBt9bPR0t5hm'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('user3', '$2a$12$Ggp2LRs6t1jioMiS35zA9.0LnOFA9hlVqNVg2k416SBt9bPR0t5hm'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('user4', '$2a$12$Ggp2LRs6t1jioMiS35zA9.0LnOFA9hlVqNVg2k416SBt9bPR0t5hm'); -- Replace with BCrypt hashed password

-- Associate users with roles
INSERT INTO app_user_roles (user_id, role_id) VALUES (1, 3); -- user1 -> ROLE_STAFF_MEMBER
INSERT INTO app_user_roles (user_id, role_id) VALUES (1, 2); -- user1 -> ROLE_ADMIN
INSERT INTO app_user_roles (user_id, role_id) VALUES (2, 3); -- user2 -> ROLE_STAFF_MEMBER
INSERT INTO app_user_roles (user_id, role_id) VALUES (3, 3); -- user3 -> ROLE_STAFF_MEMBER
INSERT INTO app_user_roles (user_id, role_id) VALUES (3, 4); -- user3 -> ROLE_ASSISTANT_MANAGER
INSERT INTO app_user_roles (user_id, role_id) VALUES (4, 3); -- user3 -> ROLE_STAFF_MEMBER
INSERT INTO app_user_roles (user_id, role_id) VALUES (4, 5); -- user3 -> ROLE_MANAGER


-- Get the IDs of the newly inserted user profiles
SET @johnDoeProfileId = (SELECT id FROM user_profile WHERE first_name = 'John' AND last_name = 'Doe');
SET @janeDoeProfileId = (SELECT id FROM user_profile WHERE first_name = 'Jane' AND last_name = 'Doe');
SET @bobSmithProfileId = (SELECT id FROM user_profile WHERE first_name = 'Bob' AND last_name = 'Smith');
SET @benDogProfileId = (SELECT id FROM user_profile WHERE first_name = 'Ben' AND last_name = 'Dog');


-- Associate user profiles with users
UPDATE app_user SET profile_id = @johnDoeProfileId WHERE username = 'user1';
UPDATE app_user SET profile_id = @janeDoeProfileId WHERE username = 'user2';
UPDATE app_user SET profile_id = @bobSmithProfileId WHERE username= 'user3';
UPDATE app_user SET profile_id = @benDogProfileId WHERE username= 'user4';


INSERT INTO app_product (name) VALUES ('Apple iPhone 13');
INSERT INTO app_product (name) VALUES ('Samsung Galaxy S21');
INSERT INTO app_product (name) VALUES ('Google Pixel 6');
INSERT INTO app_product (name) VALUES ('OnePlus 9 Pro');
INSERT INTO app_product (name) VALUES ('Sony Xperia 5 III');

