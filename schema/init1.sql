DROP TABLE IF EXISTS Categories;
CREATE TABLE IF NOT EXISTS Categories (
    CategoryId INTEGER PRIMARY KEY AUTOINCREMENT,
    Title VARCHAR(100) NOT NULL,
    ImgUrl VARCHAR(300) NOT NULL,
    CreatedAt TIMESTAMP NOT NULL,
    UpdatedAt TIMESTAMP NOT NULL
);
DROP TABLE IF EXISTS Roles;
CREATE TABLE IF NOT EXISTS Roles (
    RoleId INTEGER  PRIMARY KEY AUTOINCREMENT, 
    Name VARCHAR(255) NOT NULL UNIQUE,
    SuperAdmin BOOLEAN NOT NULL DEFAULT 0,
    Description VARCHAR(255),
    CreatedAt TIMESTAMP,
    UpdatedAt TIMESTAMP
);
DROP TABLE IF EXISTS Permissions;
CREATE TABLE IF NOT EXISTS Permissions (
    PermissionId INTEGER  PRIMARY KEY AUTOINCREMENT,
    PermissionName VARCHAR(255) NOT NULL UNIQUE,
    Description VARCHAR(255),
    CreatedAt TIMESTAMP NOT NULL,
    UpdateAt TIMESTAMP NOT NULL
);