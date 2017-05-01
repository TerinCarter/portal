# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  nickname   :string
#  password   :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base

devise :database_authenticatable, :oauthable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable,
        :confirmable, :lockable

attr_accessor :password

email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

validates :nickname, presence: true,
                     :length => { :maximum => 50 },
		     :uniqueness   => true
validates :password, presence: true,
 		     :length => { :within => 4..40 },
		     :confirmation => true
before_save :encrypt_password
validates :email, presence: true,
		  :format => { :with => email_regex },
		  :uniqueness   => true    

  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end

  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(submitted_password)
  end

  def self.authenticate_with_salt(id, cookie_salt)
    user = User.find_by_id(id)
    (user && user.salt == cookie_salt) ? user : nil
  end

  private

    def encrypt_password
      self.salt = make_salt if new_record?
      self.encrypted_password = encrypt(password)
    end

    def encrypt(string)
      secure_hash("#{salt}--#{string}")
    end
 
    def make_salt
      secure_hash("#{Time.now.utc}--#{password}")
    end
 
    def secure_hash(string)
      Digest::SHA2.hexdigest(string)
    end               

belongs_to :role
has_many :comments
has_and_belongs_to_many :programs
has_many :services, :dependent => :destroy

end
