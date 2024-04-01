# GdUnit generated TestSuite
class_name AudioTest
extends GdUnitTestSuite
@warning_ignore('unused_parameter')
@warning_ignore('return_value_discarded')

var audio: Audio

func before_test():
	audio = Audio
	audio._ready()

func test_ready() -> void:
	assert_bool(audio.is_ambient_playing).is_true()
