# 用 Ruby 将西语单词拆分为音节/Dividing Syllables Rules in Spanish by Ruby

音节(syllable)是发音的基本单元。而元音是音节的基础。一般来说，一个词里有几个元音，便有几个音节。

1. 分音节规则 1 ：
	- 元音可以单独构成音节(**E**-ma)；
	- 辅音不可以单独构成音节；
	- 当一个辅音位于两个元音之间，与其后的元音构成音节(ma-**p**a)；
	
2. 分音节规则 2 ：
	- 除辅音连缀[^consonant cluster]外，两个相邻的辅音分属前后两个音节(u**s-t**ed)；
	- 辅音连缀与其后的元音构成一个音节(di-**pl**o-ma)；
	- 相邻的三个辅音中，若出现辅音连缀，则辅音连缀与后面的元音构成一个音节，另一个辅音属于前一个音节；若无辅音连缀，通常情况下，最后一个辅音与其后的元音构成一个音节，前两个辅音属于前一音节(i**ns-t**i-tu-to)；

[^consonant cluster]: [辅音连缀](http://www.intro2spanish.com/pronunciation/consonant-clusters.htm)，即辅音抱成团。`[p/b/c/g/f/t/d]+[l/r]`，且后一辅音必须是`l`或`r`。

3. 分音节规则 3 ：
	- 二重元音/三重元音[^diphthong & triphthong]与其前的辅音构成一个音节(n**ai**-pe)；
	- 带重音符号的弱元音与强元音组合时，不构成二重元音，分属不同音节(d**í-a**)；

[^diphthong & triphthong]: [二重元音/三重元音](http://www.123teachme.com/learn_spanish/diphthongs_and_triphthongs)，即元音抱成团。元音有「强元音」(a, e, o)和「弱元音」(i, u)之分。二重元音，即强元音+弱元音/弱元音+弱元音。而三重元音为弱元音+强元音+弱元音。