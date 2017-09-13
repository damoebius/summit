package items;

import model.Picture;
import js.html.ImageElement;
import org.tamina.html.component.HTMLComponent;

@view("items/PhotoItem.html")
class PhotoItem extends HTMLComponent{

    @skinpart("") var _photoImage:ImageElement;

    private function new(){
        super();
    }

    public function init(picture:Picture){
        _photoImage.src = picture.Url;
    }

}