class Fixnum
	define_method(:absolutely_larger) do
		if self >= 0
			number = self +1
		else
			number = self - 1
		end
		number
	end
end
