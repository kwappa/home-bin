#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
file_name = ARGV[0]

if !file_name || !File.exists?(file_name)
  puts "file not found."
  exit
end

File.open(file_name) { |f|
  while line = f.gets
    puts line.gsub(/href(.+?)>/, %q{href\1 target="_blank" rel="noopener noreferrer">})
  end
}
