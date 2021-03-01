---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by fangjinuo.
--- DateTime: 2021/3/1 11:46
---

require("debugger")
package.path = package.path .. ";D:/projects/workspace_langx_lua/langx_lua/src/main/lua/?.lua"

local a = "abc123,23a12,dadf"
local pattern = "%d+"
local generator = string.gmatch(a, pattern)
local Pipeline = require("collection.Pipeline")

Pipeline:new(generator):map(function(index, value)
    return index, tonumber(value)
end)    :filter(function(index, value)
    return value > 10
end)    :forEach(function(index, value)
    print(index, value)
end)

local b, x = string.gsub(a, "%d+", function(item)
    print(item)
    return "XXX"
end
)

print(b, x)

print("========================================================")

local testObj = {}

function testObj.varargsTests(...)
    print("=============test 1===============")
    local length = select("#", ...)
    print(length)
    print(...)
end

function testObj.varargsTests2(arg0, ...)
    print("=============test 2===============")
    local length = select("#", ...)
    print(length)
    print(...)
end

function testObj.varargsTests3(arg0, ...)
    print("=============test 3===============")

    local showAll = function(index, matched, ...)
        print(...)
    end
    local length = select("#", ...)
    print(length)
    showAll(0, "{}", ...)
end

testObj.varargsTests("1", 39, "hello, world")
testObj.varargsTests2("1", 39, "hello, world")
testObj.varargsTests3("1", 39, "hello, world")

print("========================================================")

local StringTemplates = require("text.StringTemplates")

a = "hello, {}, welcome use {}"
local formatted = string.gsub(a, "\\{}", function(item)
    print(item)
end)
print(formatted)

formatted = StringTemplates.formatWithPlaceholder(a, "user", "LUA")
print(formatted)

a = "hello, {1}, welcome use {2}"
formatted = StringTemplates.formatWithIndex(a, "user", "LUA")
print(formatted)