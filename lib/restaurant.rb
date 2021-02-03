class Restaurant
  attr_reader :opening_time,
              :name,
              :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    "#{(opening_time.to_i + hours)}:00"
  end

  def add_dish(dish)
    dishes << dish
  end

  def open_for_lunch?
    if opening_time.to_i < 12
      true
    else
      false
    end
  end

  def menu_dish_names
    capitalized_dishes = []
    dishes.each do |dish|
      capitalized_dishes << dish.upcase
    end
    capitalized_dishes
  end

  def announce_closing_time(hours_open)
    close = opening_time.to_i + hours_open

    if close < 12
      "#{name} will be closing at #{close}:00AM"
    elsif close > 12 && close < 24
      "#{name} will be closing at #{close - 12}:00PM"
    elsif close == 12
      "#{name} will be closing at 12:00PM"
    elsif close == 24
      "#{name} will be closing at 12:00AM"
    elsif close > 24 && close < 36
      "#{name} will be closing at #{close - 24}:00AM"
    elsif close >= 36
      "#{name} will be closing at #{close - 36}:00PM"
    end
  end
end
