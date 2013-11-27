require 'rspec/core/formatters/base_text_formatter'

class SublimeTextFormatter < RSpec::Core::Formatters::BaseTextFormatter
  def dump_backtrace(example)
    format_backtrace(example.execution_result[:exception].backtrace, example).each do |backtrace_info|
      output.puts detail_color("#{long_padding}# #{sublime backtrace_info}")
    end
  end

  def sublime(backtrace_info)
    app_path = File.join(File.dirname(__FILE__))
    "subl://open?url=file://" + backtrace_info.sub("./spec", app_path)
  end
end
