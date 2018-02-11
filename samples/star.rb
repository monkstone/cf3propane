#!/usr/bin/env jruby
require 'propane'
require 'cf3propane'

# v. simple example
class Star < Propane::App
  def settings
    size 400, 200
  end

  def setup
    sketch_title 'Star Shapes'
    @stars = Propane::ContextFree.define do

      shape :stars do
        split do
          sqstar size: 0.8, x: -1
          rewind
          trstar x: 1
        end
      end

      shape :sqstar do
        square
        square rotation: 45
      end

      shape :trstar do
        triangle
        triangle rotation: 180
      end
    end
  end

  def draw_it
    background 0.2
    @stars.render :stars, size: height/2, color: [220, 1, 1, 1]
  end

  def draw
    # Do nothing.
  end

  def mouse_clicked
    draw_it
  end
end

Star.new
