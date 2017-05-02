require 'rspec/core/formatters/base_text_formatter'

class SublimeTextFormatter < RSpec::Core::Formatters::BaseTextFormatter
  def dump_backtrace(example)
    format_backtrace(example.execution_result.exception.backtrace, example).each do |backtrace_info|
      output.puts detail_color("#{long_padding}# #{sublime backtrace_info}")
    end
  end

  def sublime(backtrace_info)
    file_path = extract_path_from_backtrace(backtrace_info)
    path = if file_path.starts_with?('/')
      file_path
    else
      File.join(File.expand_path('/home/dsbonev/projects/onetap-backend'), file_path)
    end
    "file://" + path.gsub('./', '')
  end

  def extract_path_from_backtrace(backtrace_info)
    backtrace_info[/.*\:\d+/]
  end
end
