# Rewrite your table of contents from ../Chapter06/table_of_contents.rb
# Start with an array holding all the contents (chapter names, page numbers, etc.)
# Then print out the information from the array in a formatted table of contents.

chapter_info = [['Getting Started', 1], ['Numbers', 9], ['Letters', 13]]
puts('Table of Contents'.center(50))
chapter_num = 1
chapter_info.each do |chapter|
	chapter_title = chapter[0]
	page_number = chapter[1]
	chapter_and_name = 'Chapter ' + chapter_num.to_s + ':    ' + chapter_title.to_s
	page_info = 'page ' + page_number.to_s
	puts(chapter_and_name.ljust(30) + page_info.rjust(20))
	chapter_num += 1
end