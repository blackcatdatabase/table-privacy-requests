-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  privacy_requests

CREATE INDEX IF NOT EXISTS idx_pr_user ON privacy_requests (user_id);

CREATE INDEX IF NOT EXISTS idx_pr_type_status ON privacy_requests (type, status);
