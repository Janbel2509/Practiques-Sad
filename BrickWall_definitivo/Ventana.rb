require 'gosu'
require './Pelota'
require './Bloque'
require './Paddle'
require "./GameWindow"


module ZOrder
  BACKGROUND, STARS, PLAYER, UI = *0..3
end

class Ventana < Gosu::Window
  def initialize
    super 900, 600, false
    self.caption = "PROJECTE SAD"
    @font = Gosu::Font.new(20)
    @level = 1
    crear_bloques
    @paddle = Paddle.new(450, 550, self)
    @pelota = Pelota.new(@paddle.x, @paddle.y, self)
  end

  def crear_bloques
    @bloques = []
    case @level
    when 1
      8.times { |i| @bloques.push(Bloque.new(self, 110*i,80)) }
      7.times { |i| @bloques.push(Bloque.new(self, 40+110*i,110)) }
    when 2
      6.times { |i| @bloques.push(Bloque.new(self, 150*i,80)) }
      5.times { |i| @bloques.push(Bloque.new(self, 70+150*i,150)) }
      4.times { |i| @bloques.push(Bloque.new(self, 120+150*i,220)) }
    when 3
      7.times { |i| @bloques.push(Bloque.new(self, 230*i,80)) }
      6.times { |i| @bloques.push(Bloque.new(self, 120+230*i,150)) }
      5.times { |i| @bloques.push(Bloque.new(self, 190+230*i,220)) }
      2.times { |i| @bloques.push(Bloque.new(self, 340, 290)) }
    end
  end

  def draw
    @pelota.draw
    @bloques.each { |bloque| bloque.draw }
    @paddle.draw
    @font.draw_text("PUNTUACIÓ: #{@pelota.score}", 10, 10, ZOrder::UI, 1.0, 1.0, Gosu::Color::YELLOW)
    @font.draw_text("VIDES: #{@pelota.lives}", 500, 10, ZOrder::UI, 1.0, 1.0, Gosu::Color::YELLOW)
    if @bloques.empty?
      @font.draw_text("NIVELL COMPLETAT", 350, 250, ZOrder::UI, 1.0, 1.0, Gosu::Color::YELLOW)
      @font.draw_text("PREM LA TECLA ESPAI PER JUGAR SEGÜENT NIVELL", 270, 300, ZOrder::UI, 1.0, 1.0, Gosu::Color::YELLOW)

    end
  end

  def update
    @pelota.update
    @pelota.collect_blocks(@bloques)

    if button_down? Gosu::KbRight and @paddle.x+@paddle.width<900
      @paddle.move_right()
    elsif button_down? Gosu::KbLeft and @paddle.x>0
      @paddle.move_left()
    end

    if @pelota.y > 600 and button_down? Gosu::KB_SPACE
      @pelota.reset @paddle.x, @paddle.y
      @pelota.die
    end

    if @paddle.collides?(@pelota)
      @pelota.vx *= 1.05
      @pelota.vy *= 1.05
    end

      if @bloques.empty?
        if @level < 3 and button_down? Gosu::KB_SPACE
          @level += 1          
          @pelota.vx *= 1.1
          @pelota.vy *= 1.1
          crear_bloques
        end
      end
    if @pelota.lives == 0
      GameWindow.new.show
      close
    end
    if button_down? Gosu::KB_ESCAPE
      close
    end
    
  end
          
end
          
          
