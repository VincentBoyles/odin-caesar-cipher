def caesar_cipher(string, key)
  alphabets = ('a'..'z').to_a
  string = string.split("")
  encrypted =[]

  string.each do
    |letter|
  alphabets.each_with_index do
    |value, index|
    index = (index + key + alphabets.length) % alphabets.length
    if value == letter
      encrypted.push(alphabets[index])
    elsif value.upcase == letter
      encrypted.push(alphabets[index].upcase) 
    end
  end
  end
  puts encrypted
end

caesar_cipher("What a string!", 5)
