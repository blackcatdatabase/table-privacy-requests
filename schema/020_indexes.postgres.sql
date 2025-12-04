-- Auto-generated from schema-map-postgres.yaml (map@74ce4f4)
-- engine: postgres
-- table:  privacy_requests

CREATE INDEX IF NOT EXISTS idx_pr_user ON privacy_requests (user_id);

CREATE INDEX IF NOT EXISTS idx_pr_type_status ON privacy_requests (type, status);
