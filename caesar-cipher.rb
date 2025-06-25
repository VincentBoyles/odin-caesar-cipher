def caesar_cipher(string, key)
  alphabets = 'abcdefghijklmnopqstuvwxyz'
  encrypted =[]

  string.each_char do |letter|
    if alphabets.include?(letter)
      index = alphabets.index(letter)
      move = (index + key) % alphabets.length
      encrypted << alphabets[move]
    elsif alphabets.include?(letter.downcase)
      index = alphabets.index(letter.downcase)
      move = (index + key) % alphabets.length
      encrypted << alphabets[move].upcase
    else
      encrypted << letter
    end
  end  
  return encrypted.join("")
end
