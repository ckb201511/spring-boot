<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
    <link rel="stylesheet" href="/assets/stylesheets/main.css?compile=false">
    <link rel="stylesheet" href="/assets/stylesheets/mobile.css?compile=false">
    <link rel="stylesheet" href="/assets/stylesheets/application.css?compile=false">
</head>
<body>
 %{--   <content tag="nav">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Application Status <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Environment: ${grails.util.Environment.current.name}</a></li>
                <li><a href="#">App profile: ${grailsApplication.config.grails?.profile}</a></li>
                <li><a href="#">App version:
                    <g:meta name="info.app.version"/></a>
                </li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Grails version:
                    <g:meta name="info.app.grailsVersion"/></a>
                </li>
                <li><a href="#">Groovy version: ${GroovySystem.getVersion()}</a></li>
                <li><a href="#">JVM version: ${System.getProperty('java.version')}</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Artefacts <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Controllers: ${grailsApplication.controllerClasses.size()}</a></li>
                <li><a href="#">Domains: ${grailsApplication.domainClasses.size()}</a></li>
                <li><a href="#">Services: ${grailsApplication.serviceClasses.size()}</a></li>
                <li><a href="#">Tag Libraries: ${grailsApplication.tagLibClasses.size()}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Installed Plugins <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                    <li><a href="#">${plugin.name} - ${plugin.version}</a></li>
                </g:each>
            </ul>
        </li>
    </content>

    <div class="svg" role="presentation">
        <div class="grails-logo-container">
            <asset:image src="grails-cupsonly-logo-white.svg" class="grails-logo"/>
        </div>
    </div>

    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>Welcome to Grails</h1>

            <p>
                Congratulations, you have successfully started your first Grails application! At the moment
                this is the default page, feel free to modify it to either redirect to a controller or display
                whatever content you may choose. Below is a list of controllers that are currently deployed in
                this application, click on each to execute its default action:
            </p>

            <div id="controllers" role="navigation">
                <h2>Available Controllers:</h2>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller">
                            <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                        </li>
                    </g:each>
                </ul>
            </div>
        </section>
    </div>--}%

bookList ++${bookList}


    <g:if test="${bookList && !bookList.isEmpty()}">
        <g:each in="${bookList}" var="book">
            <dl>
                <dt class="bookHeadline">
                    ${book.title} by ${book.author}
                    (ISBN: ${book.isbn})
                </dt>
                <dd class="bookDescription">
                    <g:if test="${book.description}">
                        ${book.description}
                    </g:if>
                    <g:else>
                        No Description available
                    </g:else>

                </dd>
            </dl>
        </g:each>
    </g:if>
    <g:else>
        <p>You have no books in your booklist</p>
    </g:else>
<h3>add book</h3>
<g:form action="save" controller="readingList" method="post">
    <fieldset class="form">
        <label for="title"> Title:</label>
        <g:field type="text" id="title" name="title" size="50" value="${book?.title}"/><br>
        <label for="description"> Description:</label>
        <g:textArea id="description" name="description" cols="80" rows="5" value="${book?.description}"/><br>

    </fieldset>
    <fieldset class = "buttons">
        <g:submitButton type="submit" name="create" value="${message(code: 'default.button.create.label', default: 'Create')}"/>
    </fieldset>

</g:form>
</body>
</html>
