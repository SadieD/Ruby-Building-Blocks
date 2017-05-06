def caeser_cipher(message, shift)
  message_cipher = ''
  shifted = 0
  
  (0..message.length - 1).each do |i|
    if message[i] =~ (/[a-zA-Z]/)
      shifted = shift_letter(message[i], shift)
      message_cipher += shifted.chr 
    else
      message_cipher += message[i]
    end
  end
  
  return message_cipher
end

def shift_letter(letter, shift)
  if letter =~ (/[A-Z]/)
    shift_by = 90
  else
    shift_by = 122
  end
  
  letter_shift = letter.ord + shift
  
  until letter_shift <= shift_by
    letter_shift -= 26
  end
  
  return letter_shift
end

puts "Enter a message to encipher: "
message = gets
puts "Enter a number: "
shift = gets.to_i
puts caeser_cipher(message, shift)
