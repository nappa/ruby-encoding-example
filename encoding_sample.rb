#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'pp'

%w(euc-jp iso-2022-jp shift_jis utf-8).each do |encoding|
  f = File.open(File.join(File.dirname(__FILE__), 'text', encoding+'.txt'),
                'rb',
                 {:external_encoding => encoding})
  s = f.read
  p s.encoding
  puts s
  f.close
end
