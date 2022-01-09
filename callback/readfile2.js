const { readFile } = require('fs');

let data = 'test.txt';
let readFilePromise = (data) => {
  return new Promise((resolve, reject) => {
    readFile(data, 'utf-8', (err, data) => {
      if (err) {
        reject(err);
        return;
      }
      resolve(data);
    });
  });
};

readFilePromise(data)
  .then((result) => {
    console.log(`這裡是promise的result: ${result}`);
  })
  .catch((err) => {
    console.log(`這裡是promise的err: ${err}`);
  });