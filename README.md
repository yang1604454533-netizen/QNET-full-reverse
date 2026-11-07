# QNET 完整逆向工程（apktool）

本目录是 `QNET绿色_小倪2.3.5旧版本容易出现登录界面.apk` 的完整反编译结果，
**smali 代码未做任何修改**，可直接回编译出与原版功能一致的 APK。

## 目录结构

| 路径 | 内容 |
| --- | --- |
| `AndroidManifest.xml` | 原版清单：包名 `com.tencent.qim`，版本 `小倪2.3.5` (versionCode 20) |
| `smali/` `smali_classes2..5/` | 7618 个 smali 文件，即原版全部 DEX 的逐指令反汇编 |
| `res/` | 644 个资源文件（布局、字符串、图片、raw/config） |
| `lib/` | `libnative-libicmp.so` 四个 ABI |
| `assets/` | `muhuanew5`（授权数据）、腾讯 open SDK 配置等 |
| `original/` | 原 APK 的 `META-INF` 签名文件（仅供参考，不会被打包） |
| `java/` | jadx 反编译的 Java 源码（便于阅读，不参与回编译） |

## 回编译

需要 **apktool 3.0.3** 和 **build-tools 34**（aapt2）。

```bash
java -jar apktool.jar b QNET-full-reverse -o QNET-original-rebuild-unsigned.apk
zipalign -f 4 QNET-original-rebuild-unsigned.apk aligned.apk
apksigner sign --ks qnet.keystore --out QNET-original-rebuild.apk aligned.apk
```

已构建好的签名包：`C:\Users\1\Desktop\QNET-original-rebuild.apk`
（包名、版本、组件、dex、so、assets 与原版一致，仅签名不同）。

## 注意：PNG 资源

原版有 11 个扩展名为 `.png`、实际内容是 JPEG 的文件（图标和 `image_qnet.png`），
aapt2 会以 `failed to read PNG signature` 拒绝编译。本目录中这些文件已用
ImageIO 重新编码为真正的 PNG（像素内容不变），因此可以正常回编译。

如果重新从原 APK 解包，需要再次处理，否则 `apktool b` 会失败。

## 与原版的差异

1. **签名**：原版是第三方自签名证书，无法复用；本包使用新生成的调试证书。
   因此不能覆盖安装原版，需先卸载原版（会丢失原版数据）。
2. **PNG 编码**：上述 11 个文件由 JPEG 转为 PNG，视觉一致。
3. 其余 smali、资源、Manifest、so、assets 均未改动。

## 说明

原 APK 是第三方修改版（内含“木华云”登录绕过/授权逻辑）。本工程仅用于
本地逆向研究和学习，请勿分发或用于商业用途。
