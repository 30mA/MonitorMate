--
-- Table setup SQL for importing into your database to use Monitor Mate.
--

-- --------------------------------------------------------

--
-- Table structure for table `monitormate_fndc`
--

CREATE TABLE IF NOT EXISTS `monitormate_fndc` (
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `address` int(11) NOT NULL DEFAULT '0',
  `device_id` int(11) DEFAULT NULL,
  `shunt_a_current` float DEFAULT NULL,
  `shunt_b_current` float DEFAULT NULL,
  `shunt_c_current` float DEFAULT NULL,
  `accumulated_ah_shunt_a` int(11) DEFAULT NULL,
  `accumulated_kwh_shunt_a` float DEFAULT NULL,
  `accumulated_ah_shunt_b` int(11) DEFAULT NULL,
  `accumulated_kwh_shunt_b` float DEFAULT NULL,
  `accumulated_ah_shunt_c` int(11) DEFAULT NULL,
  `accumulated_kwh_shunt_c` float DEFAULT NULL,
  `days_since_full` float DEFAULT NULL,
  `today_min_soc` int(11) DEFAULT NULL,
  `today_net_input_ah` int(11) DEFAULT NULL,
  `today_net_output_ah` int(11) DEFAULT NULL,
  `today_net_input_kwh` float DEFAULT NULL,
  `today_net_output_kwh` float DEFAULT NULL,
  `charge_factor_corrected_net_batt_ah` float DEFAULT NULL,
  `charge_factor_corrected_net_batt_kwh` float DEFAULT NULL,
  `charge_params_met` varchar(16) DEFAULT NULL,
  `relay_mode` varchar(32) DEFAULT NULL,
  `relay_status` varchar(32) DEFAULT NULL,
  `battery_voltage` float DEFAULT NULL,
  `soc` int(11) DEFAULT NULL,
  `shunt_enabled_a` varchar(16) DEFAULT NULL,
  `shunt_enabled_b` varchar(16) DEFAULT NULL,
  `shunt_enabled_c` varchar(16) DEFAULT NULL,
  `battery_temp` int(11) DEFAULT NULL,
  PRIMARY KEY (`date`,`address`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `monitormate_cc`
--

CREATE TABLE IF NOT EXISTS `monitormate_cc` (
  `date` datetime NOT NULL,
  `address` int(11) NOT NULL,
  `device_id` int(11) NOT NULL,
  `charge_current` int(11) NOT NULL,
  `pv_current` int(11) NOT NULL,
  `pv_voltage` float NOT NULL,
  `daily_kwh` float NOT NULL,
  `aux_mode` varchar(32) NOT NULL,
  `error_modes` varchar(128) NOT NULL,
  `charge_mode` varchar(32) NOT NULL,
  `battery_voltage` float NOT NULL,
  `daily_ah` int(11) NOT NULL,
  PRIMARY KEY (`date`,`address`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `monitormate_fx`
--

CREATE TABLE IF NOT EXISTS `monitormate_fx` (
  `date` datetime NOT NULL,
  `address` int(11) NOT NULL,
  `device_id` int(11) NOT NULL,
  `inverter_current` int(11) NOT NULL,
  `charge_current` int(11) NOT NULL,
  `buy_current` int(11) NOT NULL,
  `ac_input_voltage` int(11) NOT NULL,
  `ac_output_voltage` int(11) NOT NULL,
  `sell_current` int(11) NOT NULL,
  `operational_mode` varchar(32) NOT NULL,
  `error_modes` varchar(128) NOT NULL,
  `ac_mode` varchar(32) NOT NULL,
  `battery_voltage` float NOT NULL,
  `misc` varchar(32) NOT NULL,
  `warning_modes` varchar(128) NOT NULL,
  PRIMARY KEY (`date`,`address`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `monitormate_radian`
--

CREATE TABLE IF NOT EXISTS `monitormate_radian` (
  `date` datetime NOT NULL,
  `address` int(11) NOT NULL,
  `device_id` int(11) NOT NULL,
  `inverter_current_l1` int(11) NOT NULL,
  `inverter_current_l2` int(11) NOT NULL,
  `charge_current_l1` int(11) NOT NULL,
  `charge_current_l2` int(11) NOT NULL,
  `buy_current_l1` int(11) NOT NULL,
  `buy_current_l2` int(11) NOT NULL,
  `ac_input_voltage_l1` int(11) NOT NULL,
  `ac_output_voltage_l1` int(11) NOT NULL,
  `ac_input_voltage_l2` int(11) NOT NULL,
  `ac_output_voltage_l2` int(11) NOT NULL,
  `ac2_input_voltage_l1` int(11) NOT NULL,
  `ac2_input_voltage_l2` int(11) NOT NULL,
  `sell_current_l1` int(11) NOT NULL,
  `sell_current_l2` int(11) NOT NULL,
  `operational_mode` varchar(32) NOT NULL,
  `error_modes` varchar(128) NOT NULL,
  `ac_mode` varchar(32) NOT NULL,
  `battery_voltage` float NOT NULL,
  `misc` text NOT NULL,
  `warning_modes` varchar(128) NOT NULL,
  PRIMARY KEY (`date`,`address`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `monitormate_summary`
--

CREATE TABLE IF NOT EXISTS `monitormate_summary` (
  `date` date NOT NULL,
  `kwh_in` float NOT NULL,
  `kwh_out` float NOT NULL,
  `ah_in` int(11) NOT NULL,
  `ah_out` int(11) NOT NULL,
  `max_temp` int(11) NOT NULL,
  `min_temp` int(11) NOT NULL,
  `max_soc` int(11) NOT NULL,
  `min_soc` int(11) NOT NULL,
  `max_pv_voltage` int(11) NOT NULL,
  PRIMARY KEY (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `monitormate_prefs`
--

CREATE TABLE IF NOT EXISTS `monitormate_prefs` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `setting` text NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT DEFAULT CHARSET=utf8;