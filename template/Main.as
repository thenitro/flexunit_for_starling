package {
    import flash.display.Sprite;
    import flash.display.Stage;

    import org.flexunit.internals.TraceListener;
    import org.flexunit.runner.FlexUnitCore;

    public class Main extends Sprite {
        public static var currentStage:Stage;

        private var _testCore:FlexUnitCore;

        public function Main() {
            currentStage = stage;

            _testCore = new FlexUnitCore();
            _testCore.addListener(new TraceListener());
            _testCore.run(MatrixMxNTest);
        };
    }
}
