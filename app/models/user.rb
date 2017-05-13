class User < ActiveRecord::Base
  rolify
    has_secure_password
    has_many :contents
    validates_uniqueness_of :email ,:nickname
    #validates :email, uniqueness: true
    
    # email 하나에 대해서 어러가지 옵션
    #validates_uniqueness_of :email # 유니크 검사를 여러개의 데이터에서 적용이 가능하다
end
