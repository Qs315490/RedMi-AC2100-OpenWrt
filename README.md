

# 红米AC2100 OpenWrt固件
## 内置软件(需要其他插件请自行添加)
ipv6支持  
luci-theme-argon # argon主题  
luci-app-wolplus # 网络唤醒  
luci-app-ddns # ddns  
luci-app-dnsfilter # 基于dnsmasq的去广告  
luci-app-advanced # 高级设置  
luci-app-opkg # 包管理器  
luci-app-bypass # 某代理  
luci-app-upnp # upnp  
luci-app-vlmcsd # kms的luci控制面板  
luci-app-unblockmusic # 网易云音乐去灰色歌曲插件  
luci-app-arpbind # ip/mac绑定(arp绑定)  
luci-app-turboacc # 网络加速(基本上没必要)

## 已知问题
turboacc中Full ConeNat无法启动 安装其他软件包或手动添加防火墙规则即可

# 红米AC2100 LEDE固件
## 已知问题

暂无

# Actions-OpenWrt

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/Qs315490/RedMi-AC2100-OpenWrt/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/Qs315490/RedMi-AC2100-OpenWrt.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/Qs315490/RedMi-AC2100-OpenWrt.svg?style=flat-square&label=Forks&logo=github)

Build OpenWrt using GitHub Actions

[Read the details in my blog (in Chinese) | 中文教程](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

## 如何使用

- 点击 [Use this template](https://github.com/Qs315490/RedMi-AC2100-OpenWrt/generate) 按钮使用这个模板创建 repository.
- 使用 [Lean's OpenWrt](https://github.com/coolsnowwolf/lede) 源码生成 `.config` 文件.
- 上传 `.config` 文件到 GitHub repository.
- 在 Actions 页选择需要编译的版本.
- 点击 `Run workflow` 按钮开始编译.
- 如果编译完成, 在 `Artifacts` 标签下可以下载OpenWrt的二进制固件.

## 提示

- It may take a long time to create a `.config` file and build the OpenWrt firmware. Thus, before create repository to build your own firmware, you may check out if others have already built it which meet your needs by simply [search `Actions-Openwrt` in GitHub](https://github.com/search?q=Actions-openwrt).
- Add some meta info of your built firmware (such as firmware architecture and installed packages) to your repository introduction, this will save others' time.

## Acknowledgments

- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub Actions](https://github.com/features/actions)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
- [tmate](https://github.com/tmate-io/tmate)
- [mxschmitt/action-tmate](https://github.com/mxschmitt/action-tmate)
- [csexton/debugger-action](https://github.com/csexton/debugger-action)
- [Cowtransfer](https://cowtransfer.com)
- [WeTransfer](https://wetransfer.com/)
- [Mikubill/transfer](https://github.com/Mikubill/transfer)
- [softprops/action-gh-release](https://github.com/softprops/action-gh-release)
- [ActionsRML/delete-workflow-runs](https://github.com/ActionsRML/delete-workflow-runs)
- [dev-drprasad/delete-older-releases](https://github.com/dev-drprasad/delete-older-releases)
- [peter-evans/repository-dispatch](https://github.com/peter-evans/repository-dispatch)

## License

[MIT](https://github.com/Qs315490/RedMi-AC2100-OpenWrt/blob/main/LICENSE) © [**P3TERX**](https://p3terx.com)
