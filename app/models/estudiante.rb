class Estudiante < ActiveRecord::Base
  attr_accessible :id, :direccion, :nombre, :user_id, :rut, :bio, :foto, :telefono
  belongs_to :user

  validates_format_of :rut,
                      :with => /\A(\d{7,9})\Z/i,
                      :message => "no es valido."

  def dv(rut)
    crut = rut.to_s
    f=2
    i=(crut.size) -1
    ss=0
    while i >= 0
      ss += f * ((crut[i].to_i) -48)
      f += 1
      f = 2 if f > 7
      i -= 1
    end
    ss = 11 - (ss % 11)
    if ss == 10
      "K"
    else
      if ss == 11
        "0"
      else
        ss.to_s
      end
    end
  end

end