-- Auto-generated from schema-map-postgres.yaml (map@sha1:8C4F2BC1C4D22EE71E27B5A7968C71E32D8D884D)
-- engine: postgres
-- table:  privacy_requests

CREATE INDEX IF NOT EXISTS idx_privacy_requests_user ON privacy_requests (user_id);

CREATE INDEX IF NOT EXISTS idx_privacy_requests_type_status ON privacy_requests (type, status);
