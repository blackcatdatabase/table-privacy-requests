-- Auto-generated from schema-views-postgres.yaml (map@sha1:EDC13878AE5F346E7EAD2CF0A484FEB7E68F6CDD)
-- engine: postgres
-- table:  privacy_requests

-- Contract view for [privacy_requests]
CREATE OR REPLACE VIEW vw_privacy_requests AS
SELECT
  id,
  user_id,
  "type",
  status,
  requested_at,
  processed_at,
  meta
FROM privacy_requests;
