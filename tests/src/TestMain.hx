//
// Flambe - Rapid game development
// https://github.com/aduros/flambe/blob/master/LICENSE.txt

import haxe.Firebug;
import haxe.unit.TestRunner;

class TestMain
{
    public static function main ()
    {
        // Redirect prints/traces to console.log
        TestRunner.print = cast Firebug.trace;

        var runner = new TestRunner();

        // Register all our test cases
        runner.add(new ConfigTest());
        runner.add(new EntityTest());
        runner.add(new ReactiveTest());
        runner.add(new StringTest());

        // Run them and and exit with the right return code
        var success = runner.run();
        (untyped process).exit(success ? 0 : 1);
    }
}
