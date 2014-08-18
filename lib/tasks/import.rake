desc "Imports a CSV file into a Shakespeare work"
task :work_import => :environment do
  works = JSON.parse(File.read('lib/assets/work.json'))
  works.each do |work|
  	Work.create(workid: work["workid"], title: work["title"], long_title: work["longtitle"], year: work["year"], genre_type: work["genretype"], notes: work["notes"], source: work["source"], total_words: work["totalwords"], total_paragraphs: work["totalparagraphs"])
  end
end

desc "Imports a CSV file into shakespeare characters"
task :char_import => :environment do
  characters = JSON.parse(File.read('lib/assets/character.json'))
  characters.each do |char|
  	Character.create(charid: char["charid"], name: char["charname"], abbrev: char["abbrev"], description: char["description"], speech_count: char["speechcount"])
  end
end

desc "Shovels in characters to respective works"
task :char_shovel => :environment do
	relationships = JSON.parse(File.read('lib/assets/character_work.json'))
 	relationships.each do |rel|
 		Work.find_by_workid(rel["workid"]).characters << Character.find_by_charid(rel["charid"])
 	end
end

desc "Imports paragraphs from JSON"
task :import_para => :environment do

 	paragraphs = JSON.parse(File.read('lib/assets/paragraph.json'))
 	paragraphs.each do |para|
 		# Work.find_by_workid(rel["workid"]).characters << Character.find_by_charid(rel["charid"])
 		Character.find_by_charid(para["charid"]).paragraphs.create(paragraph_num: para["paragraphnum"], plaintext: para["plaintext"], phonetictext: para["phonetictext"], stemtext: para["stemtext"], paragraph_type: para["paragraphtype"], section: para["section"], chapter: para["chapter"], char_count: para["charcount"], word_count: para["wordcount"])
 	end
end

desc "Imports a json file into shakespeare words"
task :word_import => :environment do
  words = JSON.parse(File.read('lib/assets/wordform.json'))
  words.each do |w|
 	WordForm.create(plaintext: w["plaintext"], phonetictext: w["phonetictext"], stemtext: w["stemtext"], occurences: w["occurences"])
  end
end
