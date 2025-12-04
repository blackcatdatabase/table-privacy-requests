-- Auto-generated from schema-map-mysql.yaml (map@4ae85c5)
-- engine: mysql
-- table:  privacy_requests

CREATE TABLE IF NOT EXISTS privacy_requests (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  user_id BIGINT UNSIGNED NULL,
  `type` ENUM('access','erasure','rectify','restrict','portability') NOT NULL,
  status ENUM('pending','processing','done','failed','cancelled') NOT NULL DEFAULT 'pending',
  requested_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  processed_at DATETIME(6) NULL,
  meta JSON NULL,
  INDEX idx_pr_user        (user_id),
  INDEX idx_pr_type_status (`type`, status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
