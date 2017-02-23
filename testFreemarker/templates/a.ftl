你好，$(user),今天你的精神不错！
-------------------------------------------------
测试if语句：
<#if user!="老高" >
     高！
</#if>
-----------------------------------------------
<#if random gt 60>
及格
<#else>
不及格！
</#if>
-------------------------------------------------
<#if random gte 90>
优秀！
<#elseif random gte 80>
良好！
<#else>
一般！
</#if>
-------------------------------------------------
测试list语句
<#list lst as dizhi >
	<b>${dizhi.country}</b> <br/>
</#list>
-------------------------------------------------
测试包含指令
<#include "included.txt" />
-------------------------------------------------
测试宏指令
定义宏
<#macro m1><#--定义指令m1-->
   <b>aaabbbccc</b>
	<b>dddeeefff</b>
</#macro>
定义带参的宏
<#macro m2 a b c>
${a}==${b}==${c}
</#macro>
<#macro border> 
  <table border=4 cellspacing=0 cellpadding=4><tr><td> 
    <#nested> 
  </td></tr></table> 
</#macro>

调用宏
<@m1 /><@m1 />  <#--调用上面的宏指令 -->
<@m2 "hi" "nihao" "hello"/>
<@border >表格中的内容！</@border>
-------------------------------------------------
测试命名空间：
<#import "b.ftl" as bb  />
<@bb.copyright date="2010-2011" />
${bb.mail}
<#assign mail="my@163.com"  />
${mail}
<#assign mail="my@163.com" in bb  />
${bb.mail}
-------------------------------------------------
测试数值类型
${date1?string("yyyy-MM-dd HH:mm:ss")}
-------------------------------------------------
内建函数：
${htm2?html}
