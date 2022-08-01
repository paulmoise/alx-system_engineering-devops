#!/usr/bin/env ruby
# textme tasks
puts ARGV[0].scan(/(?<=from|to|flags):(\+?\w+|[-?[0-1]:?]+)/).join(',')

