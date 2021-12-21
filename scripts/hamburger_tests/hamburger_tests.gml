/**
 * Example tests to be discovered by TestRunner
 */

function test_hamburger_top_bun() {
	return {
		test: function() {
			assert_equal(parent.hamburger.ingredients[0].name, "bun", "Expecting 'bun' as hamburger's top ingredient");
		},
	}
}

function test_hamburger_bottom_bun() {
	return {
		test: function() {
			assert_equal(parent.hamburger.ingredients[parent.hamburger.ingredient_number() - 1].name, "bun", "Expecting 'bun' as hamburger's bottom ingredient");
		},
	}
}

function test_hamburger_number_of_ingredients() {
	return {
		test: function() {
			var _n = parent.hamburger.ingredient_number();
			assert_equal(_n, 6, "hamburger is expected to have only 6 ingredients, not " + string(_n));
		},
	}
}

function test_hamburger_is_not_gluten_free() {
	return {
		test: function() {
			var _n = parent.hamburger.ingredient_number();
			assert_false(parent.hamburger.is_gluten_free(), "hamburger contains non gluten-free ingredients");
		},
	}
}

function test_hamburger_has_pickles() {
	return {
		test: function() {
			assert_true(parent.hamburger.has_ingredient("pickles"), "You forgot the pickles!");
		},
	}
}
