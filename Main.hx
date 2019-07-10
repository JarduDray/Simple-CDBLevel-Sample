package;

import cdb.Types.Index;
import cdb.Parser;
import cdb.Data;
import hxd.Res;
import hxd.App;
import h2d.CdbLevel;

class Main extends App {
	static var s:String;

	static var lvls:Array<Level>;

	override function init() {
		/**  
		 * Create Data Object from CDB file
		 * First input is String var created earlier
		 * Second input is for editing purposes; if you use a custom editor, this would be set to true (need clarification)
		 */
		var d:Data = cdb.Parser.parse(s, false);

		/**
		 * Create instance of level (Index) using Data from last step and the specific name of the level you're loading
		 */
		var i:Index<CdbLevel> = new Index(d, "arena");

		/**
		 * Level Loading Magic
		 */
		var l:Level = new Level(i, 0, s2d);
	}

	static function main() {
		// an array of levels loaded from CDB file
		lvls = new Array();

		// Very Important for loading Assets
		hxd.Res.initEmbed();

		// helper var for CdbLevel loading
		s = hxd.Res.test.entry.getText();

		// Not as important for time being but does give better access to CDB file
		TestDB.load(s);

		// Start your engines
		new Main();
	}
}
