class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def recieved_one?(item_name)
    if self.freebies.filter { |item| item.item_name == item_name }.length != 0
      true
    else
      false
    end
  end

  def give_away(dev, freebie)
    if freebie.dev_id == self.id
      puts "we gave #{freebie.item_name} to #{dev.name}"
      dev.freebies << freebie
      freebie.dev = dev
    else
      "not mine"
    end
  end


end
