https://developer.arm.com/documentation/ka003663/1-0/?lang=en

keil v5.28及以下版本不支持winUSB

解决方案：
方案一：升级keil版本到V5.29及以上
方案二：点击上述链接，下载4170.zip文件，将里面的CMSIS_DAP.dll替换安装目录ARM\BIN\的同名驱动文件，默认路径在C:\Program Files\keil v5\ARM\BIN