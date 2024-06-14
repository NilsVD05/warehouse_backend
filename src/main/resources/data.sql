-- Insert initial user profiles
INSERT INTO user_profile (first_name, last_name, address, profilepicture_url) VALUES ('John', 'Doe', '123 Main St', 'http://example.com/johndoe.jpg');
INSERT INTO user_profile (first_name, last_name, address, profilepicture_url) VALUES ('Jane', 'Doe', '456 Maple Ave', 'http://example.com/janedoe.jpg');
INSERT INTO user_profile (first_name, last_name, address, profilepicture_url) VALUES ('Bob', 'Smith', '789 Oak Dr', 'http://example.com/bobsmith.jpg');
INSERT INTO user_profile (first_name, last_name, address, profilepicture_url) VALUES ('Ben', 'Dog', '187 Cockroad', 'http://example.com/bendog.jpg');

INSERT INTO user_profile (first_name, last_name, address, profilepicture_url) VALUES ('User', 'One', '123 Main St', 'http://example.com/user1.jpg');
INSERT INTO user_profile (first_name, last_name, address, profilepicture_url) VALUES ('User', 'Two', '456 Maple Ave', 'http://example.com/user2.jpg');
INSERT INTO user_profile (first_name, last_name, address, profilepicture_url) VALUES ('User', 'Three', '789 Oak Dr', 'http://example.com/user3.jpg');
INSERT INTO user_profile (first_name, last_name, address, profilepicture_url) VALUES ('User', 'Four', '321 Elm St', 'http://example.com/user4.jpg');
INSERT INTO user_profile (first_name, last_name, address, profilepicture_url) VALUES ('User', 'Five', '654 Pine Ave', 'http://example.com/user5.jpg');
INSERT INTO user_profile (first_name, last_name, address, profilepicture_url) VALUES ('User', 'Six', '987 Maple Dr', 'http://example.com/user6.jpg');
INSERT INTO user_profile (first_name, last_name, address, profilepicture_url) VALUES ('User', 'Seven', '123 Oak St', 'http://example.com/user7.jpg');
INSERT INTO user_profile (first_name, last_name, address, profilepicture_url) VALUES ('User', 'Eight', '456 Elm Ave', 'http://example.com/user8.jpg');
INSERT INTO user_profile (first_name, last_name, address, profilepicture_url) VALUES ('User', 'Nine', '789 Pine Dr', 'http://example.com/user9.jpg');
INSERT INTO user_profile (first_name, last_name, address, profilepicture_url) VALUES ('User', 'Ten', '321 Main St', 'http://example.com/user10.jpg');

INSERT INTO user_profile (first_name, last_name, address, profilepicture_url) VALUES ('User', 'Developer', '321 Main St', 'http://example.com/user10.jpg');

-- Insert initial roles
INSERT INTO app_role (name) VALUES ('ROLE_USER');
INSERT INTO app_role (name) VALUES ('ROLE_ADMIN');
INSERT INTO app_role (name) VALUES ('ROLE_STAFF_MEMBER');
INSERT INTO app_role (name) VALUES ('ROLE_ASSISTANT_MANAGER');
INSERT INTO app_role (name) VALUES ('ROLE_MANAGER');
INSERT INTO app_role (name) VALUES ('ROLE_OFFICE');
INSERT INTO app_role (name) VALUES ('ROLE_ACCOUNT_MANAGER');
INSERT INTO app_role (name) VALUES ('ROLE_CLIENT');
INSERT INTO app_role (name) VALUES ('ROLE_DEVELOPER');


