# Be sure to restart your server when you modify this file.
module Paperclip 
  class MediaTypeSpoofDetector 
    def spoofed? 
      false 
    end 
  end 
end
# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf
