#!/usr/bin/env ruby

if ARGV.size < 1
  puts "Enter stl filename(s) as params"
  exit
end

ARGV.each do |stl|
  base = File.basename stl, '.stl'
  system "cat #{stl} | python ~/bin/stl-to-dxf.py > #{base}.dxf"
end