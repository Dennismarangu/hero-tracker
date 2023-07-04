class HeroPowersController < ApplicationController
  def create
    hero_power = HeroPower.new(hero_power_params)
    if hero_power.save
      hero = hero_power.hero
      render json: hero.as_json(include: :powers), status: :created
    else
      render json: { errors: hero_power.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
