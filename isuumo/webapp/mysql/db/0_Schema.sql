DROP DATABASE IF EXISTS isuumo;
CREATE DATABASE isuumo;

DROP TABLE IF EXISTS isuumo.estate;
DROP TABLE IF EXISTS isuumo.chair;

CREATE TABLE isuumo.estate
(
    id          INTEGER             NOT NULL PRIMARY KEY,
    name        VARCHAR(64)         NOT NULL,
    description VARCHAR(4096)       NOT NULL,
    thumbnail   VARCHAR(128)        NOT NULL,
    address     VARCHAR(128)        NOT NULL,
    latitude    DOUBLE PRECISION    NOT NULL,
    longitude   DOUBLE PRECISION    NOT NULL,
    rent        INTEGER             NOT NULL,
    door_height INTEGER             NOT NULL,
    door_width  INTEGER             NOT NULL,
    features    VARCHAR(64)         NOT NULL,
    popularity  INTEGER             NOT NULL,
    INDEX idx_rent (rent),
    INDEX idx_door_height (door_height),
    INDEX idx_door_width (door_width),
    INDEX index_lat (latitude, longitude)
);

CREATE TABLE isuumo.estate_features
(
    estate_id INTEGER NOT NULL,
    feature VARCHAR(64) NOT NULL,
    INDEX idx_estate_id (estate_id),
    INDEX idx_feature (feature)
);

CREATE TABLE isuumo.chair
(
    id          INTEGER         NOT NULL PRIMARY KEY,
    name        VARCHAR(64)     NOT NULL,
    description VARCHAR(4096)   NOT NULL,
    thumbnail   VARCHAR(128)    NOT NULL,
    price       INTEGER         NOT NULL,
    height      INTEGER         NOT NULL,
    width       INTEGER         NOT NULL,
    depth       INTEGER         NOT NULL,
    color       VARCHAR(64)     NOT NULL,
    features    VARCHAR(64)     NOT NULL,
    kind        VARCHAR(64)     NOT NULL,
    popularity  INTEGER         NOT NULL,
    stock       INTEGER         NOT NULL,
    INDEX idx_price (price),
    INDEX idx_height (height),
    INDEX idx_width (width),
    INDEX idx_depth (depth),
    INDEX idx_color (color),
    INDEX idx_kind (kind),
    INDEX idx_stock (stock)
);

CREATE TABLE isuumo.estate_search_log
(
    id          INTEGER         NOT NULL,
    door_height        BOOLEAN     NOT NULL,
    door_width        BOOLEAN     NOT NULL,
    rent        BOOLEAN     NOT NULL,
    features        BOOLEAN     NOT NULL
);