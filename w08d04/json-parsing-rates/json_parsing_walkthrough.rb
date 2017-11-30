require "json"

class ParseJson

  def initialize(json_file)
    @json_file = JSON.parse(File.read(json_file))
  end

  def getbase
    @json_file["base"]
  end

  def getdate
    Date.parse(@json_file["date"])
  end


end