require 'mongo'
require 'bson'

client = Mongo::Client.new('mongodb://127.0.0.1', :database=>'school')


documents = client[:students].find()

documents.each do |doc|
	newScores = Array.new
	firstHW = nil
	doc[:scores].each do |score|
		if score["type"] == "homework"
			firstHW ||= score["score"]
			firstHW = score["score"] if score["score"] > firstHW
		else 
			newScores << score
		end

	end

	newScores << {"type" => "homework", "score" => firstHW}

	client[:students].find(:_id => doc[:_id]).update_one({"$set" => {:scores => newScores}})
end
