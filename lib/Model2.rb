class Person

    attr_reader :name

    def initialize (name)
        @name = name
    end

    def subscribe_to(magazine)
        Subscription.new(self, magazine)
    end

    def unsubscribe(magazine)
        Subscription.unsubscribe(self, magazine)
    end

    def magazines
        subscriptions.map {|subscription| subscription.magazine}
    end

    def subscriptions
        Subscription.all.select {|subscription| subscription.person == self}
    end

    def monthly_expenses
        subscriptions.reduce(0.0) {|memo, subscription| memo += subscription.monthly_cost}
    end

end
