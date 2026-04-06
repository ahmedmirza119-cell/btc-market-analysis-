CREATE DATABASE IF NOT EXISTS btc_data;
USE btc_data;

CREATE TABLE IF NOT EXISTS btc_15m_historical (
    timestamp DATETIME PRIMARY KEY,
    open DECIMAL(20, 8),
    high DECIMAL(20, 8),
    low DECIMAL(20, 8),
    close DECIMAL(20, 8),
    volume DECIMAL(20, 8),
    session VARCHAR(20)
);
select * from btc_15m_historical;