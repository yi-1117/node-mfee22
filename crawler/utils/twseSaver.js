function saveStockName() {
    let saveNameResult = await connection.execute(
        "INSERT IGNORE INTO stocks (id, name) VALUES (?, ?)",
        [stockNo, stockName]
      );
      return saveNameResult
}

function