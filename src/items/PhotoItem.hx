package items;

import model.Picture;
import js.html.DivElement;
import js.html.ImageElement;
import org.tamina.html.component.HTMLComponent;
import org.tamina.events.html.MouseEventType;

@view("items/PhotoItem.html")
class PhotoItem extends HTMLComponent{

    @skinpart("") var _photoImage:ImageElement;
    @skinpart("") var _container:DivElement;

    private function new(){
        super();
    }

    public function init(picture:Picture){
        _photoImage.src = picture.Url;

        _container.addEventListener(MouseEventType.CLICK, clickHandler);
    }

    private function clickHandler(){
    	if (_container.classList.contains('opened')) {
    		trace('opened');
    		_container.classList.remove('opened');
    	} else {
    		trace('not opened');
    		_container.classList.add('opened');
    	}
    }
}