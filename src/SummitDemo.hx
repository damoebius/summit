package ;

import org.tamina.i18n.LocalizationManager;
import org.tamina.i18n.ITranslation;
import js.Browser;
import components.GalleryView;
import model.Album;
import net.IOProxy;
import org.tamina.html.component.HTMLApplication;

@:expose @:keep class SummitDemo extends HTMLApplication {

    private static var _instance:SummitDemo;

    private var _ioProxy:IOProxy;
    private var _gallery:GalleryView;

    public function new(){
        super();
    }

    public function init(translations:Array<ITranslation>):Void{
        trace('coucou 5');
        LocalizationManager.instance.setTranslations(translations);
        loadComponents();
        _ioProxy = new IOProxy();
        _ioProxy.getAlbumsComplete.add(getAlbums_completeHandler);
        _ioProxy.getAlbums();

        _gallery = cast Browser.document.getElementById("myGallery");
    }

    public static function getInstance():SummitDemo{
        return _instance;
    }

    public static function main():Void{
        _instance = new SummitDemo();
    }

    private function getAlbums_completeHandler(albums:Array<Album>):Void{
        _gallery.displayAlbum(albums[0]);
    }

}
