# Caesar Cipher (Ruby)

This is a simple implementation of the **Caesar Cipher**, a basic encryption technique where each letter in a string is shifted by a specified number of positions in the alphabet.

---

## 🔐 How It Works

- Accepts a `string` (text to encrypt) and a `key` (number of positions to shift).
- Shifts both lowercase and uppercase alphabetic characters while preserving case.
- Leaves non-letter characters (spaces, punctuation, numbers) unchanged.
- Wraps around the alphabet using modular arithmetic to keep characters in bounds.

---

## 📎 Example

```ruby
caesar_cipher("Hello, World!", 3)
# => "Khoor, Zruog!"
```

---

## 🧾 Code

```ruby
def caesar_cipher(string, key)
  alphabets = 'abcdefghijklmnopqrstuvwxyz'
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
```

---

## 🧠 Concepts Used

- String iteration with `.each_char`
- Indexing and shifting with `.index` and modulo
- Case sensitivity handling
- Simple array-based cipher logic

---

## 💡 Educational Purpose

This project is great for beginners learning:
- Ruby basics
- Control flow
- String manipulation
- Intro to classical encryption methods

---

## 📚 Learn More

- [Caesar Cipher - Wikipedia](https://en.wikipedia.org/wiki/Caesar_cipher)
- [Ruby String Methods](https://ruby-doc.org/core/String.html)
- [Modulus Operator](https://ruby-doc.org/core/Integer.html#method-i-25)

---

## 📄 License

This project is licensed **for educational purposes only**.

You are free to use, modify, and share this code for learning, academic, and personal projects.  
**Commercial use and redistribution without attribution are not permitted.**

---

Made with ❤️ while learning Ruby and classic cryptography.
