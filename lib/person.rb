 64
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
Last login: Wed Apr  1 10:48:34 on ttys003
╭─misshell@flaptop ~ ‹ruby-2.6.1›
╰─$ cd
      # ./spec/person_spec.rb:2:in `block (2 levels
      # ./spec/person_spec.rb:2:in `block (2 levels
╭─misshell@flaptop ~ ‹ruby-2.6.1›
╰─$ cd
      # ./spec/person_spec.rb:2:in `block (2 levels
╭─misshell@flaptop ~ ‹ruby-2.6.1›
╰─$ cd ~/Development/code/mod1/ruby-oo-self-person-lab-nyc-web-033020
╭─misshell@flaptop ~/Development/code/mod1/ruby-oo-self-person-lab-nyc-web-033020 ‹ruby-2.6.1› ‹master*›
╰─$ ls
CONTRIBUTING.md LICENSE.md      README.md       lib             spec
╭─misshell@flaptop ~/Development/code/mod1/ruby-oo-self-person-lab-nyc-web-033020 ‹ruby-2.6.1› ‹master*›
╰─$ cd lib
╭─misshell@flaptop ~/Development/code/mod1/ruby-oo-self-person-lab-nyc-web-033020/lib ‹ruby-2.6.1› ‹master*›
╰─$ ls
person.rb
╭─misshell@flaptop ~/Development/code/mod1/ruby-oo-self-person-lab-nyc-web-033020/lib ‹ruby-2.6.1› ‹master*›
╰─$ ls
person.rb
╭─misshell@flaptop ~/Development/code/mod1/ruby-oo-self-person-lab-nyc-web-033020/lib ‹ruby-2.6.1› ‹master*›
╰─$ vim person.rb
╭─misshell@flaptop ~/Development/code/mod1/ruby-oo-self-person-lab-nyc-web-033020/lib ‹ruby-2.6.1› ‹master*›
╰─$ vim person.rb
 39     end
 40
 41     def get_paid(money)
 42         self.bank_account += money
 43         'all about the benjamins'
 44     end
 45
 46     def take_bath
 47         self.hygiene += 4
 48         "♪ Rub-a-dub just relaxing in the tub ♫"
 49     end
 50
 51     def work_out
 52         self.hygiene -= 3
 53         self.happiness += 2
 54         "♪ another one bites the dust ♫"
 55     end
 56
 57     def call_friend(friend)
 58         self.happiness += 3
 59         friend.happiness = friend.happiness + 3
 60         "Hi #{friend.name}! It\'s #{self.name}. How are you?"
 61     end
 62
 63     def start_conversation(friend, topic)
 64         if topic == 'politics'
 65             self.happiness -= 2
 66             friend.happiness = friend.happiness - 2
 67             "blah blah partisan blah lobbyist"
 68         elsif topic == 'weather'
 69             self.happiness += 1
 70             friend.happiness = friend.happiness + 1
 71             "blah blah sun blah rain"
 72         else
 73             "blah blah blah blah blah"
 74         end
 75     end
 76
 77 end
 78
-- VISUAL --
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

:set nonumber