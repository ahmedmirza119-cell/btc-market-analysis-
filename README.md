# ₿ BTC Market Analysis — 5-Year Historical Study

> **15-minute OHLCV data analysis of Bitcoin (BTC/USDT) from April 2021 to April 2026**  
> Fetched from Binance via CCXT · Stored in MySQL · Visualized with Matplotlib & Seaborn

---

## 📌 Project Overview

This project collects, stores, and analyzes **5 years of Bitcoin price data** at a 15-minute granularity. It covers major market cycles — the 2021 bull run, the 2022 bear market, and the 2024–2025 rally to all-time highs — giving a comprehensive view of BTC price behavior across different market conditions and trading sessions.

**Key highlights:**
- ~175,000 candles of 15-minute OHLCV data
- Session-based analysis (Asian, London, New York, Overnight)
- Interactive HTML dashboard (no backend required)
- Full pipeline: data fetch → MySQL storage → visualization

---

## 📁 Project Structure

```
btc-market-analysis/
│
├── btc_data_fetch.ipynb        # Fetches BTC data from Binance & saves to MySQL
├── btc_visualizations.ipynb    # All Matplotlib + Seaborn charts & analysis
├── btc_schema.sql              # MySQL database & table creation script
├── btc_dashboard.html          # Standalone interactive dashboard (open in browser)
│
├── requirements.txt            # Python dependencies
└── README.md                   # You are here
```

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| **Python 3.12** | Core language |
| **CCXT** | Binance API data fetching |
| **Pandas** | Data processing & transformation |
| **SQLAlchemy + PyMySQL** | MySQL database connection |
| **MySQL** | Persistent data storage |
| **Matplotlib** | Price charts, candlesticks, bar plots |
| **Seaborn** | Heatmaps, distributions, box plots |
| **mplfinance** | Candlestick charts |
| **HTML / Chart.js** | Interactive web dashboard |

---

## ⚙️ Setup & Installation

### 1. Clone the Repository
```bash
git clone https://github.com/your-username/btc-market-analysis.git
cd btc-market-analysis
```

### 2. Install Python Dependencies
```bash
pip install -r requirements.txt
```

### 3. Setup MySQL Database
Open MySQL and run the schema script:
```bash
mysql -u root -p < btc_schema.sql
```

### 4. Configure Database Credentials
In `btc_data_fetch.ipynb`, update your MySQL credentials:
```python
DB_USER = 'root'
DB_PASS = 'your_password'
DB_HOST = 'localhost'
DB_NAME = 'btc_data'
```

### 5. Fetch the Data
Run all cells in `btc_data_fetch.ipynb`. This fetches ~5 years of 15-min BTC/USDT data from Binance and saves it to MySQL.

> ⏱️ First run takes 5–10 minutes due to Binance API rate limits.

### 6. Run Visualizations
Open and run `btc_visualizations.ipynb` to generate all charts.

### 7. View Dashboard
Simply open `btc_dashboard.html` in any browser — no server needed.

---

## 📊 Database Schema

```sql
CREATE TABLE btc_15m_historical (
    timestamp  DATETIME      PRIMARY KEY,
    open       DECIMAL(20,8),
    high       DECIMAL(20,8),
    low        DECIMAL(20,8),
    close      DECIMAL(20,8),
    volume     DECIMAL(20,8),
    session    VARCHAR(20)     -- Asian | London | New York | Overnight/Late NY
);
```

---

## 📈 Visualizations Included

| # | Chart | Description |
|---|-------|-------------|
| 1 | Price Line Chart | 5-year BTC close price history |
| 2 | Volume Bar Chart | Monthly average trading volume |
| 3 | Candlestick Chart | Short-term OHLC price action |
| 4 | Hour × Day Heatmap | Best trading hours by avg return |
| 5 | Session Box Plot | Return distribution per session |
| 6 | Returns Histogram | 15-min return distribution + KDE |
| 7 | Yearly Range Chart | Annual min / max / avg price |
| 8 | Correlation Matrix | Feature correlation for ML prep |

---

## 🕐 Trading Sessions (UTC)

| Session | UTC Hours | Description |
|---------|-----------|-------------|
| Asian | 00:00 – 08:00 | Tokyo / Singapore markets |
| London | 08:00 – 13:00 | European market open |
| New York | 13:00 – 21:00 | US market hours |
| Overnight/Late NY | 21:00 – 00:00 | Low liquidity hours |

---

## 📉 Data Coverage

| Period | Market Phase |
|--------|-------------|
| Apr 2021 – Nov 2021 | Bull Run (BTC ~$69K ATH) |
| Nov 2021 – Nov 2022 | Bear Market (BTC ~$15K low) |
| Nov 2022 – Oct 2023 | Recovery & Accumulation |
| Oct 2023 – Mar 2024 | Pre-Halving Rally |
| Apr 2024 – Dec 2024 | Post-Halving Bull Run (ATH $108K) |
| Jan 2025 – Apr 2026 | Current Cycle |

---

## 📝 Notes

- All timestamps are in **UTC**
- Data source: **Binance** (BTC/USDT spot market)
- The dashboard (`btc_dashboard.html`) uses **simulated/representative data** for display. To connect it to live MySQL data, a backend API (Flask/FastAPI) is needed.
- This project is for **educational and analytical purposes only** — not financial advice.

---

## 👤 Author

**Ahmed Mirza**  
Data fetched with ❤️ using Python, CCXT, and a lot of `time.sleep(0.1)` calls.

---

## 📄 License

MIT License — free to use, modify, and distribute.
