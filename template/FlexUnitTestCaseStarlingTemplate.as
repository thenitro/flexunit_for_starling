package {
    import flash.events.Event;
    
    import org.flexunit.async.Async;

    import starling.core.Starling;

    public class FlexUnitTestCaseStarlingTemplate {
        private static var _starling:Starling;

        public function FlexUnitTestCaseStarlingTemplate() {

        };

        [BeforeClass(async, ui)]
        public static function beforeClass():void {
            Async.proceedOnEvent(ProgressManagerTest, Main.currentStage, Event.COMPLETE, 1000);

            _starling = new Starling(FlexUnitStarlingIntegration, Main.currentStage);
            _starling.start();
        };

        [AfterClass]
        public static function afterClass():void {
            _starling.stop();
            _starling.dispose();
            _starling = null;
        };

        [Test]
        public function newFancyTest():void {

        };
    }

}
