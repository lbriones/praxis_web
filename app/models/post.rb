class Post < ActiveRecord::Base
  attr_accessible :descripcion, :funciones, :requisitos, :sueldo, :titulo, :email, :tag_list
  acts_as_taggable
 	def self.search(search)
	  if search
	    find(:all, :conditions => ['titulo LIKE ?', "%#{search}%"])
	  else
	    find(:all)
	  end
	end
	
end