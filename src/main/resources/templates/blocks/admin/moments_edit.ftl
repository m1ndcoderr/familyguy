<#import "../common/admin_navigation.ftl" as a>
<#import "../common/admin_head.ftl" as h>
<#import "../../blocks/common/footer.ftl" as f>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Гриффины | Редактировать нарезку</title>
    <@h.adm_head/>
</head>
<body>
<@a.adm_nav/>
<div class="uk-container uk-container-expand">
    <#-- Секция -->
    <div class="uk-section uk-padding uk-width-2-3 uk-align-center">
        <div class="uk-container">

            <form action="/admin/moments/edit" method="post">

                <fieldset class="uk-fieldset">
                    <legend class="uk-legend">Редактировать нарезку</legend>

                    <div class="uk-margin">
                        <input class="uk-input uk-form-small" type="text" placeholder="Id..." name="id">
                    </div>

                    <div class="uk-margin">
                        <input class="uk-input uk-form-small" type="text" placeholder="Название..." name="title">
                    </div>

                    <div class="uk-margin">
                        <input class="uk-input uk-form-small" type="text" placeholder="Ссылка на iframe..." name="link">
                    </div>

                    <div class="uk-text-meta uk-text-center" style="margin-top: 20px">
                        <button class="uk-button uk-button-default btn-standard-without-increasing-size" type="submit">Ок</button>
                    </div>
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                </fieldset>
            </form>
        </div>
    </div>
    <#-- /Секция -->
    <#if message??>
        <div class="uk-alert-primary" uk-alert>
            <a class="uk-alert-close" uk-close></a>
            <h3>Результат:</h3>
            <p>${message}</p>
        </div>
    </#if>
    <div class="uk-text-meta uk-text-center" style="margin-top: 20px">
        <p><a class="uk-link-text" href="/"> <b>Вернуться на главную</b></a></p>
    </div>
    <@f.footer/>
</div>
</body>
</html>