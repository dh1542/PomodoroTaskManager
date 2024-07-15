CREATE TABLE Users (
	ID int NOT NULL,
	password varchar(255),
	username varchar(255),
	email varchar(255),
	created_at TIMESTAMP,
	PRIMARY KEY (ID)
);

CREATE TABLE Projects (
	ID int NOT NULL,
	user_id int NOT NULL,
	name varchar(255),
	description varchar(255),
	created_at TIMESTAMP NOT NULL,
	updated_at TIMESTAMP,
	PRIMARY KEY (ID),
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (created_at) REFERENCES users(created_at)
);