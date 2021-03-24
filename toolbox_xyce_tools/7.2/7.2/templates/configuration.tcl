#------------------------------------------------------------------------------
# Set Units (set once after synthesis - this command ignored during synthesis)
#------------------------------------------------------------------------------
set_units -verbose \
    -capacitance {{ts.implement.units.capacitance}} \
    -current {{ts.implement.units.current}} \
    -voltage {{ts.implement.units.voltage}} \
    -power {{ts.implement.units.power}} \
    -resistance {{ts.implement.units.resistance}} \
    -altitude {{ts.implement.units.altitude}}
#------------------------------------------------------------------------------

#add_cells_to_pblock
#create_pblock
#delete_pblock
#remove_cells_from_pblock
#resize_pblock
#create_macro
#delete_macros
#update_macro
#set_package_pin_val

#------------------------------------------------------------------------------
# Device configuration setup (specifies how device configuration is stored and loaded)
# TODO place this in xdc file? physical.xdc or io.xdc?
#------------------------------------------------------------------------------
# Configuration bank voltage select (CFGBVS) 
# CFGBVS => VCCO when CONFIG_VOLTAGE = 3.3V/2.5V
# CFGBVS => GND when CONFIG_VOLTAGE = 1.8V/1.5V
set_property CFGBVS {{ts.implement.config.bank_voltage_select}} [current_design]
set_property CONFIG_VOLTAGE {{ts.implement.config.voltage}} [current_design]

# From UG899
# Use below commands to initially set the configuration mode
set_property BITSTREAM.CONFIG.PERSIST NO [current_design]
set_property CONFIG_MODE {{ts.implement.config.mode}} [current_design]

## TODO if you want config to persist then add below line after above commands
#set_property BITSTREAM.CONFIG.PERSIST YES [current_design]
#------------------------------------------------------------------------------
