# Define a hash to map Morse code to English characters
MORSE_CODE_DICT = {
  'A' => '.-', 'B' => '-...',
  'C' => '-.-.', 'D' => '-..', 'E' => '.',
  'F' => '..-.', 'G' => '--.', 'H' => '....',
  'I' => '..', 'J' => '.---', 'K' => '-.-',
  'L' => '.-..', 'M' => '--', 'N' => '-.',
  'O' => '---', 'P' => '.--.', 'Q' => '--.-',
  'R' => '.-.', 'S' => '...', 'T' => '-',
  'U' => '..-', 'V' => '...-', 'W' => '.--',
  'X' => '-..-', 'Y' => '-.--', 'Z' => '--..'
}

# Function to decode a Morse code character
def decode_char(morse_char)
  MORSE_CODE_DICT.key(morse_char)
end

# Test the function
puts decode_char('.-')  # Should print 'A'
puts decode_char('-..')  # Should print 'D'

# Function to decode a Morse code word
def decode_word(morse_word)
  english_word = morse_word.split(' ').map do |morse_char|
    decode_char(morse_char)
  end.join('')
  english_word
end
# Test the function
puts decode_word('-- -.--')  # Should print 'MY'
puts decode_word('.- -. -..')  # Should print 'AND'
