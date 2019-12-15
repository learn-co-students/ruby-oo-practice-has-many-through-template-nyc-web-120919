class Subscription
    attr_reader :person, :magazine

    @@all = []

    def initialize (person, magazine)
        @person = person
        @magazine = magazine

        @@all << self
    end

    def self.all
        @@all
    end

    def self.unsubscribe (person, magazine)
        @@all.reject! {|subscription| subscription.person == person && subscription.magazine == magazine}
    end

    def monthly_cost 
        magazine.monthly_cost
    end

end
