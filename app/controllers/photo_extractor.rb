require 'exifr'

path = './test.jpg'


#  params.require(:photo).permit(:name, :description, :photo, :path, :date_time_original, :width,
# :height, :exposure_time, :f_number, :model, :make, :copyright, :iso_speed_ratings, :aperture_value, :max_aperture_value, :focal_length, :album_id)
p = Object.new
ep = EXIFR::JPEG.new(path)

p ep.width
p ep.height
p ep.date_time_original
p ep.exposure_time.to_s
p ep.f_number.to_f
p ep.model
p ep.make
p ep.copyright
p ep.iso_speed_ratings
p ep.max_aperture_value
p ep.focal_length

# width = ep.width
# p.height = ep.height
# p.date_time_oroginal = ep.date_time_original
# p.exposure_time = ep.exposure_time.to_s
# p.f_number = ep.f_number.to_f
# p.model = ep.model
# p.make = ep.make
# p.copyright = ep.copyright
# p.iso_speed_ratings = ep.iso_speed_ratings
# p.max_aperture_value = ep.max_aperture_value
# p.focal_length = ep.focal_length
# p.album_id = 12


# print EXIFR::JPEG.new(path).width # => 2272
# print "\n"
# print EXIFR::JPEG.new(path).height # => 1704
# print "\n"
# print EXIFR::JPEG.new(path).exif.model    # -> "Canon PowerShot G3"
# print "\n"
# p EXIFR::JPEG.new(path).exif
# print "\n"
# print EXIFR::JPEG.new(path).exif? # => true
# print "\n"
# print EXIFR::JPEG.new(path).model # => "Canon PowerShot G3"
# print "\n"
# print EXIFR::JPEG.new(path).date_time # => Fri Feb 09 16:48:54 +0100 2007
# print "\n"
# print EXIFR::JPEG.new(path).exposure_time.to_s # => "1/15"
# print "\n"
# print EXIFR::JPEG.new(path).f_number.to_f # => 2.0
# print "\n"

# print EXIFR::JPEG.new(path).gps.latitude # => 52.7197888888889
# print "\n"
# print EXIFR::JPEG.new(path).gps.longitude # => 5.28397777777778
# print "\n"

