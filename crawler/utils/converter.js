function parseSockName(stockNameData) {
    if (
        !stockNameData.suggestions ||
        stockNameData.suggestions[0] === "(無符合之代碼或名稱)"
      ) {
        throw new Error("查無此代表");
      }
      // 可以到這裡，表示有資料
      let stockData = stockNameData.suggestions[0];
      let stockDatas = stockData.split("\t");
      return stockDatas[1];
}

function convertPrice(priceData, stockNo) {
    let processData = priceData.data.map((d) => {
        // 處理民國年轉西元年
        let dateArr = d[0].split("/");
        dateArr[0] = Number(dateArr[0]) + 1911;
        d[0] = dateArr.join("-");
        // 對每一個欄位處理千分逗點
        d = d.map((value) => {
          return value.replace(/[,]+/g, "");
        });
        d.unshift(stockNo);
        return d;
      });
      return processData;
}

module.exports = { parseStockName, convertPrice};