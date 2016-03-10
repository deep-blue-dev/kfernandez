require 'test_helper'

class NoChildrenNoDebtsControllerTest < ActionController::TestCase
  setup do
    @no_children_no_debt = no_children_no_debts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:no_children_no_debts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create no_children_no_debt" do
    assert_difference('NoChildrenNoDebt.count') do
      post :create, no_children_no_debt: {  }
    end

    assert_redirected_to no_children_no_debt_path(assigns(:no_children_no_debt))
  end

  test "should show no_children_no_debt" do
    get :show, id: @no_children_no_debt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @no_children_no_debt
    assert_response :success
  end

  test "should update no_children_no_debt" do
    patch :update, id: @no_children_no_debt, no_children_no_debt: {  }
    assert_redirected_to no_children_no_debt_path(assigns(:no_children_no_debt))
  end

  test "should destroy no_children_no_debt" do
    assert_difference('NoChildrenNoDebt.count', -1) do
      delete :destroy, id: @no_children_no_debt
    end

    assert_redirected_to no_children_no_debts_path
  end
end
