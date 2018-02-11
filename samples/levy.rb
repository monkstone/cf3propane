#!/usr/bin/env jruby
require 'propane'
require 'cf3propane'

class Levy < Propane::App

  def setup_the_levy
    @levy = Propane::ContextFree.define do
      shape :start do
        levy brightness: 0.9
      end
      shape :levy do
        square alpha: 0.1
        split do
          levy  size: 1/Math.sqrt(2), rotation: -45, x: 0.5, brightness: 0.9
          rewind
          levy  size: 1/Math.sqrt(2), rotation: 45, x: 0.5, brightness: 0.9
        end
      end
    end
  end

  def settings
    size 400, 400
  end

  def setup
    sketch_title 'Levy Fractal'
    setup_the_levy
    draw_it
    save_frame('levy.png')
  end


  def draw
    # Do nothing.
  end


  def draw_it
    background 255
    @levy.render :start, size: 250,  stop_size: 2,
    start_x: width/4, start_y: height/2
  end
end

Levy.new
