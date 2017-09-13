package components;

import items.PhotoItem;
import org.tamina.html.component.HTMLApplication;
import js.html.DivElement;
import model.Album;
import org.tamina.html.component.HTMLComponent;

@view("components/GalleryView.html")
class GalleryView extends HTMLComponent {

    @skinpart("") private var _titleDiv:DivElement;
    @skinpart("") private var _contentDiv:DivElement;

    private function new() {
        super();
    }

    public function displayAlbum(album:Album):Void{
        _titleDiv.innerHTML = album.Name;
        _contentDiv.innerHTML = "";
        for(picture in album.Content){
            var item:PhotoItem = HTMLApplication.createInstance(PhotoItem);
            item.init(picture);
            _contentDiv.appendChild(item);
        }
    }
}