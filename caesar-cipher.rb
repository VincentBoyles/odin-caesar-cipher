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
    encrypted.push(letter) if !letter.match(/\A[a-zA-Z0-9]*\z/)
  end
  return encrypted.join("")
end


