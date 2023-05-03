require 'gosu'
require "./Ventana"

class GameWindow < Gosu::Window
  def initialize
    super(900, 600, false)
    self.caption = "Mi juego"
  end

  def draw
    # Dibuja las opciones en la ventana
    Gosu.draw_rect(400, 200, 240, 80, Gosu::Color::GRAY)
    Gosu.draw_rect(400, 300, 240, 80, Gosu::Color::GRAY)
    font = Gosu::Font.new(32)
    font.draw_text("Volver a Jugar", 420, 220, 0)
    font.draw_text("Salir del Juego", 420, 320, 0)
  end

  def button_down(id)
    if id == Gosu::KB_ESCAPE
      close
    elsif id == Gosu::MS_LEFT
      if mouse_x.between?(400, 640)
        if mouse_y.between?(200, 280)
          # Se conecta con otra ventana
          Ventana.new.show
          close
        elsif mouse_y.between?(300, 380)
          close
        end
      end
    end
  end
end

