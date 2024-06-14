CREATE TABLE user_profile (
                                  id BIGINT AUTO_INCREMENT PRIMARY KEY,
                                  first_name VARCHAR(255) NOT NULL,
                                  last_name VARCHAR(255) NOT NULL,
                                  address VARCHAR(255) NOT NULL,
                                    profilepicture_url VARCHAR(255) NOT NULL
);

CREATE TABLE app_user (
                          id BIGINT AUTO_INCREMENT PRIMARY KEY,
                          username VARCHAR(255) NOT NULL UNIQUE,
                          password VARCHAR(255) NOT NULL,
                          profile_id BIGINT,
                          CONSTRAINT fk_profile
                              FOREIGN KEY (profile_id)
                                  REFERENCES user_profile(id)
);



CREATE TABLE IF NOT EXISTS app_role (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS app_user_roles (
    user_id BIGINT NOT NULL,
    role_id BIGINT NOT NULL,
    PRIMARY KEY (user_id, role_id),
    FOREIGN KEY (user_id) REFERENCES app_user(id),
    FOREIGN KEY (role_id) REFERENCES app_role(id)
);

CREATE TABLE app_product (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE doc_folder (
                            id INT AUTO_INCREMENT PRIMARY KEY,
                            title VARCHAR(255) NOT NULL,
                            sort_order INT NOT NULL
);


CREATE TABLE app_document (
                              id INT AUTO_INCREMENT PRIMARY KEY,
                              title VARCHAR(255) NOT NULL,
                              sort_order INT NOT NULL,
                              document_url VARCHAR(255) NOT NULL,
                            size INT NOT NULL,
                              doc_folder_id INT,
                              FOREIGN KEY (doc_folder_id) REFERENCES doc_folder(id)
);
