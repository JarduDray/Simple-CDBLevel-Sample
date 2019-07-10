package;

import h2d.Object;
import cdb.Types.Index;
import h2d.CdbLevel;

class Level extends CdbLevel {
	/**
	 * Level constructor overriding CDBLevel constructor
	 * @param i - Instance of a single level from the CDB file
	 * @param idx - Index of that level in the file
	 * @param p - Optional parent Object can be added here. If you use Layers and want the whole level to be a part of that Layer,
	 *            this is where you would connect it
	 */
	public override function new(i:Index<CdbLevel>, idx:Int, ?p:Object) {
		super(i, idx, p);
	}

	/* Insert specific level code here. I'd highly recommend the following one at least
        public function update(delta:Float32) {
            // This method allows you to update input, ai, etc for the level
        }
    */
}
