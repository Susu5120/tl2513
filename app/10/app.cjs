const { spawn } = require('child_process');

// 启动子进程并将所有日志输出到主进程
const botProcess = spawn('node', ['app/index.js'], {
  stdio: ['pipe', 'inherit', 'inherit']  // 继承 stdout 和 stderr, stdin 用 pipe 来输入
});

// 自动输入 2 号选项
botProcess.stdin.write('3\n');

// 当子进程结束时执行的操作
botProcess.on('close', (code) => {
  console.log(`子进程退出，退出码: ${code}`);
});
