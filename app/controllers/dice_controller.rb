class DiceController < ApplicationController
  def two_six
    @rolls = []

    2.times do
      die = rand(2..6)
  
      @rolls.push(die)
    end


    render({:template => "dice_templates/2d6"})

  end

  def two_ten
    @rolls = []

    2.times do
      die = rand(1..10)
  
      @rolls.push(die)
    end


    render({:template => "dice_templates/2d10"})

  end

  def one_ten 
    @rolls = []

    1.times do
      die = rand(1..20)
  
      @rolls.push(die)
    end


    render({:template => "dice_templates/1d20"})

  end

  def five_four 
    @rolls = []

    5.times do
      die = rand(1..4)
  
      @rolls.push(die)
    end


    render({:template => "dice_templates/5d4"})

  end

  def homepage
    render({:template => "dice_templates/home"})
  end

  def random
    @num_dice  = params.fetch("number_dice").to_i
    @num_rolls = params.fetch("number_rolls").to_i

    @rolls = []
    @num_dice.times do
      @rolls.push(rand(1..@num_rolls))
    end

    render({ :template => "dice_templates/random" })
  end

end
