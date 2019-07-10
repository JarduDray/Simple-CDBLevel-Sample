package;

import hxd.Res;
import hxd.App;

class Main extends App {
	override function init() {}

	static function main() {
		hxd.Res.initEmbed();
		TestDB.load(hxd.Res.test.entry.getText());
		new Main();
	}
}
