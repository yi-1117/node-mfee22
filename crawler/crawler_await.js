const axios = require("axios");
(async () => {
  try {
    let data = await axios.get(
      "https://www.twse.com.tw/exchangeReport/STOCK_DAY?response=json&date=20220109&stockNo=2330&_=1641716316315"
    );
    console.log(data);
  } catch (err) {
    console.error(err);
  }
})();