class Item 
    attr_reader :name

    @@items = []

    def initialize(params)
        @name = params[:name]
        self.save
    end 

    def save
        self.class.all << self
    end

    def self.all
        @@items
    end
end