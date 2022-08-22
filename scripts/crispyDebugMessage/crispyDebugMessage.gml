/**
 * Helper function for Crispy to display its debug messages
 * @function crispyDebugMessage
 * @param {string} _message - Text to be displayed in the Output Window
 */
function crispyDebugMessage(_message) {
	if !is_string(_message) {
		throw("crispyDebugMessage() \"message\" expected a string, received " + typeof(_message) + ".");
	}
	show_debug_message(CRISPY_NAME + ": " + _message);
}
