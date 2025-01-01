-- +goose Up
-- +goose StatementBegin
CREATE TABLE items(
id INTEGER PRIMARY KEY AUTOINCREMENT,
				name VARCHAR(100) NOT NULL

);


INSERT INTO items (name) VALUES ('Laptop');
INSERT INTO items (name) VALUES ('Smartphone');
INSERT INTO items (name) VALUES ('Tablet');
INSERT INTO items (name) VALUES ('Smartwatch');
INSERT INTO items (name) VALUES ('Headphones');
INSERT INTO items (name) VALUES ('Keyboard');
INSERT INTO items (name) VALUES ('Mouse');
INSERT INTO items (name) VALUES ('Monitor');
INSERT INTO items (name) VALUES ('Printer');
INSERT INTO items (name) VALUES ('Webcam');
-- +goose StatementEnd


-- +goose Down
-- +goose StatementBegin
DROP TABLE items;
-- +goose StatementEnd
