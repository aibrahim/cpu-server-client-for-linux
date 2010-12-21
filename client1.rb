#!/usr/bin/ruby

require 'socket'      # Sockets are in standard library

host = ARGV[0]
port = 17010
filename = ARGV[1]

s = TCPSocket.open(host, port)
	s.puts filename
		
	File.open(filename, "r") do |f|
		s.puts(filename)
		while line = f.gets
			s.puts line
		end
	end

s.close

