-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  privacy_requests

ALTER TABLE privacy_requests ADD CONSTRAINT fk_privacy_requests_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;
