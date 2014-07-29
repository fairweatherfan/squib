module Squib
  class Deck
    
    # Draw a rounded rectangle
    # 
    # @example 
    #   rect x: 0, y: 0, width: 825, height: 1125, radius: 25
    #
    # @option opts x [Integer] (0) the x-coordinate to place
    # @option opts y [Integer] (0) the y-coordinate to place
    # @option opts width [Integer] the width of the rectangle.
    # @option opts height [Integer] the height of the rectangle.
    # @option opts x_radius [Integer] (0) the radius of the rounded corner horiztonally. Zero is a non-rounded corner.
    # @option opts y_radius [Integer] (0) the radius of the rounded corner vertically. Zero is a non-rounded corner.
    # @option opts radius [Integer] (nil) when set, overrides both x_radius and y_radius
    # @option opts fill_color [String] ('#0000') the color with which to fill the rectangle
    # @option opts stroke_color [String] (:black) the color with which to stroke the outside of the rectangle
    # @option opts stroke_width [Decimal] (2.0) the width of the outside stroke
    # @return [nil] intended to be void
    # @api public
    def rect(opts = {})
      opts = needs(opts, [:range, :x, :y, :width, :height, :radius, 
                          :fill_color, :stroke_color, :stroke_width])
      opts[:range].each do |i|
        @cards[i].rect(opts[:x], opts[:y], opts[:width], opts[:height], 
          opts[:x_radius], opts[:y_radius], 
          opts[:fill_color], opts[:stroke_color], opts[:stroke_width])
      end
    end
    
  end
end