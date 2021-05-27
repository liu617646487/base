name=${name!"织梦行云"}<br>
url=${email}<br>

opreatoe=${operaterLog.operator}<br>
opreatoe=${operaterLog.content}<br>
opreatoe=${operaterLog.createTime?string("yyyy-MM-dd HH:mm:ss")}<br>

html=${html?html}<br>

<#assign num=10 /><br>
<#assign aaa="你好" /><br>
页面自定义变量输出：num=${num},aaa=${aaa}<br>

遍历list数组<br>
<#list operaterLogList as operaterLog>
    name=${operaterLog.operator}<br>
    email=${operaterLog.content}<br>
    date=${operaterLog.createTime?string("yyyy-MM-dd HH:mm:ss")}<br>
</#list>


遍历map集合<br>
<#list treeMap?keys as key>
    ${key}===>${treeMap[key]}<br>
</#list>
