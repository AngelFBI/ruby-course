var = <<DOC
Este es un correo
Texto de ejemplo
test@gmail.com
rijfirof rfkjrn gtkjg rjk trkg
DOC

# puts var.gsub(/([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z0-9_-]+)/, "test@test.test")

email = var.match(/([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z0-9_-]+)/)[0].to_s

puts var.gsub(email, email[0] + ("*" * (email.length - 1)))
