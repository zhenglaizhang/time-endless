require 'exifr'

path = '/home/zhenglai/time-endless/test.jpg'

p EXIFR::JPEG.new(path)
print "\n"
print EXIFR::JPEG.new(path).width # => 2272
print "\n"
print EXIFR::JPEG.new(path).height # => 1704
print "\n"
print EXIFR::JPEG.new(path).exif.model    # -> "Canon PowerShot G3"
print "\n"
p EXIFR::JPEG.new(path).exif
print "\n"
print EXIFR::JPEG.new(path).exif? # => true
print "\n"
print EXIFR::JPEG.new(path).model # => "Canon PowerShot G3"
print "\n"
print EXIFR::JPEG.new(path).date_time # => Fri Feb 09 16:48:54 +0100 2007
print "\n"
print EXIFR::JPEG.new(path).exposure_time.to_s # => "1/15"
print "\n"
print EXIFR::JPEG.new(path).f_number.to_f # => 2.0
print "\n"

# print EXIFR::JPEG.new(path).gps.latitude # => 52.7197888888889
# print "\n"
# print EXIFR::JPEG.new(path).gps.longitude # => 5.28397777777778
# print "\n"

