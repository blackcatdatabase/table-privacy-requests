-- Auto-generated from schema-map-postgres.yaml (map@sha1:8C4F2BC1C4D22EE71E27B5A7968C71E32D8D884D)
-- engine: postgres
-- table:  privacy_requests

ALTER TABLE privacy_requests ADD CONSTRAINT fk_privacy_requests_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;
