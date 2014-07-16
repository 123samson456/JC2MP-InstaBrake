class 'InstaBrake'

function InstaBrake:__init()
    Events:Subscribe("KeyDown", self, self.KeyDown)
    self.topress = string.byte("Y")
end

function InstaBrake:KeyDown(args)
    if LocalPlayer:InVehicle() then
        local veh = LocalPlayer:GetVehicle()
        if veh:GetDriver() == LocalPlayer then
            if (args.key == self.topress) then
                Network:Send("instabrake",true)
            end
        end
    end
end

brake = InstaBrake()
