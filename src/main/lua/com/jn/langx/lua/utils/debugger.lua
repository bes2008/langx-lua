---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by fangjinuo.
--- DateTime: 2021/2/25 10:05
---

package.cpath = package.cpath .. ';C:/Users/fangjinuo/AppData/Roaming/JetBrains/IntelliJIdea2020.2/plugins/intellij-emmylua/classes/debugger/emmy/windows/x64/?.dll'
local dbg = require('emmy_core')
dbg.tcpListen('localhost', 9966)
dbg.waitIDE()
dbg.breakHere()

