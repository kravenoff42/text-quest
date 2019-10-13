class GameObject < Item
    attr_accessor :type, :value, :desciption

    def initialize(x,y,z,h,w,d,lbs,type,value,desciption)
        super(x,y,z,h,w,d,lbs)
        @type
        @value
        @desciption
    end


end
