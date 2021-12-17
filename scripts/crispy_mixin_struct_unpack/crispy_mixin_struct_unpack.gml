/**
 * Mixin function that extends structs to have the crispy_struct_unpack() function
 * @function crispy_mixin_struct_unpack
 * @param {struct} struct - Struct to give crispy_struct_unpack method to
 */
function crispy_mixin_struct_unpack() {

	var _struct = (argument_count > 0) ? argument[0] : undefined;

	if !is_struct(_struct) {
		crispy_throw_expected(self, crispy_mixin_struct_unpack, "struct", typeof(_struct));
	}

	_struct.crispy_struct_unpack = method(_struct, crispy_struct_unpack);

}