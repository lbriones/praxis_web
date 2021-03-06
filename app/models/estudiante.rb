class Estudiante < ActiveRecord::Base
  attr_accessible :id, :direccion, :nombre, :user_id, :rut, :bio, :foto, 
   :liderazgo, :trabajo_en_equipo, :creatividad, :habilidades_de_comunicacion, :seguridad_personal,
  :telefono, :nombre, :carrera_id, :comuna_id, :institucion_id, :carrera_attributes, :comuna_attributes, :institucion_attributes
  has_many :user
  belongs_to :test
  belongs_to :carrera
  belongs_to :institucion
  belongs_to :comuna

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