require 'json'
require 'psych'

class WarningCounter < XCPretty::Simple
  def initialize(use_unicode, colorize)
    super
    @warning_count = 0
  end

  def format_ld_warning(message)
    @warning_count += 1
    super
  end

  def format_warning(message)
    @warning_count += 1
    super
  end

  def format_compile_warning(file_name, file_path, reason, line, cursor)
    @warning_count += 1
    super
  end

  def format_test_summary(message, failures_per_suite)
    File.open('warning-count.json', 'w') { |io|
      io.write JSON.generate(:warning_count => @warning_count)
    }
    File.open('warning-count.yaml', 'w') { |io|
      io.write Psych.dump('warning_count' => @warning_count)
    }
    super
  end
end

WarningCounter
