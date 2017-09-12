package ;

import org.tamina.html.component.HTMLApplication;

class SummitDemo extends HTMLApplication {

    private static var _instance:SummitDemo;

    public function new(){
        super();
        trace('coucou 1');
        loadComponents();
    }

    public static function main():Void{
        _instance = new SummitDemo();
    }

}
