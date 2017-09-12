package net;

import model.Album;
import haxe.Json;
import js.html.XMLHttpRequest;
import js.html.ProgressEvent;
import msignal.Signal.Signal1;

class IOProxy {

    public var getAlbumsComplete(default,null):Signal1<Array<Album>>;

    public function new() {
        getAlbumsComplete = new Signal1<Array<Album>>();
    }

    public function getAlbums():Void{
        var request = new GetAlbumsRequest();
        request.completeSignal.addOnce(getAlbums_completeHandler);
        request.send();
    }

    private function getAlbums_completeHandler(event:ProgressEvent):Void{
        var req:XMLHttpRequest = cast event.target;
        var albums:Array<Album> = Json.parse(req.responseText).Result;
        getAlbumsComplete.dispatch(albums);
    }
}
