require 'test_helper'

class SailboatsControllerTest < ActionController::TestCase
  setup do
    @sailboat = sailboats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sailboats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sailboat" do
    assert_difference('Sailboat.count') do
      post :create, sailboat: { beam: @sailboat.beam, births: @sailboat.births, boat_location_city: @sailboat.boat_location_city, boat_location_general: @sailboat.boat_location_general, boat_location_state: @sailboat.boat_location_state, boat_location_zip: @sailboat.boat_location_zip, boat_type: @sailboat.boat_type, cabins: @sailboat.cabins, condition: @sailboat.condition, create_date: @sailboat.create_date, description: @sailboat.description, displacement: @sailboat.displacement, draft: @sailboat.draft, engine_type: @sailboat.engine_type, engines: @sailboat.engines, equipment: @sailboat.equipment, fuel_type: @sailboat.fuel_type, heads: @sailboat.heads, horsepower: @sailboat.horsepower, hours: @sailboat.hours, hull: @sailboat.hull, length: @sailboat.length, manufacturer: @sailboat.manufacturer, material: @sailboat.material, model: @sailboat.model, price: @sailboat.price, rigging: @sailboat.rigging, showers: @sailboat.showers, update_date: @sailboat.update_date, year: @sailboat.year }
    end

    assert_redirected_to sailboat_path(assigns(:sailboat))
  end

  test "should show sailboat" do
    get :show, id: @sailboat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sailboat
    assert_response :success
  end

  test "should update sailboat" do
    patch :update, id: @sailboat, sailboat: { beam: @sailboat.beam, births: @sailboat.births, boat_location_city: @sailboat.boat_location_city, boat_location_general: @sailboat.boat_location_general, boat_location_state: @sailboat.boat_location_state, boat_location_zip: @sailboat.boat_location_zip, boat_type: @sailboat.boat_type, cabins: @sailboat.cabins, condition: @sailboat.condition, create_date: @sailboat.create_date, description: @sailboat.description, displacement: @sailboat.displacement, draft: @sailboat.draft, engine_type: @sailboat.engine_type, engines: @sailboat.engines, equipment: @sailboat.equipment, fuel_type: @sailboat.fuel_type, heads: @sailboat.heads, horsepower: @sailboat.horsepower, hours: @sailboat.hours, hull: @sailboat.hull, length: @sailboat.length, manufacturer: @sailboat.manufacturer, material: @sailboat.material, model: @sailboat.model, price: @sailboat.price, rigging: @sailboat.rigging, showers: @sailboat.showers, update_date: @sailboat.update_date, year: @sailboat.year }
    assert_redirected_to sailboat_path(assigns(:sailboat))
  end

  test "should destroy sailboat" do
    assert_difference('Sailboat.count', -1) do
      delete :destroy, id: @sailboat
    end

    assert_redirected_to sailboats_path
  end
end
