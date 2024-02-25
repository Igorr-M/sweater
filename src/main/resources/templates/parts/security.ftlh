<#if userAut??>
    <#assign
    name = userAut.getUsername()
    isAdmin = userAut.isAdmin()
    >
<#else>
    <#assign
    name = "unknown"
    isAdmin = false
    >
</#if>