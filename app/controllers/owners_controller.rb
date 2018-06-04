class OwnersController < ApplicationController

  def index
    @owners = Owner.first(40)
  end

  def better_index
    @owners = Owner.left_outer_joins(:dogs)
      .select('owners.*, count(dogs.id) as dog_count')
      .group('owners.id')
  end
end