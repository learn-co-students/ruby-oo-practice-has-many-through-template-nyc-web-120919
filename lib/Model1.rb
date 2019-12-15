class Magazine
    attr_reader :title, :monthly_cost

    def initialize (title, monthly_cost)
        @title = title
        @monthly_cost = monthly_cost
    end

    def add_subscriber(person)
        Subscription.new(person, self)
    end

    def unsubscribe(person)
        Subscription.unsubscribe(person, self)
    end

    def subscribers
        subscriptions.map {|subscription| subscription.person}
    end

    def subscriptions
        Subscription.all.select {|subscription| subscription.magazine == self}
    end

    def monthly_revenue
        subscriptions.size * @monthly_cost
    end
end
