class 'InstaBrake'

function InstaBrake:__init()
    Network:Subscribe("instabrake", self, self.Brake)
end

function InstaBrake:Brake(bool,ply)
    local veh = ply:GetVehicle()
    veh:SetLinearVelocity(Vector3.Zero)
end

brake = InstaBrake()
