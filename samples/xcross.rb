#!/usr/bin/env jruby
require 'propane'
require 'cf3propane'

# v. simple example
class XCross < Propane::App
  def settings
    size 400, 200
  end

  def setup
    sketch_title 'X-Cross'
    @stars = Propane::ContextFree.define do
      shape :stars do
        split do
          cross size: 0.5, x: -2
          rewind
          plus size: 0.5, x: 2
        end
      end

      shape :cross do
        square w: 1, h: 3, rotation: -45
        square w: 1, h: 3, rotation: 45
      end

      shape :plus do
        square w: 1, h: 3
        square w: 1, h: 3, rotation: 90
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

XCross.new