-- Insert initial users with hashed passwords
INSERT INTO app_user (username, password) VALUES ('user1', '$2a$12$Ggp2LRs6t1jioMiS35zA9.0LnOFA9hlVqNVg2k416SBt9bPR0t5hm'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('user2', '$2a$12$Ggp2LRs6t1jioMiS35zA9.0LnOFA9hlVqNVg2k416SBt9bPR0t5hm'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('user3', '$2a$12$Ggp2LRs6t1jioMiS35zA9.0LnOFA9hlVqNVg2k416SBt9bPR0t5hm'); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password) VALUES ('user4', '$2a$12$Ggp2LRs6t1jioMiS35zA9.0LnOFA9hlVqNVg2k416SBt9bPR0t5hm'); -- Replace with BCrypt hashed password

-- Insert additional users with hashed passwords
INSERT INTO app_user (username, password, profile_id) VALUES ('user11', '$2a$12$Ggp2LRs6t1jioMiS35zA9.0LnOFA9hlVqNVg2k416SBt9bPR0t5hm', 5); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password, profile_id) VALUES ('user12', '$2a$12$Ggp2LRs6t1jioMiS35zA9.0LnOFA9hlVqNVg2k416SBt9bPR0t5hm', 6); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password, profile_id) VALUES ('user13', '$2a$12$Ggp2LRs6t1jioMiS35zA9.0LnOFA9hlVqNVg2k416SBt9bPR0t5hm', 7); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password, profile_id) VALUES ('user14', '$2a$12$Ggp2LRs6t1jioMiS35zA9.0LnOFA9hlVqNVg2k416SBt9bPR0t5hm', 8); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password, profile_id) VALUES ('user15', '$2a$12$Ggp2LRs6t1jioMiS35zA9.0LnOFA9hlVqNVg2k416SBt9bPR0t5hm', 9); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password, profile_id) VALUES ('user16', '$2a$12$Ggp2LRs6t1jioMiS35zA9.0LnOFA9hlVqNVg2k416SBt9bPR0t5hm', 10); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password, profile_id) VALUES ('user17', '$2a$12$Ggp2LRs6t1jioMiS35zA9.0LnOFA9hlVqNVg2k416SBt9bPR0t5hm', 11); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password, profile_id) VALUES ('user18', '$2a$12$Ggp2LRs6t1jioMiS35zA9.0LnOFA9hlVqNVg2k416SBt9bPR0t5hm', 12); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password, profile_id) VALUES ('user19', '$2a$12$Ggp2LRs6t1jioMiS35zA9.0LnOFA9hlVqNVg2k416SBt9bPR0t5hm', 13); -- Replace with BCrypt hashed password
INSERT INTO app_user (username, password, profile_id) VALUES ('user20', '$2a$12$Ggp2LRs6t1jioMiS35zA9.0LnOFA9hlVqNVg2k416SBt9bPR0t5hm', 14); -- Replace with BCrypt hashed password

INSERT INTO app_user (username, password, profile_id) VALUES ('user21', '$2a$12$Ggp2LRs6t1jioMiS35zA9.0LnOFA9hlVqNVg2k416SBt9bPR0t5hm', 15); -- Replace with BCrypt hashed password


-- Associate users with roles
INSERT INTO app_user_roles (user_id, role_id) VALUES (1, 3); -- user1 -> ROLE_STAFF_MEMBER
INSERT INTO app_user_roles (user_id, role_id) VALUES (1, 2); -- user1 -> ROLE_ADMIN
INSERT INTO app_user_roles (user_id, role_id) VALUES (2, 3); -- user2 -> ROLE_STAFF_MEMBER
INSERT INTO app_user_roles (user_id, role_id) VALUES (3, 3); -- user3 -> ROLE_STAFF_MEMBER
INSERT INTO app_user_roles (user_id, role_id) VALUES (3, 4); -- user3 -> ROLE_ASSISTANT_MANAGER
INSERT INTO app_user_roles (user_id, role_id) VALUES (4, 3); -- user3 -> ROLE_STAFF_MEMBER
INSERT INTO app_user_roles (user_id, role_id) VALUES (4, 5); -- user3 -> ROLE_MANAGER

INSERT INTO app_user_roles (user_id, role_id) VALUES (5, 6); -- user3 -> ROLE_MANAGER
INSERT INTO app_user_roles (user_id, role_id) VALUES (6, 6); -- user3 -> ROLE_MANAGER
INSERT INTO app_user_roles (user_id, role_id) VALUES (7, 7); -- user3 -> ROLE_MANAGER
INSERT INTO app_user_roles (user_id, role_id) VALUES (8, 7); -- user3 -> ROLE_MANAGER
INSERT INTO app_user_roles (user_id, role_id) VALUES (9, 3); -- user3 -> ROLE_MANAGER
INSERT INTO app_user_roles (user_id, role_id) VALUES (10, 3); -- user3 -> ROLE_MANAGER
INSERT INTO app_user_roles (user_id, role_id) VALUES (11, 8); -- user3 -> ROLE_MANAGER
INSERT INTO app_user_roles (user_id, role_id) VALUES (12, 8); -- user3 -> ROLE_MANAGER
INSERT INTO app_user_roles (user_id, role_id) VALUES (13, 2); -- user3 -> ROLE_MANAGER
INSERT INTO app_user_roles (user_id, role_id) VALUES (14, 2); -- user3 -> ROLE_MANAGER

INSERT INTO app_user_roles (user_id, role_id) VALUES (15, 9); -- user3 -> ROLE_MANAGER


