[#assign title = content.title!"Dummy page"]
<!DOCTYPE html>
<html>
<head>
    <title>${title}</title>

    <link rel="stylesheet" href="${ctx.contextPath}/.resources/forge-community-sample/webresources/css/style.css">

[@cms.page /]
</head>
<body>
<div class="container">
    <header>
        <h1>${title}</h1>
    </header>

    <div class="main">
    [@cms.area name="main"/]
    </div>

</div>
</body>
</html>
