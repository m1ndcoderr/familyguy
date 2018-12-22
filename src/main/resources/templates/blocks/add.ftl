<#macro add_video>
    <div class="uk-section uk-section-muted uk-padding">
    <div class="uk-container">
    <h3 class="uk-text-center"
        style="font-family: 'Roboto Condensed', sans-serif;">Добавить видео</h3>
    <form class="uk-form-horizontal uk-margin-small" action="/upload" method="post">
    <div class="uk-margin-small">
        <label class="uk-form-label" for="form-horizontal-text"
               style="font-family: 'Roboto Condensed', sans-serif;"><b>Номер серии:</b></label>
        <div class="uk-form-controls">
            <input class="uk-input" id="form-horizontal-text" type="text"
                   name="episode">
        </div>
    </div>
    <div class="uk-margin-small">
        <label class="uk-form-label" for="form-horizontal-text"
               style="font-family: 'Roboto Condensed', sans-serif;"><b>Номер сезона:</b></label>
        <div class="uk-form-controls">
            <input class="uk-input" id="form-horizontal-text" type="text" name="season">
        </div>
    </div>
    <div class="uk-margin-small">
        <label class="uk-form-label" for="form-horizontal-text"
               style="font-family: 'Roboto Condensed', sans-serif;"><b>Ссылка на iframe:</b></label>
        <div class="uk-form-controls">
            <input class="uk-input" id="form-horizontal-text" type="text" name="link">
        </div>
    </div>
    <div class="uk-text-meta uk-text-center" style="margin-top: 20px">
        <button class="uk-button uk-button-default">Ок</button>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    </form>
    </div>
    </div>
</#macro>