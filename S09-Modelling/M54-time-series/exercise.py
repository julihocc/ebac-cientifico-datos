# %% [markdown]
# # Module 54: Time Series
#
# Author: Juliho Castillo Colmenares Ph.D.

# %%
import yfinance as yf
import pandas as pd
import matplotlib.pyplot as plt
from statsmodels.tsa.stattools import adfuller
from statsmodels.graphics.tsaplots import plot_acf
from statsmodels.tsa.seasonal import seasonal_decompose

# %%
# Step 1: Download historical data
start_date = "2019-01-01"
end_date = "2024-01-01"

# %%
ibm_data = yf.download("IBM", start=start_date, end=end_date)
ibm_data

# %%
walmart_data = yf.download("WMT", start=start_date, end=end_date)
walmart_data

# %%
# Step 2: Correlation Analysis

# Create DataFrames from the Close prices for alignment
ibm_close = ibm_data["Close"]["IBM"].to_frame()
ibm_close

# %%
walmart_close = walmart_data["Close"]["WMT"].to_frame()
walmart_close

# %%
aligned_data = ibm_close.join(walmart_close, how="inner").rename(
    columns={"IBM": "Close_IBM", "WMT": "Close_WMT"}
)
aligned_data

# %%
# Calculate the correlation between IBM and Walmart closing prices
correlation = aligned_data["Close_IBM"].corr(aligned_data["Close_WMT"])
correlation

# %%
# Plot scatter plot for visual correlation
plt.figure(figsize=(10, 5))
plt.scatter(aligned_data["Close_IBM"], aligned_data["Close_WMT"])
plt.xlabel("IBM Closing Price")
plt.ylabel("Walmart Closing Price")
plt.title(f"Correlation between IBM and Walmart Prices: {correlation:.2f}")
plt.show()

# %%
# Step 3: Time Series Decomposition
# Decompose both time series and plot
for stock_data, name in zip([ibm_data, walmart_data], ["IBM", "Walmart"]):
    decomposed = seasonal_decompose(stock_data["Close"], model="additive", period=365)
    decomposed.plot()
    plt.suptitle(f"{name} Stock Price Decomposition")
    plt.show()

# %%
# Plot correlograms for both IBM and Walmart stock prices
for stock_data, name in zip([ibm_data, walmart_data], ["IBM", "Walmart"]):
    plt.figure(figsize=(10, 5))
    plot_acf(stock_data["Close"].dropna(), lags=40)
    plt.title(f"{name} Autocorrelation Plot")
    plt.show()


# %%
# Step 4: Dickey-Fuller Test for stationarity
def adf_test(series, name):
    result = adfuller(series)
    print(f"ADF Statistic for {name}: {result[0]}")
    print(f"p-value for {name}: {result[1]}")
    if result[1] < 0.05:
        print(f"The {name} series is stationary.")
    else:
        print(f"The {name} series is not stationary.")


# %%
adf_test(ibm_data["Close"], "IBM")
adf_test(walmart_data["Close"], "Walmart")

# %%
# Step 5: Moving Average Analysis
# Calculate 30-day moving average for both stocks
for stock_data, name in zip([ibm_data, walmart_data], ["IBM", "Walmart"]):
    stock_data["30_day_MA"] = stock_data["Close"].rolling(window=30).mean()

    # Plot original and moving average prices
    plt.figure(figsize=(12, 6))
    plt.plot(stock_data["Close"], label=f"{name} Close Price")
    plt.plot(stock_data["30_day_MA"], label="30-Day Moving Average", linestyle="--")
    plt.title(f"{name} Close Price and 30-Day Moving Average")
    plt.xlabel("Date")
    plt.ylabel("Price")
    plt.legend()
    plt.show()

# %%
# Step 6: One-Day Forecast (simple projection using last moving average value)
# For simplicity, we use the last available 30-day moving average as the forecast
for stock_data, name in zip([ibm_data, walmart_data], ["IBM", "Walmart"]):
    last_moving_avg = stock_data["30_day_MA"].iloc[-1]
    print(
        f"One-day forecast for {name} based on the 30-day moving average: {last_moving_avg}"
    )
