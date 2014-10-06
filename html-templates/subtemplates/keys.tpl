{template apiKey Key useHostname=no}
    {if ctype_digit($Key)}
        {$Key = Key::getByID($Key)}
    {elseif is_string($Key)}
        {$Key = Key::getByHandle($Key)}
    {/if}

    <a href="{tif $useHostname ? cat('http://', Site::getConfig(primary_hostname))}/keys/{$Key->Key}">{$Key->OwnerName|escape}</a> <small class="muted key-string">{$Key->Key}</small>
{/template}