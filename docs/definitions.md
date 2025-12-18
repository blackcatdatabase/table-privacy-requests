# privacy_requests

Data-subject privacy requests (access, erasure, portability, etc.).

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |
| user_id | BIGINT | YES |  | Subject user (FK users.id). |
| type | mysql: ENUM('access','erasure','rectify','restrict','portability') / postgres: TEXT | NO |  | Request type. (enum: access, erasure, rectify, restrict, portability) |
| status | mysql: ENUM('pending','processing','done','failed','cancelled') / postgres: TEXT | NO | pending | Request status. (enum: pending, processing, done, failed, cancelled) |
| requested_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | When the request was submitted. |
| processed_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | YES |  | When it was completed. |
| meta | mysql: JSON / postgres: JSONB | YES |  | JSON blob with additional context. |

## Engine Details

### mysql

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_privacy_requests_type_status | type,status | INDEX idx_privacy_requests_type_status (`type`, status) |
| idx_privacy_requests_user | user_id | INDEX idx_privacy_requests_user        (user_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_privacy_requests_user | user_id | users(id) | ON DELETE SET |

### postgres

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_privacy_requests_type_status | type,status | CREATE INDEX IF NOT EXISTS idx_privacy_requests_type_status ON privacy_requests (type, status) |
| idx_privacy_requests_user | user_id | CREATE INDEX IF NOT EXISTS idx_privacy_requests_user ON privacy_requests (user_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_privacy_requests_user | user_id | users(id) | ON DELETE SET |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_privacy_requests | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_privacy_requests_status | mysql | algorithm=TEMPTABLE, security=INVOKER | [../schema/040_views_joins.mysql.sql](../schema/040_views_joins.mysql.sql) |
| vw_privacy_requests | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
| vw_privacy_requests_status | postgres |  | [../schema/040_views_joins.postgres.sql](../schema/040_views_joins.postgres.sql) |
