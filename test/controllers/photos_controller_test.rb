require 'test_helper'

class PhotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photo = photos(:one)
  end

  test "should get index" do
    get photos_url
    assert_response :success
  end

  test "should get new" do
    get new_photo_url
    assert_response :success
  end

  test "should create photo" do
    assert_difference('Photo.count') do
      post photos_url, params: { photo: { album_id: @photo.album_id, aperture_value: @photo.aperture_value, copyright: @photo.copyright, date_time_original: @photo.date_time_original, description: @photo.description, exposure_time: @photo.exposure_time, f_number: @photo.f_number, focal_length: @photo.focal_length, height: @photo.height, iso_speed_ratings: @photo.iso_speed_ratings, make: @photo.make, max_aperture_value: @photo.max_aperture_value, model: @photo.model, name: @photo.name, path: @photo.path, width: @photo.width } }
    end

    assert_redirected_to photo_url(Photo.last)
  end

  test "should show photo" do
    get photo_url(@photo)
    assert_response :success
  end

  test "should get edit" do
    get edit_photo_url(@photo)
    assert_response :success
  end

  test "should update photo" do
    patch photo_url(@photo), params: { photo: { album_id: @photo.album_id, aperture_value: @photo.aperture_value, copyright: @photo.copyright, date_time_original: @photo.date_time_original, description: @photo.description, exposure_time: @photo.exposure_time, f_number: @photo.f_number, focal_length: @photo.focal_length, height: @photo.height, iso_speed_ratings: @photo.iso_speed_ratings, make: @photo.make, max_aperture_value: @photo.max_aperture_value, model: @photo.model, name: @photo.name, path: @photo.path, width: @photo.width } }
    assert_redirected_to photo_url(@photo)
  end

  test "should destroy photo" do
    assert_difference('Photo.count', -1) do
      delete photo_url(@photo)
    end

    assert_redirected_to photos_url
  end
end
