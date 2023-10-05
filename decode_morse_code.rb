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
}.freeze

def decode_char(morse_char)
  MORSE_CODE_DICT.key(morse_char)
end

def decode_word(morse_word)
  morse_word.chars.map do |morse_char|
    decode_char(morse_char)
  end.join
end

def decode(morse_message)
  morse_message.split('   ').map do |morse_word|
    decode_word(morse_word)
  end.join(' ')
end
