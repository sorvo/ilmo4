class Course < ActiveRecord::Base
  
  has_many :course_instances, :dependent => :destroy
  
  named_scope :latest, :order => "created_at DESC"
  named_scope :math, :conditions => {:name => "Matematiikka"}

end
