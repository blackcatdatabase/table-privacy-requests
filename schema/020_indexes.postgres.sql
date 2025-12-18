-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  privacy_requests

CREATE INDEX IF NOT EXISTS idx_privacy_requests_user ON privacy_requests (user_id);

CREATE INDEX IF NOT EXISTS idx_privacy_requests_type_status ON privacy_requests (type, status);
