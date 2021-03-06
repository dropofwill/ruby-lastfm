class Lastfm
  module MethodCategory
    class Library < Base
      regular_method(
        :get_artists,
        :required => [:user],
        :optional => [
          [:limit, nil],
          [:page, nil]
        ]
      ) do |response|
        Util.force_array(response.xml['artists'])
      end

      regular_method(
        :get_tracks,
        :required => [:user],
        :optional => [
          [:artist, nil],
          [:album, nil],
          [:page, nil],
          [:limit, nil]
        ]
      ) do |response|
        Util.force_array(response.xml['tracks'])
      end
    end
  end
end
