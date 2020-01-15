# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  ipgui::add_param $IPINST -name "FIFO_LENGTH"

}

proc update_PARAM_VALUE.FIFO_LENGTH { PARAM_VALUE.FIFO_LENGTH } {
	# Procedure called to update FIFO_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FIFO_LENGTH { PARAM_VALUE.FIFO_LENGTH } {
	# Procedure called to validate FIFO_LENGTH
	return true
}


proc update_MODELPARAM_VALUE.FIFO_LENGTH { MODELPARAM_VALUE.FIFO_LENGTH PARAM_VALUE.FIFO_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FIFO_LENGTH}] ${MODELPARAM_VALUE.FIFO_LENGTH}
}

