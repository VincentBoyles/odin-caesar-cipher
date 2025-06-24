# Caesar Cipher (Ruby)

This is a simple Ruby implementation of the classic **Caesar Cipher** encryption algorithm. The Caesar Cipher is a type of substitution cipher in which each letter in the plaintext is shifted a certain number of places down or up the alphabet.

## 🔐 How It Works

- Accepts a `string` and a `key` (number of positions to shift).
- Shifts **alphabetic** characters (both uppercase and lowercase) by the key.
- Leaves **non-alphabetic** characters (e.g. spaces, punctuation) unchanged.
- Wraps around the alphabet using modular arithmetic.

---

## 🧪 Example

```ruby
caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"
```

---

## 🧠 Core Logic

- Uses Ruby ranges to build an array of the alphabet.
- Loops through each character in the string.
- Applies Caesar shift to matching letters.
- Keeps non-letter characters unchanged using a simple regex check.

---

## 🧾 Code

```ruby
def caesar_cipher(string, key)
  alphabets = ('a'..'z').to_a
  string = string.split("")
  encrypted = []

  string.each do |letter|
    alphabets.each_with_index do |value, index|
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
```

---

## 💡 Notes

- This implementation uses a regular expression to detect non-alphabetic characters.
- The logic can be optimized further, but this version prioritizes readability and step-by-step learning.

---

## 📚 Learn More

- [Caesar Cipher on Wikipedia](https://en.wikipedia.org/wiki/Caesar_cipher)
- [Ruby `.each_with_index`](https://ruby-doc.org/core-3.1.0/Enumerable.html#method-i-each_with_index)
- [Modulus operator in Ruby](https://ruby-doc.org/core-3.1.0/Integer.html#method-i-25)

---

## 📄 License

This project is provided **for educational purposes only**.

You are free to use, modify, and share this code in learning environments, personal projects, or classroom settings.  
Commercial use, redistribution without attribution, or inclusion in proprietary software is **not permitted**.

---

Created with ❤️ to practice Ruby basics and classic ciphers.
