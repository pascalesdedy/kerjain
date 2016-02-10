require 'test_helper'

class DaftarKerjaansControllerTest < ActionController::TestCase
  setup do
    @daftar_kerjaan = daftar_kerjaans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daftar_kerjaans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daftar_kerjaan" do
    assert_difference('DaftarKerjaan.count') do
      post :create, daftar_kerjaan: { description: @daftar_kerjaan.description, title: @daftar_kerjaan.title }
    end

    assert_redirected_to daftar_kerjaan_path(assigns(:daftar_kerjaan))
  end

  test "should show daftar_kerjaan" do
    get :show, id: @daftar_kerjaan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daftar_kerjaan
    assert_response :success
  end

  test "should update daftar_kerjaan" do
    patch :update, id: @daftar_kerjaan, daftar_kerjaan: { description: @daftar_kerjaan.description, title: @daftar_kerjaan.title }
    assert_redirected_to daftar_kerjaan_path(assigns(:daftar_kerjaan))
  end

  test "should destroy daftar_kerjaan" do
    assert_difference('DaftarKerjaan.count', -1) do
      delete :destroy, id: @daftar_kerjaan
    end

    assert_redirected_to daftar_kerjaans_path
  end
end
