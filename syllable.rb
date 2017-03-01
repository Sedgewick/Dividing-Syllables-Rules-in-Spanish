require "pp"

def to_syllable(word)
	sy = word.scan(
					/
						([aeiou] $)
						|
						([aeiou] (?= [^aeiou] [aeiou]))
						|
						([aeiou] (?= [pbcgftd] [lr]))
						|
						([aeiou] [^aeiou] (?= [^aeiou] [aeiou]))
						|
						([aeiou] [^aeiou] (?= [pbcgftd] [lr]))
						|
						([aeiou] [^aeiou] [^aeiou pbcgftd] (?! [lr]))
						|
						((?<= [aeo]) [aeo])
                        |
                        (
                            ([^aeiou] | [pbcgftd][lr] | qu)
                            ([iu][aeo][yu] | [aeo][iu] | [iu][aeo] | [iu][iu] | [aeiou])        # diphthong
                            (
                                [^aeiou] $
                                |
                                [^aeiou] (?= [^aeiou] [aeiou])
                            )
                        )
						|
						(
							([^aeiou] | [pbcgftd][lr] | qu)
							(
                                [aeo] (?= [aeo])
                                |
                                ([iu][aeo][yu] | [aeo][iu] | [iu][aeo] | [iu][iu] | [aeiou]) (?= [^aeiou] [aeiou])
                                |
                                ([iu][aeo][yu] | [aeo][iu] | [iu][aeo] | [iu][iu] | [aeiou]) $
                            )
						)
					/x
				   )
	syllables = []
	sy.each { |m| syllables << (m[0] || m[1] || m[2] || m[3] || m[4] || m[5] || m[6] || m[7] || m[11]) }
	syllables.join("-")
end

puts to_syllable("ema") == "e-ma"
puts to_syllable("pan") == "pan"
puts to_syllable("mapa") == "ma-pa"
puts to_syllable("usted") == "us-ted"
puts to_syllable("esto") == "es-to"
puts to_syllable("lampara") == "lam-pa-ra"
puts to_syllable("adios") == "a-dios"
puts to_syllable("institudo") == "ins-ti-tu-do"
puts to_syllable("tarea") == "ta-re-a"
puts to_syllable("naipe") == "nai-pe"
puts to_syllable("funcionario") == "fun-cio-na-rio"
puts to_syllable("dormitorio") == "dor-mi-to-rio"
puts to_syllable("uruguay") == "u-ru-guay"
puts to_syllable("paraguay") == "pa-ra-guay"
puts to_syllable("leccion") == "lec-cion"
puts to_syllable("hola") == "ho-la"
puts to_syllable("quien") == "quien"
puts to_syllable("palma") == "pal-ma"
puts to_syllable("aplico") == "a-pli-co"