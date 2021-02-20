
def help
  puts "I accept the following commands:"
  puts /- help : displays this help message/
  puts /- list : displays a list of songs you can play/
  puts /- play : lets you choose a song to play/
  puts /- exit : exits this program/
end

def list(array)
  array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(song_array)
  puts "Please enter a song name or number:"
  input = gets.strip
  if (1..9).to_a.index(input.to_i) != nil
    puts "Playing #{song_array[input.to_i - 1]}"
  elsif song_array.index(input) != nil
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip

  while input != "exit"
    prompt = "Please enter a command:"
    case input
    when "help"
      help
      puts prompt
      input = gets.strip
    when "list"
      list(songs)
      puts prompt
      input = gets.strip
    when "play"
      play(songs)
      puts prompt
      input = gets.strip
    else
      help
    end
  end
  exit_jukebox
end
