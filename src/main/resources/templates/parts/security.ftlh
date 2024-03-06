<!-- Фрагмент для получения данных сессии -->

<#if userAut??>
    <!-- Сессия существует (вход осуществлен) - получение профиля пользователя -->
    <#assign
    name = userAut.getUsername()
    isAdmin = userAut.isAdmin()
    >
<#else>
    <!-- Сессия не существует -->
    <#assign
    name = "unknown"
    isAdmin = false
    >
</#if>