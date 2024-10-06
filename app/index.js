// 引入 Express 框架
const express = require('express');
const app = express();

// 定义端口号
const port = 3000;

// 定义一个简单的路由，返回 "Hello World"
app.get('/', (req, res) => {
  res.send('Hello World');
});

// 启动服务器并监听 3000 端口
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
