# Frequently Asked Questions

## What is Unit Testing?

Unit testing is running tests on the smallest possible component of code, a unit. It's about breaking down your code and isolating a feature that touches as little side-effects as possible. Continue doing this until you've created a suite of tests that covers testing the entirety of the feature.

## Why implement Crispy into your project?

Unit tests help future proof your code. While developing a new feature, you might accidentally and unknowingly break another feature in your project. Crispy can run your tests each time your game is ran and catch these errors for you before making it into production code.

Even adding a small number of unit tests to your project can go a long way!

## Can Crispy be used for Test Driven Development?

It's possible to do Test Driven Development *(TDD)* with Crispy. GameMaker will normally throw errors and hault your program on errors.

As a work-around to having your project crash, you can create a [exception_unhandled_handler()](https://manual.yoyogames.com/GameMaker_Language/GML_Reference/Debugging/exception_unhandled_handler.htm) to catch any errors and display them in the Output Window. Errors will be caught, but your project will continue to function after any errors.

```gml
runner = new TestRunner("runner");
// Sets the exception handler to run
runner.setUp(function() {
    // Save the previous exception handler
    runner.__exception_unhandled_handler = exception_unhandled_handler();
    exception_unhandled_handler(function(e) {
        var _t = "Crispy: an error has occurred\n";
        _t += "----------------------n";
        _t += e.message + "\n";
        _t += "----------------------n";
        _t += e.longMessage + "\n";
        _t += "At " + e.script + " line " + string(e.line) + "\n\n";
        var _len = array_length(e.stacktrace);
        for(var i = 0; i < _len; ++i) {
            _t += "    " + e.stacktrace[i];
            if i < _len - 1 {
                _t += "\n";
            }
        }
        show_debug_message(_t);
        return 0;
    });
});
// Resets the exception handler after tests are run
runner.tearDown(function() {
    exception_unhandled_handler(__exception_unhandled_handler);
});
```