class Theatre < ApplicationRecord
    def google_static_map_url
      base_url = 'https://maps.googleapis.com/maps/api/staticmap?'
  
      api_key = 'AIzaSyCQ0GfdaFveXjTzVzsxx6hKddP_2XAycns'
    
      latitude = self.latitude
      longitude = self.longitude
      zoom = 15
      size = '600x300'
    
      map_url = "#{base_url}center=#{latitude},#{longitude}&zoom=#{zoom}&size=#{size}&markers=#{latitude},#{longitude}&key=#{api_key}"
    
      map_url
    end
end
