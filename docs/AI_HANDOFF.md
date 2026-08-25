# AI 交接记录

## 2026-08-25：App Store 公开网站初版

- 目标：为 Fruit Slice Party 提供产品首页、隐私政策和支持页面，承接 App Store Connect 的 Marketing、Privacy Policy 与 Support URL。
- 关键决策：使用零依赖静态 HTML/CSS；所有链接兼容 GitHub Pages 项目路径；公开联系邮箱固定为 `dylan120liu@gmail.com`，网站版权为 `© 2026 Dylan Liu`。
- 产品事实：iPhone、iOS 17 或更高版本、四种本机切水果模式、无需账号；相机画面只用于设备端动作识别，不录制、不上传；无广告、分析或跟踪 SDK。
- 修改范围：`/`、`/privacy/`、`/support/`、共享样式和确定性验证脚本。
- 验证命令：`bash scripts/validate.sh`；发布后还需匿名 HTTPS、移动/桌面布局、键盘焦点和链接人工验收。
- 兼容性：纯静态页面，不依赖 JavaScript；支持 Reduce Motion，并使用相对路径适配项目站点。
- 未覆盖风险：GitHub 仓库、PR、Pages 部署与公开 URL 尚未建立；公开发布前需完成源码/历史敏感信息扫描和素材许可核对。
- 下一步：通过独立 GitHub Flow 仓库发布到 `https://dylan120.github.io/fruit-slice-party-site/`，再将三个 URL 写入 App Store Connect。
