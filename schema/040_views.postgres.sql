-- Auto-generated from schema-views-postgres.yaml (map@sha1:5C6FE96DC2067A978A357A1DCB8631B46C71D429)
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
