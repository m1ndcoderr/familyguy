<#macro common>
<!DOCTYPE html>
    <html lang="en">
    <head>
        <title>Family Guy</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-rc.25/css/uikit.min.css"/>
        <link rel="stylesheet" href="/static/css/fg-font.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-rc.25/js/uikit.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-rc.25/js/uikit-icons.min.js"></script>
    </head>
    <body>
    <div class="uk-container">
    <div class="uk-position-relative">
        <img src="/static/images/intro-family.png" alt="">
        <div class="uk-position-top">
            <nav class="uk-navbar uk-navbar-container uk-margin uk-navbar-transparent">
                <div class="uk-navbar-left">
                    <a class="uk-navbar-toggle" uk-toggle="target: #offcanvas-overlay">
                        <span uk-navbar-toggle-icon></span>
                    </a>
                    <div id="offcanvas-overlay" uk-offcanvas="overlay: true">
                        <div class="uk-offcanvas-bar">

                            <button class="uk-offcanvas-close" type="button" uk-close></button>
                            <h3>Family Guy</h3>
                            <ul class="uk-list uk-link-text">
                                <li><a href="/">На главную</a></li>
                                <li><a href="/">Сезоны</a></li>
                                <li><a href="/">Персонажи</a></li>
                                <li><a href="/">Обратная связь</a></li>
                            </ul>
                            <hr>
                            <p>«Гриффины» (англ. Family Guy, дословно «Семьянин») -
                                это мультсериал о типичной неблагополучной американской семье,
                                главная особенность которого - жесткая сатира, не признающая рамок,
                                тонкость и неординарность юмора. Шутки на различные щепетильные и
                                спорные темы (такие как наркомания, феминизм, ожирение и другие),
                                приправленные обилием сексуальных сцен,
                                крови и мата никого не оставят равнодушным. </p>
                        </div>
                    </div>
                </div>
            </nav>

        </div>
    </div>
    <!-- Heading -->
    <h1 class="uk-heading-line uk-text-center"><span style="font-family: 'Family Guy',serif">Family Guy</span></h1>
    <#nested>
    <!-- Footer -->
    <hr>
    <div class="uk-text-meta uk-text-center" style="font-size: 10px; margin-top: 20px">
        created by <a class="uk-link-reset" href="/admin">alittlem1nd</a>
    </div>
    </div>
    </body>
    </html>
</#macro>