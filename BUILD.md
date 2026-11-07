# QNET 逆向工程 — 构建与修改说明

## 这是什么

`QNET-full-reverse` 是桌面 APK `QNET绿色_小倪2.3.5旧版本容易出现登录界面.apk` 的
**完整 apktool 反编译工程**，也是 `QNET-presets.apk` 的来源：

| 路径 | 内容 |
| --- | --- |
| `AndroidManifest.xml` | 包名 `com.tencent.qim`，versionCode 20，versionName 2.3.5 |
| `smali/` + `smali_classes2..5/` | 7618 个 smali 文件（原版全部 DEX 的逐指令反汇编） |
| `res/` | 布局、字符串、图片、`xml/net_template.xml` 等资源 |
| `lib/` | `libnative-libicmp.so` 四个 ABI |
| `assets/` | `muhuanew5` 等原生资源 |
| `java/` | jadx 反编译的 Java 源码，**仅供阅读，不参与编译** |
| `keystore/qnet.keystore` | 签名证书，store/key 密码都是 `android` |
| `build.bat` | 回编译脚本 |

## 构建

需要 JDK 21、apktool 3.0.3、Android SDK build-tools（`zipalign`、`apksigner`）。

1. 双击 `build.bat`，等价于：
   ```
   java -jar apktool.jar b . -o qnet_unsigned.apk
   ```
2. 对齐并签名：
   ```
   zipalign -f 4 qnet_unsigned.apk qnet_aligned.apk
   apksigner sign --ks keystore\qnet.keystore --ks-pass pass:android --key-pass pass:android --out QNET-presets.apk qnet_aligned.apk
   ```

签名证书与手机上的旧版不同，**安装前必须先卸载旧版**，否则会报“应用未安装”。

## 相对原版的修改

| 位置 | 修改 |
| --- | --- |
| `res/xml/net_template.xml` | 新增 4 个内置预设：测试网络 / 4G / 3G / 极差，上下行独立参数 |
| `MainActivity.smali` | `refreshNetProfilesList()` 调用 `LoadLocalProposal()`，让预设真正加载 |
| `MainActivity.smali` | `checkVersion()` 开头直接 `return-void`，去掉“点空白处同意”的版本更新弹窗 |
| `LoginActivity.smali` | 删除 `np/ށ->show()` 的登录页 Toast |
| `res/mipmap-*/ic_launcher*.png` | 换成红色 QNET 图标（48 / 72 / 96 / 144 / 192） |
| `res/xml/pref_main.xml` | 设置里删除“版本”“更新日志”“意见反馈” |
| `res/menu/menu_main.xml` | “清除参数”和“保存／退出”保留但设 `android:visible="false"` |
| `res/values-zh-rCN/strings.xml` | `action_title`：`小倪QNET测试` → `QNET测试` |
| `smali/np/ށ.smali` | Toast 字符串去掉“小倪” |
| `apktool.yml` | `versionName` 改为 `2.3.5` |

## 没有原始 Java 源码

原版只发布了编译后的 DEX，核心登录/授权逻辑还在“木华云”壳（`.so` + 加密资源）里，
无法还原成可直接编译的 Java/Kotlin 工程。`java/` 里的 jadx 结果可用于阅读和对照，
但不能直接 `gradle build`。

## 用途限制

原 APK 是三方便携修改版，内含登录绕过/授权注入。本工程仅用于本地逆向研究和学习，
请勿分发或用于商业用途。
