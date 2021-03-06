class people::mnussbaum::osx_preferences::input_preferences {
  include osx::global::enable_keyboard_control_access
  class { 'osx::global::key_repeat_delay':
    delay => 10,
  }
  class { 'osx::global::key_repeat_rate':
    rate => 1,
  }
  class { "osx::global::natural_mouse_scrolling":
    enabled => true,
  }
  boxen::osx_defaults{ "Tap To Click":
    domain => "com.apple.mouse.tapBehavior",
    key    => "NSGlobalDomain",
    type   => "int",
    value  => 1,
    user   => $::boxen_user,
  }
}
