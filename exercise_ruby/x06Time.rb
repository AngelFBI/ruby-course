puts "2010-07-27".to_date
puts 1.month.from_now
puts Time.now - 3.months

date.strftime("Today is %d-%m-%y, weekday -> %A")

=begin
3.0.4 :014 > date = 1.month.from_now
 => Sun, 18 Sep 2022 15:14:59.635407000 UTC +00:00
3.0.4 :015 > date.strftime("Printed on %m/%d/%Y").class
 => String
3.0.4 :016 > date.strftime("Todat is %m-%m-y")
 => "Todat is 09-09-y"
3.0.4 :017 > date.strftime("Todat is %d-%m-%y")
 => "Todat is 18-09-22"
3.0.4 :018 > date.strftime("Todat is %d-%m-%y, weekday -> %A")
 => "Todat is 18-09-22, weekday -> Sunday"
3.0.4 :019 > date = time.now
(irb):19:in `<main>': undefined local variable or method `time' for main:Object (NameError)
Did you mean?  timeout
3.0.4 :020 > date = Time.now
 => 2022-08-18 08:17:00.54531 -0700
3.0.4 :021 > date.strftime("Todat is %d-%m-%y, weekday -> %A")
 => "Todat is 18-08-22, weekday -> Thursday"
3.0.4 :022 > 1.month.from_now
 => Sun, 18 Sep 2022 15:18:21.726703000 UTC +00:00
3.0.4 :023 > Time.now - 3.months
=end
