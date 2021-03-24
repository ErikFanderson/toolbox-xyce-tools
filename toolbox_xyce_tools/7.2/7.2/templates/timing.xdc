#------------------------------------------------------------------------------
# Set Units (redefine units in every XDC because paranoia)
#------------------------------------------------------------------------------
set_units -verbose \
    -capacitance {{ts.implement.units.capacitance}} \
    -current {{ts.implement.units.current}} \
    -voltage {{ts.implement.units.voltage}} \
    -power {{ts.implement.units.power}} \
    -resistance {{ts.implement.units.resistance}} \
    -altitude {{ts.implement.units.altitude}}
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# Clock constraints 
#------------------------------------------------------------------------------
{% for clk in clocks %}
{% if clk.type == "port" %}
create_clock -verbose -period {{clk.period}} [get_ports {{clk.name}}]
{% elif clk.type == "pin" %}
create_clock -verbose -period {{clk.period}} [get_pins {{clk.name}}]
{% else %}
create_clock -verbose -period {{clk.period}} [get_nets {{clk.name}}]
{% endif %}
{% endfor %}
#------------------------------------------------------------------------------
