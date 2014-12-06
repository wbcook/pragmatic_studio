# This app collects data about songs from a file.
Song = Struct.new(:title, :name, :length)

File.open("songdata") do |song_file|
  songs = []

  song_file.each do |line|
    file, length, name, title = line.chomp.squeeze(" ").split(/\s*\|\s*/)
    songs << Song.new(title, name, length)
  end

  puts songs[0]
  puts songs[1]
  puts songs[2]
end
