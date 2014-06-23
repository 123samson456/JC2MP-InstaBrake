class 'InstaBrake'

function InstaBrake:__init()
    Events:Subscribe("KeyDown", self, self.KeyDown)
    self.topress = "Y"
end

function InstaBrake:KeyDown(args)
    if LocalPlayer:InVehicle() then
        if (args.key == string.byte(self.topress)) then
            Network:Send("instabrake",true)
        end
    end
end

brake = InstaBrake()
