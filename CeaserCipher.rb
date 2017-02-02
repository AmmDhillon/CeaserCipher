class CeaserCipher

def encrypt(input)
if input.empty?
puts "Please Enter Something!!!"
else
@input = input.downcase.split(" ")
puts "Enter the shift value (e.g: -5 or 2 | Note: shift value should be remembered):"
@shift = gets.chomp.to_i
@shift = @shift % 26
@shifting = @input.map! {|x| x.chars.map {|y| y.ord}}.map! {|x| x.map! {|y| y += @shift; y -= 26 if y >= 123; y.chr}.join}.join(" ")
puts @shifting
end
end

end

ok = CeaserCipher.new
puts "Press 1 to proceed."
enter = gets.chomp.to_i
case enter
when 1
puts "Enter the msg to encrypt/decrypt:"
ok.encrypt(gets.chomp)
else
puts "Sorry!!! Wrong Input. Not Permitted."
end
