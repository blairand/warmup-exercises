require 'speech'
require 'sinatra'

get '/' do
  erb :index2
end


class Say
  attr_reader :chars

  def initialize(input)
    @chars = input
  end

  def in_numbers
    `say -o in_english.wav --data-format=LEF32@8000 "#{@chars}" `  
    audio = Speech::AudioToText.new("in_english.wav")
    puts "audio: #{audio.to_text.inspect}"
  end
end

Say.new("one million 3 hundred thousand and 23").in_numbers
