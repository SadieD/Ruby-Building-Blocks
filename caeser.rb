message = ''
shift = 0

def caeser_cipher(message, shift)
  message_cipher = ''
  shifted = 0
  
  for i in 0..message.length - 1
    if message[i] =~ (/[a-zA-Z]/)

      shifted = shift_letter(message[i], shift)
      message_cipher += shifted.chr 
    else
      message_cipher += message[i]
    end
  end
  
  puts message_cipher
end

def shift_letter(letter, shift)
  upper = 90
  lower = 122
  
  if letter =~ (/[A-Z]/)
    shift_by = upper
  else
    shift_by = lower
  end
  
  letter_shift = letter.ord + shift
  
  until letter_shift <= shift_by
    letter_shift -= 25
  end
  
  return letter_shift
end

puts "Enter a message to encipher: "
message = gets
puts "Enter a number: "
shift = gets.to_i
caeser_cipher(message, shift)
