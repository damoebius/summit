package net;

import haxe.MimeType;
import haxe.HTTPMethod;
import org.tamina.net.BaseRequest;

class GetAlbumsRequest extends BaseRequest {

    public function new() {
        super("http://api.heidi.tech/Api.svc/GetAlbums", HTTPMethod.POST, MimeType.JSON);
    }

    override private function getRequestContent():Dynamic {
        var data:Dynamic = {Locale:"fr_FR", Token:"F7CF4DD5-ECBF-4CD6-9E7D-29C513C17401"};
        return data;
    }
}
