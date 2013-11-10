class Estudiante < ActiveRecord::Base
  attr_accessible :id, :direccion, :nombre, :user_id, :rut, :bio, :foto, :fecha_nacimiento, :telefono, :carrera_codigo, :comuna_codigo, :institucion_codigo, :nombre
  belongs_to :user
  has_one :carrera
  has_one :comuna
  has_one :institucion
 
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

  FOTOS = File.join Rails.root, 'public', 'img'
  after_save :guardar_foto
  
  #def foto(file_data)
  #    unless file_data.blank?
  #        @file_data = file_data
  #        self.extension = file_data.original_filename.split('.').last.downcase
  #    end
  #end

  def photo_filename
      File.join FOTOS, "#{id}.#{extension}"
  end

  def photo_path
      "/img/#{id}.#{extension}"
  end

  def has_photo?
      File.exists? photo_filename
  end

  private
  def guardar_foto
      if @file_data
        FileUtils.mkdir_p img
        File.open(photo_filename, 'wb') do |f|
          f.write(@file_data.read)
      end
      @file_data = nil
    end
  end

end