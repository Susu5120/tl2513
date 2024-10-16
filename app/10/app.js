const { spawn } = require('child_process');

// 假设需要执行的命令是 "node your_bot_script.js"
const botProcess = spawn('node', ['app/index.js'], {
  stdio: 'pipe',  // 使用 'pipe' 以便捕获 stdout 和 stderr
});

// 捕获标准输出并打印
botProcess.stdout.on('data', (data) => {
  console.log(`标准输出: ${data}`);
  
  // 检查输出内容，自动输入2号选项
  if (data.toString().includes('Input your choice')) {
    botProcess.stdin.write('3\n');  // 自动选择 2
  }
});

// 捕获标准错误并打印
botProcess.stderr.on('data', (data) => {
  console.error(`标准错误: ${data}`);
});

// 当子进程结束时执行的操作
botProcess.on('close', (code) => {
  console.log(`子进程退出，退出码: ${code}`);
});
