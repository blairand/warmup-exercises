require 'speech'
# require 'sinatra'

# get '/' do
#   erb :index2
# end


class Say
  attr_reader :chunk
  KEY = ["", "Thousand", "Million", "Billion"]

  def initialize(input)
    `say -o in_english.wav --data-format=LEF32@8000 "#{input}" `
    audio = Speech::AudioToText.new("in_english.wav")
    @chunk = audio.to_text.inspect
  end

  def in_english    
    chunks = @chunk.split(",")
    chunks.reverse.zip(KEY).reverse
  end
end

