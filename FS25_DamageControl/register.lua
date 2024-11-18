--
-- register
--
-- # Author: LS-Farmers.de 
-- # date: 18.11.2024
--

if g_specializationManager:getSpecializationByName('damageControl') == nil then
    g_specializationManager:addSpecialization('damageControl', 'damageControl', Utils.getFilename('damageControl.lua', g_currentModDirectory), nil)
end

for vehicleTypeName, vehicleType in pairs(g_vehicleTypeManager.types) do 
    if vehicleType ~= nil and SpecializationUtil.hasSpecialization(Wearable, vehicleType.specializations) and not SpecializationUtil.hasSpecialization(Locomotive, vehicleType.specializations) then
        g_vehicleTypeManager:addSpecialization(vehicleTypeName, 'damageControl')
		print ("  added damageControl to " .. vehicleTypeName)
	-- else
		-- print ("  skipped damageControl for " .. vehicleTypeName)
    end
end