-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
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

-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  privacy_requests_status
-- Privacy requests status
CREATE OR REPLACE VIEW vw_privacy_requests_status AS
SELECT
  type,
  status,
  COUNT(*) AS total,
  MAX(processed_at) AS last_processed
FROM privacy_requests
GROUP BY type, status
ORDER BY type, status;

