/**
 * Converts the given time milliseconds to seconds as a string
 * @function crispy_time_convert
 * @param {real} time - Time in milliseconds
 * @returns {string} time in seconds with CRISPY_TIME_PRECISION number
 * 		of decimal points as a string
 */
function crispy_time_convert(_time) {
	if !is_real(_time) {
		crispy_throw_expected(self, "crispy_time_convert", "real number", typeof(_time));
	}
	return string_format(_time / 1000000, 0, CRISPY_TIME_PRECISION);
}
