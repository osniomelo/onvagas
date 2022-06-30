CREATE TABLE users (
    id varchar(255) NOT NULL PRIMARY KEY,
    name varchar(255) NOT NULL,
    email varchar(100) NOT NULL,
    password varchar(255) NOT NULL,
    avatar varchar(255) NULL,
    role varchar(255) NOT NULL DEFAULT('recruiter'),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

CREATE TABLE resumes (
    id varchar(255) NOT NULL PRIMARY KEY,
    name varchar(255) NOT NULL,
    status varchar(50) NOT NULL DEFAULT('pending'),
    employe_id varchar(255) NOT NULL,
    job_id varchar(255) NOT NULL,
    file_path varchar(255) NOT NULL,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(employe_id) REFERENCES users(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY(job_id) REFERENCES jobs(id) ON DELETE NO ACTION ON UPDATE NO ACTION
)

CREATE TABLE jobs (
    id varchar(255) NOT NULL PRIMARY KEY,
    name varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    recruiter_id varchar(255),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(recruiter_id) REFERENCES users(id) ON DELETE NO ACTION ON UPDATE NO ACTION
)