require './ex2_report'
require './ex2_formatters'

puts 'Report in HTML Format : '
report = Report.new(HTMLFormatter.new)
report.output_report

puts 'Choose Plain Format Report : '
report.formatter = PlainTextFormatter.new
report.output_report
