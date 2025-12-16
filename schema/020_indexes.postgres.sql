-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  privacy_requests

CREATE INDEX IF NOT EXISTS idx_pr_user ON privacy_requests (user_id);

CREATE INDEX IF NOT EXISTS idx_pr_type_status ON privacy_requests (type, status);
