module Vk
  class Result
    include Enumerable

    # @example
    #   Vk::Result.new('database.getCountries', Vk::Country, options)
    def initialize(method, items_class, options = {}, merged_attributes = {})
      @items = []
      @amount = 0
      @request = options.delete(:request) { Vk.request }
      @items_class = items_class
      @method = method
      @options = options
      @options[:offset] ||= 0
      @options[:count] ||= 100
      @merged_attributes = merged_attributes
    end

    # @return [Fixnum]
    def count
      load_items unless @count
      @count
    end

    # @return [Fixnum]
    def amount
      @items.size
    end

    # @return [<Vk::Base>]
    attr_reader :items

    def each(&block)
      @items.each do |item|
        block.call(item)
      end
      while amount < count
        increase_offset!
        load_items(&block)
      end
    end

    # @return [<Vk::Base>]
    def all
      while amount < count
        increase_offset!
        load_items
      end
      @items
    end

    def method_missing(name, *arguments, &block)
      if respond_to_missing?(name, false)
        @items_class.public_send(name, *arguments, &block)
      else
        super
      end
    end

    def respond_to_missing?(name, include_all)
      @items_class.respond_to?(name, include_all)
    end

    private

    def increase_offset!
      @options[:offset] = amount
    end

    def load_items(&block)
      raise Vk::TooMuchArguments.new('database.getCountries', 'count', 1000) if @options[:count].try(:>, 1000)
      data = @request.request(@method, @options)
      @count = data['count']
      data['items'].each do |item|
        item = @items_class.new(item.merge(@merged_attributes))
        @items << item
        block.call(item) if block_given?
      end
    end
  end
end
