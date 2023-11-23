<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true displayRequiredFields=false>
<!DOCTYPE html>
<html class="${properties.kcHtmlClass!}">
<head>
	<meta charset="utf-8">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="robots" content="noindex, nofollow">

    <#if properties.meta?has_content>
        <#list properties.meta?split(' ') as meta>
            <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
        </#list>
    </#if>
	<title>ATDFiWare + LifeWatch</title>
    <link rel="icon" type="image/png" href="${url.resourcesPath}/img/favicon.png"/>
    <link type=text/css rel="stylesheet" href="${url.resourcesPath}/css/materialize.min.css" media="screen,projection"/>
    <link rel="stylesheet" href="${url.resourcesPath}/css/styles.css"/>
	<script type="text/javascript" src="${url.resourcesPath}/js/materialize.min.js"></script>
</head>

<body>
<div id="outer-wrapper">
    <div id="wrapper">

        <div class="row">
            <div class="col s10 m6 l4 offset-s1 offset-m3 offset-l4">
                <div class="row">
                    <div class="row">
                        <div class="col s12 center">
                            <div id="header-wrapper">
                                <a id="logo" href="https://www.openremote.io/">
    <img src="${url.resourcesPath}/img/logo.png" height="80px" width"80px">
                                </a>
                            </div>
                        </div>
                    </div>

                    <#if realm.internationalizationEnabled  && locale.supported?size gt 1>
                        <div class="col m12" id="kc-locale">
                            <div id="kc-locale-dropdown">
                                <a href="#" id="kc-current-locale-link">${locale.current}</a>
                                <ul>
                                    <#list locale.supported as l>
                                        <li><a href="${l.url}">${l.label}</a></li>
                                    </#list>
                                </ul>
                            </div>
                        </div>
                    </#if>

                    <#if displayMessage && message?has_content && (message.type != 'warning' || !isAppInitiatedAction??)>
                        <div class="section">
                            <div class="card-panel">
                                <#if message.type=='success' ><i class="material-icons green-text">check_circle</i><span
                                        class="green-text">${kcSanitize(message.summary)?no_esc}</span></#if>
                                <#if message.type=='warning' ><i class="material-icons orange-text">warning</i><span
                                        class="orange-text">${kcSanitize(message.summary)?no_esc}</span></#if>
                                <#if message.type=='error' ><i class="material-icons red-text">error</i><span
                                        class="red-text">${kcSanitize(message.summary)?no_esc}</span></#if>
                                <#if message.type=='info' ><i class="material-icons blue-text">info</i><span
                                        class="blue-text">${kcSanitize(message.summary)?no_esc}</span></#if>
                            </div>
                        </div>
                    </#if>

                    <div class="col s12">
                        <#nested "form">
                    </div>
                </div>
                <div class="row">
                    <div class="col s12">
                        <#if displayInfo>
                            <#nested "info">
                        </#if>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</body>
</html>
</#macro>
