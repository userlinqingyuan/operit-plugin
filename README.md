# operit-daily-reporter

Operit ToolPkg：每日汇报员。

## 开发

```powershell
npm install
npm run build
```

`manifest.json` 的 `main` 指向构建产物 `main.js`。入口必须导出
`registerToolPkg()`，用于注册 ToolPkg 的 UI、生命周期 Hook 或消息插件。

## 打包

在 Windows 项目根目录执行：

```bash
npm run pack
```

脚本只会把运行所需的 `manifest.json`、`main.js` 和 `main.ts` 放入
`dist/operit-daily-reporter.toolpkg`。生成的 `.toolpkg` 是标准 ZIP 包，可在
Operit 中导入测试。