-- Get the IDs of the newly inserted user profiles
SET @johnDoeProfileId = (SELECT id FROM user_profile WHERE first_name = 'John' AND last_name = 'Doe');
SET @janeDoeProfileId = (SELECT id FROM user_profile WHERE first_name = 'Jane' AND last_name = 'Doe');
SET @bobSmithProfileId = (SELECT id FROM user_profile WHERE first_name = 'Bob' AND last_name = 'Smith');
SET @benDogProfileId = (SELECT id FROM user_profile WHERE first_name = 'Ben' AND last_name = 'Dog');

SET @userOne = (SELECT id FROM user_profile WHERE first_name = 'User' AND last_name = 'One');
SET @userTwo = (SELECT id FROM user_profile WHERE first_name = 'User' AND last_name = 'Two');
SET @userThree = (SELECT id FROM user_profile WHERE first_name = 'User' AND last_name = 'Three');
SET @userFour = (SELECT id FROM user_profile WHERE first_name = 'User' AND last_name = 'Four');
SET @userFive = (SELECT id FROM user_profile WHERE first_name = 'User' AND last_name = 'Five');
SET @userSix = (SELECT id FROM user_profile WHERE first_name = 'User' AND last_name = 'Six');
SET @userSeven = (SELECT id FROM user_profile WHERE first_name = 'User' AND last_name = 'Seven');
SET @userEight = (SELECT id FROM user_profile WHERE first_name = 'User' AND last_name = 'Eight');
SET @userNine = (SELECT id FROM user_profile WHERE first_name = 'User' AND last_name = 'Nine');
SET @userTen = (SELECT id FROM user_profile WHERE first_name = 'User' AND last_name = 'Ten');

SET @userDeveloper = (SELECT id FROM user_profile WHERE first_name = 'User' AND last_name = 'Developer');

-- Associate user profiles with users
UPDATE app_user SET profile_id = @johnDoeProfileId WHERE username = 'user1';
UPDATE app_user SET profile_id = @janeDoeProfileId WHERE username = 'user2';
UPDATE app_user SET profile_id = @bobSmithProfileId WHERE username= 'user3';
UPDATE app_user SET profile_id = @benDogProfileId WHERE username= 'user4';

UPDATE app_user SET profile_id = @userOne WHERE username = 'user11';
UPDATE app_user SET profile_id = @userTwo WHERE username = 'user12';
UPDATE app_user SET profile_id = @userThree WHERE username = 'user13';
UPDATE app_user SET profile_id = @userFour WHERE username = 'user14';
UPDATE app_user SET profile_id = @userFive WHERE username = 'user15';
UPDATE app_user SET profile_id = @userSix WHERE username = 'user16';
UPDATE app_user SET profile_id = @userSeven WHERE username = 'user17';
UPDATE app_user SET profile_id = @userEight WHERE username = 'user18';
UPDATE app_user SET profile_id = @userNine WHERE username = 'user19';
UPDATE app_user SET profile_id = @userTen WHERE username = 'user20';

UPDATE app_user SET profile_id = @userDeveloper WHERE username = 'user21';

INSERT INTO app_product (name) VALUES ('Apple iPhone 13');
INSERT INTO app_product (name) VALUES ('Samsung Galaxy S21');
INSERT INTO app_product (name) VALUES ('Google Pixel 6');
INSERT INTO app_product (name) VALUES ('OnePlus 9 Pro');
INSERT INTO app_product (name) VALUES ('Sony Xperia 5 III');


INSERT INTO doc_folder (title, sort_order) VALUES ('Folder 1', 1);
INSERT INTO doc_folder (title, sort_order) VALUES ('Folder 2', 2);
INSERT INTO doc_folder (title, sort_order) VALUES ('Folder 3', 3);

INSERT INTO app_document (title, sort_order, document_url, size, doc_folder_id) VALUES ('Document 1', 1, 'http://example.com/doc1', 5, 1);
INSERT INTO app_document (title, sort_order, document_url, size, doc_folder_id) VALUES ('Document 2', 2, 'http://example.com/doc2', 99, 1);
INSERT INTO app_document (title, sort_order, document_url, size, doc_folder_id) VALUES ('Document 3', 3, 'http://example.com/doc3', 63, 2);
INSERT INTO app_document (title, sort_order, document_url, size, doc_folder_id) VALUES ('Document 4', 4, 'http://example.com/doc4', 75, 2);
INSERT INTO app_document (title, sort_order, document_url, size, doc_folder_id) VALUES ('Document 5', 5, 'http://example.com/doc5', 187, 3);
