class Person

	attr_reader :name, :happiness, :hygiene
	attr_accessor :bank_account
	
	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	def happiness=(num)
		if num > 10
			@happiness = 10
		elsif num < 0
			@happiness = 0
		else
			@happiness = num
		end
	end

	def hygiene=(num)
		if num > 10
			@hygiene = 10
		elsif num < 0
			@hygiene = 0
		else
			@hygiene = num
		end
	end

	def happy?
		self.happiness > 7
	end

	def clean?
		self.hygiene > 7
	end
	
	def get_paid(money)
		self.bank_account += money
		'all about the benjamins'
	end

	def take_bath
		self.hygiene += 4
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		self.hygiene -= 3
		self.happiness += 2
		"♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		self.happiness += 3
		friend.happiness = friend.happiness + 3
		"Hi #{friend.name}! It\'s #{self.name}. How are you?"
	end

	def start_conversation(friend, topic)
		if topic == 'politics'
			self.happiness -= 2
			friend.happiness = friend.happiness - 2
			"blah blah partisan blah lobbyist"
		elsif topic == 'weather'
			self.happiness += 1
			friend.happiness = friend.happiness + 1
			"blah blah sun blah rain"
		else
			"blah blah blah blah blah"
		end
	end

end

