-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  privacy_requests

CREATE INDEX IF NOT EXISTS idx_pr_user ON privacy_requests (user_id);

CREATE INDEX IF NOT EXISTS idx_pr_type_status ON privacy_requests (type, status);
