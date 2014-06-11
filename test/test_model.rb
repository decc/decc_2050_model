# coding: utf-8
# Test for model
require 'minitest/autorun'
require_relative '../lib/model'

class TestModel < Minitest::Unit::TestCase
  def self.runnable_methods
    puts 'Overriding minitest to run tests in a defined order'
    methods = methods_matching(/^test_/)
  end
  def worksheet; @worksheet ||= init_spreadsheet; end
  def init_spreadsheet; ModelShim.new end
  def test_control_e5; assert_in_delta(1.0, worksheet.control_e5, 0.002); end
  def test_control_e6; assert_equal("２", worksheet.control_e6); end
  def test_control_e7; assert_in_epsilon(2.0, worksheet.control_e7, 0.002); end
  def test_control_e8; assert_in_epsilon(2.0, worksheet.control_e8, 0.002); end
  def test_control_e9; assert_equal("３", worksheet.control_e9); end
  def test_control_e10; assert_in_epsilon(4.0, worksheet.control_e10, 0.002); end
  def test_control_e11; assert_in_delta(1.0, worksheet.control_e11, 0.002); end
  def test_control_e12; assert_in_epsilon(3.0, worksheet.control_e12, 0.002); end
  def test_control_e13; assert_in_epsilon(3.0, worksheet.control_e13, 0.002); end
  def test_control_e14; assert_in_epsilon(3.0, worksheet.control_e14, 0.002); end
  def test_control_e15; assert_in_epsilon(3.0, worksheet.control_e15, 0.002); end
  def test_control_e16; assert_in_epsilon(3.0, worksheet.control_e16, 0.002); end
  def test_control_e17; assert_in_epsilon(4.0, worksheet.control_e17, 0.002); end
  def test_control_e18; assert_in_epsilon(4.0, worksheet.control_e18, 0.002); end
  def test_control_e21; assert_in_epsilon(3.0, worksheet.control_e21, 0.002); end
  def test_control_e22; assert_in_epsilon(3.0, worksheet.control_e22, 0.002); end
  def test_control_e23; assert_in_epsilon(3.0, worksheet.control_e23, 0.002); end
  def test_control_e24; assert_in_epsilon(3.0, worksheet.control_e24, 0.002); end
  def test_control_e26; assert_in_epsilon(3.0, worksheet.control_e26, 0.002); end
  def test_control_e27; assert_in_epsilon(3.0, worksheet.control_e27, 0.002); end
  def test_control_e28; assert_in_epsilon(3.0, worksheet.control_e28, 0.002); end
  def test_control_e30; assert_in_epsilon(3.0, worksheet.control_e30, 0.002); end
  def test_control_e31; assert_in_epsilon(3.0, worksheet.control_e31, 0.002); end
  def test_control_e32; assert_in_epsilon(3.0, worksheet.control_e32, 0.002); end
  def test_control_e33; assert_in_epsilon(3.0, worksheet.control_e33, 0.002); end
  def test_control_e35; assert_in_epsilon(3.0, worksheet.control_e35, 0.002); end
  def test_control_e36; assert_in_epsilon(3.0, worksheet.control_e36, 0.002); end
  def test_control_e37; assert_in_epsilon(3.0, worksheet.control_e37, 0.002); end
  def test_control_e39; assert_in_epsilon(3.0, worksheet.control_e39, 0.002); end
  def test_control_e40; assert_in_epsilon(3.0, worksheet.control_e40, 0.002); end
  def test_control_e41; assert_in_epsilon(3.0, worksheet.control_e41, 0.002); end
  def test_control_e42; assert_in_epsilon(3.0, worksheet.control_e42, 0.002); end
  def test_control_e43; assert_in_epsilon(3.0, worksheet.control_e43, 0.002); end
  def test_control_e44; assert_in_epsilon(3.0, worksheet.control_e44, 0.002); end
  def test_control_e46; assert_in_epsilon(3.0, worksheet.control_e46, 0.002); end
  def test_control_e47; assert_in_epsilon(3.0, worksheet.control_e47, 0.002); end
  def test_control_e49; assert_in_epsilon(2.0, worksheet.control_e49, 0.002); end
  def test_control_e50; assert_in_epsilon(2.0, worksheet.control_e50, 0.002); end
  def test_control_a1; assert_equal("INSTRUCTIONS ARE AVAILABLE AT: http://www.2050-low-carbon-navi.jp", worksheet.control_a1); end
  def test_control_h1; assert_equal("ONCE YOU'VE MADE YOUR CHOICES PRESS F9", worksheet.control_h1); end
  def test_control_n1; assert_equal("Version 1", worksheet.control_n1); end
  def test_control_a2; assert_equal("Trajectory selection", worksheet.control_a2); end
  def test_control_h2; assert_equal("Trajectory/Level Description", worksheet.control_h2); end
  def test_control_n2; assert_equal("Example pathways", worksheet.control_n2); end
  def test_control_t2; assert_equal("Energy supply and demand", worksheet.control_t2); end
  def test_control_af2; assert_equal("Electricity generation", worksheet.control_af2); end
  def test_control_ar2; assert_equal("Emissions and Costs", worksheet.control_ar2); end
  def test_control_a4; assert_equal("Supply", worksheet.control_a4); end
  def test_control_e4; assert_equal("YOUR CHOICE", worksheet.control_e4); end
  def test_control_f4; assert_equal("LIMIT", worksheet.control_f4); end
  def test_control_h4; assert_equal("1 (or A)", worksheet.control_h4); end
  def test_control_i4; assert_equal("2 (or B)", worksheet.control_i4); end
  def test_control_j4; assert_equal("3 (or C)", worksheet.control_j4); end
  def test_control_k4; assert_equal("4 (or D)", worksheet.control_k4); end
  def test_control_l4; assert_equal("5 (or E)", worksheet.control_l4); end
  def test_control_n4; assert_equal("All at level 1", worksheet.control_n4); end
  def test_control_o4; assert_equal("All at level 2", worksheet.control_o4); end
  def test_control_p4; assert_equal("All at level 3", worksheet.control_p4); end
  def test_control_q4; assert_equal("All at level 4", worksheet.control_q4); end
  def test_control_a5; assert_equal("Picture of Our Society in 2050", worksheet.control_a5); end
  def test_control_c5; assert_equal("0.a", worksheet.control_c5); end
  def test_control_d5; assert_equal("Society Scenario (CLICK HERE FOR DETAILS)", worksheet.control_d5); end
  def test_control_f5; assert_equal("E", worksheet.control_f5); end
  def test_control_h5; assert_equal("Research and Development (R&D) society", worksheet.control_h5); end
  def test_control_i5; assert_equal("Made-In-Japan (MIJ) society", worksheet.control_i5); end
  def test_control_j5; assert_equal("Service and Brand (SB) society", worksheet.control_j5); end
  def test_control_k5; assert_equal("Resource Independent (RI) society", worksheet.control_k5); end
  def test_control_l5; assert_equal("Share society", worksheet.control_l5); end
  def test_control_a6; assert_equal("Electricity Generation", worksheet.control_a6); end
  def test_control_b6; assert_equal("Conventional Power Plants", worksheet.control_b6); end
  def test_control_c6; assert_equal("I.a", worksheet.control_c6); end
  def test_control_d6; assert_equal("Nuclear Power Stations", worksheet.control_d6); end
  def test_control_d7; assert_equal("Existing Power Plants", worksheet.control_d7); end
  def test_control_f7; assert_in_epsilon(5.0, worksheet.control_f7, 0.002); end
  def test_control_h7; assert_equal("Shutdown and never restart.", worksheet.control_h7); end
  def test_control_i7; assert_equal("Half of existing plants restart (40-year lifetime).", worksheet.control_i7); end
  def test_control_j7; assert_equal("Full restart (40-year lifetime).", worksheet.control_j7); end
  def test_control_k7; assert_equal("Full restart (50-year lifetime).", worksheet.control_k7); end
  def test_control_l7; assert_equal("Full restart (60-year lifetime).", worksheet.control_l7); end
  def test_control_n7; assert_in_delta(1.0, worksheet.control_n7, 0.002); end
  def test_control_o7; assert_in_epsilon(2.0, worksheet.control_o7, 0.002); end
  def test_control_p7; assert_in_epsilon(3.0, worksheet.control_p7, 0.002); end
  def test_control_q7; assert_in_epsilon(4.0, worksheet.control_q7, 0.002); end
  def test_control_d8; assert_equal("New Build Nuclear Power Plants", worksheet.control_d8); end
  def test_control_f8; assert_in_epsilon(5.0, worksheet.control_f8, 0.002); end
  def test_control_h8; assert_equal("Negative: No new builds", worksheet.control_h8); end
  def test_control_i8; assert_equal("Fair: Limited to those only currently under construction with 5 years delay (Ohma 1 and Shimane 3)", worksheet.control_i8); end
  def test_control_j8; assert_equal("Positive: TEPCO Higashidori 1 and new builds allowed as replacement for keeping current capacity after 2035, 1GW/yr after 2040.", worksheet.control_j8); end
  def test_control_k8; assert_equal("Aggressive: New builds after 2035, 1.5GW/yr after 2040.", worksheet.control_k8); end
  def test_control_l8; assert_equal("Super aggressive: New builds after 2035, 2GW/yr after 2040.", worksheet.control_l8); end
  def test_control_n8; assert_in_delta(1.0, worksheet.control_n8, 0.002); end
  def test_control_o8; assert_in_epsilon(2.0, worksheet.control_o8, 0.002); end
  def test_control_p8; assert_in_epsilon(3.0, worksheet.control_p8, 0.002); end
  def test_control_q8; assert_in_epsilon(4.0, worksheet.control_q8, 0.002); end
  def test_control_c9; assert_equal("I.b", worksheet.control_c9); end
  def test_control_d9; assert_equal("Conventional Power Plants", worksheet.control_d9); end
  def test_control_d10; assert_equal("Fuel Mix for Conventional Plants", worksheet.control_d10); end
  def test_control_f10; assert_in_epsilon(4.0, worksheet.control_f10, 0.002); end
  def test_control_h10; assert_equal("Similar to the current situation: gas-to-coal ratio remains 1:1, and no introduction of biomass in 2050.", worksheet.control_h10); end
  def test_control_i10; assert_equal("Gas-to-coal ratio increases to 1.7 and biomass electricity share increases to 10% in 2050.", worksheet.control_i10); end
  def test_control_j10; assert_equal("Gas-to-coal ratio increase to 2.5 and biomass electricity share increases to 20% in 2050.", worksheet.control_j10); end
  def test_control_k10; assert_equal("Gas-to-coal ratio increase to 4, and biomass electricity share increases to 40% in 2050.", worksheet.control_k10); end
  def test_control_n10; assert_in_delta(1.0, worksheet.control_n10, 0.002); end
  def test_control_o10; assert_in_epsilon(2.0, worksheet.control_o10, 0.002); end
  def test_control_p10; assert_in_epsilon(3.0, worksheet.control_p10, 0.002); end
  def test_control_q10; assert_in_epsilon(4.0, worksheet.control_q10, 0.002); end
  def test_control_d11; assert_equal("Availability of CCS Technology", worksheet.control_d11); end
  def test_control_f11; assert_in_epsilon(4.0, worksheet.control_f11, 0.002); end
  def test_control_h11; assert_equal("Demonstration plants only; no roll-out of CCS.", worksheet.control_h11); end
  def test_control_i11; assert_equal("20% of both coal- and gas-fired power plants in 2050 are equipped with CCS.", worksheet.control_i11); end
  def test_control_j11; assert_equal("50% of both coal- and gas-fired power plants in 2050 are equipped with CCS.", worksheet.control_j11); end
  def test_control_k11; assert_equal("80% of both coal-and gas-fired power plants in 2050 are equipped with CCS.", worksheet.control_k11); end
  def test_control_n11; assert_in_delta(1.0, worksheet.control_n11, 0.002); end
  def test_control_o11; assert_in_epsilon(2.0, worksheet.control_o11, 0.002); end
  def test_control_p11; assert_in_epsilon(3.0, worksheet.control_p11, 0.002); end
  def test_control_q11; assert_in_epsilon(4.0, worksheet.control_q11, 0.002); end
  def test_control_b12; assert_equal("Renewables", worksheet.control_b12); end
  def test_control_c12; assert_equal("II.a", worksheet.control_c12); end
  def test_control_d12; assert_equal("Solar PV", worksheet.control_d12); end
  def test_control_f12; assert_in_epsilon(5.0, worksheet.control_f12, 0.002); end
  def test_control_h12; assert_equal("Installed capacity reaches 13.8 GW in 2015, generating 14.5 TWh/y of electricity. In 2050, installed capacity is nearly doubled to 26 GW, generating 27 TWh/y of electricity.", worksheet.control_h12); end
  def test_control_i12; assert_equal("Installed capacity reaches 87 GW in 2050 by an increase of 2 GW per year, generating 92/y TWh of electricity.", worksheet.control_i12); end
  def test_control_j12; assert_equal("Installed capacity reaches 150 GW in 2050, generating  158 TWh/y of electricity.", worksheet.control_j12); end
  def test_control_k12; assert_equal("Installed capacity reaches 226 GW in 2050, generating 238 TWh/y of electricity.", worksheet.control_k12); end
  def test_control_l12; assert_equal("Maximum potential with installed capacity of 248 GW in 2050, generating 261 TWh/y of electricity.", worksheet.control_l12); end
  def test_control_n12; assert_in_delta(1.0, worksheet.control_n12, 0.002); end
  def test_control_o12; assert_in_epsilon(2.0, worksheet.control_o12, 0.002); end
  def test_control_p12; assert_in_epsilon(3.0, worksheet.control_p12, 0.002); end
  def test_control_q12; assert_in_epsilon(4.0, worksheet.control_q12, 0.002); end
  def test_control_c13; assert_equal("II.b.1", worksheet.control_c13); end
  def test_control_d13; assert_equal("Onshore Wind", worksheet.control_d13); end
  def test_control_f13; assert_in_epsilon(5.0, worksheet.control_f13, 0.002); end
  def test_control_h13; assert_equal("Frozen technology; zero new build rate; capacity remains 2.67 GW (as of Jan. 2014), generating  4.7 TWh of electricity in 2050.", worksheet.control_h13); end
  def test_control_i13; assert_equal("Installed capacity reaches 7 GW in 2020 and maintains till 2050, generating 12 TWh/y of electricity. ", worksheet.control_i13); end
  def test_control_j13; assert_equal("Installed capacity reaches 18 GW in 2050, generating 32 TWh/y of electricity. ", worksheet.control_j13); end
  def test_control_k13; assert_equal("Installed capacity reaches 25 GW in 2050, generating 44 TWh/y of electricity. ", worksheet.control_k13); end
  def test_control_l13; assert_equal("Maximum potential with installed capacity of 35 GW in 2050, generating 61 TWh/y of electricity.", worksheet.control_l13); end
  def test_control_n13; assert_in_delta(1.0, worksheet.control_n13, 0.002); end
  def test_control_o13; assert_in_epsilon(2.0, worksheet.control_o13, 0.002); end
  def test_control_p13; assert_in_epsilon(3.0, worksheet.control_p13, 0.002); end
  def test_control_q13; assert_in_epsilon(4.0, worksheet.control_q13, 0.002); end
  def test_control_c14; assert_equal("II.b.2", worksheet.control_c14); end
  def test_control_d14; assert_equal("Offshore Wind", worksheet.control_d14); end
  def test_control_f14; assert_in_epsilon(5.0, worksheet.control_f14, 0.002); end
  def test_control_h14; assert_equal("Frozen technology; zero new build rate; capacity remains 2010 level (0.03 GW) all the way to 2050", worksheet.control_h14); end
  def test_control_i14; assert_equal("Low effort; 4.5 GW capacity in 2050; 300 turbines (15MW) deliver 12 TWh/yr electricity", worksheet.control_i14); end
  def test_control_j14; assert_equal("Medium effort; 6.5 GW capacity in 2050; 430 turbines (15MW) deliver 17 TWh/yr of electricity.", worksheet.control_j14); end
  def test_control_k14; assert_equal("High effort; 7.5 GW capacity in 2050; 500 turbines (15MW) deliver 20 TWh/yr of electricity", worksheet.control_k14); end
  def test_control_l14; assert_equal("Maximum potential with installed capacity of 8 GW in 2050, generating 21 TWh/y of electricity.", worksheet.control_l14); end
  def test_control_n14; assert_in_delta(1.0, worksheet.control_n14, 0.002); end
  def test_control_o14; assert_in_epsilon(2.0, worksheet.control_o14, 0.002); end
  def test_control_p14; assert_in_epsilon(3.0, worksheet.control_p14, 0.002); end
  def test_control_q14; assert_in_epsilon(4.0, worksheet.control_q14, 0.002); end
  def test_control_c15; assert_equal("II.b.3", worksheet.control_c15); end
  def test_control_d15; assert_equal("Floating Wind", worksheet.control_d15); end
  def test_control_f15; assert_in_epsilon(5.0, worksheet.control_f15, 0.002); end
  def test_control_h15; assert_equal("Frozen technology; zero capacity, zero new build rate; no electricity generation.", worksheet.control_h15); end
  def test_control_i15; assert_equal("Low effort; 7.5GW capacity in 2050;  500 turbines (15MW) deliver 20 TWh/yr of electricity.", worksheet.control_i15); end
  def test_control_j15; assert_equal("Medium effort; 16.5GW capacity in 2050; 1,100 turbines (15MW) deliver 43 TWh/yr of electricity.", worksheet.control_j15); end
  def test_control_k15; assert_equal("High effort; 17.5 GW capacity in 2050; 1,200 (15MW) turbines deliver 46 TWh/yr of electricity.", worksheet.control_k15); end
  def test_control_l15; assert_equal("Maximum potential with installed capacity of 27 GW in 2050, generating 71 TWh/y of electricity.", worksheet.control_l15); end
  def test_control_n15; assert_in_delta(1.0, worksheet.control_n15, 0.002); end
  def test_control_o15; assert_in_epsilon(2.0, worksheet.control_o15, 0.002); end
  def test_control_p15; assert_in_epsilon(3.0, worksheet.control_p15, 0.002); end
  def test_control_q15; assert_in_epsilon(4.0, worksheet.control_q15, 0.002); end
  def test_control_c16; assert_equal("II.c", worksheet.control_c16); end
  def test_control_d16; assert_equal("Small-Medium Hydropower", worksheet.control_d16); end
  def test_control_f16; assert_in_epsilon(5.0, worksheet.control_f16, 0.002); end
  def test_control_h16; assert_equal("No further efforts and maintain the same level as of 2010 (9.6 GW) up to 2050, generating 50 TWh/y of electricity. ", worksheet.control_h16); end
  def test_control_i16; assert_equal("Low efforst; 11 GW capacity in 2050, generating  58 TWh/y of electricity.", worksheet.control_i16); end
  def test_control_j16; assert_equal("Medium effort; 14.3 GW capacity in 2050, deliver 75 TWh/yr of electricity.", worksheet.control_j16); end
  def test_control_k16; assert_equal("High effort; 17.3 GW capacity in 2050, deliver 91 TWh/yr of electricity.", worksheet.control_k16); end
  def test_control_l16; assert_equal("Maximum potential with installed capacity of 23.4 GW in 2050, generating 123 TWh/y of electricity.", worksheet.control_l16); end
  def test_control_n16; assert_in_delta(1.0, worksheet.control_n16, 0.002); end
  def test_control_o16; assert_in_epsilon(2.0, worksheet.control_o16, 0.002); end
  def test_control_p16; assert_in_epsilon(3.0, worksheet.control_p16, 0.002); end
  def test_control_q16; assert_in_epsilon(4.0, worksheet.control_q16, 0.002); end
  def test_control_c17; assert_equal("II.d", worksheet.control_c17); end
  def test_control_d17; assert_equal("Geothermal Electricity", worksheet.control_d17); end
  def test_control_f17; assert_in_epsilon(5.0, worksheet.control_f17, 0.002); end
  def test_control_h17; assert_equal("Little installed capacity of 0.5 GW in 2050 (same as of 2010 level), generating 3.3 TWh of electricity.", worksheet.control_h17); end
  def test_control_i17; assert_equal("Low efforst; 4.3 GW capacity in 2050, generating  26 TWh/y of electricity.", worksheet.control_i17); end
  def test_control_j17; assert_equal("Medium effort; 6.4 GW capacity in 2050, deliver 39 TWh/yr of electricity.", worksheet.control_j17); end
  def test_control_k17; assert_equal("High effort; 7.9 GW capacity in 2050, deliver 49 TWh/yr of electricity.", worksheet.control_k17); end
  def test_control_l17; assert_equal("Maximum potential with installed capacity of 14 GW in 2050, generating 86 TWh/y of electricity.", worksheet.control_l17); end
  def test_control_n17; assert_in_delta(1.0, worksheet.control_n17, 0.002); end
  def test_control_o17; assert_in_epsilon(2.0, worksheet.control_o17, 0.002); end
  def test_control_p17; assert_in_epsilon(3.0, worksheet.control_p17, 0.002); end
  def test_control_q17; assert_in_epsilon(4.0, worksheet.control_q17, 0.002); end
  def test_control_c18; assert_equal("II.e", worksheet.control_c18); end
  def test_control_d18; assert_equal("Ocean Power", worksheet.control_d18); end
  def test_control_f18; assert_in_epsilon(5.0, worksheet.control_f18, 0.002); end
  def test_control_h18; assert_equal("None in 2050", worksheet.control_h18); end
  def test_control_i18; assert_equal("Low effort; 5 GW capacity in 2050, generating 9.5 TWh/y of electricity.", worksheet.control_i18); end
  def test_control_j18; assert_equal("Medium effort; 8 GW capacity in 2050, generating 34 TWh/y of electricity.", worksheet.control_j18); end
  def test_control_k18; assert_equal("High efforts; 14 GW capacity in 2050, generating 59 TWh/y of electricity.", worksheet.control_k18); end
  def test_control_l18; assert_equal("Same as of L4.", worksheet.control_l18); end
  def test_control_n18; assert_in_delta(1.0, worksheet.control_n18, 0.002); end
  def test_control_o18; assert_in_epsilon(2.0, worksheet.control_o18, 0.002); end
  def test_control_p18; assert_in_epsilon(3.0, worksheet.control_p18, 0.002); end
  def test_control_q18; assert_in_epsilon(4.0, worksheet.control_q18, 0.002); end
  def test_control_a19; assert_equal("Demand", worksheet.control_a19); end
  def test_control_a20; assert_equal("Transport", worksheet.control_a20); end
  def test_control_b20; assert_equal("Domestic Transport", worksheet.control_b20); end
  def test_control_c20; assert_equal("IV.a", worksheet.control_c20); end
  def test_control_d20; assert_equal("Passenger Transport", worksheet.control_d20); end
  def test_control_d21; assert_equal("Passenger Transport Behaviour", worksheet.control_d21); end
  def test_control_f21; assert_in_epsilon(4.0, worksheet.control_f21, 0.002); end
  def test_control_h21; assert_equal("In 2050, an average Japanese travels 12,407 km/yr, more than today (10,641 km/yr) and uses less car (51% of the total travel) but more airplanes (9%).", worksheet.control_h21); end
  def test_control_i21; assert_equal("L2 is set as a middle level of L1 and L3.", worksheet.control_i21); end
  def test_control_j21; assert_equal("In 2050, an average Japanese travels the same as of today (10,641 km/y), using cars (60% of the total travel), rail (29%), buses (6%) and airplanes (5%). ", worksheet.control_j21); end
  def test_control_k21; assert_equal("In 2050, an average Japanese will travel 10,324 km/yr, less than of today, and uses less car (49% of total travel) and more rail (39%).", worksheet.control_k21); end
  def test_control_n21; assert_in_delta(1.0, worksheet.control_n21, 0.002); end
  def test_control_o21; assert_in_epsilon(2.0, worksheet.control_o21, 0.002); end
  def test_control_p21; assert_in_epsilon(3.0, worksheet.control_p21, 0.002); end
  def test_control_q21; assert_in_epsilon(4.0, worksheet.control_q21, 0.002); end
  def test_control_d22; assert_equal("Shift to Zero Emission Transport", worksheet.control_d22); end
  def test_control_f22; assert_in_epsilon(4.0, worksheet.control_f22, 0.002); end
  def test_control_h22; assert_equal("In 2050, ICE-based vehicles will be the main technology. For car, 70% ICE/HEV, 13% PHEV and 17% EV/FCV; For bus, 90% ICE, 10% HEV; For rail, 10% diesel and 90% electric.", worksheet.control_h22); end
  def test_control_i22; assert_equal("In 2050, ICE and non-ICE vehicles will share the roles. For car, 50% ICE/HEV, 15% PHEV and 35% EV/FCV; For bus, 50% ICE and 50% HEV; For rail, 100% electric. ", worksheet.control_i22); end
  def test_control_j22; assert_equal("In 2050, all technologies of ICE/HEV, PHEV, and EV/FCV will take certain roles. For car, 40% ICE/HEV, 20% PHEV and 40% EV/FCV; For bus, 20% ICE, 60% HEV and 20% EV/FCV; For rail, 100% electric.  ", worksheet.control_j22); end
  def test_control_k22; assert_equal("ICE technology will be phased out in 2050. For cars and trains, 100% will be zero emissions. For buses, 50% will be HEV and 50% will be EV/FCV.", worksheet.control_k22); end
  def test_control_n22; assert_in_delta(1.0, worksheet.control_n22, 0.002); end
  def test_control_o22; assert_in_epsilon(2.0, worksheet.control_o22, 0.002); end
  def test_control_p22; assert_in_epsilon(3.0, worksheet.control_p22, 0.002); end
  def test_control_q22; assert_in_epsilon(4.0, worksheet.control_q22, 0.002); end
  def test_control_d23; assert_equal("Choice of Zero Emission Vehicles: FCV or EV", worksheet.control_d23); end
  def test_control_f23; assert_in_epsilon(4.0, worksheet.control_f23, 0.002); end
  def test_control_h23; assert_equal("Among zero emission vehicles (cars and buses), 100% are EVs (no FCVs) by 2050.", worksheet.control_h23); end
  def test_control_i23; assert_equal("Among zero emission vehicles (cars and buses), 70% EVs and 30% FCVs by 2050.", worksheet.control_i23); end
  def test_control_j23; assert_equal("Among zero emission vehicles (cars and buses), 30% EVs and 70% FCVs by 2050.", worksheet.control_j23); end
  def test_control_k23; assert_equal("Among zero emission vehicles (cars and buses), 100% FCVs (no EVs) by 2050.", worksheet.control_k23); end
  def test_control_n23; assert_in_delta(1.0, worksheet.control_n23, 0.002); end
  def test_control_o23; assert_in_epsilon(2.0, worksheet.control_o23, 0.002); end
  def test_control_p23; assert_in_epsilon(3.0, worksheet.control_p23, 0.002); end
  def test_control_q23; assert_in_epsilon(4.0, worksheet.control_q23, 0.002); end
  def test_control_d24; assert_equal("Biofuel Blending", worksheet.control_d24); end
  def test_control_f24; assert_in_epsilon(4.0, worksheet.control_f24, 0.002); end
  def test_control_h24; assert_equal("No blending of biofuels.", worksheet.control_h24); end
  def test_control_i24; assert_equal("5% blending  of biofuels in 2050.", worksheet.control_i24); end
  def test_control_j24; assert_equal("10% blending  of biofuels in 2050.", worksheet.control_j24); end
  def test_control_k24; assert_equal("85% blending  of biofuels in 2050.", worksheet.control_k24); end
  def test_control_n24; assert_in_delta(1.0, worksheet.control_n24, 0.002); end
  def test_control_o24; assert_in_epsilon(2.0, worksheet.control_o24, 0.002); end
  def test_control_p24; assert_in_epsilon(3.0, worksheet.control_p24, 0.002); end
  def test_control_q24; assert_in_epsilon(4.0, worksheet.control_q24, 0.002); end
  def test_control_c25; assert_equal("IV.b", worksheet.control_c25); end
  def test_control_d25; assert_equal("Freight Transport", worksheet.control_d25); end
  def test_control_d26; assert_equal("Freight Transport Behaviour", worksheet.control_d26); end
  def test_control_f26; assert_in_epsilon(4.0, worksheet.control_f26, 0.002); end
  def test_control_h26; assert_equal("Transport mode is the same as of today, with trucks 63%, rail 3.8%, ship 33% and air 0.2%.", worksheet.control_h26); end
  def test_control_i26; assert_equal("Transport mode shifs from ships to trucks, with truck 68%, rail 3.8%, ship 28% and air 0.2%.", worksheet.control_i26); end
  def test_control_j26; assert_equal("Transport mode shifs from ships to rail, with truck 63%, rail 8.8%, ship 28% and air 0.2%.", worksheet.control_j26); end
  def test_control_k26; assert_equal("Transport mode shifs from trucks to rail, with truck 58%, rail 8.8%, ship 33% and air 0.2%.", worksheet.control_k26); end
  def test_control_n26; assert_in_delta(1.0, worksheet.control_n26, 0.002); end
  def test_control_o26; assert_in_epsilon(2.0, worksheet.control_o26, 0.002); end
  def test_control_p26; assert_in_epsilon(3.0, worksheet.control_p26, 0.002); end
  def test_control_q26; assert_in_epsilon(4.0, worksheet.control_q26, 0.002); end
  def test_control_d27; assert_equal("Shift to Low Emission Transport", worksheet.control_d27); end
  def test_control_f27; assert_in_epsilon(4.0, worksheet.control_f27, 0.002); end
  def test_control_h27; assert_equal("In 2050, ICE-based trucks take the major role, with ICE 95% and HEV 5%.", worksheet.control_h27); end
  def test_control_i27; assert_equal("In 2050, 100% trucks will be HEVs.", worksheet.control_i27); end
  def test_control_j27; assert_equal("In 2050, HEVs and zero emission trucks (EV/FCV) share the roles, with HEV 50%, 15% EV and 35% FCVs.", worksheet.control_j27); end
  def test_control_k27; assert_equal("In 2050, 100% of trucks will be FCVs.", worksheet.control_k27); end
  def test_control_n27; assert_in_delta(1.0, worksheet.control_n27, 0.002); end
  def test_control_o27; assert_in_epsilon(2.0, worksheet.control_o27, 0.002); end
  def test_control_p27; assert_in_epsilon(3.0, worksheet.control_p27, 0.002); end
  def test_control_q27; assert_in_epsilon(4.0, worksheet.control_q27, 0.002); end
  def test_control_ak27; assert_equal(" ", worksheet.control_ak27); end
  def test_control_d28; assert_equal("Biofuel Blending", worksheet.control_d28); end
  def test_control_f28; assert_in_epsilon(4.0, worksheet.control_f28, 0.002); end
  def test_control_h28; assert_equal("No blending of biofuels.", worksheet.control_h28); end
  def test_control_i28; assert_equal("5% blending  of biofuels in 2050.", worksheet.control_i28); end
  def test_control_j28; assert_equal("10% blending  of biofuels in 2050.", worksheet.control_j28); end
  def test_control_k28; assert_equal("85% blending  of biofuels in 2050.", worksheet.control_k28); end
  def test_control_n28; assert_in_delta(1.0, worksheet.control_n28, 0.002); end
  def test_control_o28; assert_in_epsilon(2.0, worksheet.control_o28, 0.002); end
  def test_control_p28; assert_in_epsilon(3.0, worksheet.control_p28, 0.002); end
  def test_control_q28; assert_in_epsilon(4.0, worksheet.control_q28, 0.002); end
  def test_control_a29; assert_equal("Heating, Cooling and Hot Water Supply", worksheet.control_a29); end
  def test_control_b29; assert_equal("Residential sector", worksheet.control_b29); end
  def test_control_c29; assert_equal("V.a.1", worksheet.control_c29); end
  def test_control_d29; assert_equal("Residential Space Heating and Cooling", worksheet.control_d29); end
  def test_control_d30; assert_equal("Home Energy Management Level (for residential space heating, cooling and hot water)", worksheet.control_d30); end
  def test_control_f30; assert_in_epsilon(4.0, worksheet.control_f30, 0.002); end
  def test_control_h30; assert_equal("No Home Energy Management System (HEMS) installed.", worksheet.control_h30); end
  def test_control_i30; assert_equal("HEMS reduces energy demand by 7%.", worksheet.control_i30); end
  def test_control_j30; assert_equal("HEMS reduces energy demand by 9%.", worksheet.control_j30); end
  def test_control_k30; assert_equal("HEMS reduces energy demand by 10%.", worksheet.control_k30); end
  def test_control_n30; assert_in_delta(1.0, worksheet.control_n30, 0.002); end
  def test_control_o30; assert_in_epsilon(2.0, worksheet.control_o30, 0.002); end
  def test_control_p30; assert_in_epsilon(3.0, worksheet.control_p30, 0.002); end
  def test_control_q30; assert_in_epsilon(4.0, worksheet.control_q30, 0.002); end
  def test_control_d31; assert_equal("Home Insulation", worksheet.control_d31); end
  def test_control_f31; assert_in_epsilon(4.0, worksheet.control_f31, 0.002); end
  def test_control_h31; assert_equal("Negligilbe reduction in domestic heating and cooling through insulation.", worksheet.control_h31); end
  def test_control_i31; assert_equal("35% reduction in heating and cooling demand through insulation.", worksheet.control_i31); end
  def test_control_j31; assert_equal("38% reduction in heating and cooling demand through insulation.", worksheet.control_j31); end
  def test_control_k31; assert_equal("40% reduction in heating and cooling demand through insulation.", worksheet.control_k31); end
  def test_control_n31; assert_in_delta(1.0, worksheet.control_n31, 0.002); end
  def test_control_o31; assert_in_epsilon(2.0, worksheet.control_o31, 0.002); end
  def test_control_p31; assert_in_epsilon(3.0, worksheet.control_p31, 0.002); end
  def test_control_q31; assert_in_epsilon(4.0, worksheet.control_q31, 0.002); end
  def test_control_d32; assert_equal("Electrification", worksheet.control_d32); end
  def test_control_f32; assert_in_epsilon(4.0, worksheet.control_f32, 0.002); end
  def test_control_h32; assert_equal("Electrification rate remains at 2005 level. In 2050, 85% of total energy use is natural gas. ", worksheet.control_h32); end
  def test_control_i32; assert_equal("The proportion of new domestic heating systems using electricity increases to 50% in 2050.", worksheet.control_i32); end
  def test_control_j32; assert_equal("The proportion of new domestic heating systems using electricity increases to 60% in 2050.", worksheet.control_j32); end
  def test_control_k32; assert_equal("The proportion of new domestic heating systems using electricity increases to 80% in 2050.", worksheet.control_k32); end
  def test_control_n32; assert_in_delta(1.0, worksheet.control_n32, 0.002); end
  def test_control_o32; assert_in_epsilon(2.0, worksheet.control_o32, 0.002); end
  def test_control_p32; assert_in_epsilon(3.0, worksheet.control_p32, 0.002); end
  def test_control_q32; assert_in_epsilon(4.0, worksheet.control_q32, 0.002); end
  def test_control_d33; assert_equal("Energy Efficiency", worksheet.control_d33); end
  def test_control_f33; assert_in_epsilon(4.0, worksheet.control_f33, 0.002); end
  def test_control_h33; assert_equal("In 2050, COP for heating and cooling air conditioners keep the same level of 2010 and energy efficiency gas and kerosene boilers remains the same levels of 2010..", worksheet.control_h33); end
  def test_control_i33; assert_equal("COP for heating and cooling air conditioners increase over time up to 2050, but energy efficiency remains the same for gas and kerosene boilers.", worksheet.control_i33); end
  def test_control_j33; assert_equal("Same as L2.", worksheet.control_j33); end
  def test_control_k33; assert_equal("Same as L2.", worksheet.control_k33); end
  def test_control_n33; assert_in_delta(1.0, worksheet.control_n33, 0.002); end
  def test_control_o33; assert_in_epsilon(2.0, worksheet.control_o33, 0.002); end
  def test_control_p33; assert_in_epsilon(3.0, worksheet.control_p33, 0.002); end
  def test_control_q33; assert_in_epsilon(4.0, worksheet.control_q33, 0.002); end
  def test_control_c34; assert_equal("V.a.2", worksheet.control_c34); end
  def test_control_d34; assert_equal("Residential Hot Water Supply", worksheet.control_d34); end
  def test_control_d35; assert_equal("Choice of Appliances", worksheet.control_d35); end
  def test_control_f35; assert_equal("D", worksheet.control_f35); end
  def test_control_h35; assert_equal("Half of hot water is supplied by advanced gas boilers. Electric heat pump share remains low at 10% in 2050.", worksheet.control_h35); end
  def test_control_i35; assert_equal("Half of hot water is supplied by gas-fired fuel cogeneration. Electric heat pump share remains low at 10% in 2050.", worksheet.control_i35); end
  def test_control_j35; assert_equal("Major electrification takes place, with half of hot water being supplied by electric heat pumps. ", worksheet.control_j35); end
  def test_control_k35; assert_equal("Further electrification takes place, with 70% of hot water being supplied by electric heat pumps.", worksheet.control_k35); end
  def test_control_n35; assert_in_delta(1.0, worksheet.control_n35, 0.002); end
  def test_control_o35; assert_in_epsilon(2.0, worksheet.control_o35, 0.002); end
  def test_control_p35; assert_in_epsilon(3.0, worksheet.control_p35, 0.002); end
  def test_control_q35; assert_in_epsilon(4.0, worksheet.control_q35, 0.002); end
  def test_control_d36; assert_equal("Energy Efficiency of Appliances", worksheet.control_d36); end
  def test_control_f36; assert_in_epsilon(4.0, worksheet.control_f36, 0.002); end
  def test_control_h36; assert_equal("No change in energy efficiency.", worksheet.control_h36); end
  def test_control_i36; assert_equal("COP for heat pump/electricity increases moderately. Efficiency for heat generation FC cogeneration goes down significantly, but increases substantially for electricity generation FC cogeneration. Energy efficiency of conventional boilers (electricity, gas and kerosene) remains unchanged.", worksheet.control_i36); end
  def test_control_j36; assert_equal("Same as L2.", worksheet.control_j36); end
  def test_control_k36; assert_equal("Same as L2.", worksheet.control_k36); end
  def test_control_n36; assert_in_delta(1.0, worksheet.control_n36, 0.002); end
  def test_control_o36; assert_in_epsilon(2.0, worksheet.control_o36, 0.002); end
  def test_control_p36; assert_in_epsilon(3.0, worksheet.control_p36, 0.002); end
  def test_control_q36; assert_in_epsilon(4.0, worksheet.control_q36, 0.002); end
  def test_control_d37; assert_equal("Solarthermal boilers", worksheet.control_d37); end
  def test_control_f37; assert_in_epsilon(4.0, worksheet.control_f37, 0.002); end
  def test_control_h37; assert_equal("As today, 2.4 million units are installed in 2050, which is about 5% of total households in 2050.", worksheet.control_h37); end
  def test_control_i37; assert_equal("In 2050, 14 million units are installed, which is more than 30% of total households in 2050.", worksheet.control_i37); end
  def test_control_j37; assert_equal("In 2050, 21 million units are installed, which is more than 45% of total households in 2050.", worksheet.control_j37); end
  def test_control_k37; assert_equal("In 2050, 26 million units are installed, which is nearly 60% of total households in 2050.", worksheet.control_k37); end
  def test_control_n37; assert_in_delta(1.0, worksheet.control_n37, 0.002); end
  def test_control_o37; assert_in_epsilon(2.0, worksheet.control_o37, 0.002); end
  def test_control_p37; assert_in_epsilon(3.0, worksheet.control_p37, 0.002); end
  def test_control_q37; assert_in_epsilon(4.0, worksheet.control_q37, 0.002); end
  def test_control_b38; assert_equal("Commercial sector", worksheet.control_b38); end
  def test_control_c38; assert_equal("V.b", worksheet.control_c38); end
  def test_control_d38; assert_equal("Commercial Heating, Cooling and Hot Water Supply", worksheet.control_d38); end
  def test_control_d39; assert_equal("Energy service demand per floor space", worksheet.control_d39); end
  def test_control_f39; assert_in_epsilon(4.0, worksheet.control_f39, 0.002); end
  def test_control_h39; assert_equal("In 2050, energy service demand per floor space for heating, cooling and hot water generation increases by 20% compared to 2010 level.", worksheet.control_h39); end
  def test_control_i39; assert_equal("In 2050, energy service demand per floor space for heating, cooling and hot water generation increases by 10% compared to 2010 level.", worksheet.control_i39); end
  def test_control_j39; assert_equal("In 2050, energy service demand per floor space for heating, cooling and hot water generation remains the same level of 2010.", worksheet.control_j39); end
  def test_control_k39; assert_equal("In 2050, energy service demand per floor space for heating, cooling and hot water generation decreases by 20% compared to 2010 level.", worksheet.control_k39); end
  def test_control_n39; assert_in_delta(1.0, worksheet.control_n39, 0.002); end
  def test_control_o39; assert_in_epsilon(2.0, worksheet.control_o39, 0.002); end
  def test_control_p39; assert_in_epsilon(3.0, worksheet.control_p39, 0.002); end
  def test_control_q39; assert_in_epsilon(4.0, worksheet.control_q39, 0.002); end
  def test_control_d40; assert_equal("Building Insulation", worksheet.control_d40); end
  def test_control_f40; assert_in_epsilon(4.0, worksheet.control_f40, 0.002); end
  def test_control_h40; assert_equal("Negligilbe reduction in commercial heating and cooling through insulation.", worksheet.control_h40); end
  def test_control_i40; assert_equal("20% reduction in heating, cooling and hot water demand through insulation.", worksheet.control_i40); end
  def test_control_j40; assert_equal("42% reduction inheating, cooling and hot water demand through insulation.", worksheet.control_j40); end
  def test_control_k40; assert_equal("44% reduction in heating, cooling and hot water demand through insulation.", worksheet.control_k40); end
  def test_control_n40; assert_in_delta(1.0, worksheet.control_n40, 0.002); end
  def test_control_o40; assert_in_epsilon(2.0, worksheet.control_o40, 0.002); end
  def test_control_p40; assert_in_epsilon(3.0, worksheet.control_p40, 0.002); end
  def test_control_q40; assert_in_epsilon(4.0, worksheet.control_q40, 0.002); end
  def test_control_d41; assert_equal("Choice of Appliances", worksheet.control_d41); end
  def test_control_f41; assert_in_epsilon(4.0, worksheet.control_f41, 0.002); end
  def test_control_h41; assert_equal("For heating, shift from kerosene/gas boilers (62%) to air conditioner (12%); for cooling, shift from air conditioner (60%) to heat pump (18%); for hot water, from conventional (75%) to energy efficient (20%) boilers.", worksheet.control_h41); end
  def test_control_i41; assert_equal("For heating, shift from kerosene/gas boilers (54%) to air conditioner (16%); for cooling, shift from air conditioner (56%) to heat pump (22%); for hot water, from conventional (60%) to energy efficient (35%) boilers.", worksheet.control_i41); end
  def test_control_j41; assert_equal("For heating, shift from kerosene/gas boilers (46%) to air conditioner (20%); for cooling, shift from air conditioner (52%) to heat pump (26%); for hot water, from conventional (45%) to energy efficient (50%) boilers.", worksheet.control_j41); end
  def test_control_k41; assert_equal("For heating, shift from kerosene/gas boilers (38%) to air conditioner (24%); for cooling, shift from air conditioner (48%) to heat pump (30%); for hot water, from conventional (25%) to energy efficient (65%) boilers.", worksheet.control_k41); end
  def test_control_n41; assert_in_delta(1.0, worksheet.control_n41, 0.002); end
  def test_control_o41; assert_in_epsilon(2.0, worksheet.control_o41, 0.002); end
  def test_control_p41; assert_in_epsilon(3.0, worksheet.control_p41, 0.002); end
  def test_control_q41; assert_in_epsilon(4.0, worksheet.control_q41, 0.002); end
  def test_control_a42; assert_equal("Cooking, Lighting and Appliances", worksheet.control_a42); end
  def test_control_b42; assert_equal("Residential sector", worksheet.control_b42); end
  def test_control_c42; assert_equal("VI.a", worksheet.control_c42); end
  def test_control_d42; assert_equal("Residential Cooking, Lighting and Appliances", worksheet.control_d42); end
  def test_control_d43; assert_equal("Energy Demand per Household", worksheet.control_d43); end
  def test_control_f43; assert_in_epsilon(4.0, worksheet.control_f43, 0.002); end
  def test_control_h43; assert_equal("In 2050, energy service demand per household for cooking, lighting and appliances increases by 20% compared to 2010 level.", worksheet.control_h43); end
  def test_control_i43; assert_equal("In 2050, energy service demand per household for cooking, lighting and appliances increases by 10% compared to 2010 level.", worksheet.control_i43); end
  def test_control_j43; assert_equal("In 2050, energy service demand per household for cooking, lighting and appliances remains the same as 2010 levels.", worksheet.control_j43); end
  def test_control_k43; assert_equal("In 2050, energy service demand per household for cooking, lighting and appliances decreases by 20% compared to 2010 level.", worksheet.control_k43); end
  def test_control_n43; assert_in_delta(1.0, worksheet.control_n43, 0.002); end
  def test_control_o43; assert_in_epsilon(2.0, worksheet.control_o43, 0.002); end
  def test_control_p43; assert_in_epsilon(3.0, worksheet.control_p43, 0.002); end
  def test_control_q43; assert_in_epsilon(4.0, worksheet.control_q43, 0.002); end
  def test_control_d44; assert_equal("Enegy Efficiency of Appliances", worksheet.control_d44); end
  def test_control_f44; assert_in_epsilon(4.0, worksheet.control_f44, 0.002); end
  def test_control_h44; assert_equal("No improvement. Keep the same level of 2010.", worksheet.control_h44); end
  def test_control_i44; assert_equal("Moderate increase in efficiency for cooking appliances, significant increase in efficiency for power appliances and massive increase in efficiency for lighting appliances.", worksheet.control_i44); end
  def test_control_j44; assert_equal("Same as L2.", worksheet.control_j44); end
  def test_control_k44; assert_equal("Same as L2", worksheet.control_k44); end
  def test_control_n44; assert_in_delta(1.0, worksheet.control_n44, 0.002); end
  def test_control_o44; assert_in_epsilon(2.0, worksheet.control_o44, 0.002); end
  def test_control_p44; assert_in_epsilon(3.0, worksheet.control_p44, 0.002); end
  def test_control_q44; assert_in_epsilon(4.0, worksheet.control_q44, 0.002); end
  def test_control_b45; assert_equal("Commercial sector", worksheet.control_b45); end
  def test_control_c45; assert_equal("VI.b", worksheet.control_c45); end
  def test_control_d45; assert_equal("Commercial Cooking, Lighting and Appliances", worksheet.control_d45); end
  def test_control_d46; assert_equal("Energy Demand per Floor Space", worksheet.control_d46); end
  def test_control_f46; assert_in_epsilon(4.0, worksheet.control_f46, 0.002); end
  def test_control_h46; assert_equal("In 2050, energy service demand for commercial cooking, lighting and appliances increases by 20% compared to 2010 level.", worksheet.control_h46); end
  def test_control_i46; assert_equal("In 2050, energy service demand for commercial cooking, lighting and appliances increases by 10% compared to 2010 level.", worksheet.control_i46); end
  def test_control_j46; assert_equal("In 2050, energy service demand for commercial cooking, lighting and appliances remains the same as 2010 levels.", worksheet.control_j46); end
  def test_control_k46; assert_equal("In 2050, energy service demand for commercial cooking, lighting and appliances decreases by 20% compared to 2010 level.", worksheet.control_k46); end
  def test_control_n46; assert_in_delta(1.0, worksheet.control_n46, 0.002); end
  def test_control_o46; assert_in_epsilon(2.0, worksheet.control_o46, 0.002); end
  def test_control_p46; assert_in_epsilon(3.0, worksheet.control_p46, 0.002); end
  def test_control_q46; assert_in_epsilon(4.0, worksheet.control_q46, 0.002); end
  def test_control_d47; assert_equal("Enegy Efficiency of Appliances", worksheet.control_d47); end
  def test_control_f47; assert_in_epsilon(4.0, worksheet.control_f47, 0.002); end
  def test_control_h47; assert_equal("Same as 2010.", worksheet.control_h47); end
  def test_control_i47; assert_equal("Efficiency will be improved depending on technologies.", worksheet.control_i47); end
  def test_control_j47; assert_equal("Same as L2.", worksheet.control_j47); end
  def test_control_k47; assert_equal("Same as L2.", worksheet.control_k47); end
  def test_control_n47; assert_in_delta(1.0, worksheet.control_n47, 0.002); end
  def test_control_o47; assert_in_epsilon(2.0, worksheet.control_o47, 0.002); end
  def test_control_p47; assert_in_epsilon(3.0, worksheet.control_p47, 0.002); end
  def test_control_q47; assert_in_epsilon(4.0, worksheet.control_q47, 0.002); end
  def test_control_a48; assert_equal("Industry", worksheet.control_a48); end
  def test_control_c48; assert_equal("VII.a", worksheet.control_c48); end
  def test_control_d48; assert_equal("Industry (activity level determined by the Society Scenario Lever 0.a)", worksheet.control_d48); end
  def test_control_d49; assert_equal("Energy intensity per industrial output", worksheet.control_d49); end
  def test_control_f49; assert_in_epsilon(2.0, worksheet.control_f49, 0.002); end
  def test_control_h49; assert_equal("Energy intensity per industrial output is constant at base year level.", worksheet.control_h49); end
  def test_control_i49; assert_equal("Energy intensity reduction in accordance with 80% GHG emissions reduction by 2050. ", worksheet.control_i49); end
  def test_control_n49; assert_in_delta(1.0, worksheet.control_n49, 0.002); end
  def test_control_o49; assert_in_epsilon(2.0, worksheet.control_o49, 0.002); end
  def test_control_p49; assert_in_epsilon(2.0, worksheet.control_p49, 0.002); end
  def test_control_q49; assert_in_epsilon(2.0, worksheet.control_q49, 0.002); end
  def test_control_d50; assert_equal("Energy mix in the industry", worksheet.control_d50); end
  def test_control_f50; assert_in_epsilon(4.0, worksheet.control_f50, 0.002); end
  def test_control_h50; assert_equal("Energy mix in industry remains the same as in the base year.", worksheet.control_h50); end
  def test_control_i50; assert_equal("Energy mix shifts toward minimizing direct emissions as much as possible by increased use of electricity, renewables and shift from coal to gas (in line with MOE's 80% reduction scenarios)", worksheet.control_i50); end
  def test_control_j50; assert_equal("In addition to L2, 20% of industrial CO2 emissions are captured and stored underground.", worksheet.control_j50); end
  def test_control_k50; assert_equal("In addition to L2, 50% of industrial CO2 emissions are captured and stored underground.", worksheet.control_k50); end
  def test_control_n50; assert_in_delta(1.0, worksheet.control_n50, 0.002); end
  def test_control_o50; assert_in_epsilon(2.0, worksheet.control_o50, 0.002); end
  def test_control_p50; assert_in_epsilon(3.0, worksheet.control_p50, 0.002); end
  def test_control_q50; assert_in_epsilon(4.0, worksheet.control_q50, 0.002); end
  def test_control_a51; assert_equal("ONCE YOU'VE MADE YOUR CHOICES PRESS F9", worksheet.control_a51); end
  def test_intermediate_output_b2; assert_equal("Energy source / use charts", worksheet.intermediate_output_b2); end
  def test_intermediate_output_j3; assert_equal("2050 Calculator calculations", worksheet.intermediate_output_j3); end
  def test_intermediate_output_d4; assert_equal("Mtoe / year", worksheet.intermediate_output_d4); end
  def test_intermediate_output_f4; assert_equal("1990 (Actual)", worksheet.intermediate_output_f4); end
  def test_intermediate_output_g4; assert_equal("2005 (Actual)", worksheet.intermediate_output_g4); end
  def test_intermediate_output_h4; assert_equal("2010 (Actual)", worksheet.intermediate_output_h4); end
  def test_intermediate_output_j4; assert_in_epsilon(2005.0, worksheet.intermediate_output_j4, 0.002); end
  def test_intermediate_output_k4; assert_in_epsilon(2010.0, worksheet.intermediate_output_k4, 0.002); end
  def test_intermediate_output_l4; assert_in_epsilon(2015.0, worksheet.intermediate_output_l4, 0.002); end
  def test_intermediate_output_m4; assert_in_epsilon(2020.0, worksheet.intermediate_output_m4, 0.002); end
  def test_intermediate_output_n4; assert_in_epsilon(2025.0, worksheet.intermediate_output_n4, 0.002); end
  def test_intermediate_output_o4; assert_in_epsilon(2030.0, worksheet.intermediate_output_o4, 0.002); end
  def test_intermediate_output_p4; assert_in_epsilon(2035.0, worksheet.intermediate_output_p4, 0.002); end
  def test_intermediate_output_q4; assert_in_epsilon(2040.0, worksheet.intermediate_output_q4, 0.002); end
  def test_intermediate_output_r4; assert_in_epsilon(2045.0, worksheet.intermediate_output_r4, 0.002); end
  def test_intermediate_output_s4; assert_in_epsilon(2050.0, worksheet.intermediate_output_s4, 0.002); end
  def test_intermediate_output_c5; assert_equal("Total Final Energy Consumption by sector", worksheet.intermediate_output_c5); end
  def test_intermediate_output_d6; assert_equal("Industrial", worksheet.intermediate_output_d6); end
  def test_intermediate_output_f6; assert_in_epsilon(158.747, worksheet.intermediate_output_f6, 0.002); end
  def test_intermediate_output_g6; assert_in_epsilon(168.942, worksheet.intermediate_output_g6, 0.002); end
  def test_intermediate_output_h6; assert_in_epsilon(153.657, worksheet.intermediate_output_h6, 0.002); end
  def test_intermediate_output_j6; assert_in_epsilon(182.78284044713214, worksheet.intermediate_output_j6, 0.002); end
  def test_intermediate_output_k6; assert_in_epsilon(174.6508716403708, worksheet.intermediate_output_k6, 0.002); end
  def test_intermediate_output_l6; assert_in_epsilon(164.2686620946435, worksheet.intermediate_output_l6, 0.002); end
  def test_intermediate_output_m6; assert_in_epsilon(155.1684596677626, worksheet.intermediate_output_m6, 0.002); end
  def test_intermediate_output_n6; assert_in_epsilon(145.88995145318887, worksheet.intermediate_output_n6, 0.002); end
  def test_intermediate_output_o6; assert_in_epsilon(137.06894790427444, worksheet.intermediate_output_o6, 0.002); end
  def test_intermediate_output_p6; assert_in_epsilon(129.43516396008627, worksheet.intermediate_output_p6, 0.002); end
  def test_intermediate_output_q6; assert_in_epsilon(122.07371960291158, worksheet.intermediate_output_q6, 0.002); end
  def test_intermediate_output_r6; assert_in_epsilon(114.83053817182122, worksheet.intermediate_output_r6, 0.002); end
  def test_intermediate_output_s6; assert_in_epsilon(108.01793219214382, worksheet.intermediate_output_s6, 0.002); end
  def test_intermediate_output_c7; assert_equal("D.01", worksheet.intermediate_output_c7); end
  def test_intermediate_output_d7; assert_equal("Manufacturing and Construction", worksheet.intermediate_output_d7); end
  def test_intermediate_output_f7; assert_in_epsilon(158.747, worksheet.intermediate_output_f7, 0.002); end
  def test_intermediate_output_g7; assert_in_epsilon(168.942, worksheet.intermediate_output_g7, 0.002); end
  def test_intermediate_output_h7; assert_in_epsilon(153.657, worksheet.intermediate_output_h7, 0.002); end
  def test_intermediate_output_j7; assert_in_epsilon(180.08034136166697, worksheet.intermediate_output_j7, 0.002); end
  def test_intermediate_output_k7; assert_in_epsilon(172.83761192921412, worksheet.intermediate_output_k7, 0.002); end
  def test_intermediate_output_l7; assert_in_epsilon(162.76949486250305, worksheet.intermediate_output_l7, 0.002); end
  def test_intermediate_output_m7; assert_in_epsilon(153.93643168630035, worksheet.intermediate_output_m7, 0.002); end
  def test_intermediate_output_n7; assert_in_epsilon(144.75128974885203, worksheet.intermediate_output_n7, 0.002); end
  def test_intermediate_output_o7; assert_in_epsilon(136.02261854461088, worksheet.intermediate_output_o7, 0.002); end
  def test_intermediate_output_p7; assert_in_epsilon(128.4720250548191, worksheet.intermediate_output_p7, 0.002); end
  def test_intermediate_output_q7; assert_in_epsilon(121.18290580874609, worksheet.intermediate_output_q7, 0.002); end
  def test_intermediate_output_r7; assert_in_epsilon(114.01472568679831, worksheet.intermediate_output_r7, 0.002); end
  def test_intermediate_output_s7; assert_in_epsilon(107.27701499077575, worksheet.intermediate_output_s7, 0.002); end
  def test_intermediate_output_c8; assert_equal("D.02", worksheet.intermediate_output_c8); end
  def test_intermediate_output_d8; assert_equal("Agriculture, forestry and fisheries", worksheet.intermediate_output_d8); end
  def test_intermediate_output_j8; assert_in_epsilon(2.702499085465184, worksheet.intermediate_output_j8, 0.002); end
  def test_intermediate_output_k8; assert_in_epsilon(1.8132597111566995, worksheet.intermediate_output_k8, 0.002); end
  def test_intermediate_output_l8; assert_in_epsilon(1.499167232140465, worksheet.intermediate_output_l8, 0.002); end
  def test_intermediate_output_m8; assert_in_epsilon(1.232027981462241, worksheet.intermediate_output_m8, 0.002); end
  def test_intermediate_output_n8; assert_in_epsilon(1.1386617043368468, worksheet.intermediate_output_n8, 0.002); end
  def test_intermediate_output_o8; assert_in_epsilon(1.0463293596635537, worksheet.intermediate_output_o8, 0.002); end
  def test_intermediate_output_p8; assert_in_delta(0.9631389052671468, worksheet.intermediate_output_p8, 0.002); end
  def test_intermediate_output_q8; assert_in_delta(0.8908137941654912, worksheet.intermediate_output_q8, 0.002); end
  def test_intermediate_output_r8; assert_in_delta(0.8158124850229032, worksheet.intermediate_output_r8, 0.002); end
  def test_intermediate_output_s8; assert_in_delta(0.7409172013680654, worksheet.intermediate_output_s8, 0.002); end
  def test_intermediate_output_d9; assert_equal("Residential and Commercial", worksheet.intermediate_output_d9); end
  def test_intermediate_output_f9; assert_in_epsilon(78.84759759200008, worksheet.intermediate_output_f9, 0.002); end
  def test_intermediate_output_g9; assert_in_epsilon(102.78100000000003, worksheet.intermediate_output_g9, 0.002); end
  def test_intermediate_output_h9; assert_in_epsilon(96.93900000000002, worksheet.intermediate_output_h9, 0.002); end
  def test_intermediate_output_j9; assert_in_epsilon(107.72616927552028, worksheet.intermediate_output_j9, 0.002); end
  def test_intermediate_output_k9; assert_in_epsilon(95.82814902718454, worksheet.intermediate_output_k9, 0.002); end
  def test_intermediate_output_l9; assert_in_epsilon(87.63368678248105, worksheet.intermediate_output_l9, 0.002); end
  def test_intermediate_output_m9; assert_in_epsilon(82.12542992125475, worksheet.intermediate_output_m9, 0.002); end
  def test_intermediate_output_n9; assert_in_epsilon(77.91139622035412, worksheet.intermediate_output_n9, 0.002); end
  def test_intermediate_output_o9; assert_in_epsilon(73.81780946938483, worksheet.intermediate_output_o9, 0.002); end
  def test_intermediate_output_p9; assert_in_epsilon(69.91955367803222, worksheet.intermediate_output_p9, 0.002); end
  def test_intermediate_output_q9; assert_in_epsilon(66.6928499598829, worksheet.intermediate_output_q9, 0.002); end
  def test_intermediate_output_r9; assert_in_epsilon(63.82048875277643, worksheet.intermediate_output_r9, 0.002); end
  def test_intermediate_output_s9; assert_in_epsilon(61.12287228056888, worksheet.intermediate_output_s9, 0.002); end
  def test_intermediate_output_c10; assert_equal("D.03", worksheet.intermediate_output_c10); end
  def test_intermediate_output_d10; assert_equal("Space Heating and Cooling", worksheet.intermediate_output_d10); end
  def test_intermediate_output_f10; assert_in_epsilon(23.8834499932912, worksheet.intermediate_output_f10, 0.002); end
  def test_intermediate_output_g10; assert_in_epsilon(31.7614960107188, worksheet.intermediate_output_g10, 0.002); end
  def test_intermediate_output_h10; assert_in_epsilon(28.1846451221267, worksheet.intermediate_output_h10, 0.002); end
  def test_intermediate_output_j10; assert_in_epsilon(30.098052715392136, worksheet.intermediate_output_j10, 0.002); end
  def test_intermediate_output_k10; assert_in_epsilon(23.684330924925465, worksheet.intermediate_output_k10, 0.002); end
  def test_intermediate_output_l10; assert_in_epsilon(20.89391181134296, worksheet.intermediate_output_l10, 0.002); end
  def test_intermediate_output_m10; assert_in_epsilon(19.35320717696031, worksheet.intermediate_output_m10, 0.002); end
  def test_intermediate_output_n10; assert_in_epsilon(17.647213055224196, worksheet.intermediate_output_n10, 0.002); end
  def test_intermediate_output_o10; assert_in_epsilon(15.802040543512295, worksheet.intermediate_output_o10, 0.002); end
  def test_intermediate_output_p10; assert_in_epsilon(14.305008410410855, worksheet.intermediate_output_p10, 0.002); end
  def test_intermediate_output_q10; assert_in_epsilon(12.838868502249873, worksheet.intermediate_output_q10, 0.002); end
  def test_intermediate_output_r10; assert_in_epsilon(11.437462581073575, worksheet.intermediate_output_r10, 0.002); end
  def test_intermediate_output_s10; assert_in_epsilon(10.187888919505694, worksheet.intermediate_output_s10, 0.002); end
  def test_intermediate_output_c11; assert_equal("D.04", worksheet.intermediate_output_c11); end
  def test_intermediate_output_d11; assert_equal("Hot Water Supply", worksheet.intermediate_output_d11); end
  def test_intermediate_output_f11; assert_in_epsilon(23.89789121353769, worksheet.intermediate_output_f11, 0.002); end
  def test_intermediate_output_g11; assert_in_epsilon(24.64051196890313, worksheet.intermediate_output_g11, 0.002); end
  def test_intermediate_output_h11; assert_in_epsilon(20.85990994396682, worksheet.intermediate_output_h11, 0.002); end
  def test_intermediate_output_j11; assert_in_epsilon(23.4282683780835, worksheet.intermediate_output_j11, 0.002); end
  def test_intermediate_output_k11; assert_in_epsilon(19.161275142243223, worksheet.intermediate_output_k11, 0.002); end
  def test_intermediate_output_l11; assert_in_epsilon(17.206227432195114, worksheet.intermediate_output_l11, 0.002); end
  def test_intermediate_output_m11; assert_in_epsilon(16.36147991677385, worksheet.intermediate_output_m11, 0.002); end
  def test_intermediate_output_n11; assert_in_epsilon(15.627483742896434, worksheet.intermediate_output_n11, 0.002); end
  def test_intermediate_output_o11; assert_in_epsilon(14.93627954671677, worksheet.intermediate_output_o11, 0.002); end
  def test_intermediate_output_p11; assert_in_epsilon(14.23924898297113, worksheet.intermediate_output_p11, 0.002); end
  def test_intermediate_output_q11; assert_in_epsilon(13.545430341246771, worksheet.intermediate_output_q11, 0.002); end
  def test_intermediate_output_r11; assert_in_epsilon(12.97105714851557, worksheet.intermediate_output_r11, 0.002); end
  def test_intermediate_output_s11; assert_in_epsilon(12.359569594376335, worksheet.intermediate_output_s11, 0.002); end
  def test_intermediate_output_c12; assert_equal("D.05", worksheet.intermediate_output_c12); end
  def test_intermediate_output_d12; assert_equal("Lighting, Cooking & Other Appliances", worksheet.intermediate_output_d12); end
  def test_intermediate_output_f12; assert_in_epsilon(31.0662563851712, worksheet.intermediate_output_f12, 0.002); end
  def test_intermediate_output_g12; assert_in_epsilon(46.3789920203781, worksheet.intermediate_output_g12, 0.002); end
  def test_intermediate_output_h12; assert_in_epsilon(47.8944449339065, worksheet.intermediate_output_h12, 0.002); end
  def test_intermediate_output_j12; assert_in_epsilon(54.19984818204463, worksheet.intermediate_output_j12, 0.002); end
  def test_intermediate_output_k12; assert_in_epsilon(52.98254296001584, worksheet.intermediate_output_k12, 0.002); end
  def test_intermediate_output_l12; assert_in_epsilon(49.53354753894298, worksheet.intermediate_output_l12, 0.002); end
  def test_intermediate_output_m12; assert_in_epsilon(46.41074282752059, worksheet.intermediate_output_m12, 0.002); end
  def test_intermediate_output_n12; assert_in_epsilon(44.63669942223349, worksheet.intermediate_output_n12, 0.002); end
  def test_intermediate_output_o12; assert_in_epsilon(43.07948937915576, worksheet.intermediate_output_o12, 0.002); end
  def test_intermediate_output_p12; assert_in_epsilon(41.37529628465023, worksheet.intermediate_output_p12, 0.002); end
  def test_intermediate_output_q12; assert_in_epsilon(40.30855111638626, worksheet.intermediate_output_q12, 0.002); end
  def test_intermediate_output_r12; assert_in_epsilon(39.41196902318728, worksheet.intermediate_output_r12, 0.002); end
  def test_intermediate_output_s12; assert_in_epsilon(38.57541376668685, worksheet.intermediate_output_s12, 0.002); end
  def test_intermediate_output_d13; assert_equal("Transport", worksheet.intermediate_output_d13); end
  def test_intermediate_output_f13; assert_in_epsilon(74.38599999999995, worksheet.intermediate_output_f13, 0.002); end
  def test_intermediate_output_g13; assert_in_epsilon(90.785, worksheet.intermediate_output_g13, 0.002); end
  def test_intermediate_output_h13; assert_in_epsilon(83.66100000000004, worksheet.intermediate_output_h13, 0.002); end
  def test_intermediate_output_j13; assert_in_epsilon(85.69734599570862, worksheet.intermediate_output_j13, 0.002); end
  def test_intermediate_output_k13; assert_in_epsilon(81.00529732983209, worksheet.intermediate_output_k13, 0.002); end
  def test_intermediate_output_l13; assert_in_epsilon(73.2852175403315, worksheet.intermediate_output_l13, 0.002); end
  def test_intermediate_output_m13; assert_in_epsilon(65.75385354079971, worksheet.intermediate_output_m13, 0.002); end
  def test_intermediate_output_n13; assert_in_epsilon(57.126289845385514, worksheet.intermediate_output_n13, 0.002); end
  def test_intermediate_output_o13; assert_in_epsilon(48.94125263246298, worksheet.intermediate_output_o13, 0.002); end
  def test_intermediate_output_p13; assert_in_epsilon(41.788423057635185, worksheet.intermediate_output_p13, 0.002); end
  def test_intermediate_output_q13; assert_in_epsilon(35.42817358395616, worksheet.intermediate_output_q13, 0.002); end
  def test_intermediate_output_r13; assert_in_epsilon(30.88659041199646, worksheet.intermediate_output_r13, 0.002); end
  def test_intermediate_output_s13; assert_in_epsilon(26.5972772367539, worksheet.intermediate_output_s13, 0.002); end
  def test_intermediate_output_c14; assert_equal("T.01", worksheet.intermediate_output_c14); end
  def test_intermediate_output_d14; assert_equal("Road Transport", worksheet.intermediate_output_d14); end
  def test_intermediate_output_f14; assert_in_epsilon(65.3453378049844, worksheet.intermediate_output_f14, 0.002); end
  def test_intermediate_output_g14; assert_in_epsilon(79.0014563474153, worksheet.intermediate_output_g14, 0.002); end
  def test_intermediate_output_h14; assert_in_epsilon(73.2921382632818, worksheet.intermediate_output_h14, 0.002); end
  def test_intermediate_output_j14; assert_in_epsilon(72.69776389396154, worksheet.intermediate_output_j14, 0.002); end
  def test_intermediate_output_k14; assert_in_epsilon(69.27979047567541, worksheet.intermediate_output_k14, 0.002); end
  def test_intermediate_output_l14; assert_in_epsilon(62.370368537337775, worksheet.intermediate_output_l14, 0.002); end
  def test_intermediate_output_m14; assert_in_epsilon(55.63860710100487, worksheet.intermediate_output_m14, 0.002); end
  def test_intermediate_output_n14; assert_in_epsilon(47.71193756217059, worksheet.intermediate_output_n14, 0.002); end
  def test_intermediate_output_o14; assert_in_epsilon(40.19359682985879, worksheet.intermediate_output_o14, 0.002); end
  def test_intermediate_output_p14; assert_in_epsilon(33.48500601784446, worksheet.intermediate_output_p14, 0.002); end
  def test_intermediate_output_q14; assert_in_epsilon(27.527835814677534, worksheet.intermediate_output_q14, 0.002); end
  def test_intermediate_output_r14; assert_in_epsilon(23.559548102097445, worksheet.intermediate_output_r14, 0.002); end
  def test_intermediate_output_s14; assert_in_epsilon(19.54324283564665, worksheet.intermediate_output_s14, 0.002); end
  def test_intermediate_output_c15; assert_equal("T.02", worksheet.intermediate_output_c15); end
  def test_intermediate_output_d15; assert_equal("Rail Transport", worksheet.intermediate_output_d15); end
  def test_intermediate_output_f15; assert_in_epsilon(2.006316751624242, worksheet.intermediate_output_f15, 0.002); end
  def test_intermediate_output_g15; assert_in_epsilon(2.0645377142772943, worksheet.intermediate_output_g15, 0.002); end
  def test_intermediate_output_h15; assert_in_epsilon(2.030440590662265, worksheet.intermediate_output_h15, 0.002); end
  def test_intermediate_output_j15; assert_in_epsilon(2.6071619531571777, worksheet.intermediate_output_j15, 0.002); end
  def test_intermediate_output_k15; assert_in_epsilon(2.626976844447674, worksheet.intermediate_output_k15, 0.002); end
  def test_intermediate_output_l15; assert_in_epsilon(2.4499714344460113, worksheet.intermediate_output_l15, 0.002); end
  def test_intermediate_output_m15; assert_in_epsilon(2.2578837938899685, worksheet.intermediate_output_m15, 0.002); end
  def test_intermediate_output_n15; assert_in_epsilon(2.118337585155279, worksheet.intermediate_output_n15, 0.002); end
  def test_intermediate_output_o15; assert_in_epsilon(1.9888594832075963, worksheet.intermediate_output_o15, 0.002); end
  def test_intermediate_output_p15; assert_in_epsilon(1.8827819741343381, worksheet.intermediate_output_p15, 0.002); end
  def test_intermediate_output_q15; assert_in_epsilon(1.7825787105144528, worksheet.intermediate_output_q15, 0.002); end
  def test_intermediate_output_r15; assert_in_epsilon(1.6067308866747116, worksheet.intermediate_output_r15, 0.002); end
  def test_intermediate_output_s15; assert_in_epsilon(1.5798103605786271, worksheet.intermediate_output_s15, 0.002); end
  def test_intermediate_output_c16; assert_equal("T.03", worksheet.intermediate_output_c16); end
  def test_intermediate_output_d16; assert_equal("Shipping", worksheet.intermediate_output_d16); end
  def test_intermediate_output_f16; assert_in_epsilon(3.780345443391325, worksheet.intermediate_output_f16, 0.002); end
  def test_intermediate_output_g16; assert_in_epsilon(5.222005938307401, worksheet.intermediate_output_g16, 0.002); end
  def test_intermediate_output_h16; assert_in_epsilon(3.8204211460559776, worksheet.intermediate_output_h16, 0.002); end
  def test_intermediate_output_j16; assert_in_epsilon(4.502294998099133, worksheet.intermediate_output_j16, 0.002); end
  def test_intermediate_output_k16; assert_in_epsilon(3.668593731712205, worksheet.intermediate_output_k16, 0.002); end
  def test_intermediate_output_l16; assert_in_epsilon(3.0555201317422798, worksheet.intermediate_output_l16, 0.002); end
  def test_intermediate_output_m16; assert_in_epsilon(2.542066389952959, worksheet.intermediate_output_m16, 0.002); end
  def test_intermediate_output_n16; assert_in_epsilon(2.1403365791510316, worksheet.intermediate_output_n16, 0.002); end
  def test_intermediate_output_o16; assert_in_epsilon(1.7802257957229295, worksheet.intermediate_output_o16, 0.002); end
  def test_intermediate_output_p16; assert_in_epsilon(1.5864863544854548, worksheet.intermediate_output_p16, 0.002); end
  def test_intermediate_output_q16; assert_in_epsilon(1.4099370368664985, worksheet.intermediate_output_q16, 0.002); end
  def test_intermediate_output_r16; assert_in_epsilon(1.3136469599440588, worksheet.intermediate_output_r16, 0.002); end
  def test_intermediate_output_s16; assert_in_epsilon(1.094603076982798, worksheet.intermediate_output_s16, 0.002); end
  def test_intermediate_output_c17; assert_equal("T.04", worksheet.intermediate_output_c17); end
  def test_intermediate_output_d17; assert_equal("Aviation", worksheet.intermediate_output_d17); end
  def test_intermediate_output_f17; assert_in_epsilon(3.253999999999997, worksheet.intermediate_output_f17, 0.002); end
  def test_intermediate_output_g17; assert_in_epsilon(4.496999999999998, worksheet.intermediate_output_g17, 0.002); end
  def test_intermediate_output_h17; assert_in_epsilon(4.518000000000004, worksheet.intermediate_output_h17, 0.002); end
  def test_intermediate_output_j17; assert_in_epsilon(5.890125150490775, worksheet.intermediate_output_j17, 0.002); end
  def test_intermediate_output_k17; assert_in_epsilon(5.429936277996807, worksheet.intermediate_output_k17, 0.002); end
  def test_intermediate_output_l17; assert_in_epsilon(5.409357436805442, worksheet.intermediate_output_l17, 0.002); end
  def test_intermediate_output_m17; assert_in_epsilon(5.315296255951914, worksheet.intermediate_output_m17, 0.002); end
  def test_intermediate_output_n17; assert_in_epsilon(5.155678118908609, worksheet.intermediate_output_n17, 0.002); end
  def test_intermediate_output_o17; assert_in_epsilon(4.978570523673657, worksheet.intermediate_output_o17, 0.002); end
  def test_intermediate_output_p17; assert_in_epsilon(4.834148711170932, worksheet.intermediate_output_p17, 0.002); end
  def test_intermediate_output_q17; assert_in_epsilon(4.707822021897673, worksheet.intermediate_output_q17, 0.002); end
  def test_intermediate_output_r17; assert_in_epsilon(4.4066644632802445, worksheet.intermediate_output_r17, 0.002); end
  def test_intermediate_output_s17; assert_in_epsilon(4.379620963545826, worksheet.intermediate_output_s17, 0.002); end
  def test_intermediate_output_d18; assert_equal("Total Final Energy Consumption", worksheet.intermediate_output_d18); end
  def test_intermediate_output_f18; assert_in_epsilon(311.98059759200004, worksheet.intermediate_output_f18, 0.002); end
  def test_intermediate_output_g18; assert_in_epsilon(362.50800000000004, worksheet.intermediate_output_g18, 0.002); end
  def test_intermediate_output_h18; assert_in_epsilon(334.25700000000006, worksheet.intermediate_output_h18, 0.002); end
  def test_intermediate_output_j18; assert_in_epsilon(376.206355718361, worksheet.intermediate_output_j18, 0.002); end
  def test_intermediate_output_k18; assert_in_epsilon(351.48431799738745, worksheet.intermediate_output_k18, 0.002); end
  def test_intermediate_output_l18; assert_in_epsilon(325.1875664174561, worksheet.intermediate_output_l18, 0.002); end
  def test_intermediate_output_m18; assert_in_epsilon(303.04774312981704, worksheet.intermediate_output_m18, 0.002); end
  def test_intermediate_output_n18; assert_in_epsilon(280.92763751892846, worksheet.intermediate_output_n18, 0.002); end
  def test_intermediate_output_o18; assert_in_epsilon(259.8280100061222, worksheet.intermediate_output_o18, 0.002); end
  def test_intermediate_output_p18; assert_in_epsilon(241.14314069575366, worksheet.intermediate_output_p18, 0.002); end
  def test_intermediate_output_q18; assert_in_epsilon(224.19474314675062, worksheet.intermediate_output_q18, 0.002); end
  def test_intermediate_output_r18; assert_in_epsilon(209.5376173365941, worksheet.intermediate_output_r18, 0.002); end
  def test_intermediate_output_s18; assert_in_epsilon(195.7380817094666, worksheet.intermediate_output_s18, 0.002); end
  def test_intermediate_output_d19; assert_equal("Baseline", worksheet.intermediate_output_d19); end
  def test_intermediate_output_j19; assert_in_epsilon(376.206355718361, worksheet.intermediate_output_j19, 0.002); end
  def test_intermediate_output_k19; assert_in_epsilon(351.2221143416875, worksheet.intermediate_output_k19, 0.002); end
  def test_intermediate_output_l19; assert_in_epsilon(341.97650229360767, worksheet.intermediate_output_l19, 0.002); end
  def test_intermediate_output_m19; assert_in_epsilon(332.88654405132763, worksheet.intermediate_output_m19, 0.002); end
  def test_intermediate_output_n19; assert_in_epsilon(323.09228684037623, worksheet.intermediate_output_n19, 0.002); end
  def test_intermediate_output_o19; assert_in_epsilon(313.0986862089904, worksheet.intermediate_output_o19, 0.002); end
  def test_intermediate_output_p19; assert_in_epsilon(304.11752762436663, worksheet.intermediate_output_p19, 0.002); end
  def test_intermediate_output_q19; assert_in_epsilon(295.60582264520633, worksheet.intermediate_output_q19, 0.002); end
  def test_intermediate_output_r19; assert_in_epsilon(287.47588804314296, worksheet.intermediate_output_r19, 0.002); end
  def test_intermediate_output_s19; assert_in_epsilon(279.5779584035291, worksheet.intermediate_output_s19, 0.002); end
  def test_intermediate_output_c21; assert_equal("Total final energy consumption by energy carrier", worksheet.intermediate_output_c21); end
  def test_intermediate_output_c22; assert_equal("V.01", worksheet.intermediate_output_c22); end
  def test_intermediate_output_d22; assert_equal("Electricity (Deliver to Enduser)", worksheet.intermediate_output_d22); end
  def test_intermediate_output_j22; assert_in_epsilon(80.62326709490635, worksheet.intermediate_output_j22, 0.002); end
  def test_intermediate_output_k22; assert_in_epsilon(77.68555838658529, worksheet.intermediate_output_k22, 0.002); end
  def test_intermediate_output_l22; assert_in_epsilon(74.64971147508335, worksheet.intermediate_output_l22, 0.002); end
  def test_intermediate_output_m22; assert_in_epsilon(72.12704299969614, worksheet.intermediate_output_m22, 0.002); end
  def test_intermediate_output_n22; assert_in_epsilon(71.01381842031579, worksheet.intermediate_output_n22, 0.002); end
  def test_intermediate_output_o22; assert_in_epsilon(69.85905005184667, worksheet.intermediate_output_o22, 0.002); end
  def test_intermediate_output_p22; assert_in_epsilon(68.8005565292088, worksheet.intermediate_output_p22, 0.002); end
  def test_intermediate_output_q22; assert_in_epsilon(68.20757014064371, worksheet.intermediate_output_q22, 0.002); end
  def test_intermediate_output_r22; assert_in_epsilon(67.55437100690581, worksheet.intermediate_output_r22, 0.002); end
  def test_intermediate_output_s22; assert_in_epsilon(66.8877182377372, worksheet.intermediate_output_s22, 0.002); end
  def test_intermediate_output_c23; assert_equal("V.03", worksheet.intermediate_output_c23); end
  def test_intermediate_output_d23; assert_equal("Coal", worksheet.intermediate_output_d23); end
  def test_intermediate_output_j23; assert_in_epsilon(32.0491998540626, worksheet.intermediate_output_j23, 0.002); end
  def test_intermediate_output_k23; assert_in_epsilon(30.211670063229814, worksheet.intermediate_output_k23, 0.002); end
  def test_intermediate_output_l23; assert_in_epsilon(26.802168466804307, worksheet.intermediate_output_l23, 0.002); end
  def test_intermediate_output_m23; assert_in_epsilon(23.707204160654, worksheet.intermediate_output_m23, 0.002); end
  def test_intermediate_output_n23; assert_in_epsilon(20.181283666014092, worksheet.intermediate_output_n23, 0.002); end
  def test_intermediate_output_o23; assert_in_epsilon(17.013847182027263, worksheet.intermediate_output_o23, 0.002); end
  def test_intermediate_output_p23; assert_in_epsilon(14.384083992857862, worksheet.intermediate_output_p23, 0.002); end
  def test_intermediate_output_q23; assert_in_epsilon(11.855979329013321, worksheet.intermediate_output_q23, 0.002); end
  def test_intermediate_output_r23; assert_in_epsilon(9.249149548549227, worksheet.intermediate_output_r23, 0.002); end
  def test_intermediate_output_s23; assert_in_epsilon(6.784650859644457, worksheet.intermediate_output_s23, 0.002); end
  def test_intermediate_output_c24; assert_equal("V.04", worksheet.intermediate_output_c24); end
  def test_intermediate_output_d24; assert_equal("Coke", worksheet.intermediate_output_d24); end
  def test_intermediate_output_j24; assert_in_epsilon(25.977644497570758, worksheet.intermediate_output_j24, 0.002); end
  def test_intermediate_output_k24; assert_in_epsilon(26.092850005144044, worksheet.intermediate_output_k24, 0.002); end
  def test_intermediate_output_l24; assert_in_epsilon(23.652318567979055, worksheet.intermediate_output_l24, 0.002); end
  def test_intermediate_output_m24; assert_in_epsilon(21.784908372017192, worksheet.intermediate_output_m24, 0.002); end
  def test_intermediate_output_n24; assert_in_epsilon(20.182124174411925, worksheet.intermediate_output_n24, 0.002); end
  def test_intermediate_output_o24; assert_in_epsilon(18.643101692245864, worksheet.intermediate_output_o24, 0.002); end
  def test_intermediate_output_p24; assert_in_epsilon(17.436822424911004, worksheet.intermediate_output_p24, 0.002); end
  def test_intermediate_output_q24; assert_in_epsilon(16.274894596129556, worksheet.intermediate_output_q24, 0.002); end
  def test_intermediate_output_r24; assert_in_epsilon(14.697569766630643, worksheet.intermediate_output_r24, 0.002); end
  def test_intermediate_output_s24; assert_in_epsilon(13.2608297215147, worksheet.intermediate_output_s24, 0.002); end
  def test_intermediate_output_c25; assert_equal("V.05", worksheet.intermediate_output_c25); end
  def test_intermediate_output_d25; assert_equal("Crude Oil", worksheet.intermediate_output_d25); end
  def test_intermediate_output_j25; assert_in_delta(0.0, (worksheet.intermediate_output_j25||0), 0.002); end
  def test_intermediate_output_k25; assert_in_delta(0.0, (worksheet.intermediate_output_k25||0), 0.002); end
  def test_intermediate_output_l25; assert_in_delta(0.0, (worksheet.intermediate_output_l25||0), 0.002); end
  def test_intermediate_output_m25; assert_in_delta(0.0, (worksheet.intermediate_output_m25||0), 0.002); end
  def test_intermediate_output_n25; assert_in_delta(0.0, (worksheet.intermediate_output_n25||0), 0.002); end
  def test_intermediate_output_o25; assert_in_delta(0.0, (worksheet.intermediate_output_o25||0), 0.002); end
  def test_intermediate_output_p25; assert_in_delta(0.0, (worksheet.intermediate_output_p25||0), 0.002); end
  def test_intermediate_output_q25; assert_in_delta(0.0, (worksheet.intermediate_output_q25||0), 0.002); end
  def test_intermediate_output_r25; assert_in_delta(0.0, (worksheet.intermediate_output_r25||0), 0.002); end
  def test_intermediate_output_s25; assert_in_delta(0.0, (worksheet.intermediate_output_s25||0), 0.002); end
  def test_intermediate_output_c26; assert_equal("V.06", worksheet.intermediate_output_c26); end
  def test_intermediate_output_d26; assert_equal("Oil Products", worksheet.intermediate_output_d26); end
  def test_intermediate_output_j26; assert_in_epsilon(177.45835794862194, worksheet.intermediate_output_j26, 0.002); end
  def test_intermediate_output_k26; assert_in_epsilon(163.82066534563648, worksheet.intermediate_output_k26, 0.002); end
  def test_intermediate_output_l26; assert_in_epsilon(147.4617841633139, worksheet.intermediate_output_l26, 0.002); end
  def test_intermediate_output_m26; assert_in_epsilon(132.4256810584837, worksheet.intermediate_output_m26, 0.002); end
  def test_intermediate_output_n26; assert_in_epsilon(116.15311601774528, worksheet.intermediate_output_n26, 0.002); end
  def test_intermediate_output_o26; assert_in_epsilon(101.03573843658731, worksheet.intermediate_output_o26, 0.002); end
  def test_intermediate_output_p26; assert_in_epsilon(87.28390652072517, worksheet.intermediate_output_p26, 0.002); end
  def test_intermediate_output_q26; assert_in_epsilon(74.99248880676836, worksheet.intermediate_output_q26, 0.002); end
  def test_intermediate_output_r26; assert_in_epsilon(65.61174859052497, worksheet.intermediate_output_r26, 0.002); end
  def test_intermediate_output_s26; assert_in_epsilon(56.658980699513805, worksheet.intermediate_output_s26, 0.002); end
  def test_intermediate_output_c27; assert_equal("V.07", worksheet.intermediate_output_c27); end
  def test_intermediate_output_d27; assert_equal("Gas", worksheet.intermediate_output_d27); end
  def test_intermediate_output_j27; assert_in_epsilon(16.307290170917874, worksheet.intermediate_output_j27, 0.002); end
  def test_intermediate_output_k27; assert_in_epsilon(15.767064857669276, worksheet.intermediate_output_k27, 0.002); end
  def test_intermediate_output_l27; assert_in_epsilon(16.834740088623498, worksheet.intermediate_output_l27, 0.002); end
  def test_intermediate_output_m27; assert_in_epsilon(17.984989465999252, worksheet.intermediate_output_m27, 0.002); end
  def test_intermediate_output_n27; assert_in_epsilon(18.95366647811134, worksheet.intermediate_output_n27, 0.002); end
  def test_intermediate_output_o27; assert_in_epsilon(19.81309018331477, worksheet.intermediate_output_o27, 0.002); end
  def test_intermediate_output_p27; assert_in_epsilon(20.943396454019613, worksheet.intermediate_output_p27, 0.002); end
  def test_intermediate_output_q27; assert_in_epsilon(21.991811492762128, worksheet.intermediate_output_q27, 0.002); end
  def test_intermediate_output_r27; assert_in_epsilon(23.18834699787071, worksheet.intermediate_output_r27, 0.002); end
  def test_intermediate_output_s27; assert_in_epsilon(24.29043029582725, worksheet.intermediate_output_s27, 0.002); end
  def test_intermediate_output_c28; assert_equal("V.08", worksheet.intermediate_output_c28); end
  def test_intermediate_output_d28; assert_equal("Town Gas", worksheet.intermediate_output_d28); end
  def test_intermediate_output_j28; assert_in_epsilon(32.27936248862288, worksheet.intermediate_output_j28, 0.002); end
  def test_intermediate_output_k28; assert_in_epsilon(27.426356755131522, worksheet.intermediate_output_k28, 0.002); end
  def test_intermediate_output_l28; assert_in_epsilon(23.666035029614104, worksheet.intermediate_output_l28, 0.002); end
  def test_intermediate_output_m28; assert_in_epsilon(21.486748523237694, worksheet.intermediate_output_m28, 0.002); end
  def test_intermediate_output_n28; assert_in_epsilon(19.337188202675367, worksheet.intermediate_output_n28, 0.002); end
  def test_intermediate_output_o28; assert_in_epsilon(17.252716995437254, worksheet.intermediate_output_o28, 0.002); end
  def test_intermediate_output_p28; assert_in_epsilon(15.271278932780767, worksheet.intermediate_output_p28, 0.002); end
  def test_intermediate_output_q28; assert_in_epsilon(13.340859023966855, worksheet.intermediate_output_q28, 0.002); end
  def test_intermediate_output_r28; assert_in_epsilon(11.533002008796068, worksheet.intermediate_output_r28, 0.002); end
  def test_intermediate_output_s28; assert_in_epsilon(9.90265366171089, worksheet.intermediate_output_s28, 0.002); end
  def test_intermediate_output_c29; assert_equal("V.09", worksheet.intermediate_output_c29); end
  def test_intermediate_output_d29; assert_equal("Direct Heat Use", worksheet.intermediate_output_d29); end
  def test_intermediate_output_j29; assert_in_epsilon(5.718470312126732, worksheet.intermediate_output_j29, 0.002); end
  def test_intermediate_output_k29; assert_in_epsilon(5.458434810539761, worksheet.intermediate_output_k29, 0.002); end
  def test_intermediate_output_l29; assert_in_epsilon(5.863704476868255, worksheet.intermediate_output_l29, 0.002); end
  def test_intermediate_output_m29; assert_in_epsilon(6.285807382240788, worksheet.intermediate_output_m29, 0.002); end
  def test_intermediate_output_n29; assert_in_epsilon(6.500719912115239, worksheet.intermediate_output_n29, 0.002); end
  def test_intermediate_output_o29; assert_in_epsilon(6.73341549953266, worksheet.intermediate_output_o29, 0.002); end
  def test_intermediate_output_p29; assert_in_epsilon(7.053427802221906, worksheet.intermediate_output_p29, 0.002); end
  def test_intermediate_output_q29; assert_in_epsilon(7.401002064941229, worksheet.intermediate_output_q29, 0.002); end
  def test_intermediate_output_r29; assert_in_epsilon(8.00087125534437, worksheet.intermediate_output_r29, 0.002); end
  def test_intermediate_output_s29; assert_in_epsilon(8.705103816931897, worksheet.intermediate_output_s29, 0.002); end
  def test_intermediate_output_c30; assert_equal("V.10", worksheet.intermediate_output_c30); end
  def test_intermediate_output_d30; assert_equal("Direct Biomass Use", worksheet.intermediate_output_d30); end
  def test_intermediate_output_j30; assert_in_epsilon(5.792763351531866, worksheet.intermediate_output_j30, 0.002); end
  def test_intermediate_output_k30; assert_in_epsilon(5.02171777345123, worksheet.intermediate_output_k30, 0.002); end
  def test_intermediate_output_l30; assert_in_epsilon(5.0899683360062165, worksheet.intermediate_output_l30, 0.002); end
  def test_intermediate_output_m30; assert_in_epsilon(5.116968462557929, worksheet.intermediate_output_m30, 0.002); end
  def test_intermediate_output_n30; assert_in_epsilon(5.201413406780469, worksheet.intermediate_output_n30, 0.002); end
  def test_intermediate_output_o30; assert_in_epsilon(5.261681878152827, worksheet.intermediate_output_o30, 0.002); end
  def test_intermediate_output_p30; assert_in_epsilon(5.32763518620886, worksheet.intermediate_output_p30, 0.002); end
  def test_intermediate_output_q30; assert_in_epsilon(5.369487976675591, worksheet.intermediate_output_q30, 0.002); end
  def test_intermediate_output_r30; assert_in_epsilon(5.383188785625323, worksheet.intermediate_output_r30, 0.002); end
  def test_intermediate_output_s30; assert_in_epsilon(5.3785253124836965, worksheet.intermediate_output_s30, 0.002); end
  def test_intermediate_output_c31; assert_equal("V.11", worksheet.intermediate_output_c31); end
  def test_intermediate_output_d31; assert_equal("Waste and biogas", worksheet.intermediate_output_d31); end
  def test_intermediate_output_j31; assert_in_delta(0.0, (worksheet.intermediate_output_j31||0), 0.002); end
  def test_intermediate_output_k31; assert_in_delta(0.0, (worksheet.intermediate_output_k31||0), 0.002); end
  def test_intermediate_output_l31; assert_in_delta(0.0, (worksheet.intermediate_output_l31||0), 0.002); end
  def test_intermediate_output_m31; assert_in_delta(0.0, (worksheet.intermediate_output_m31||0), 0.002); end
  def test_intermediate_output_n31; assert_in_delta(0.0, (worksheet.intermediate_output_n31||0), 0.002); end
  def test_intermediate_output_o31; assert_in_delta(0.0, (worksheet.intermediate_output_o31||0), 0.002); end
  def test_intermediate_output_p31; assert_in_delta(0.0, (worksheet.intermediate_output_p31||0), 0.002); end
  def test_intermediate_output_q31; assert_in_delta(0.0, (worksheet.intermediate_output_q31||0), 0.002); end
  def test_intermediate_output_r31; assert_in_delta(0.0, (worksheet.intermediate_output_r31||0), 0.002); end
  def test_intermediate_output_s31; assert_in_delta(0.0, (worksheet.intermediate_output_s31||0), 0.002); end
  def test_intermediate_output_c32; assert_equal("V.12", worksheet.intermediate_output_c32); end
  def test_intermediate_output_d32; assert_equal("Liquid biofuels", worksheet.intermediate_output_d32); end
  def test_intermediate_output_j32; assert_in_delta(0.0, (worksheet.intermediate_output_j32||0), 0.002); end
  def test_intermediate_output_k32; assert_in_delta(0.0, (worksheet.intermediate_output_k32||0), 0.002); end
  def test_intermediate_output_l32; assert_in_delta(0.8781259347562536, worksheet.intermediate_output_l32, 0.002); end
  def test_intermediate_output_m32; assert_in_epsilon(1.5597570023106184, worksheet.intermediate_output_m32, 0.002); end
  def test_intermediate_output_n32; assert_in_epsilon(1.9724080497706384, worksheet.intermediate_output_n32, 0.002); end
  def test_intermediate_output_o32; assert_in_epsilon(2.17998045745982, worksheet.intermediate_output_o32, 0.002); end
  def test_intermediate_output_p32; assert_in_epsilon(2.2489439355536827, worksheet.intermediate_output_p32, 0.002); end
  def test_intermediate_output_q32; assert_in_epsilon(2.2040230069817777, worksheet.intermediate_output_q32, 0.002); end
  def test_intermediate_output_r32; assert_in_epsilon(2.227078627793177, worksheet.intermediate_output_r32, 0.002); end
  def test_intermediate_output_s32; assert_in_epsilon(2.1553105560893746, worksheet.intermediate_output_s32, 0.002); end
  def test_intermediate_output_c33; assert_equal("V.13", worksheet.intermediate_output_c33); end
  def test_intermediate_output_d33; assert_equal("Hydrogen", worksheet.intermediate_output_d33); end
  def test_intermediate_output_j33; assert_in_delta(0.0, (worksheet.intermediate_output_j33||0), 0.002); end
  def test_intermediate_output_k33; assert_in_delta(0.0, (worksheet.intermediate_output_k33||0), 0.002); end
  def test_intermediate_output_l33; assert_in_delta(0.2890098784071679, worksheet.intermediate_output_l33, 0.002); end
  def test_intermediate_output_m33; assert_in_delta(0.5686357026197769, worksheet.intermediate_output_m33, 0.002); end
  def test_intermediate_output_n33; assert_in_epsilon(1.4318991909883922, worksheet.intermediate_output_n33, 0.002); end
  def test_intermediate_output_o33; assert_in_epsilon(2.0353876295177855, worksheet.intermediate_output_o33, 0.002); end
  def test_intermediate_output_p33; assert_in_epsilon(2.3930889172660037, worksheet.intermediate_output_p33, 0.002); end
  def test_intermediate_output_q33; assert_in_epsilon(2.5566267088680856, worksheet.intermediate_output_q33, 0.002); end
  def test_intermediate_output_r33; assert_in_epsilon(2.0922907485538125, worksheet.intermediate_output_r33, 0.002); end
  def test_intermediate_output_s33; assert_in_epsilon(1.713878548013348, worksheet.intermediate_output_s33, 0.002); end
  def test_intermediate_output_d34; assert_equal("Total", worksheet.intermediate_output_d34); end
  def test_intermediate_output_j34; assert_in_epsilon(376.206355718361, worksheet.intermediate_output_j34, 0.002); end
  def test_intermediate_output_k34; assert_in_epsilon(351.4843179973874, worksheet.intermediate_output_k34, 0.002); end
  def test_intermediate_output_l34; assert_in_epsilon(325.1875664174561, worksheet.intermediate_output_l34, 0.002); end
  def test_intermediate_output_m34; assert_in_epsilon(303.047743129817, worksheet.intermediate_output_m34, 0.002); end
  def test_intermediate_output_n34; assert_in_epsilon(280.9276375189286, worksheet.intermediate_output_n34, 0.002); end
  def test_intermediate_output_o34; assert_in_epsilon(259.82801000612227, worksheet.intermediate_output_o34, 0.002); end
  def test_intermediate_output_p34; assert_in_epsilon(241.14314069575366, worksheet.intermediate_output_p34, 0.002); end
  def test_intermediate_output_q34; assert_in_epsilon(224.19474314675065, worksheet.intermediate_output_q34, 0.002); end
  def test_intermediate_output_r34; assert_in_epsilon(209.53761733659414, worksheet.intermediate_output_r34, 0.002); end
  def test_intermediate_output_s34; assert_in_epsilon(195.73808170946666, worksheet.intermediate_output_s34, 0.002); end
  def test_intermediate_output_d35; assert_equal("Baseline", worksheet.intermediate_output_d35); end
  def test_intermediate_output_j35; assert_in_epsilon(376.206355718361, worksheet.intermediate_output_j35, 0.002); end
  def test_intermediate_output_k35; assert_in_epsilon(351.2221143416875, worksheet.intermediate_output_k35, 0.002); end
  def test_intermediate_output_l35; assert_in_epsilon(341.97650229360767, worksheet.intermediate_output_l35, 0.002); end
  def test_intermediate_output_m35; assert_in_epsilon(332.88654405132763, worksheet.intermediate_output_m35, 0.002); end
  def test_intermediate_output_n35; assert_in_epsilon(323.09228684037623, worksheet.intermediate_output_n35, 0.002); end
  def test_intermediate_output_o35; assert_in_epsilon(313.0986862089904, worksheet.intermediate_output_o35, 0.002); end
  def test_intermediate_output_p35; assert_in_epsilon(304.11752762436663, worksheet.intermediate_output_p35, 0.002); end
  def test_intermediate_output_q35; assert_in_epsilon(295.60582264520633, worksheet.intermediate_output_q35, 0.002); end
  def test_intermediate_output_r35; assert_in_epsilon(287.47588804314296, worksheet.intermediate_output_r35, 0.002); end
  def test_intermediate_output_s35; assert_in_epsilon(279.5779584035291, worksheet.intermediate_output_s35, 0.002); end
  def test_intermediate_output_c37; assert_equal("Primary Energy Supply", worksheet.intermediate_output_c37); end
  def test_intermediate_output_d38; assert_equal("Coal", worksheet.intermediate_output_d38); end
  def test_intermediate_output_f38; assert_in_epsilon(79.935, worksheet.intermediate_output_f38, 0.002); end
  def test_intermediate_output_g38; assert_in_epsilon(117.39099999999999, worksheet.intermediate_output_g38, 0.002); end
  def test_intermediate_output_h38; assert_in_epsilon(118.055, worksheet.intermediate_output_h38, 0.002); end
  def test_intermediate_output_j38; assert_in_epsilon(119.23907491195291, worksheet.intermediate_output_j38, 0.002); end
  def test_intermediate_output_k38; assert_in_epsilon(106.68765449560583, worksheet.intermediate_output_k38, 0.002); end
  def test_intermediate_output_l38; assert_in_epsilon(105.48506155380802, worksheet.intermediate_output_l38, 0.002); end
  def test_intermediate_output_m38; assert_in_epsilon(90.4853095823946, worksheet.intermediate_output_m38, 0.002); end
  def test_intermediate_output_n38; assert_in_epsilon(74.75532498794931, worksheet.intermediate_output_n38, 0.002); end
  def test_intermediate_output_o38; assert_in_epsilon(61.43465069214548, worksheet.intermediate_output_o38, 0.002); end
  def test_intermediate_output_p38; assert_in_epsilon(51.972909905437035, worksheet.intermediate_output_p38, 0.002); end
  def test_intermediate_output_q38; assert_in_epsilon(42.561906534738704, worksheet.intermediate_output_q38, 0.002); end
  def test_intermediate_output_r38; assert_in_epsilon(35.06809522202344, worksheet.intermediate_output_r38, 0.002); end
  def test_intermediate_output_s38; assert_in_epsilon(28.014634679005283, worksheet.intermediate_output_s38, 0.002); end
  def test_intermediate_output_c39; assert_equal("K.01", worksheet.intermediate_output_c39); end
  def test_intermediate_output_d39; assert_equal("Coal", worksheet.intermediate_output_d39); end
  def test_intermediate_output_f39; assert_in_epsilon(79.935, worksheet.intermediate_output_f39, 0.002); end
  def test_intermediate_output_g39; assert_in_epsilon(117.39099999999999, worksheet.intermediate_output_g39, 0.002); end
  def test_intermediate_output_h39; assert_in_epsilon(118.60300000000001, worksheet.intermediate_output_h39, 0.002); end
  def test_intermediate_output_j39; assert_in_epsilon(119.23907491195291, worksheet.intermediate_output_j39, 0.002); end
  def test_intermediate_output_k39; assert_in_epsilon(106.68765449560583, worksheet.intermediate_output_k39, 0.002); end
  def test_intermediate_output_l39; assert_in_epsilon(105.48506155380802, worksheet.intermediate_output_l39, 0.002); end
  def test_intermediate_output_m39; assert_in_epsilon(90.4853095823946, worksheet.intermediate_output_m39, 0.002); end
  def test_intermediate_output_n39; assert_in_epsilon(74.75532498794931, worksheet.intermediate_output_n39, 0.002); end
  def test_intermediate_output_o39; assert_in_epsilon(61.43465069214548, worksheet.intermediate_output_o39, 0.002); end
  def test_intermediate_output_p39; assert_in_epsilon(51.972909905437035, worksheet.intermediate_output_p39, 0.002); end
  def test_intermediate_output_q39; assert_in_epsilon(42.561906534738704, worksheet.intermediate_output_q39, 0.002); end
  def test_intermediate_output_r39; assert_in_epsilon(35.06809522202344, worksheet.intermediate_output_r39, 0.002); end
  def test_intermediate_output_s39; assert_in_epsilon(28.014634679005283, worksheet.intermediate_output_s39, 0.002); end
  def test_intermediate_output_c40; assert_equal("K.02", worksheet.intermediate_output_c40); end
  def test_intermediate_output_d40; assert_equal("Coke", worksheet.intermediate_output_d40); end
  def test_intermediate_output_f40; assert_in_delta(0.0, (worksheet.intermediate_output_f40||0), 0.002); end
  def test_intermediate_output_g40; assert_in_delta(0.0, (worksheet.intermediate_output_g40||0), 0.002); end
  def test_intermediate_output_h40; assert_in_delta(-0.548, worksheet.intermediate_output_h40, 0.002); end
  def test_intermediate_output_j40; assert_in_delta(0.0, (worksheet.intermediate_output_j40||0), 0.002); end
  def test_intermediate_output_k40; assert_in_delta(0.0, (worksheet.intermediate_output_k40||0), 0.002); end
  def test_intermediate_output_l40; assert_in_delta(0.0, (worksheet.intermediate_output_l40||0), 0.002); end
  def test_intermediate_output_m40; assert_in_delta(0.0, (worksheet.intermediate_output_m40||0), 0.002); end
  def test_intermediate_output_n40; assert_in_delta(0.0, (worksheet.intermediate_output_n40||0), 0.002); end
  def test_intermediate_output_o40; assert_in_delta(0.0, (worksheet.intermediate_output_o40||0), 0.002); end
  def test_intermediate_output_p40; assert_in_delta(0.0, (worksheet.intermediate_output_p40||0), 0.002); end
  def test_intermediate_output_q40; assert_in_delta(0.0, (worksheet.intermediate_output_q40||0), 0.002); end
  def test_intermediate_output_r40; assert_in_delta(0.0, (worksheet.intermediate_output_r40||0), 0.002); end
  def test_intermediate_output_s40; assert_in_delta(0.0, (worksheet.intermediate_output_s40||0), 0.002); end
  def test_intermediate_output_d41; assert_equal("Oil Products", worksheet.intermediate_output_d41); end
  def test_intermediate_output_f41; assert_in_epsilon(279.24, worksheet.intermediate_output_f41, 0.002); end
  def test_intermediate_output_g41; assert_in_epsilon(276.655, worksheet.intermediate_output_g41, 0.002); end
  def test_intermediate_output_h41; assert_in_epsilon(242.30599999999998, worksheet.intermediate_output_h41, 0.002); end
  def test_intermediate_output_j41; assert_in_epsilon(228.29899026325324, worksheet.intermediate_output_j41, 0.002); end
  def test_intermediate_output_k41; assert_in_epsilon(205.4450297772961, worksheet.intermediate_output_k41, 0.002); end
  def test_intermediate_output_l41; assert_in_epsilon(191.58897070098206, worksheet.intermediate_output_l41, 0.002); end
  def test_intermediate_output_m41; assert_in_epsilon(175.13795976998912, worksheet.intermediate_output_m41, 0.002); end
  def test_intermediate_output_n41; assert_in_epsilon(157.70941404955056, worksheet.intermediate_output_n41, 0.002); end
  def test_intermediate_output_o41; assert_in_epsilon(141.39117391786493, worksheet.intermediate_output_o41, 0.002); end
  def test_intermediate_output_p41; assert_in_epsilon(126.62091828822791, worksheet.intermediate_output_p41, 0.002); end
  def test_intermediate_output_q41; assert_in_epsilon(112.64858021332824, worksheet.intermediate_output_q41, 0.002); end
  def test_intermediate_output_r41; assert_in_epsilon(102.237149912931, worksheet.intermediate_output_r41, 0.002); end
  def test_intermediate_output_s41; assert_in_epsilon(91.61339424736323, worksheet.intermediate_output_s41, 0.002); end
  def test_intermediate_output_c42; assert_equal("K.03", worksheet.intermediate_output_c42); end
  def test_intermediate_output_d42; assert_equal("Crude Oil", worksheet.intermediate_output_d42); end
  def test_intermediate_output_f42; assert_in_epsilon(211.392, worksheet.intermediate_output_f42, 0.002); end
  def test_intermediate_output_g42; assert_in_epsilon(224.131, worksheet.intermediate_output_g42, 0.002); end
  def test_intermediate_output_h42; assert_in_epsilon(196.44899999999998, worksheet.intermediate_output_h42, 0.002); end
  def test_intermediate_output_j42; assert_in_epsilon(178.13527198215414, worksheet.intermediate_output_j42, 0.002); end
  def test_intermediate_output_k42; assert_in_epsilon(164.6233424672329, worksheet.intermediate_output_k42, 0.002); end
  def test_intermediate_output_l42; assert_in_epsilon(156.04047610279272, worksheet.intermediate_output_l42, 0.002); end
  def test_intermediate_output_m42; assert_in_epsilon(147.21969032836773, worksheet.intermediate_output_m42, 0.002); end
  def test_intermediate_output_n42; assert_in_epsilon(138.13658201291796, worksheet.intermediate_output_n42, 0.002); end
  def test_intermediate_output_o42; assert_in_epsilon(129.48066305260772, worksheet.intermediate_output_o42, 0.002); end
  def test_intermediate_output_p42; assert_in_epsilon(121.72491229409245, worksheet.intermediate_output_p42, 0.002); end
  def test_intermediate_output_q42; assert_in_epsilon(114.62843664162182, worksheet.intermediate_output_q42, 0.002); end
  def test_intermediate_output_r42; assert_in_epsilon(108.21808043278936, worksheet.intermediate_output_r42, 0.002); end
  def test_intermediate_output_s42; assert_in_epsilon(101.96763847962117, worksheet.intermediate_output_s42, 0.002); end
  def test_intermediate_output_c43; assert_equal("K.04", worksheet.intermediate_output_c43); end
  def test_intermediate_output_d43; assert_equal("Oil Products", worksheet.intermediate_output_d43); end
  def test_intermediate_output_f43; assert_in_epsilon(67.848, worksheet.intermediate_output_f43, 0.002); end
  def test_intermediate_output_g43; assert_in_epsilon(52.524, worksheet.intermediate_output_g43, 0.002); end
  def test_intermediate_output_h43; assert_in_epsilon(45.857, worksheet.intermediate_output_h43, 0.002); end
  def test_intermediate_output_j43; assert_in_epsilon(50.16371828109911, worksheet.intermediate_output_j43, 0.002); end
  def test_intermediate_output_k43; assert_in_epsilon(40.8216873100632, worksheet.intermediate_output_k43, 0.002); end
  def test_intermediate_output_l43; assert_in_epsilon(35.548494598189336, worksheet.intermediate_output_l43, 0.002); end
  def test_intermediate_output_m43; assert_in_epsilon(27.91826944162139, worksheet.intermediate_output_m43, 0.002); end
  def test_intermediate_output_n43; assert_in_epsilon(19.57283203663262, worksheet.intermediate_output_n43, 0.002); end
  def test_intermediate_output_o43; assert_in_epsilon(11.910510865257223, worksheet.intermediate_output_o43, 0.002); end
  def test_intermediate_output_p43; assert_in_epsilon(4.896005994135464, worksheet.intermediate_output_p43, 0.002); end
  def test_intermediate_output_q43; assert_in_epsilon(-1.979856428293573, worksheet.intermediate_output_q43, 0.002); end
  def test_intermediate_output_r43; assert_in_epsilon(-5.9809305198583615, worksheet.intermediate_output_r43, 0.002); end
  def test_intermediate_output_s43; assert_in_epsilon(-10.35424423225794, worksheet.intermediate_output_s43, 0.002); end
  def test_intermediate_output_d44; assert_equal("Gas", worksheet.intermediate_output_d44); end
  def test_intermediate_output_f44; assert_in_epsilon(48.376000000000005, worksheet.intermediate_output_f44, 0.002); end
  def test_intermediate_output_g44; assert_in_epsilon(78.818, worksheet.intermediate_output_g44, 0.002); end
  def test_intermediate_output_h44; assert_in_epsilon(94.84299999999999, worksheet.intermediate_output_h44, 0.002); end
  def test_intermediate_output_j44; assert_in_epsilon(91.95491288380958, worksheet.intermediate_output_j44, 0.002); end
  def test_intermediate_output_k44; assert_in_epsilon(85.2029959660818, worksheet.intermediate_output_k44, 0.002); end
  def test_intermediate_output_l44; assert_in_epsilon(88.07192072189741, worksheet.intermediate_output_l44, 0.002); end
  def test_intermediate_output_m44; assert_in_epsilon(79.46187856070975, worksheet.intermediate_output_m44, 0.002); end
  def test_intermediate_output_n44; assert_in_epsilon(74.64490679590078, worksheet.intermediate_output_n44, 0.002); end
  def test_intermediate_output_o44; assert_in_epsilon(69.43621297840016, worksheet.intermediate_output_o44, 0.002); end
  def test_intermediate_output_p44; assert_in_epsilon(64.71767435316116, worksheet.intermediate_output_p44, 0.002); end
  def test_intermediate_output_q44; assert_in_epsilon(58.08986774935832, worksheet.intermediate_output_q44, 0.002); end
  def test_intermediate_output_r44; assert_in_epsilon(53.486681059170664, worksheet.intermediate_output_r44, 0.002); end
  def test_intermediate_output_s44; assert_in_epsilon(47.61451880693228, worksheet.intermediate_output_s44, 0.002); end
  def test_intermediate_output_c45; assert_equal("K.05", worksheet.intermediate_output_c45); end
  def test_intermediate_output_d45; assert_equal("Gas", worksheet.intermediate_output_d45); end
  def test_intermediate_output_f45; assert_in_epsilon(48.376000000000005, worksheet.intermediate_output_f45, 0.002); end
  def test_intermediate_output_g45; assert_in_epsilon(78.818, worksheet.intermediate_output_g45, 0.002); end
  def test_intermediate_output_h45; assert_in_epsilon(94.84299999999999, worksheet.intermediate_output_h45, 0.002); end
  def test_intermediate_output_j45; assert_in_epsilon(91.95491288380958, worksheet.intermediate_output_j45, 0.002); end
  def test_intermediate_output_k45; assert_in_epsilon(85.2029959660818, worksheet.intermediate_output_k45, 0.002); end
  def test_intermediate_output_l45; assert_in_epsilon(88.07192072189741, worksheet.intermediate_output_l45, 0.002); end
  def test_intermediate_output_m45; assert_in_epsilon(79.46187856070975, worksheet.intermediate_output_m45, 0.002); end
  def test_intermediate_output_n45; assert_in_epsilon(74.64490679590078, worksheet.intermediate_output_n45, 0.002); end
  def test_intermediate_output_o45; assert_in_epsilon(69.43621297840016, worksheet.intermediate_output_o45, 0.002); end
  def test_intermediate_output_p45; assert_in_epsilon(64.71767435316116, worksheet.intermediate_output_p45, 0.002); end
  def test_intermediate_output_q45; assert_in_epsilon(58.08986774935832, worksheet.intermediate_output_q45, 0.002); end
  def test_intermediate_output_r45; assert_in_epsilon(53.486681059170664, worksheet.intermediate_output_r45, 0.002); end
  def test_intermediate_output_s45; assert_in_epsilon(47.61451880693228, worksheet.intermediate_output_s45, 0.002); end
  def test_intermediate_output_d46; assert_equal("Nuclear", worksheet.intermediate_output_d46); end
  def test_intermediate_output_f46; assert_in_epsilon(44.054, worksheet.intermediate_output_f46, 0.002); end
  def test_intermediate_output_g46; assert_in_epsilon(61.79, worksheet.intermediate_output_g46, 0.002); end
  def test_intermediate_output_h46; assert_in_epsilon(61.528, worksheet.intermediate_output_h46, 0.002); end
  def test_intermediate_output_j46; assert_in_epsilon(64.0074862005619, worksheet.intermediate_output_j46, 0.002); end
  def test_intermediate_output_k46; assert_in_epsilon(59.82922166023329, worksheet.intermediate_output_k46, 0.002); end
  def test_intermediate_output_l46; assert_in_epsilon(23.156219301758558, worksheet.intermediate_output_l46, 0.002); end
  def test_intermediate_output_m46; assert_in_epsilon(23.587296817394783, worksheet.intermediate_output_m46, 0.002); end
  def test_intermediate_output_n46; assert_in_epsilon(19.541105166138586, worksheet.intermediate_output_n46, 0.002); end
  def test_intermediate_output_o46; assert_in_epsilon(15.759497019988455, worksheet.intermediate_output_o46, 0.002); end
  def test_intermediate_output_p46; assert_in_epsilon(9.493385228330135, worksheet.intermediate_output_p46, 0.002); end
  def test_intermediate_output_q46; assert_in_epsilon(6.981777906689127, worksheet.intermediate_output_q46, 0.002); end
  def test_intermediate_output_r46; assert_in_epsilon(4.143635820209899, worksheet.intermediate_output_r46, 0.002); end
  def test_intermediate_output_s46; assert_in_epsilon(3.5550988527544516, worksheet.intermediate_output_s46, 0.002); end
  def test_intermediate_output_c47; assert_equal("K.06", worksheet.intermediate_output_c47); end
  def test_intermediate_output_d47; assert_equal("Nuclear", worksheet.intermediate_output_d47); end
  def test_intermediate_output_f47; assert_in_epsilon(44.054, worksheet.intermediate_output_f47, 0.002); end
  def test_intermediate_output_g47; assert_in_epsilon(61.79, worksheet.intermediate_output_g47, 0.002); end
  def test_intermediate_output_h47; assert_in_epsilon(61.528, worksheet.intermediate_output_h47, 0.002); end
  def test_intermediate_output_j47; assert_in_epsilon(64.0074862005619, worksheet.intermediate_output_j47, 0.002); end
  def test_intermediate_output_k47; assert_in_epsilon(59.82922166023329, worksheet.intermediate_output_k47, 0.002); end
  def test_intermediate_output_l47; assert_in_epsilon(23.156219301758558, worksheet.intermediate_output_l47, 0.002); end
  def test_intermediate_output_m47; assert_in_epsilon(23.587296817394783, worksheet.intermediate_output_m47, 0.002); end
  def test_intermediate_output_n47; assert_in_epsilon(19.541105166138586, worksheet.intermediate_output_n47, 0.002); end
  def test_intermediate_output_o47; assert_in_epsilon(15.759497019988455, worksheet.intermediate_output_o47, 0.002); end
  def test_intermediate_output_p47; assert_in_epsilon(9.493385228330135, worksheet.intermediate_output_p47, 0.002); end
  def test_intermediate_output_q47; assert_in_epsilon(6.981777906689127, worksheet.intermediate_output_q47, 0.002); end
  def test_intermediate_output_r47; assert_in_epsilon(4.143635820209899, worksheet.intermediate_output_r47, 0.002); end
  def test_intermediate_output_s47; assert_in_epsilon(3.5550988527544516, worksheet.intermediate_output_s47, 0.002); end
  def test_intermediate_output_d48; assert_equal("Renewables", worksheet.intermediate_output_d48); end
  def test_intermediate_output_f48; assert_in_epsilon(29.935, worksheet.intermediate_output_f48, 0.002); end
  def test_intermediate_output_g48; assert_in_epsilon(29.36480130714647, worksheet.intermediate_output_g48, 0.002); end
  def test_intermediate_output_h48; assert_in_epsilon(31.711, worksheet.intermediate_output_h48, 0.002); end
  def test_intermediate_output_j48; assert_in_epsilon(36.23149868892611, worksheet.intermediate_output_j48, 0.002); end
  def test_intermediate_output_k48; assert_in_epsilon(35.95425865380188, worksheet.intermediate_output_k48, 0.002); end
  def test_intermediate_output_l48; assert_in_epsilon(47.286026711038744, worksheet.intermediate_output_l48, 0.002); end
  def test_intermediate_output_m48; assert_in_epsilon(56.531118808930245, worksheet.intermediate_output_m48, 0.002); end
  def test_intermediate_output_n48; assert_in_epsilon(65.58332520899093, worksheet.intermediate_output_n48, 0.002); end
  def test_intermediate_output_o48; assert_in_epsilon(72.96714442054382, worksheet.intermediate_output_o48, 0.002); end
  def test_intermediate_output_p48; assert_in_epsilon(80.97774785063831, worksheet.intermediate_output_p48, 0.002); end
  def test_intermediate_output_q48; assert_in_epsilon(87.64894580170952, worksheet.intermediate_output_q48, 0.002); end
  def test_intermediate_output_r48; assert_in_epsilon(92.25566175287507, worksheet.intermediate_output_r48, 0.002); end
  def test_intermediate_output_s48; assert_in_epsilon(95.31388889160068, worksheet.intermediate_output_s48, 0.002); end
  def test_intermediate_output_c49; assert_equal("R.01", worksheet.intermediate_output_c49); end
  def test_intermediate_output_d49; assert_equal("Solar", worksheet.intermediate_output_d49); end
  def test_intermediate_output_f49; assert_in_epsilon(1.124, worksheet.intermediate_output_f49, 0.002); end
  def test_intermediate_output_g49; assert_in_delta(0.561801307146473, worksheet.intermediate_output_g49, 0.002); end
  def test_intermediate_output_h49; assert_in_delta(0.395, worksheet.intermediate_output_h49, 0.002); end
  def test_intermediate_output_j49; assert_in_delta(0.504623103660877, worksheet.intermediate_output_j49, 0.002); end
  def test_intermediate_output_k49; assert_in_delta(0.7018015731363714, worksheet.intermediate_output_k49, 0.002); end
  def test_intermediate_output_l49; assert_in_epsilon(2.6263533026333183, worksheet.intermediate_output_l49, 0.002); end
  def test_intermediate_output_m49; assert_in_epsilon(4.697432151648752, worksheet.intermediate_output_m49, 0.002); end
  def test_intermediate_output_n49; assert_in_epsilon(6.643718742264187, worksheet.intermediate_output_n49, 0.002); end
  def test_intermediate_output_o49; assert_in_epsilon(8.59000533287962, worksheet.intermediate_output_o49, 0.002); end
  def test_intermediate_output_p49; assert_in_epsilon(10.669704699745054, worksheet.intermediate_output_p49, 0.002); end
  def test_intermediate_output_q49; assert_in_epsilon(12.749404066610486, worksheet.intermediate_output_q49, 0.002); end
  def test_intermediate_output_r49; assert_in_epsilon(14.829103433475922, worksheet.intermediate_output_r49, 0.002); end
  def test_intermediate_output_s49; assert_in_epsilon(16.908802800341356, worksheet.intermediate_output_s49, 0.002); end
  def test_intermediate_output_c50; assert_equal("R.02", worksheet.intermediate_output_c50); end
  def test_intermediate_output_d50; assert_equal("Wind", worksheet.intermediate_output_d50); end
  def test_intermediate_output_f50; assert_in_delta(0.0, (worksheet.intermediate_output_f50||0), 0.002); end
  def test_intermediate_output_g50; assert_in_delta(0.0, (worksheet.intermediate_output_g50||0), 0.002); end
  def test_intermediate_output_h50; assert_in_delta(0.0, (worksheet.intermediate_output_h50||0), 0.002); end
  def test_intermediate_output_j50; assert_in_delta(0.16356165090283747, worksheet.intermediate_output_j50, 0.002); end
  def test_intermediate_output_k50; assert_in_delta(0.3794328804815133, worksheet.intermediate_output_k50, 0.002); end
  def test_intermediate_output_l50; assert_in_delta(0.7620314703353396, worksheet.intermediate_output_l50, 0.002); end
  def test_intermediate_output_m50; assert_in_epsilon(1.216536887360275, worksheet.intermediate_output_m50, 0.002); end
  def test_intermediate_output_n50; assert_in_epsilon(2.632814961306964, worksheet.intermediate_output_n50, 0.002); end
  def test_intermediate_output_o50; assert_in_epsilon(4.047585554600172, worksheet.intermediate_output_o50, 0.002); end
  def test_intermediate_output_p50; assert_in_epsilon(5.015388134135855, worksheet.intermediate_output_p50, 0.002); end
  def test_intermediate_output_q50; assert_in_epsilon(7.337662080825451, worksheet.intermediate_output_q50, 0.002); end
  def test_intermediate_output_r50; assert_in_epsilon(6.948732072226997, worksheet.intermediate_output_r50, 0.002); end
  def test_intermediate_output_s50; assert_in_epsilon(7.914273430782458, worksheet.intermediate_output_s50, 0.002); end
  def test_intermediate_output_c51; assert_equal("R.03", worksheet.intermediate_output_c51); end
  def test_intermediate_output_d51; assert_equal("Biomass", worksheet.intermediate_output_d51); end
  def test_intermediate_output_f51; assert_in_epsilon(8.893, worksheet.intermediate_output_f51, 0.002); end
  def test_intermediate_output_g51; assert_in_epsilon(10.280999999999999, worksheet.intermediate_output_g51, 0.002); end
  def test_intermediate_output_h51; assert_in_epsilon(11.104, worksheet.intermediate_output_h51, 0.002); end
  def test_intermediate_output_j51; assert_in_epsilon(6.549433709130697, worksheet.intermediate_output_j51, 0.002); end
  def test_intermediate_output_k51; assert_in_epsilon(7.056681000964719, worksheet.intermediate_output_k51, 0.002); end
  def test_intermediate_output_l51; assert_in_epsilon(8.016265405560333, worksheet.intermediate_output_l51, 0.002); end
  def test_intermediate_output_m51; assert_in_epsilon(8.016265405560333, worksheet.intermediate_output_m51, 0.002); end
  def test_intermediate_output_n51; assert_in_epsilon(8.016265405560333, worksheet.intermediate_output_n51, 0.002); end
  def test_intermediate_output_o51; assert_in_epsilon(8.016265405560333, worksheet.intermediate_output_o51, 0.002); end
  def test_intermediate_output_p51; assert_in_epsilon(8.016265405560333, worksheet.intermediate_output_p51, 0.002); end
  def test_intermediate_output_q51; assert_in_epsilon(8.016265405560333, worksheet.intermediate_output_q51, 0.002); end
  def test_intermediate_output_r51; assert_in_epsilon(8.016265405560333, worksheet.intermediate_output_r51, 0.002); end
  def test_intermediate_output_s51; assert_in_epsilon(8.016265405560333, worksheet.intermediate_output_s51, 0.002); end
  def test_intermediate_output_c52; assert_equal("R.04", worksheet.intermediate_output_c52); end
  def test_intermediate_output_d52; assert_equal("Imported Biomass", worksheet.intermediate_output_d52); end
  def test_intermediate_output_f52; assert_in_delta(0.0, (worksheet.intermediate_output_f52||0), 0.002); end
  def test_intermediate_output_g52; assert_in_delta(0.0, (worksheet.intermediate_output_g52||0), 0.002); end
  def test_intermediate_output_h52; assert_in_delta(0.0, (worksheet.intermediate_output_h52||0), 0.002); end
  def test_intermediate_output_j52; assert_in_delta(0.0, (worksheet.intermediate_output_j52||0), 0.002); end
  def test_intermediate_output_k52; assert_in_delta(0.0, (worksheet.intermediate_output_k52||0), 0.002); end
  def test_intermediate_output_l52; assert_in_epsilon(7.316837840965986, worksheet.intermediate_output_l52, 0.002); end
  def test_intermediate_output_m52; assert_in_epsilon(13.286431377208718, worksheet.intermediate_output_m52, 0.002); end
  def test_intermediate_output_n52; assert_in_epsilon(16.77458393104669, worksheet.intermediate_output_n52, 0.002); end
  def test_intermediate_output_o52; assert_in_epsilon(18.594137973746452, worksheet.intermediate_output_o52, 0.002); end
  def test_intermediate_output_p52; assert_in_epsilon(20.384389210440332, worksheet.intermediate_output_p52, 0.002); end
  def test_intermediate_output_q52; assert_in_epsilon(19.480763600957047, worksheet.intermediate_output_q52, 0.002); end
  def test_intermediate_output_r52; assert_in_epsilon(19.223859946856127, worksheet.intermediate_output_r52, 0.002); end
  def test_intermediate_output_s52; assert_in_epsilon(16.06399611316134, worksheet.intermediate_output_s52, 0.002); end
  def test_intermediate_output_c53; assert_equal("R.05", worksheet.intermediate_output_c53); end
  def test_intermediate_output_d53; assert_equal("Hydro", worksheet.intermediate_output_d53); end
  def test_intermediate_output_f53; assert_in_epsilon(19.584, worksheet.intermediate_output_f53, 0.002); end
  def test_intermediate_output_g53; assert_in_epsilon(17.705, worksheet.intermediate_output_g53, 0.002); end
  def test_intermediate_output_h53; assert_in_epsilon(19.526, worksheet.intermediate_output_h53, 0.002); end
  def test_intermediate_output_j53; assert_in_epsilon(28.739518746297904, worksheet.intermediate_output_j53, 0.002); end
  def test_intermediate_output_k53; assert_in_epsilon(27.536705537998298, worksheet.intermediate_output_k53, 0.002); end
  def test_intermediate_output_l53; assert_in_epsilon(28.19078915079535, worksheet.intermediate_output_l53, 0.002); end
  def test_intermediate_output_m53; assert_in_epsilon(28.84487276359241, worksheet.intermediate_output_m53, 0.002); end
  def test_intermediate_output_n53; assert_in_epsilon(29.49895637638946, worksheet.intermediate_output_n53, 0.002); end
  def test_intermediate_output_o53; assert_in_epsilon(30.153039989186514, worksheet.intermediate_output_o53, 0.002); end
  def test_intermediate_output_p53; assert_in_epsilon(30.80712360198357, worksheet.intermediate_output_p53, 0.002); end
  def test_intermediate_output_q53; assert_in_epsilon(31.46120721478062, worksheet.intermediate_output_q53, 0.002); end
  def test_intermediate_output_r53; assert_in_epsilon(32.115290827577674, worksheet.intermediate_output_r53, 0.002); end
  def test_intermediate_output_s53; assert_in_epsilon(32.76937444037473, worksheet.intermediate_output_s53, 0.002); end
  def test_intermediate_output_c54; assert_equal("R.06", worksheet.intermediate_output_c54); end
  def test_intermediate_output_d54; assert_equal("Geothermal", worksheet.intermediate_output_d54); end
  def test_intermediate_output_f54; assert_in_delta(0.33399999999999996, worksheet.intermediate_output_f54, 0.002); end
  def test_intermediate_output_g54; assert_in_delta(0.8170000000000001, worksheet.intermediate_output_g54, 0.002); end
  def test_intermediate_output_h54; assert_in_delta(0.6859999999999999, worksheet.intermediate_output_h54, 0.002); end
  def test_intermediate_output_j54; assert_in_delta(0.27436147893379187, worksheet.intermediate_output_j54, 0.002); end
  def test_intermediate_output_k54; assert_in_delta(0.27963766122098016, worksheet.intermediate_output_k54, 0.002); end
  def test_intermediate_output_l54; assert_in_delta(0.3737495407484185, worksheet.intermediate_output_l54, 0.002); end
  def test_intermediate_output_m54; assert_in_delta(0.46958022355975915, worksheet.intermediate_output_m54, 0.002); end
  def test_intermediate_output_n54; assert_in_delta(0.831876238353809, worksheet.intermediate_output_n54, 0.002); end
  def test_intermediate_output_o54; assert_in_epsilon(1.1958910564317609, worksheet.intermediate_output_o54, 0.002); end
  def test_intermediate_output_p54; assert_in_epsilon(1.9412384215361793, worksheet.intermediate_output_p54, 0.002); end
  def test_intermediate_output_q54; assert_in_epsilon(2.686585786640597, worksheet.intermediate_output_q54, 0.002); end
  def test_intermediate_output_r54; assert_in_epsilon(3.4319331517450156, worksheet.intermediate_output_r54, 0.002); end
  def test_intermediate_output_s54; assert_in_epsilon(4.177280516849432, worksheet.intermediate_output_s54, 0.002); end
  def test_intermediate_output_c55; assert_equal("R.07", worksheet.intermediate_output_c55); end
  def test_intermediate_output_d55; assert_equal("Ocean power", worksheet.intermediate_output_d55); end
  def test_intermediate_output_f55; assert_in_delta(0.0, (worksheet.intermediate_output_f55||0), 0.002); end
  def test_intermediate_output_g55; assert_in_delta(0.0, (worksheet.intermediate_output_g55||0), 0.002); end
  def test_intermediate_output_h55; assert_in_delta(0.0, (worksheet.intermediate_output_h55||0), 0.002); end
  def test_intermediate_output_j55; assert_in_delta(0.0, (worksheet.intermediate_output_j55||0), 0.002); end
  def test_intermediate_output_k55; assert_in_delta(0.0, (worksheet.intermediate_output_k55||0), 0.002); end
  def test_intermediate_output_l55; assert_in_delta(0.0, (worksheet.intermediate_output_l55||0), 0.002); end
  def test_intermediate_output_m55; assert_in_delta(0.0, (worksheet.intermediate_output_m55||0), 0.002); end
  def test_intermediate_output_n55; assert_in_epsilon(1.1851095540694838, worksheet.intermediate_output_n55, 0.002); end
  def test_intermediate_output_o55; assert_in_epsilon(2.3702191081389676, worksheet.intermediate_output_o55, 0.002); end
  def test_intermediate_output_p55; assert_in_epsilon(4.143638377236977, worksheet.intermediate_output_p55, 0.002); end
  def test_intermediate_output_q55; assert_in_epsilon(5.917057646334994, worksheet.intermediate_output_q55, 0.002); end
  def test_intermediate_output_r55; assert_in_epsilon(7.690476915433007, worksheet.intermediate_output_r55, 0.002); end
  def test_intermediate_output_s55; assert_in_epsilon(9.463896184531029, worksheet.intermediate_output_s55, 0.002); end
  def test_intermediate_output_d56; assert_equal("Total Primary Energy Supply", worksheet.intermediate_output_d56); end
  def test_intermediate_output_f56; assert_in_epsilon(481.54, worksheet.intermediate_output_f56, 0.002); end
  def test_intermediate_output_g56; assert_in_epsilon(564.0188013071463, worksheet.intermediate_output_g56, 0.002); end
  def test_intermediate_output_h56; assert_in_epsilon(548.443, worksheet.intermediate_output_h56, 0.002); end
  def test_intermediate_output_j56; assert_in_epsilon(539.7319629485038, worksheet.intermediate_output_j56, 0.002); end
  def test_intermediate_output_k56; assert_in_epsilon(493.11916055301896, worksheet.intermediate_output_k56, 0.002); end
  def test_intermediate_output_l56; assert_in_epsilon(455.5881989894848, worksheet.intermediate_output_l56, 0.002); end
  def test_intermediate_output_m56; assert_in_epsilon(425.2035635394185, worksheet.intermediate_output_m56, 0.002); end
  def test_intermediate_output_n56; assert_in_epsilon(392.23407620853015, worksheet.intermediate_output_n56, 0.002); end
  def test_intermediate_output_o56; assert_in_epsilon(360.98867902894284, worksheet.intermediate_output_o56, 0.002); end
  def test_intermediate_output_p56; assert_in_epsilon(333.78263562579457, worksheet.intermediate_output_p56, 0.002); end
  def test_intermediate_output_q56; assert_in_epsilon(307.93107820582395, worksheet.intermediate_output_q56, 0.002); end
  def test_intermediate_output_r56; assert_in_epsilon(287.1912237672101, worksheet.intermediate_output_r56, 0.002); end
  def test_intermediate_output_s56; assert_in_epsilon(266.11153547765593, worksheet.intermediate_output_s56, 0.002); end
  def test_intermediate_output_d57; assert_equal("Baseline", worksheet.intermediate_output_d57); end
  def test_intermediate_output_j57; assert_in_epsilon(538.7379892187672, worksheet.intermediate_output_j57, 0.002); end
  def test_intermediate_output_k57; assert_in_epsilon(491.56310180489135, worksheet.intermediate_output_k57, 0.002); end
  def test_intermediate_output_l57; assert_in_epsilon(477.5943880057664, worksheet.intermediate_output_l57, 0.002); end
  def test_intermediate_output_m57; assert_in_epsilon(467.87331356794874, worksheet.intermediate_output_m57, 0.002); end
  def test_intermediate_output_n57; assert_in_epsilon(455.1440034614963, worksheet.intermediate_output_n57, 0.002); end
  def test_intermediate_output_o57; assert_in_epsilon(442.0643882925485, worksheet.intermediate_output_o57, 0.002); end
  def test_intermediate_output_p57; assert_in_epsilon(432.3410994003828, worksheet.intermediate_output_p57, 0.002); end
  def test_intermediate_output_q57; assert_in_epsilon(423.0129134857684, worksheet.intermediate_output_q57, 0.002); end
  def test_intermediate_output_r57; assert_in_epsilon(413.79097423361316, worksheet.intermediate_output_r57, 0.002); end
  def test_intermediate_output_s57; assert_in_epsilon(404.8742107128798, worksheet.intermediate_output_s57, 0.002); end
  def test_intermediate_output_c59; assert_equal("Conversion losses, distribution, and own use", worksheet.intermediate_output_c59); end
  def test_intermediate_output_c60; assert_equal("X.01", worksheet.intermediate_output_c60); end
  def test_intermediate_output_d60; assert_equal("Conversion Loss", worksheet.intermediate_output_d60); end
  def test_intermediate_output_f60; assert_in_epsilon(135.41059486082042, worksheet.intermediate_output_f60, 0.002); end
  def test_intermediate_output_g60; assert_in_epsilon(174.60989445366585, worksheet.intermediate_output_g60, 0.002); end
  def test_intermediate_output_h60; assert_in_epsilon(183.5012161244143, worksheet.intermediate_output_h60, 0.002); end
  def test_intermediate_output_j60; assert_in_epsilon(131.91171824019727, worksheet.intermediate_output_j60, 0.002); end
  def test_intermediate_output_k60; assert_in_epsilon(109.74911939895173, worksheet.intermediate_output_k60, 0.002); end
  def test_intermediate_output_l60; assert_in_epsilon(94.0822391483354, worksheet.intermediate_output_l60, 0.002); end
  def test_intermediate_output_m60; assert_in_epsilon(82.89114648881552, worksheet.intermediate_output_m60, 0.002); end
  def test_intermediate_output_n60; assert_in_epsilon(68.79523956709147, worksheet.intermediate_output_n60, 0.002); end
  def test_intermediate_output_o60; assert_in_epsilon(55.838004033573746, worksheet.intermediate_output_o60, 0.002); end
  def test_intermediate_output_p60; assert_in_epsilon(46.10440540575278, worksheet.intermediate_output_p60, 0.002); end
  def test_intermediate_output_q60; assert_in_epsilon(37.31145889644353, worksheet.intermediate_output_q60, 0.002); end
  def test_intermediate_output_r60; assert_in_epsilon(30.906261429646342, worksheet.intermediate_output_r60, 0.002); end
  def test_intermediate_output_s60; assert_in_epsilon(23.724653293068748, worksheet.intermediate_output_s60, 0.002); end
  def test_intermediate_output_c61; assert_equal("X.02", worksheet.intermediate_output_c61); end
  def test_intermediate_output_d61; assert_equal("Own Use", worksheet.intermediate_output_d61); end
  def test_intermediate_output_f61; assert_in_delta(0.0, (worksheet.intermediate_output_f61||0), 0.002); end
  def test_intermediate_output_g61; assert_in_delta(0.0, (worksheet.intermediate_output_g61||0), 0.002); end
  def test_intermediate_output_h61; assert_in_delta(0.0, (worksheet.intermediate_output_h61||0), 0.002); end
  def test_intermediate_output_j61; assert_in_epsilon(3.11132792230813, worksheet.intermediate_output_j61, 0.002); end
  def test_intermediate_output_k61; assert_in_epsilon(2.8809116262945484, worksheet.intermediate_output_k61, 0.002); end
  def test_intermediate_output_l61; assert_in_epsilon(2.7094254110526634, worksheet.intermediate_output_l61, 0.002); end
  def test_intermediate_output_m61; assert_in_epsilon(2.501721604865366, worksheet.intermediate_output_m61, 0.002); end
  def test_intermediate_output_n61; assert_in_epsilon(2.26129636179461, worksheet.intermediate_output_n61, 0.002); end
  def test_intermediate_output_o61; assert_in_epsilon(2.0151958958853795, worksheet.intermediate_output_o61, 0.002); end
  def test_intermediate_output_p61; assert_in_epsilon(1.75629981074461, worksheet.intermediate_output_p61, 0.002); end
  def test_intermediate_output_q61; assert_in_epsilon(1.444363269709349, worksheet.intermediate_output_q61, 0.002); end
  def test_intermediate_output_r61; assert_in_epsilon(1.2341077679824044, worksheet.intermediate_output_r61, 0.002); end
  def test_intermediate_output_s61; assert_in_delta(0.9490967375609021, worksheet.intermediate_output_s61, 0.002); end
  def test_intermediate_output_c62; assert_equal("X.04", worksheet.intermediate_output_c62); end
  def test_intermediate_output_d62; assert_equal("Transmission Loss", worksheet.intermediate_output_d62); end
  def test_intermediate_output_j62; assert_in_epsilon(3.771020144551014, worksheet.intermediate_output_j62, 0.002); end
  def test_intermediate_output_k62; assert_in_epsilon(3.661089715633017, worksheet.intermediate_output_k62, 0.002); end
  def test_intermediate_output_l62; assert_in_epsilon(3.3705788474039484, worksheet.intermediate_output_l62, 0.002); end
  def test_intermediate_output_m62; assert_in_epsilon(3.0916392010656466, worksheet.intermediate_output_m62, 0.002); end
  def test_intermediate_output_n62; assert_in_epsilon(2.7697712316707714, worksheet.intermediate_output_n62, 0.002); end
  def test_intermediate_output_o62; assert_in_epsilon(2.4459070853251155, worksheet.intermediate_output_o62, 0.002); end
  def test_intermediate_output_p62; assert_in_epsilon(2.105512559475096, worksheet.intermediate_output_p62, 0.002); end
  def test_intermediate_output_q62; assert_in_epsilon(1.7156280716058223, worksheet.intermediate_output_q62, 0.002); end
  def test_intermediate_output_r62; assert_in_epsilon(1.4493104794849845, worksheet.intermediate_output_r62, 0.002); end
  def test_intermediate_output_s62; assert_in_epsilon(1.1064959701432868, worksheet.intermediate_output_s62, 0.002); end
  def test_intermediate_output_d63; assert_equal("Total Loss", worksheet.intermediate_output_d63); end
  def test_intermediate_output_f63; assert_in_epsilon(135.41059486082042, worksheet.intermediate_output_f63, 0.002); end
  def test_intermediate_output_g63; assert_in_epsilon(174.60989445366585, worksheet.intermediate_output_g63, 0.002); end
  def test_intermediate_output_h63; assert_in_epsilon(183.5012161244143, worksheet.intermediate_output_h63, 0.002); end
  def test_intermediate_output_j63; assert_in_epsilon(138.79406630705643, worksheet.intermediate_output_j63, 0.002); end
  def test_intermediate_output_k63; assert_in_epsilon(116.2911207408793, worksheet.intermediate_output_k63, 0.002); end
  def test_intermediate_output_l63; assert_in_epsilon(100.16224340679202, worksheet.intermediate_output_l63, 0.002); end
  def test_intermediate_output_m63; assert_in_epsilon(88.48450729474654, worksheet.intermediate_output_m63, 0.002); end
  def test_intermediate_output_n63; assert_in_epsilon(73.82630716055685, worksheet.intermediate_output_n63, 0.002); end
  def test_intermediate_output_o63; assert_in_epsilon(60.29910701478424, worksheet.intermediate_output_o63, 0.002); end
  def test_intermediate_output_p63; assert_in_epsilon(49.96621777597248, worksheet.intermediate_output_p63, 0.002); end
  def test_intermediate_output_q63; assert_in_epsilon(40.4714502377587, worksheet.intermediate_output_q63, 0.002); end
  def test_intermediate_output_r63; assert_in_epsilon(33.58967967711373, worksheet.intermediate_output_r63, 0.002); end
  def test_intermediate_output_s63; assert_in_epsilon(25.780246000772934, worksheet.intermediate_output_s63, 0.002); end
  def test_intermediate_output_b66; assert_equal("Baseline Information", worksheet.intermediate_output_b66); end
  def test_intermediate_output_j67; assert_equal("2050 Calculator calculations", worksheet.intermediate_output_j67); end
  def test_intermediate_output_d68; assert_equal("Mtoe / year", worksheet.intermediate_output_d68); end
  def test_intermediate_output_j68; assert_in_epsilon(2005.0, worksheet.intermediate_output_j68, 0.002); end
  def test_intermediate_output_k68; assert_in_epsilon(2010.0, worksheet.intermediate_output_k68, 0.002); end
  def test_intermediate_output_l68; assert_in_epsilon(2015.0, worksheet.intermediate_output_l68, 0.002); end
  def test_intermediate_output_m68; assert_in_epsilon(2020.0, worksheet.intermediate_output_m68, 0.002); end
  def test_intermediate_output_n68; assert_in_epsilon(2025.0, worksheet.intermediate_output_n68, 0.002); end
  def test_intermediate_output_o68; assert_in_epsilon(2030.0, worksheet.intermediate_output_o68, 0.002); end
  def test_intermediate_output_p68; assert_in_epsilon(2035.0, worksheet.intermediate_output_p68, 0.002); end
  def test_intermediate_output_q68; assert_in_epsilon(2040.0, worksheet.intermediate_output_q68, 0.002); end
  def test_intermediate_output_r68; assert_in_epsilon(2045.0, worksheet.intermediate_output_r68, 0.002); end
  def test_intermediate_output_s68; assert_in_epsilon(2050.0, worksheet.intermediate_output_s68, 0.002); end
  def test_intermediate_output_c70; assert_equal("Total Final Energy Consumption by sector (Baseline)", worksheet.intermediate_output_c70); end
  def test_intermediate_output_d71; assert_equal("Industrial", worksheet.intermediate_output_d71); end
  def test_intermediate_output_j71; assert_in_epsilon(182.78284044713214, worksheet.intermediate_output_j71, 0.002); end
  def test_intermediate_output_k71; assert_in_epsilon(174.6508716403708, worksheet.intermediate_output_k71, 0.002); end
  def test_intermediate_output_l71; assert_in_epsilon(167.6069330273336, worksheet.intermediate_output_l71, 0.002); end
  def test_intermediate_output_m71; assert_in_epsilon(161.26432042096857, worksheet.intermediate_output_m71, 0.002); end
  def test_intermediate_output_n71; assert_in_epsilon(155.19184270356277, worksheet.intermediate_output_n71, 0.002); end
  def test_intermediate_output_o71; assert_in_epsilon(149.20362659526418, worksheet.intermediate_output_o71, 0.002); end
  def test_intermediate_output_p71; assert_in_epsilon(144.04862580992742, worksheet.intermediate_output_p71, 0.002); end
  def test_intermediate_output_q71; assert_in_epsilon(138.90529249073535, worksheet.intermediate_output_q71, 0.002); end
  def test_intermediate_output_r71; assert_in_epsilon(133.7741722414129, worksheet.intermediate_output_r71, 0.002); end
  def test_intermediate_output_s71; assert_in_epsilon(128.6564526397934, worksheet.intermediate_output_s71, 0.002); end
  def test_intermediate_output_c72; assert_equal("BD.01", worksheet.intermediate_output_c72); end
  def test_intermediate_output_d72; assert_equal("Manufacturing and Construction", worksheet.intermediate_output_d72); end
  def test_intermediate_output_j72; assert_in_epsilon(180.08034136166697, worksheet.intermediate_output_j72, 0.002); end
  def test_intermediate_output_k72; assert_in_epsilon(172.83761192921412, worksheet.intermediate_output_k72, 0.002); end
  def test_intermediate_output_l72; assert_in_epsilon(166.01787213192824, worksheet.intermediate_output_l72, 0.002); end
  def test_intermediate_output_m72; assert_in_epsilon(159.90177726581695, worksheet.intermediate_output_m72, 0.002); end
  def test_intermediate_output_n72; assert_in_epsilon(153.8775702136872, worksheet.intermediate_output_n72, 0.002); end
  def test_intermediate_output_o72; assert_in_epsilon(147.94340958504313, worksheet.intermediate_output_o72, 0.002); end
  def test_intermediate_output_p72; assert_in_epsilon(142.8472061145888, worksheet.intermediate_output_p72, 0.002); end
  def test_intermediate_output_q72; assert_in_epsilon(137.76666774196428, worksheet.intermediate_output_q72, 0.002); end
  def test_intermediate_output_r72; assert_in_epsilon(132.70037953251764, worksheet.intermediate_output_r72, 0.002); end
  def test_intermediate_output_s72; assert_in_epsilon(127.647045501539, worksheet.intermediate_output_s72, 0.002); end
  def test_intermediate_output_c73; assert_equal("BD.02", worksheet.intermediate_output_c73); end
  def test_intermediate_output_d73; assert_equal("Agriculture, forestry and fisheries", worksheet.intermediate_output_d73); end
  def test_intermediate_output_j73; assert_in_epsilon(2.702499085465184, worksheet.intermediate_output_j73, 0.002); end
  def test_intermediate_output_k73; assert_in_epsilon(1.8132597111566995, worksheet.intermediate_output_k73, 0.002); end
  def test_intermediate_output_l73; assert_in_epsilon(1.5890608954053809, worksheet.intermediate_output_l73, 0.002); end
  def test_intermediate_output_m73; assert_in_epsilon(1.3625431551516354, worksheet.intermediate_output_m73, 0.002); end
  def test_intermediate_output_n73; assert_in_epsilon(1.3142724898755898, worksheet.intermediate_output_n73, 0.002); end
  def test_intermediate_output_o73; assert_in_epsilon(1.2602170102210617, worksheet.intermediate_output_o73, 0.002); end
  def test_intermediate_output_p73; assert_in_epsilon(1.2014196953386234, worksheet.intermediate_output_p73, 0.002); end
  def test_intermediate_output_q73; assert_in_epsilon(1.138624748771074, worksheet.intermediate_output_q73, 0.002); end
  def test_intermediate_output_r73; assert_in_epsilon(1.0737927088952754, worksheet.intermediate_output_r73, 0.002); end
  def test_intermediate_output_s73; assert_in_epsilon(1.0094071382544023, worksheet.intermediate_output_s73, 0.002); end
  def test_intermediate_output_d74; assert_equal("Residential and Commercial", worksheet.intermediate_output_d74); end
  def test_intermediate_output_j74; assert_in_epsilon(107.72616927552028, worksheet.intermediate_output_j74, 0.002); end
  def test_intermediate_output_k74; assert_in_epsilon(95.56594537148457, worksheet.intermediate_output_k74, 0.002); end
  def test_intermediate_output_l74; assert_in_epsilon(98.16551802672083, worksheet.intermediate_output_l74, 0.002); end
  def test_intermediate_output_m74; assert_in_epsilon(100.15043914143537, worksheet.intermediate_output_m74, 0.002); end
  def test_intermediate_output_n74; assert_in_epsilon(101.27635537290482, worksheet.intermediate_output_n74, 0.002); end
  def test_intermediate_output_o74; assert_in_epsilon(101.67410060831935, worksheet.intermediate_output_o74, 0.002); end
  def test_intermediate_output_p74; assert_in_epsilon(101.63548450669002, worksheet.intermediate_output_p74, 0.002); end
  def test_intermediate_output_q74; assert_in_epsilon(101.39792993602894, worksheet.intermediate_output_q74, 0.002); end
  def test_intermediate_output_r74; assert_in_epsilon(101.03734630310163, worksheet.intermediate_output_r74, 0.002); end
  def test_intermediate_output_s74; assert_in_epsilon(100.6240206473364, worksheet.intermediate_output_s74, 0.002); end
  def test_intermediate_output_c75; assert_equal("BD.03", worksheet.intermediate_output_c75); end
  def test_intermediate_output_d75; assert_equal("Space Heating and Cooling", worksheet.intermediate_output_d75); end
  def test_intermediate_output_j75; assert_in_epsilon(30.098052715392136, worksheet.intermediate_output_j75, 0.002); end
  def test_intermediate_output_k75; assert_in_epsilon(23.42212726922551, worksheet.intermediate_output_k75, 0.002); end
  def test_intermediate_output_l75; assert_in_epsilon(24.094704634686213, worksheet.intermediate_output_l75, 0.002); end
  def test_intermediate_output_m75; assert_in_epsilon(24.62030033681629, worksheet.intermediate_output_m75, 0.002); end
  def test_intermediate_output_n75; assert_in_epsilon(24.824189415643712, worksheet.intermediate_output_n75, 0.002); end
  def test_intermediate_output_o75; assert_in_epsilon(24.740681183055266, worksheet.intermediate_output_o75, 0.002); end
  def test_intermediate_output_p75; assert_in_epsilon(24.58778564492188, worksheet.intermediate_output_p75, 0.002); end
  def test_intermediate_output_q75; assert_in_epsilon(24.27605451592619, worksheet.intermediate_output_q75, 0.002); end
  def test_intermediate_output_r75; assert_in_epsilon(23.88139804020131, worksheet.intermediate_output_r75, 0.002); end
  def test_intermediate_output_s75; assert_in_epsilon(23.474104094543115, worksheet.intermediate_output_s75, 0.002); end
  def test_intermediate_output_c76; assert_equal("BD.04", worksheet.intermediate_output_c76); end
  def test_intermediate_output_d76; assert_equal("Hot Water Supply", worksheet.intermediate_output_d76); end
  def test_intermediate_output_j76; assert_in_epsilon(23.4282683780835, worksheet.intermediate_output_j76, 0.002); end
  def test_intermediate_output_k76; assert_in_epsilon(19.161275142243223, worksheet.intermediate_output_k76, 0.002); end
  def test_intermediate_output_l76; assert_in_epsilon(19.561670585162013, worksheet.intermediate_output_l76, 0.002); end
  def test_intermediate_output_m76; assert_in_epsilon(19.726021488786316, worksheet.intermediate_output_m76, 0.002); end
  def test_intermediate_output_n76; assert_in_epsilon(19.69262261646428, worksheet.intermediate_output_n76, 0.002); end
  def test_intermediate_output_o76; assert_in_epsilon(19.505046873478882, worksheet.intermediate_output_o76, 0.002); end
  def test_intermediate_output_p76; assert_in_epsilon(19.19625209197322, worksheet.intermediate_output_p76, 0.002); end
  def test_intermediate_output_q76; assert_in_epsilon(18.886572430479006, worksheet.intermediate_output_q76, 0.002); end
  def test_intermediate_output_r76; assert_in_epsilon(18.57600788899623, worksheet.intermediate_output_r76, 0.002); end
  def test_intermediate_output_s76; assert_in_epsilon(18.264558467524903, worksheet.intermediate_output_s76, 0.002); end
  def test_intermediate_output_c77; assert_equal("BD.05", worksheet.intermediate_output_c77); end
  def test_intermediate_output_d77; assert_equal("Lighting, Cooking & Other Appliances", worksheet.intermediate_output_d77); end
  def test_intermediate_output_j77; assert_in_epsilon(54.19984818204463, worksheet.intermediate_output_j77, 0.002); end
  def test_intermediate_output_k77; assert_in_epsilon(52.98254296001584, worksheet.intermediate_output_k77, 0.002); end
  def test_intermediate_output_l77; assert_in_epsilon(54.5091428068726, worksheet.intermediate_output_l77, 0.002); end
  def test_intermediate_output_m77; assert_in_epsilon(55.80411731583277, worksheet.intermediate_output_m77, 0.002); end
  def test_intermediate_output_n77; assert_in_epsilon(56.759543340796824, worksheet.intermediate_output_n77, 0.002); end
  def test_intermediate_output_o77; assert_in_epsilon(57.428372551785195, worksheet.intermediate_output_o77, 0.002); end
  def test_intermediate_output_p77; assert_in_epsilon(57.85144676979492, worksheet.intermediate_output_p77, 0.002); end
  def test_intermediate_output_q77; assert_in_epsilon(58.23530298962375, worksheet.intermediate_output_q77, 0.002); end
  def test_intermediate_output_r77; assert_in_epsilon(58.57994037390408, worksheet.intermediate_output_r77, 0.002); end
  def test_intermediate_output_s77; assert_in_epsilon(58.88535808526838, worksheet.intermediate_output_s77, 0.002); end
  def test_intermediate_output_d78; assert_equal("Transport", worksheet.intermediate_output_d78); end
  def test_intermediate_output_j78; assert_in_epsilon(85.69734599570862, worksheet.intermediate_output_j78, 0.002); end
  def test_intermediate_output_k78; assert_in_epsilon(81.00529732983209, worksheet.intermediate_output_k78, 0.002); end
  def test_intermediate_output_l78; assert_in_epsilon(76.20405123955324, worksheet.intermediate_output_l78, 0.002); end
  def test_intermediate_output_m78; assert_in_epsilon(71.47178448892366, worksheet.intermediate_output_m78, 0.002); end
  def test_intermediate_output_n78; assert_in_epsilon(66.62408876390863, worksheet.intermediate_output_n78, 0.002); end
  def test_intermediate_output_o78; assert_in_epsilon(62.22095900540687, worksheet.intermediate_output_o78, 0.002); end
  def test_intermediate_output_p78; assert_in_epsilon(58.433417307749224, worksheet.intermediate_output_p78, 0.002); end
  def test_intermediate_output_q78; assert_in_epsilon(55.302600218442045, worksheet.intermediate_output_q78, 0.002); end
  def test_intermediate_output_r78; assert_in_epsilon(52.664369498628396, worksheet.intermediate_output_r78, 0.002); end
  def test_intermediate_output_s78; assert_in_epsilon(50.29748511639936, worksheet.intermediate_output_s78, 0.002); end
  def test_intermediate_output_c79; assert_equal("BT.01", worksheet.intermediate_output_c79); end
  def test_intermediate_output_d79; assert_equal("Road Transport", worksheet.intermediate_output_d79); end
  def test_intermediate_output_j79; assert_in_epsilon(72.69776389396154, worksheet.intermediate_output_j79, 0.002); end
  def test_intermediate_output_k79; assert_in_epsilon(69.27979047567541, worksheet.intermediate_output_k79, 0.002); end
  def test_intermediate_output_l79; assert_in_epsilon(65.39711627406238, worksheet.intermediate_output_l79, 0.002); end
  def test_intermediate_output_m79; assert_in_epsilon(61.51489025720541, worksheet.intermediate_output_m79, 0.002); end
  def test_intermediate_output_n79; assert_in_epsilon(57.38045759696271, worksheet.intermediate_output_n79, 0.002); end
  def test_intermediate_output_o79; assert_in_epsilon(53.6244196531105, worksheet.intermediate_output_o79, 0.002); end
  def test_intermediate_output_p79; assert_in_epsilon(50.22565895479146, worksheet.intermediate_output_p79, 0.002); end
  def test_intermediate_output_q79; assert_in_epsilon(47.433046736800264, worksheet.intermediate_output_q79, 0.002); end
  def test_intermediate_output_r79; assert_in_epsilon(45.313398210256764, worksheet.intermediate_output_r79, 0.002); end
  def test_intermediate_output_s79; assert_in_epsilon(43.13530316768693, worksheet.intermediate_output_s79, 0.002); end
  def test_intermediate_output_c80; assert_equal("BT.02", worksheet.intermediate_output_c80); end
  def test_intermediate_output_d80; assert_equal("Rail Transport", worksheet.intermediate_output_d80); end
  def test_intermediate_output_j80; assert_in_epsilon(2.6071619531571777, worksheet.intermediate_output_j80, 0.002); end
  def test_intermediate_output_k80; assert_in_epsilon(2.626976844447674, worksheet.intermediate_output_k80, 0.002); end
  def test_intermediate_output_l80; assert_in_epsilon(2.4182388494192146, worksheet.intermediate_output_l80, 0.002); end
  def test_intermediate_output_m80; assert_in_epsilon(2.215117829744539, worksheet.intermediate_output_m80, 0.002); end
  def test_intermediate_output_n80; assert_in_epsilon(2.0699166612801827, worksheet.intermediate_output_n80, 0.002); end
  def test_intermediate_output_o80; assert_in_epsilon(1.9406101121458126, worksheet.intermediate_output_o80, 0.002); end
  def test_intermediate_output_p80; assert_in_epsilon(1.8500625475824688, worksheet.intermediate_output_p80, 0.002); end
  def test_intermediate_output_q80; assert_in_epsilon(1.767712922577871, worksheet.intermediate_output_q80, 0.002); end
  def test_intermediate_output_r80; assert_in_epsilon(1.609972527379468, worksheet.intermediate_output_r80, 0.002); end
  def test_intermediate_output_s80; assert_in_epsilon(1.6034402528403238, worksheet.intermediate_output_s80, 0.002); end
  def test_intermediate_output_c81; assert_equal("BT.03", worksheet.intermediate_output_c81); end
  def test_intermediate_output_d81; assert_equal("Shipping", worksheet.intermediate_output_d81); end
  def test_intermediate_output_j81; assert_in_epsilon(4.502294998099133, worksheet.intermediate_output_j81, 0.002); end
  def test_intermediate_output_k81; assert_in_epsilon(3.668593731712205, worksheet.intermediate_output_k81, 0.002); end
  def test_intermediate_output_l81; assert_in_epsilon(3.1736369076742434, worksheet.intermediate_output_l81, 0.002); end
  def test_intermediate_output_m81; assert_in_epsilon(2.7800567082515206, worksheet.intermediate_output_m81, 0.002); end
  def test_intermediate_output_n81; assert_in_epsilon(2.4934025479097146, worksheet.intermediate_output_n81, 0.002); end
  def test_intermediate_output_o81; assert_in_epsilon(2.2418703774791555, worksheet.intermediate_output_o81, 0.002); end
  def test_intermediate_output_p81; assert_in_epsilon(2.1452684654103398, worksheet.intermediate_output_p81, 0.002); end
  def test_intermediate_output_q81; assert_in_epsilon(2.0555192230719044, worksheet.intermediate_output_q81, 0.002); end
  def test_intermediate_output_r81; assert_in_epsilon(2.03218190914625, worksheet.intermediate_output_r81, 0.002); end
  def test_intermediate_output_s81; assert_in_epsilon(1.879734261300137, worksheet.intermediate_output_s81, 0.002); end
  def test_intermediate_output_c82; assert_equal("BT.04", worksheet.intermediate_output_c82); end
  def test_intermediate_output_d82; assert_equal("Aviation", worksheet.intermediate_output_d82); end
  def test_intermediate_output_j82; assert_in_epsilon(5.890125150490775, worksheet.intermediate_output_j82, 0.002); end
  def test_intermediate_output_k82; assert_in_epsilon(5.429936277996807, worksheet.intermediate_output_k82, 0.002); end
  def test_intermediate_output_l82; assert_in_epsilon(5.2150592083973955, worksheet.intermediate_output_l82, 0.002); end
  def test_intermediate_output_m82; assert_in_epsilon(4.961719693722193, worksheet.intermediate_output_m82, 0.002); end
  def test_intermediate_output_n82; assert_in_epsilon(4.680311957756025, worksheet.intermediate_output_n82, 0.002); end
  def test_intermediate_output_o82; assert_in_epsilon(4.414058862671405, worksheet.intermediate_output_o82, 0.002); end
  def test_intermediate_output_p82; assert_in_epsilon(4.212427339964955, worksheet.intermediate_output_p82, 0.002); end
  def test_intermediate_output_q82; assert_in_epsilon(4.046321335992006, worksheet.intermediate_output_q82, 0.002); end
  def test_intermediate_output_r82; assert_in_epsilon(3.708816851845912, worksheet.intermediate_output_r82, 0.002); end
  def test_intermediate_output_s82; assert_in_epsilon(3.67900743457197, worksheet.intermediate_output_s82, 0.002); end
  def test_intermediate_output_d83; assert_equal("Total Final Energy Consumption (Baseline)", worksheet.intermediate_output_d83); end
  def test_intermediate_output_j83; assert_in_epsilon(376.206355718361, worksheet.intermediate_output_j83, 0.002); end
  def test_intermediate_output_k83; assert_in_epsilon(351.2221143416875, worksheet.intermediate_output_k83, 0.002); end
  def test_intermediate_output_l83; assert_in_epsilon(341.97650229360767, worksheet.intermediate_output_l83, 0.002); end
  def test_intermediate_output_m83; assert_in_epsilon(332.88654405132763, worksheet.intermediate_output_m83, 0.002); end
  def test_intermediate_output_n83; assert_in_epsilon(323.09228684037623, worksheet.intermediate_output_n83, 0.002); end
  def test_intermediate_output_o83; assert_in_epsilon(313.0986862089904, worksheet.intermediate_output_o83, 0.002); end
  def test_intermediate_output_p83; assert_in_epsilon(304.11752762436663, worksheet.intermediate_output_p83, 0.002); end
  def test_intermediate_output_q83; assert_in_epsilon(295.60582264520633, worksheet.intermediate_output_q83, 0.002); end
  def test_intermediate_output_r83; assert_in_epsilon(287.47588804314296, worksheet.intermediate_output_r83, 0.002); end
  def test_intermediate_output_s83; assert_in_epsilon(279.5779584035291, worksheet.intermediate_output_s83, 0.002); end
  def test_intermediate_output_c85; assert_equal("Primary Energy Supply (Baseline)", worksheet.intermediate_output_c85); end
  def test_intermediate_output_d86; assert_equal("Coal", worksheet.intermediate_output_d86); end
  def test_intermediate_output_j86; assert_in_epsilon(119.00819860940413, worksheet.intermediate_output_j86, 0.002); end
  def test_intermediate_output_k86; assert_in_epsilon(106.1999476946235, worksheet.intermediate_output_k86, 0.002); end
  def test_intermediate_output_l86; assert_in_epsilon(131.2928872311295, worksheet.intermediate_output_l86, 0.002); end
  def test_intermediate_output_m86; assert_in_epsilon(131.80766266363318, worksheet.intermediate_output_m86, 0.002); end
  def test_intermediate_output_n86; assert_in_epsilon(127.04700213517522, worksheet.intermediate_output_n86, 0.002); end
  def test_intermediate_output_o86; assert_in_epsilon(122.23109849341483, worksheet.intermediate_output_o86, 0.002); end
  def test_intermediate_output_p86; assert_in_epsilon(121.03969552784723, worksheet.intermediate_output_p86, 0.002); end
  def test_intermediate_output_q86; assert_in_epsilon(119.81566200965081, worksheet.intermediate_output_q86, 0.002); end
  def test_intermediate_output_r86; assert_in_epsilon(118.3869480630764, worksheet.intermediate_output_r86, 0.002); end
  def test_intermediate_output_s86; assert_in_epsilon(117.03874182402213, worksheet.intermediate_output_s86, 0.002); end
  def test_intermediate_output_c87; assert_equal("BK.01", worksheet.intermediate_output_c87); end
  def test_intermediate_output_d87; assert_equal("Coal", worksheet.intermediate_output_d87); end
  def test_intermediate_output_j87; assert_in_epsilon(119.00819860940413, worksheet.intermediate_output_j87, 0.002); end
  def test_intermediate_output_k87; assert_in_epsilon(106.1999476946235, worksheet.intermediate_output_k87, 0.002); end
  def test_intermediate_output_l87; assert_in_epsilon(131.2928872311295, worksheet.intermediate_output_l87, 0.002); end
  def test_intermediate_output_m87; assert_in_epsilon(131.80766266363318, worksheet.intermediate_output_m87, 0.002); end
  def test_intermediate_output_n87; assert_in_epsilon(127.04700213517522, worksheet.intermediate_output_n87, 0.002); end
  def test_intermediate_output_o87; assert_in_epsilon(122.23109849341483, worksheet.intermediate_output_o87, 0.002); end
  def test_intermediate_output_p87; assert_in_epsilon(121.03969552784723, worksheet.intermediate_output_p87, 0.002); end
  def test_intermediate_output_q87; assert_in_epsilon(119.81566200965081, worksheet.intermediate_output_q87, 0.002); end
  def test_intermediate_output_r87; assert_in_epsilon(118.3869480630764, worksheet.intermediate_output_r87, 0.002); end
  def test_intermediate_output_s87; assert_in_epsilon(117.03874182402213, worksheet.intermediate_output_s87, 0.002); end
  def test_intermediate_output_c88; assert_equal("BK.02", worksheet.intermediate_output_c88); end
  def test_intermediate_output_d88; assert_equal("Coke", worksheet.intermediate_output_d88); end
  def test_intermediate_output_j88; assert_in_delta(0.0, (worksheet.intermediate_output_j88||0), 0.002); end
  def test_intermediate_output_k88; assert_in_delta(0.0, (worksheet.intermediate_output_k88||0), 0.002); end
  def test_intermediate_output_l88; assert_in_delta(0.0, (worksheet.intermediate_output_l88||0), 0.002); end
  def test_intermediate_output_m88; assert_in_delta(0.0, (worksheet.intermediate_output_m88||0), 0.002); end
  def test_intermediate_output_n88; assert_in_delta(0.0, (worksheet.intermediate_output_n88||0), 0.002); end
  def test_intermediate_output_o88; assert_in_delta(0.0, (worksheet.intermediate_output_o88||0), 0.002); end
  def test_intermediate_output_p88; assert_in_delta(0.0, (worksheet.intermediate_output_p88||0), 0.002); end
  def test_intermediate_output_q88; assert_in_delta(0.0, (worksheet.intermediate_output_q88||0), 0.002); end
  def test_intermediate_output_r88; assert_in_delta(0.0, (worksheet.intermediate_output_r88||0), 0.002); end
  def test_intermediate_output_s88; assert_in_delta(0.0, (worksheet.intermediate_output_s88||0), 0.002); end
  def test_intermediate_output_d89; assert_equal("Oil Products", worksheet.intermediate_output_d89); end
  def test_intermediate_output_j89; assert_in_epsilon(227.71254329256706, worksheet.intermediate_output_j89, 0.002); end
  def test_intermediate_output_k89; assert_in_epsilon(204.87532458420642, worksheet.intermediate_output_k89, 0.002); end
  def test_intermediate_output_l89; assert_in_epsilon(203.20801793994156, worksheet.intermediate_output_l89, 0.002); end
  def test_intermediate_output_m89; assert_in_epsilon(195.01972374510552, worksheet.intermediate_output_m89, 0.002); end
  def test_intermediate_output_n89; assert_in_epsilon(186.56387362152373, worksheet.intermediate_output_n89, 0.002); end
  def test_intermediate_output_o89; assert_in_epsilon(178.4045176698459, worksheet.intermediate_output_o89, 0.002); end
  def test_intermediate_output_p89; assert_in_epsilon(171.0511852216327, worksheet.intermediate_output_p89, 0.002); end
  def test_intermediate_output_q89; assert_in_epsilon(164.33834275206755, worksheet.intermediate_output_q89, 0.002); end
  def test_intermediate_output_r89; assert_in_epsilon(158.24281481956837, worksheet.intermediate_output_r89, 0.002); end
  def test_intermediate_output_s89; assert_in_epsilon(152.32101528874074, worksheet.intermediate_output_s89, 0.002); end
  def test_intermediate_output_c90; assert_equal("BK.03", worksheet.intermediate_output_c90); end
  def test_intermediate_output_d90; assert_equal("Crude Oil", worksheet.intermediate_output_d90); end
  def test_intermediate_output_j90; assert_in_delta(0.0, (worksheet.intermediate_output_j90||0), 0.002); end
  def test_intermediate_output_k90; assert_in_delta(0.0, (worksheet.intermediate_output_k90||0), 0.002); end
  def test_intermediate_output_l90; assert_in_delta(0.0, (worksheet.intermediate_output_l90||0), 0.002); end
  def test_intermediate_output_m90; assert_in_delta(0.0, (worksheet.intermediate_output_m90||0), 0.002); end
  def test_intermediate_output_n90; assert_in_delta(0.0, (worksheet.intermediate_output_n90||0), 0.002); end
  def test_intermediate_output_o90; assert_in_delta(0.0, (worksheet.intermediate_output_o90||0), 0.002); end
  def test_intermediate_output_p90; assert_in_delta(0.0, (worksheet.intermediate_output_p90||0), 0.002); end
  def test_intermediate_output_q90; assert_in_delta(0.0, (worksheet.intermediate_output_q90||0), 0.002); end
  def test_intermediate_output_r90; assert_in_delta(0.0, (worksheet.intermediate_output_r90||0), 0.002); end
  def test_intermediate_output_s90; assert_in_delta(0.0, (worksheet.intermediate_output_s90||0), 0.002); end
  def test_intermediate_output_c91; assert_equal("BK.04", worksheet.intermediate_output_c91); end
  def test_intermediate_output_d91; assert_equal("Oil Products", worksheet.intermediate_output_d91); end
  def test_intermediate_output_j91; assert_in_epsilon(227.71254329256706, worksheet.intermediate_output_j91, 0.002); end
  def test_intermediate_output_k91; assert_in_epsilon(204.87532458420642, worksheet.intermediate_output_k91, 0.002); end
  def test_intermediate_output_l91; assert_in_epsilon(203.20801793994156, worksheet.intermediate_output_l91, 0.002); end
  def test_intermediate_output_m91; assert_in_epsilon(195.01972374510552, worksheet.intermediate_output_m91, 0.002); end
  def test_intermediate_output_n91; assert_in_epsilon(186.56387362152373, worksheet.intermediate_output_n91, 0.002); end
  def test_intermediate_output_o91; assert_in_epsilon(178.4045176698459, worksheet.intermediate_output_o91, 0.002); end
  def test_intermediate_output_p91; assert_in_epsilon(171.0511852216327, worksheet.intermediate_output_p91, 0.002); end
  def test_intermediate_output_q91; assert_in_epsilon(164.33834275206755, worksheet.intermediate_output_q91, 0.002); end
  def test_intermediate_output_r91; assert_in_epsilon(158.24281481956837, worksheet.intermediate_output_r91, 0.002); end
  def test_intermediate_output_s91; assert_in_epsilon(152.32101528874074, worksheet.intermediate_output_s91, 0.002); end
  def test_intermediate_output_d92; assert_equal("Gas", worksheet.intermediate_output_d92); end
  def test_intermediate_output_j92; assert_in_epsilon(91.7812916935828, worksheet.intermediate_output_j92, 0.002); end
  def test_intermediate_output_k92; assert_in_epsilon(84.7654445081825, worksheet.intermediate_output_k92, 0.002); end
  def test_intermediate_output_l92; assert_in_epsilon(105.66416669896273, worksheet.intermediate_output_l92, 0.002); end
  def test_intermediate_output_m92; assert_in_epsilon(103.99092560300272, worksheet.intermediate_output_m92, 0.002); end
  def test_intermediate_output_n92; assert_in_epsilon(105.02419181033224, worksheet.intermediate_output_n92, 0.002); end
  def test_intermediate_output_o92; assert_in_epsilon(105.42969365766916, worksheet.intermediate_output_o92, 0.002); end
  def test_intermediate_output_p92; assert_in_epsilon(104.67656575193914, worksheet.intermediate_output_p92, 0.002); end
  def test_intermediate_output_q92; assert_in_epsilon(103.70596267866145, worksheet.intermediate_output_q92, 0.002); end
  def test_intermediate_output_r92; assert_in_epsilon(102.42445512268985, worksheet.intermediate_output_r92, 0.002); end
  def test_intermediate_output_s92; assert_in_epsilon(101.18615923885802, worksheet.intermediate_output_s92, 0.002); end
  def test_intermediate_output_c93; assert_equal("BK.05", worksheet.intermediate_output_c93); end
  def test_intermediate_output_d93; assert_equal("Gas", worksheet.intermediate_output_d93); end
  def test_intermediate_output_j93; assert_in_epsilon(91.7812916935828, worksheet.intermediate_output_j93, 0.002); end
  def test_intermediate_output_k93; assert_in_epsilon(84.7654445081825, worksheet.intermediate_output_k93, 0.002); end
  def test_intermediate_output_l93; assert_in_epsilon(105.66416669896273, worksheet.intermediate_output_l93, 0.002); end
  def test_intermediate_output_m93; assert_in_epsilon(103.99092560300272, worksheet.intermediate_output_m93, 0.002); end
  def test_intermediate_output_n93; assert_in_epsilon(105.02419181033224, worksheet.intermediate_output_n93, 0.002); end
  def test_intermediate_output_o93; assert_in_epsilon(105.42969365766916, worksheet.intermediate_output_o93, 0.002); end
  def test_intermediate_output_p93; assert_in_epsilon(104.67656575193914, worksheet.intermediate_output_p93, 0.002); end
  def test_intermediate_output_q93; assert_in_epsilon(103.70596267866145, worksheet.intermediate_output_q93, 0.002); end
  def test_intermediate_output_r93; assert_in_epsilon(102.42445512268985, worksheet.intermediate_output_r93, 0.002); end
  def test_intermediate_output_s93; assert_in_epsilon(101.18615923885802, worksheet.intermediate_output_s93, 0.002); end
  def test_intermediate_output_d94; assert_equal("Nuclear", worksheet.intermediate_output_d94); end
  def test_intermediate_output_j94; assert_in_epsilon(64.0074862005619, worksheet.intermediate_output_j94, 0.002); end
  def test_intermediate_output_k94; assert_in_epsilon(59.82922166023329, worksheet.intermediate_output_k94, 0.002); end
  def test_intermediate_output_l94; assert_in_delta(0.0, (worksheet.intermediate_output_l94||0), 0.002); end
  def test_intermediate_output_m94; assert_in_delta(0.0, (worksheet.intermediate_output_m94||0), 0.002); end
  def test_intermediate_output_n94; assert_in_delta(0.0, (worksheet.intermediate_output_n94||0), 0.002); end
  def test_intermediate_output_o94; assert_in_delta(0.0, (worksheet.intermediate_output_o94||0), 0.002); end
  def test_intermediate_output_p94; assert_in_delta(0.0, (worksheet.intermediate_output_p94||0), 0.002); end
  def test_intermediate_output_q94; assert_in_delta(0.0, (worksheet.intermediate_output_q94||0), 0.002); end
  def test_intermediate_output_r94; assert_in_delta(0.0, (worksheet.intermediate_output_r94||0), 0.002); end
  def test_intermediate_output_s94; assert_in_delta(0.0, (worksheet.intermediate_output_s94||0), 0.002); end
  def test_intermediate_output_c95; assert_equal("BK.06", worksheet.intermediate_output_c95); end
  def test_intermediate_output_d95; assert_equal("Nuclear", worksheet.intermediate_output_d95); end
  def test_intermediate_output_j95; assert_in_epsilon(64.0074862005619, worksheet.intermediate_output_j95, 0.002); end
  def test_intermediate_output_k95; assert_in_epsilon(59.82922166023329, worksheet.intermediate_output_k95, 0.002); end
  def test_intermediate_output_l95; assert_in_delta(0.0, (worksheet.intermediate_output_l95||0), 0.002); end
  def test_intermediate_output_m95; assert_in_delta(0.0, (worksheet.intermediate_output_m95||0), 0.002); end
  def test_intermediate_output_n95; assert_in_delta(0.0, (worksheet.intermediate_output_n95||0), 0.002); end
  def test_intermediate_output_o95; assert_in_delta(0.0, (worksheet.intermediate_output_o95||0), 0.002); end
  def test_intermediate_output_p95; assert_in_delta(0.0, (worksheet.intermediate_output_p95||0), 0.002); end
  def test_intermediate_output_q95; assert_in_delta(0.0, (worksheet.intermediate_output_q95||0), 0.002); end
  def test_intermediate_output_r95; assert_in_delta(0.0, (worksheet.intermediate_output_r95||0), 0.002); end
  def test_intermediate_output_s95; assert_in_delta(0.0, (worksheet.intermediate_output_s95||0), 0.002); end
  def test_intermediate_output_d96; assert_equal("Renewables", worksheet.intermediate_output_d96); end
  def test_intermediate_output_j96; assert_in_epsilon(36.22846942265127, worksheet.intermediate_output_j96, 0.002); end
  def test_intermediate_output_k96; assert_in_epsilon(35.89316335764562, worksheet.intermediate_output_k96, 0.002); end
  def test_intermediate_output_l96; assert_in_epsilon(37.42931613573264, worksheet.intermediate_output_l96, 0.002); end
  def test_intermediate_output_m96; assert_in_epsilon(37.05500155620734, worksheet.intermediate_output_m96, 0.002); end
  def test_intermediate_output_n96; assert_in_epsilon(36.508935894465154, worksheet.intermediate_output_n96, 0.002); end
  def test_intermediate_output_o96; assert_in_epsilon(35.9990784716186, worksheet.intermediate_output_o96, 0.002); end
  def test_intermediate_output_p96; assert_in_epsilon(35.57365289896374, worksheet.intermediate_output_p96, 0.002); end
  def test_intermediate_output_q96; assert_in_epsilon(35.152946045388596, worksheet.intermediate_output_q96, 0.002); end
  def test_intermediate_output_r96; assert_in_epsilon(34.73675622827858, worksheet.intermediate_output_r96, 0.002); end
  def test_intermediate_output_s96; assert_in_epsilon(34.32829436125892, worksheet.intermediate_output_s96, 0.002); end
  def test_intermediate_output_c97; assert_equal("BR.01", worksheet.intermediate_output_c97); end
  def test_intermediate_output_d97; assert_equal("Solar", worksheet.intermediate_output_d97); end
  def test_intermediate_output_j97; assert_in_delta(0.504623103660877, worksheet.intermediate_output_j97, 0.002); end
  def test_intermediate_output_k97; assert_in_delta(0.7018015731363714, worksheet.intermediate_output_k97, 0.002); end
  def test_intermediate_output_l97; assert_in_epsilon(1.6229325516402406, worksheet.intermediate_output_l97, 0.002); end
  def test_intermediate_output_m97; assert_in_epsilon(1.7812180202558898, worksheet.intermediate_output_m97, 0.002); end
  def test_intermediate_output_n97; assert_in_epsilon(1.9395034888715388, worksheet.intermediate_output_n97, 0.002); end
  def test_intermediate_output_o97; assert_in_epsilon(2.0977889574871877, worksheet.intermediate_output_o97, 0.002); end
  def test_intermediate_output_p97; assert_in_epsilon(2.256074426102837, worksheet.intermediate_output_p97, 0.002); end
  def test_intermediate_output_q97; assert_in_epsilon(2.414359894718486, worksheet.intermediate_output_q97, 0.002); end
  def test_intermediate_output_r97; assert_in_epsilon(2.5726453633341353, worksheet.intermediate_output_r97, 0.002); end
  def test_intermediate_output_s97; assert_in_epsilon(2.7309308319497845, worksheet.intermediate_output_s97, 0.002); end
  def test_intermediate_output_c98; assert_equal("BR.02", worksheet.intermediate_output_c98); end
  def test_intermediate_output_d98; assert_equal("Wind", worksheet.intermediate_output_d98); end
  def test_intermediate_output_j98; assert_in_delta(0.16356165090283747, worksheet.intermediate_output_j98, 0.002); end
  def test_intermediate_output_k98; assert_in_delta(0.3794328804815133, worksheet.intermediate_output_k98, 0.002); end
  def test_intermediate_output_l98; assert_in_delta(0.4094317454858125, worksheet.intermediate_output_l98, 0.002); end
  def test_intermediate_output_m98; assert_in_delta(0.4094317454858125, worksheet.intermediate_output_m98, 0.002); end
  def test_intermediate_output_n98; assert_in_delta(0.4094317454858125, worksheet.intermediate_output_n98, 0.002); end
  def test_intermediate_output_o98; assert_in_delta(0.4094317454858125, worksheet.intermediate_output_o98, 0.002); end
  def test_intermediate_output_p98; assert_in_delta(0.4094317454858125, worksheet.intermediate_output_p98, 0.002); end
  def test_intermediate_output_q98; assert_in_delta(0.4094317454858125, worksheet.intermediate_output_q98, 0.002); end
  def test_intermediate_output_r98; assert_in_delta(0.4094317454858125, worksheet.intermediate_output_r98, 0.002); end
  def test_intermediate_output_s98; assert_in_delta(0.4094317454858125, worksheet.intermediate_output_s98, 0.002); end
  def test_intermediate_output_c99; assert_equal("BR.03", worksheet.intermediate_output_c99); end
  def test_intermediate_output_d99; assert_equal("Biomass", worksheet.intermediate_output_d99); end
  def test_intermediate_output_j99; assert_in_epsilon(6.546404442855862, worksheet.intermediate_output_j99, 0.002); end
  def test_intermediate_output_k99; assert_in_epsilon(7.0354858058055845, worksheet.intermediate_output_k99, 0.002); end
  def test_intermediate_output_l99; assert_in_epsilon(7.631198226634415, worksheet.intermediate_output_l99, 0.002); end
  def test_intermediate_output_m99; assert_in_epsilon(7.108676622724422, worksheet.intermediate_output_m99, 0.002); end
  def test_intermediate_output_n99; assert_in_epsilon(6.414021085973957, worksheet.intermediate_output_n99, 0.002); end
  def test_intermediate_output_o99; assert_in_epsilon(5.75522312276951, worksheet.intermediate_output_o99, 0.002); end
  def test_intermediate_output_p99; assert_in_epsilon(5.180535823947357, worksheet.intermediate_output_p99, 0.002); end
  def test_intermediate_output_q99; assert_in_epsilon(4.610273059666085, worksheet.intermediate_output_q99, 0.002); end
  def test_intermediate_output_r99; assert_in_epsilon(4.044257878653831, worksheet.intermediate_output_r99, 0.002); end
  def test_intermediate_output_s99; assert_in_epsilon(3.485723846777733, worksheet.intermediate_output_s99, 0.002); end
  def test_intermediate_output_c100; assert_equal("BR.04", worksheet.intermediate_output_c100); end
  def test_intermediate_output_d100; assert_equal("Imported Biomass", worksheet.intermediate_output_d100); end
  def test_intermediate_output_j100; assert_in_delta(0.0, (worksheet.intermediate_output_j100||0), 0.002); end
  def test_intermediate_output_k100; assert_in_delta(0.0, (worksheet.intermediate_output_k100||0), 0.002); end
  def test_intermediate_output_l100; assert_in_delta(0.0, (worksheet.intermediate_output_l100||0), 0.002); end
  def test_intermediate_output_m100; assert_in_delta(0.0, (worksheet.intermediate_output_m100||0), 0.002); end
  def test_intermediate_output_n100; assert_in_delta(0.0, (worksheet.intermediate_output_n100||0), 0.002); end
  def test_intermediate_output_o100; assert_in_delta(0.0, (worksheet.intermediate_output_o100||0), 0.002); end
  def test_intermediate_output_p100; assert_in_delta(0.0, (worksheet.intermediate_output_p100||0), 0.002); end
  def test_intermediate_output_q100; assert_in_delta(0.0, (worksheet.intermediate_output_q100||0), 0.002); end
  def test_intermediate_output_r100; assert_in_delta(0.0, (worksheet.intermediate_output_r100||0), 0.002); end
  def test_intermediate_output_s100; assert_in_delta(0.0, (worksheet.intermediate_output_s100||0), 0.002); end
  def test_intermediate_output_c101; assert_equal("BR.05", worksheet.intermediate_output_c101); end
  def test_intermediate_output_d101; assert_equal("Hydro", worksheet.intermediate_output_d101); end
  def test_intermediate_output_j101; assert_in_epsilon(28.739518746297904, worksheet.intermediate_output_j101, 0.002); end
  def test_intermediate_output_k101; assert_in_epsilon(27.496805437001168, worksheet.intermediate_output_k101, 0.002); end
  def test_intermediate_output_l101; assert_in_epsilon(27.486115950751195, worksheet.intermediate_output_l101, 0.002); end
  def test_intermediate_output_m101; assert_in_epsilon(27.47603750652023, worksheet.intermediate_output_m101, 0.002); end
  def test_intermediate_output_n101; assert_in_epsilon(27.466341912912863, worksheet.intermediate_output_n101, 0.002); end
  def test_intermediate_output_o101; assert_in_epsilon(27.45699698465511, worksheet.intermediate_output_o101, 0.002); end
  def test_intermediate_output_p101; assert_in_epsilon(27.447973242206753, worksheet.intermediate_output_p101, 0.002); end
  def test_intermediate_output_q101; assert_in_epsilon(27.439243684297235, worksheet.intermediate_output_q101, 0.002); end
  def test_intermediate_output_r101; assert_in_epsilon(27.43078357958382, worksheet.intermediate_output_r101, 0.002); end
  def test_intermediate_output_s101; assert_in_epsilon(27.422570275824604, worksheet.intermediate_output_s101, 0.002); end
  def test_intermediate_output_c102; assert_equal("BR.06", worksheet.intermediate_output_c102); end
  def test_intermediate_output_d102; assert_equal("Geothermal", worksheet.intermediate_output_d102); end
  def test_intermediate_output_j102; assert_in_delta(0.27436147893379187, worksheet.intermediate_output_j102, 0.002); end
  def test_intermediate_output_k102; assert_in_delta(0.27963766122098016, worksheet.intermediate_output_k102, 0.002); end
  def test_intermediate_output_l102; assert_in_delta(0.27963766122098016, worksheet.intermediate_output_l102, 0.002); end
  def test_intermediate_output_m102; assert_in_delta(0.27963766122098016, worksheet.intermediate_output_m102, 0.002); end
  def test_intermediate_output_n102; assert_in_delta(0.27963766122098016, worksheet.intermediate_output_n102, 0.002); end
  def test_intermediate_output_o102; assert_in_delta(0.27963766122098016, worksheet.intermediate_output_o102, 0.002); end
  def test_intermediate_output_p102; assert_in_delta(0.27963766122098016, worksheet.intermediate_output_p102, 0.002); end
  def test_intermediate_output_q102; assert_in_delta(0.27963766122098016, worksheet.intermediate_output_q102, 0.002); end
  def test_intermediate_output_r102; assert_in_delta(0.27963766122098016, worksheet.intermediate_output_r102, 0.002); end
  def test_intermediate_output_s102; assert_in_delta(0.27963766122098016, worksheet.intermediate_output_s102, 0.002); end
  def test_intermediate_output_c103; assert_equal("BR.07", worksheet.intermediate_output_c103); end
  def test_intermediate_output_d103; assert_equal("Ocean power", worksheet.intermediate_output_d103); end
  def test_intermediate_output_j103; assert_in_delta(0.0, (worksheet.intermediate_output_j103||0), 0.002); end
  def test_intermediate_output_k103; assert_in_delta(0.0, (worksheet.intermediate_output_k103||0), 0.002); end
  def test_intermediate_output_l103; assert_in_delta(0.0, (worksheet.intermediate_output_l103||0), 0.002); end
  def test_intermediate_output_m103; assert_in_delta(0.0, (worksheet.intermediate_output_m103||0), 0.002); end
  def test_intermediate_output_n103; assert_in_delta(0.0, (worksheet.intermediate_output_n103||0), 0.002); end
  def test_intermediate_output_o103; assert_in_delta(0.0, (worksheet.intermediate_output_o103||0), 0.002); end
  def test_intermediate_output_p103; assert_in_delta(0.0, (worksheet.intermediate_output_p103||0), 0.002); end
  def test_intermediate_output_q103; assert_in_delta(0.0, (worksheet.intermediate_output_q103||0), 0.002); end
  def test_intermediate_output_r103; assert_in_delta(0.0, (worksheet.intermediate_output_r103||0), 0.002); end
  def test_intermediate_output_s103; assert_in_delta(0.0, (worksheet.intermediate_output_s103||0), 0.002); end
  def test_intermediate_output_d104; assert_equal("Total Primary Energy Supply", worksheet.intermediate_output_d104); end
  def test_intermediate_output_j104; assert_in_epsilon(538.7379892187672, worksheet.intermediate_output_j104, 0.002); end
  def test_intermediate_output_k104; assert_in_epsilon(491.56310180489135, worksheet.intermediate_output_k104, 0.002); end
  def test_intermediate_output_l104; assert_in_epsilon(477.5943880057664, worksheet.intermediate_output_l104, 0.002); end
  def test_intermediate_output_m104; assert_in_epsilon(467.87331356794874, worksheet.intermediate_output_m104, 0.002); end
  def test_intermediate_output_n104; assert_in_epsilon(455.1440034614963, worksheet.intermediate_output_n104, 0.002); end
  def test_intermediate_output_o104; assert_in_epsilon(442.0643882925485, worksheet.intermediate_output_o104, 0.002); end
  def test_intermediate_output_p104; assert_in_epsilon(432.3410994003828, worksheet.intermediate_output_p104, 0.002); end
  def test_intermediate_output_q104; assert_in_epsilon(423.0129134857684, worksheet.intermediate_output_q104, 0.002); end
  def test_intermediate_output_r104; assert_in_epsilon(413.79097423361316, worksheet.intermediate_output_r104, 0.002); end
  def test_intermediate_output_s104; assert_in_epsilon(404.8742107128798, worksheet.intermediate_output_s104, 0.002); end
  def test_intermediate_output_b107; assert_equal("Electricity Demand and Supply", worksheet.intermediate_output_b107); end
  def test_intermediate_output_c109; assert_equal("V.01", worksheet.intermediate_output_c109); end
  def test_intermediate_output_d109; assert_equal("Electricity (Deliver to Enduser)", worksheet.intermediate_output_d109); end
  def test_intermediate_output_f109; assert_in_epsilon(-64.29295823474867, worksheet.intermediate_output_f109, 0.002); end
  def test_intermediate_output_g109; assert_in_epsilon(-86.66372316583791, worksheet.intermediate_output_g109, 0.002); end
  def test_intermediate_output_h109; assert_in_epsilon(-88.5556080622072, worksheet.intermediate_output_h109, 0.002); end
  def test_intermediate_output_j109; assert_in_epsilon(-80.62326709490635, worksheet.intermediate_output_j109, 0.002); end
  def test_intermediate_output_k109; assert_in_epsilon(-77.68555838658529, worksheet.intermediate_output_k109, 0.002); end
  def test_intermediate_output_l109; assert_in_epsilon(-74.68694274765463, worksheet.intermediate_output_l109, 0.002); end
  def test_intermediate_output_m109; assert_in_epsilon(-72.32773795356195, worksheet.intermediate_output_m109, 0.002); end
  def test_intermediate_output_n109; assert_in_epsilon(-71.63138811845266, worksheet.intermediate_output_n109, 0.002); end
  def test_intermediate_output_o109; assert_in_epsilon(-70.93157960391845, worksheet.intermediate_output_o109, 0.002); end
  def test_intermediate_output_p109; assert_in_epsilon(-70.34142425205549, worksheet.intermediate_output_p109, 0.002); end
  def test_intermediate_output_q109; assert_in_epsilon(-70.21918419110368, worksheet.intermediate_output_q109, 0.002); end
  def test_intermediate_output_r109; assert_in_epsilon(-69.56592394775072, worksheet.intermediate_output_r109, 0.002); end
  def test_intermediate_output_s109; assert_in_epsilon(-68.90404594128232, worksheet.intermediate_output_s109, 0.002); end
  def test_intermediate_output_c110; assert_equal("V.02", worksheet.intermediate_output_c110); end
  def test_intermediate_output_d110; assert_equal("Electricity (Supplied to Grid)", worksheet.intermediate_output_d110); end
  def test_intermediate_output_f110; assert_in_epsilon(64.93499999999999, worksheet.intermediate_output_f110, 0.002); end
  def test_intermediate_output_g110; assert_in_epsilon(87.76800000000001, worksheet.intermediate_output_g110, 0.002); end
  def test_intermediate_output_h110; assert_in_epsilon(89.041, worksheet.intermediate_output_h110, 0.002); end
  def test_intermediate_output_j110; assert_in_epsilon(80.62326709490635, worksheet.intermediate_output_j110, 0.002); end
  def test_intermediate_output_k110; assert_in_epsilon(77.68555838658527, worksheet.intermediate_output_k110, 0.002); end
  def test_intermediate_output_l110; assert_in_epsilon(74.68694274765463, worksheet.intermediate_output_l110, 0.002); end
  def test_intermediate_output_m110; assert_in_epsilon(72.32773795356196, worksheet.intermediate_output_m110, 0.002); end
  def test_intermediate_output_n110; assert_in_epsilon(71.63138811845266, worksheet.intermediate_output_n110, 0.002); end
  def test_intermediate_output_o110; assert_in_epsilon(70.93157960391845, worksheet.intermediate_output_o110, 0.002); end
  def test_intermediate_output_p110; assert_in_epsilon(70.34142425205549, worksheet.intermediate_output_p110, 0.002); end
  def test_intermediate_output_q110; assert_in_epsilon(70.21918419110366, worksheet.intermediate_output_q110, 0.002); end
  def test_intermediate_output_r110; assert_in_epsilon(69.56592394775073, worksheet.intermediate_output_r110, 0.002); end
  def test_intermediate_output_s110; assert_in_epsilon(68.90404594128232, worksheet.intermediate_output_s110, 0.002); end
  def test_intermediate_output_d111; assert_equal("Electricity Oversupply (incl. Off-grid generation, such as FC in residential sector)", worksheet.intermediate_output_d111); end
  def test_intermediate_output_f111; assert_in_delta(0.6420417652513208, worksheet.intermediate_output_f111, 0.002); end
  def test_intermediate_output_g111; assert_in_epsilon(1.104276834162107, worksheet.intermediate_output_g111, 0.002); end
  def test_intermediate_output_h111; assert_in_delta(0.485391937792798, worksheet.intermediate_output_h111, 0.002); end
  def test_intermediate_output_j111; assert_in_delta(0.0, (worksheet.intermediate_output_j111||0), 0.002); end
  def test_intermediate_output_k111; assert_in_delta(0.0, (worksheet.intermediate_output_k111||0), 0.002); end
  def test_intermediate_output_l111; assert_in_delta(0.0, (worksheet.intermediate_output_l111||0), 0.002); end
  def test_intermediate_output_m111; assert_in_delta(0.0, (worksheet.intermediate_output_m111||0), 0.002); end
  def test_intermediate_output_n111; assert_in_delta(0.0, (worksheet.intermediate_output_n111||0), 0.002); end
  def test_intermediate_output_o111; assert_in_delta(0.0, (worksheet.intermediate_output_o111||0), 0.002); end
  def test_intermediate_output_p111; assert_in_delta(0.0, (worksheet.intermediate_output_p111||0), 0.002); end
  def test_intermediate_output_q111; assert_in_delta(0.0, (worksheet.intermediate_output_q111||0), 0.002); end
  def test_intermediate_output_r111; assert_in_delta(0.0, (worksheet.intermediate_output_r111||0), 0.002); end
  def test_intermediate_output_s111; assert_in_delta(0.0, (worksheet.intermediate_output_s111||0), 0.002); end
  def test_intermediate_output_b114; assert_equal("Electricity Generation", worksheet.intermediate_output_b114); end
  def test_intermediate_output_d116; assert_equal("TWh", worksheet.intermediate_output_d116); end
  def test_intermediate_output_j116; assert_in_epsilon(2005.0, worksheet.intermediate_output_j116, 0.002); end
  def test_intermediate_output_k116; assert_in_epsilon(2010.0, worksheet.intermediate_output_k116, 0.002); end
  def test_intermediate_output_l116; assert_in_epsilon(2015.0, worksheet.intermediate_output_l116, 0.002); end
  def test_intermediate_output_m116; assert_in_epsilon(2020.0, worksheet.intermediate_output_m116, 0.002); end
  def test_intermediate_output_n116; assert_in_epsilon(2025.0, worksheet.intermediate_output_n116, 0.002); end
  def test_intermediate_output_o116; assert_in_epsilon(2030.0, worksheet.intermediate_output_o116, 0.002); end
  def test_intermediate_output_p116; assert_in_epsilon(2035.0, worksheet.intermediate_output_p116, 0.002); end
  def test_intermediate_output_q116; assert_in_epsilon(2040.0, worksheet.intermediate_output_q116, 0.002); end
  def test_intermediate_output_r116; assert_in_epsilon(2045.0, worksheet.intermediate_output_r116, 0.002); end
  def test_intermediate_output_s116; assert_in_epsilon(2050.0, worksheet.intermediate_output_s116, 0.002); end
  def test_intermediate_output_d117; assert_equal("Conventional Power", worksheet.intermediate_output_d117); end
  def test_intermediate_output_j117; assert_in_epsilon(796.9374680982187, worksheet.intermediate_output_j117, 0.002); end
  def test_intermediate_output_k117; assert_in_epsilon(763.6160608710852, worksheet.intermediate_output_k117, 0.002); end
  def test_intermediate_output_l117; assert_in_epsilon(701.0413738860237, worksheet.intermediate_output_l117, 0.002); end
  def test_intermediate_output_m117; assert_in_epsilon(643.1696534277078, worksheet.intermediate_output_m117, 0.002); end
  def test_intermediate_output_n117; assert_in_epsilon(576.1101360491966, worksheet.intermediate_output_n117, 0.002); end
  def test_intermediate_output_o117; assert_in_epsilon(508.6529069786035, worksheet.intermediate_output_o117, 0.002); end
  def test_intermediate_output_p117; assert_in_epsilon(437.61063973500615, worksheet.intermediate_output_p117, 0.002); end
  def test_intermediate_output_q117; assert_in_epsilon(356.5294398845333, worksheet.intermediate_output_q117, 0.002); end
  def test_intermediate_output_r117; assert_in_epsilon(301.07577035771084, worksheet.intermediate_output_r117, 0.002); end
  def test_intermediate_output_s117; assert_in_epsilon(229.88429844248003, worksheet.intermediate_output_s117, 0.002); end
  def test_intermediate_output_c118; assert_equal("E.01", worksheet.intermediate_output_c118); end
  def test_intermediate_output_d118; assert_equal("Nuclear", worksheet.intermediate_output_d118); end
  def test_intermediate_output_j118; assert_in_epsilon(292.14106365381525, worksheet.intermediate_output_j118, 0.002); end
  def test_intermediate_output_k118; assert_in_epsilon(273.07075298400014, worksheet.intermediate_output_k118, 0.002); end
  def test_intermediate_output_l118; assert_in_epsilon(105.688927008, worksheet.intermediate_output_l118, 0.002); end
  def test_intermediate_output_m118; assert_in_epsilon(107.656438176, worksheet.intermediate_output_m118, 0.002); end
  def test_intermediate_output_n118; assert_in_epsilon(89.18893065599998, worksheet.intermediate_output_n118, 0.002); end
  def test_intermediate_output_o118; assert_in_epsilon(71.929027296, worksheet.intermediate_output_o118, 0.002); end
  def test_intermediate_output_p118; assert_in_epsilon(43.329426336000004, worksheet.intermediate_output_p118, 0.002); end
  def test_intermediate_output_q118; assert_in_epsilon(31.866022944000008, worksheet.intermediate_output_q118, 0.002); end
  def test_intermediate_output_r118; assert_in_epsilon(18.91225929600001, worksheet.intermediate_output_r118, 0.002); end
  def test_intermediate_output_s118; assert_in_epsilon(16.22607638400001, worksheet.intermediate_output_s118, 0.002); end
  def test_intermediate_output_d119; assert_equal("Thermal Power", worksheet.intermediate_output_d119); end
  def test_intermediate_output_j119; assert_in_epsilon(504.7964044444035, worksheet.intermediate_output_j119, 0.002); end
  def test_intermediate_output_k119; assert_in_epsilon(490.545307887085, worksheet.intermediate_output_k119, 0.002); end
  def test_intermediate_output_l119; assert_in_epsilon(595.3524468780238, worksheet.intermediate_output_l119, 0.002); end
  def test_intermediate_output_m119; assert_in_epsilon(535.5132152517078, worksheet.intermediate_output_m119, 0.002); end
  def test_intermediate_output_n119; assert_in_epsilon(486.92120539319666, worksheet.intermediate_output_n119, 0.002); end
  def test_intermediate_output_o119; assert_in_epsilon(436.72387968260347, worksheet.intermediate_output_o119, 0.002); end
  def test_intermediate_output_p119; assert_in_epsilon(394.28121339900616, worksheet.intermediate_output_p119, 0.002); end
  def test_intermediate_output_q119; assert_in_epsilon(324.6634169405333, worksheet.intermediate_output_q119, 0.002); end
  def test_intermediate_output_r119; assert_in_epsilon(282.16351106171084, worksheet.intermediate_output_r119, 0.002); end
  def test_intermediate_output_s119; assert_in_epsilon(213.65822205848002, worksheet.intermediate_output_s119, 0.002); end
  def test_intermediate_output_c120; assert_equal("E.02", worksheet.intermediate_output_c120); end
  def test_intermediate_output_d120; assert_equal("Coal", worksheet.intermediate_output_d120); end
  def test_intermediate_output_j120; assert_in_epsilon(224.9316326136405, worksheet.intermediate_output_j120, 0.002); end
  def test_intermediate_output_k120; assert_in_epsilon(203.1574032795276, worksheet.intermediate_output_k120, 0.002); end
  def test_intermediate_output_l120; assert_in_epsilon(223.18474911030694, worksheet.intermediate_output_l120, 0.002); end
  def test_intermediate_output_m120; assert_in_epsilon(179.72386127069097, worksheet.intermediate_output_m120, 0.002); end
  def test_intermediate_output_n120; assert_in_epsilon(144.29544298373165, worksheet.intermediate_output_n120, 0.002); end
  def test_intermediate_output_o120; assert_in_epsilon(112.27049219562056, worksheet.intermediate_output_o120, 0.002); end
  def test_intermediate_output_p120; assert_in_epsilon(85.87680520049155, worksheet.intermediate_output_p120, 0.002); end
  def test_intermediate_output_q120; assert_in_epsilon(57.964588161713436, worksheet.intermediate_output_q120, 0.002); end
  def test_intermediate_output_r120; assert_in_epsilon(39.29657931471819, worksheet.intermediate_output_r120, 0.002); end
  def test_intermediate_output_s120; assert_in_epsilon(21.365822205848, worksheet.intermediate_output_s120, 0.002); end
  def test_intermediate_output_c121; assert_equal("E.03", worksheet.intermediate_output_c121); end
  def test_intermediate_output_d121; assert_equal("Oil", worksheet.intermediate_output_d121); end
  def test_intermediate_output_j121; assert_in_epsilon(76.64079938176522, worksheet.intermediate_output_j121, 0.002); end
  def test_intermediate_output_k121; assert_in_epsilon(47.747783232759694, worksheet.intermediate_output_k121, 0.002); end
  def test_intermediate_output_l121; assert_in_epsilon(58.14754446859277, worksheet.intermediate_output_l121, 0.002); end
  def test_intermediate_output_m121; assert_in_epsilon(52.481415070635784, worksheet.intermediate_output_m121, 0.002); end
  def test_intermediate_output_n121; assert_in_epsilon(47.8814321600212, worksheet.intermediate_output_n121, 0.002); end
  def test_intermediate_output_o121; assert_in_epsilon(43.09069598813736, worksheet.intermediate_output_o121, 0.002); end
  def test_intermediate_output_p121; assert_in_epsilon(39.03425000492286, worksheet.intermediate_output_p121, 0.002); end
  def test_intermediate_output_q121; assert_in_epsilon(32.25012397718643, worksheet.intermediate_output_q121, 0.002); end
  def test_intermediate_output_r121; assert_in_epsilon(28.122393992349366, worksheet.intermediate_output_r121, 0.002); end
  def test_intermediate_output_s121; assert_in_epsilon(21.365822205848, worksheet.intermediate_output_s121, 0.002); end
  def test_intermediate_output_c122; assert_equal("E.04", worksheet.intermediate_output_c122); end
  def test_intermediate_output_d122; assert_equal("Gas", worksheet.intermediate_output_d122); end
  def test_intermediate_output_j122; assert_in_epsilon(200.4291437512709, worksheet.intermediate_output_j122, 0.002); end
  def test_intermediate_output_k122; assert_in_epsilon(231.2315548971715, worksheet.intermediate_output_k122, 0.002); end
  def test_intermediate_output_l122; assert_in_epsilon(275.3234832701054, worksheet.intermediate_output_l122, 0.002); end
  def test_intermediate_output_m122; assert_in_epsilon(242.87271803580376, worksheet.intermediate_output_m122, 0.002); end
  def test_intermediate_output_n122; assert_in_epsilon(216.49033815284113, worksheet.intermediate_output_n122, 0.002); end
  def test_intermediate_output_o122; assert_in_epsilon(190.2756016409425, worksheet.intermediate_output_o122, 0.002); end
  def test_intermediate_output_p122; assert_in_epsilon(168.2660058461924, worksheet.intermediate_output_p122, 0.002); end
  def test_intermediate_output_q122; assert_in_epsilon(135.65877670955445, worksheet.intermediate_output_q122, 0.002); end
  def test_intermediate_output_r122; assert_in_epsilon(115.3829228057424, worksheet.intermediate_output_r122, 0.002); end
  def test_intermediate_output_s122; assert_in_epsilon(85.463288823392, worksheet.intermediate_output_s122, 0.002); end
  def test_intermediate_output_c123; assert_equal("E.07", worksheet.intermediate_output_c123); end
  def test_intermediate_output_d123; assert_equal("Biomass", worksheet.intermediate_output_d123); end
  def test_intermediate_output_j123; assert_in_epsilon(2.794828697726886, worksheet.intermediate_output_j123, 0.002); end
  def test_intermediate_output_k123; assert_in_epsilon(8.4085664776262, worksheet.intermediate_output_k123, 0.002); end
  def test_intermediate_output_l123; assert_in_epsilon(38.696670029018684, worksheet.intermediate_output_l123, 0.002); end
  def test_intermediate_output_m123; assert_in_epsilon(60.43522087457731, worksheet.intermediate_output_m123, 0.002); end
  def test_intermediate_output_n123; assert_in_epsilon(78.25399209660266, worksheet.intermediate_output_n123, 0.002); end
  def test_intermediate_output_o123; assert_in_epsilon(91.08708985790302, worksheet.intermediate_output_o123, 0.002); end
  def test_intermediate_output_p123; assert_in_epsilon(101.10415234739936, worksheet.intermediate_output_p123, 0.002); end
  def test_intermediate_output_q123; assert_in_epsilon(98.78992809207897, worksheet.intermediate_output_q123, 0.002); end
  def test_intermediate_output_r123; assert_in_epsilon(99.36161494890088, worksheet.intermediate_output_r123, 0.002); end
  def test_intermediate_output_s123; assert_in_epsilon(85.463288823392, worksheet.intermediate_output_s123, 0.002); end
  def test_intermediate_output_c124; assert_equal("E.05", worksheet.intermediate_output_c124); end
  def test_intermediate_output_d124; assert_equal("Coal with CCS", worksheet.intermediate_output_d124); end
  def test_intermediate_output_j124; assert_in_delta(0.0, (worksheet.intermediate_output_j124||0), 0.002); end
  def test_intermediate_output_k124; assert_in_delta(0.0, (worksheet.intermediate_output_k124||0), 0.002); end
  def test_intermediate_output_l124; assert_in_delta(0.0, (worksheet.intermediate_output_l124||0), 0.002); end
  def test_intermediate_output_m124; assert_in_delta(0.0, (worksheet.intermediate_output_m124||0), 0.002); end
  def test_intermediate_output_n124; assert_in_delta(0.0, (worksheet.intermediate_output_n124||0), 0.002); end
  def test_intermediate_output_o124; assert_in_delta(0.0, (worksheet.intermediate_output_o124||0), 0.002); end
  def test_intermediate_output_p124; assert_in_delta(0.0, (worksheet.intermediate_output_p124||0), 0.002); end
  def test_intermediate_output_q124; assert_in_delta(0.0, (worksheet.intermediate_output_q124||0), 0.002); end
  def test_intermediate_output_r124; assert_in_delta(0.0, (worksheet.intermediate_output_r124||0), 0.002); end
  def test_intermediate_output_s124; assert_in_delta(0.0, (worksheet.intermediate_output_s124||0), 0.002); end
  def test_intermediate_output_c125; assert_equal("E.06", worksheet.intermediate_output_c125); end
  def test_intermediate_output_d125; assert_equal("Gas with CCS", worksheet.intermediate_output_d125); end
  def test_intermediate_output_j125; assert_in_delta(0.0, (worksheet.intermediate_output_j125||0), 0.002); end
  def test_intermediate_output_k125; assert_in_delta(0.0, (worksheet.intermediate_output_k125||0), 0.002); end
  def test_intermediate_output_l125; assert_in_delta(0.0, (worksheet.intermediate_output_l125||0), 0.002); end
  def test_intermediate_output_m125; assert_in_delta(0.0, (worksheet.intermediate_output_m125||0), 0.002); end
  def test_intermediate_output_n125; assert_in_delta(0.0, (worksheet.intermediate_output_n125||0), 0.002); end
  def test_intermediate_output_o125; assert_in_delta(0.0, (worksheet.intermediate_output_o125||0), 0.002); end
  def test_intermediate_output_p125; assert_in_delta(0.0, (worksheet.intermediate_output_p125||0), 0.002); end
  def test_intermediate_output_q125; assert_in_delta(0.0, (worksheet.intermediate_output_q125||0), 0.002); end
  def test_intermediate_output_r125; assert_in_delta(0.0, (worksheet.intermediate_output_r125||0), 0.002); end
  def test_intermediate_output_s125; assert_in_delta(0.0, (worksheet.intermediate_output_s125||0), 0.002); end
  def test_intermediate_output_d126; assert_equal("Renewables", worksheet.intermediate_output_d126); end
  def test_intermediate_output_j126; assert_in_epsilon(140.7284874, worksheet.intermediate_output_j126, 0.002); end
  def test_intermediate_output_k126; assert_in_epsilon(139.87502964, worksheet.intermediate_output_k126, 0.002); end
  def test_intermediate_output_l126; assert_in_epsilon(166.2853204989041, worksheet.intermediate_output_l126, 0.002); end
  def test_intermediate_output_m126; assert_in_epsilon(195.25598783999996, worksheet.intermediate_output_m126, 0.002); end
  def test_intermediate_output_n126; assert_in_epsilon(252.29388710588287, worksheet.intermediate_output_n126, 0.002); end
  def test_intermediate_output_o126; assert_in_epsilon(309.33424405395743, worksheet.intermediate_output_o126, 0.002); end
  def test_intermediate_output_p126; assert_in_epsilon(372.45330250973177, worksheet.intermediate_output_p126, 0.002); end
  def test_intermediate_output_q126; assert_in_epsilon(451.3248629655062, worksheet.intermediate_output_q126, 0.002); end
  def test_intermediate_output_r126; assert_in_epsilon(498.66512142128045, worksheet.intermediate_output_r126, 0.002); end
  def test_intermediate_output_s126; assert_in_epsilon(561.7578818770547, worksheet.intermediate_output_s126, 0.002); end
  def test_intermediate_output_c127; assert_equal("E.08", worksheet.intermediate_output_c127); end
  def test_intermediate_output_d127; assert_equal("Solar PV", worksheet.intermediate_output_d127); end
  def test_intermediate_output_j127; assert_in_epsilon(1.5147647999999998, worksheet.intermediate_output_j127, 0.002); end
  def test_intermediate_output_k127; assert_in_epsilon(3.8079503999999997, worksheet.intermediate_output_k127, 0.002); end
  def test_intermediate_output_l127; assert_in_epsilon(21.564359999999997, worksheet.intermediate_output_l127, 0.002); end
  def test_intermediate_output_m127; assert_in_epsilon(41.024879999999996, worksheet.intermediate_output_m127, 0.002); end
  def test_intermediate_output_n127; assert_in_epsilon(60.4854, worksheet.intermediate_output_n127, 0.002); end
  def test_intermediate_output_o127; assert_in_epsilon(79.94591999999999, worksheet.intermediate_output_o127, 0.002); end
  def test_intermediate_output_p127; assert_in_epsilon(99.40643999999999, worksheet.intermediate_output_p127, 0.002); end
  def test_intermediate_output_q127; assert_in_epsilon(118.86695999999996, worksheet.intermediate_output_q127, 0.002); end
  def test_intermediate_output_r127; assert_in_epsilon(138.32747999999998, worksheet.intermediate_output_r127, 0.002); end
  def test_intermediate_output_s127; assert_in_epsilon(157.78799999999998, worksheet.intermediate_output_s127, 0.002); end
  def test_intermediate_output_d128; assert_equal("Wind", worksheet.intermediate_output_d128); end
  def test_intermediate_output_j128; assert_in_epsilon(1.9022219999999999, worksheet.intermediate_output_j128, 0.002); end
  def test_intermediate_output_k128; assert_in_epsilon(4.4128044, worksheet.intermediate_output_k128, 0.002); end
  def test_intermediate_output_l128; assert_in_epsilon(8.862426, worksheet.intermediate_output_l128, 0.002); end
  def test_intermediate_output_m128; assert_in_epsilon(14.148324, worksheet.intermediate_output_m128, 0.002); end
  def test_intermediate_output_n128; assert_in_epsilon(30.61963799999999, worksheet.intermediate_output_n128, 0.002); end
  def test_intermediate_output_o128; assert_in_epsilon(47.07342, worksheet.intermediate_output_o128, 0.002); end
  def test_intermediate_output_p128; assert_in_epsilon(58.328964, worksheet.intermediate_output_p128, 0.002); end
  def test_intermediate_output_q128; assert_in_epsilon(85.33700999999999, worksheet.intermediate_output_q128, 0.002); end
  def test_intermediate_output_r128; assert_in_epsilon(80.81375399999999, worksheet.intermediate_output_r128, 0.002); end
  def test_intermediate_output_s128; assert_in_epsilon(92.04299999999999, worksheet.intermediate_output_s128, 0.002); end
  def test_intermediate_output_c129; assert_equal("E.09", worksheet.intermediate_output_c129); end
  def test_intermediate_output_d129; assert_equal("Onshore Wind", worksheet.intermediate_output_d129); end
  def test_intermediate_output_j129; assert_in_epsilon(1.9022219999999999, worksheet.intermediate_output_j129, 0.002); end
  def test_intermediate_output_k129; assert_in_epsilon(4.3339104, worksheet.intermediate_output_k129, 0.002); end
  def test_intermediate_output_l129; assert_in_epsilon(8.467956, worksheet.intermediate_output_l129, 0.002); end
  def test_intermediate_output_m129; assert_in_epsilon(13.096404, worksheet.intermediate_output_m129, 0.002); end
  def test_intermediate_output_n129; assert_in_epsilon(20.757887999999994, worksheet.intermediate_output_n129, 0.002); end
  def test_intermediate_output_o129; assert_in_epsilon(28.401840000000004, worksheet.intermediate_output_o129, 0.002); end
  def test_intermediate_output_p129; assert_in_epsilon(29.190779999999997, worksheet.intermediate_output_p129, 0.002); end
  def test_intermediate_output_q129; assert_in_epsilon(29.979720000000004, worksheet.intermediate_output_q129, 0.002); end
  def test_intermediate_output_r129; assert_in_epsilon(30.76866, worksheet.intermediate_output_r129, 0.002); end
  def test_intermediate_output_s129; assert_in_epsilon(31.557599999999997, worksheet.intermediate_output_s129, 0.002); end
  def test_intermediate_output_c130; assert_equal("E.10", worksheet.intermediate_output_c130); end
  def test_intermediate_output_d130; assert_equal("Offshore Wind", worksheet.intermediate_output_d130); end
  def test_intermediate_output_j130; assert_in_delta(0.0, (worksheet.intermediate_output_j130||0), 0.002); end
  def test_intermediate_output_k130; assert_in_delta(0.07889399999999999, worksheet.intermediate_output_k130, 0.002); end
  def test_intermediate_output_l130; assert_in_delta(0.39446999999999993, worksheet.intermediate_output_l130, 0.002); end
  def test_intermediate_output_m130; assert_in_delta(0.7889399999999999, worksheet.intermediate_output_m130, 0.002); end
  def test_intermediate_output_n130; assert_in_epsilon(4.339169999999998, worksheet.intermediate_output_n130, 0.002); end
  def test_intermediate_output_o130; assert_in_epsilon(7.8893999999999975, worksheet.intermediate_output_o130, 0.002); end
  def test_intermediate_output_p130; assert_in_epsilon(10.203623999999998, worksheet.intermediate_output_p130, 0.002); end
  def test_intermediate_output_q130; assert_in_epsilon(12.49155, worksheet.intermediate_output_q130, 0.002); end
  def test_intermediate_output_r130; assert_in_epsilon(14.805773999999996, worksheet.intermediate_output_r130, 0.002); end
  def test_intermediate_output_s130; assert_in_epsilon(17.0937, worksheet.intermediate_output_s130, 0.002); end
  def test_intermediate_output_c131; assert_equal("E.11", worksheet.intermediate_output_c131); end
  def test_intermediate_output_d131; assert_equal("Floating Wind", worksheet.intermediate_output_d131); end
  def test_intermediate_output_j131; assert_in_delta(0.0, (worksheet.intermediate_output_j131||0), 0.002); end
  def test_intermediate_output_k131; assert_in_delta(0.0, (worksheet.intermediate_output_k131||0), 0.002); end
  def test_intermediate_output_l131; assert_in_delta(0.0, (worksheet.intermediate_output_l131||0), 0.002); end
  def test_intermediate_output_m131; assert_in_delta(0.26298, worksheet.intermediate_output_m131, 0.002); end
  def test_intermediate_output_n131; assert_in_epsilon(5.522579999999999, worksheet.intermediate_output_n131, 0.002); end
  def test_intermediate_output_o131; assert_in_epsilon(10.782179999999995, worksheet.intermediate_output_o131, 0.002); end
  def test_intermediate_output_p131; assert_in_epsilon(18.93456, worksheet.intermediate_output_p131, 0.002); end
  def test_intermediate_output_q131; assert_in_epsilon(42.865739999999995, worksheet.intermediate_output_q131, 0.002); end
  def test_intermediate_output_r131; assert_in_epsilon(35.23931999999999, worksheet.intermediate_output_r131, 0.002); end
  def test_intermediate_output_s131; assert_in_epsilon(43.3917, worksheet.intermediate_output_s131, 0.002); end
  def test_intermediate_output_d132; assert_equal("Hydropower", worksheet.intermediate_output_d132); end
  def test_intermediate_output_j132; assert_in_epsilon(134.12067659999997, worksheet.intermediate_output_j132, 0.002); end
  def test_intermediate_output_k132; assert_in_epsilon(128.40208883999998, worksheet.intermediate_output_k132, 0.002); end
  def test_intermediate_output_l132; assert_in_epsilon(131.51182733999997, worksheet.intermediate_output_l132, 0.002); end
  def test_intermediate_output_m132; assert_in_epsilon(134.62156584, worksheet.intermediate_output_m132, 0.002); end
  def test_intermediate_output_n132; assert_in_epsilon(137.73130433999998, worksheet.intermediate_output_n132, 0.002); end
  def test_intermediate_output_o132; assert_in_epsilon(140.84104283999997, worksheet.intermediate_output_o132, 0.002); end
  def test_intermediate_output_p132; assert_in_epsilon(143.95078134, worksheet.intermediate_output_p132, 0.002); end
  def test_intermediate_output_q132; assert_in_epsilon(147.06051983999998, worksheet.intermediate_output_q132, 0.002); end
  def test_intermediate_output_r132; assert_in_epsilon(150.17025833999998, worksheet.intermediate_output_r132, 0.002); end
  def test_intermediate_output_s132; assert_in_epsilon(153.27999684, worksheet.intermediate_output_s132, 0.002); end
  def test_intermediate_output_c133; assert_equal("E.12", worksheet.intermediate_output_c133); end
  def test_intermediate_output_d133; assert_equal("Small-medium Hydropower", worksheet.intermediate_output_d133); end
  def test_intermediate_output_j133; assert_in_epsilon(51.74043839999999, worksheet.intermediate_output_j133, 0.002); end
  def test_intermediate_output_k133; assert_in_epsilon(50.22918, worksheet.intermediate_output_k133, 0.002); end
  def test_intermediate_output_l133; assert_in_epsilon(53.33891849999999, worksheet.intermediate_output_l133, 0.002); end
  def test_intermediate_output_m133; assert_in_epsilon(56.448657, worksheet.intermediate_output_m133, 0.002); end
  def test_intermediate_output_n133; assert_in_epsilon(59.55839549999999, worksheet.intermediate_output_n133, 0.002); end
  def test_intermediate_output_o133; assert_in_epsilon(62.66813399999998, worksheet.intermediate_output_o133, 0.002); end
  def test_intermediate_output_p133; assert_in_epsilon(65.77787249999999, worksheet.intermediate_output_p133, 0.002); end
  def test_intermediate_output_q133; assert_in_epsilon(68.88761099999998, worksheet.intermediate_output_q133, 0.002); end
  def test_intermediate_output_r133; assert_in_epsilon(71.9973495, worksheet.intermediate_output_r133, 0.002); end
  def test_intermediate_output_s133; assert_in_epsilon(75.107088, worksheet.intermediate_output_s133, 0.002); end
  def test_intermediate_output_c134; assert_equal("E.13", worksheet.intermediate_output_c134); end
  def test_intermediate_output_d134; assert_equal("Large Hydropower", worksheet.intermediate_output_d134); end
  def test_intermediate_output_j134; assert_in_epsilon(82.38023819999998, worksheet.intermediate_output_j134, 0.002); end
  def test_intermediate_output_k134; assert_in_epsilon(78.17290883999999, worksheet.intermediate_output_k134, 0.002); end
  def test_intermediate_output_l134; assert_in_epsilon(78.17290883999999, worksheet.intermediate_output_l134, 0.002); end
  def test_intermediate_output_m134; assert_in_epsilon(78.17290883999999, worksheet.intermediate_output_m134, 0.002); end
  def test_intermediate_output_n134; assert_in_epsilon(78.17290883999999, worksheet.intermediate_output_n134, 0.002); end
  def test_intermediate_output_o134; assert_in_epsilon(78.17290883999999, worksheet.intermediate_output_o134, 0.002); end
  def test_intermediate_output_p134; assert_in_epsilon(78.17290883999999, worksheet.intermediate_output_p134, 0.002); end
  def test_intermediate_output_q134; assert_in_epsilon(78.17290883999999, worksheet.intermediate_output_q134, 0.002); end
  def test_intermediate_output_r134; assert_in_epsilon(78.17290883999999, worksheet.intermediate_output_r134, 0.002); end
  def test_intermediate_output_s134; assert_in_epsilon(78.17290883999999, worksheet.intermediate_output_s134, 0.002); end
  def test_intermediate_output_c135; assert_equal("E.14", worksheet.intermediate_output_c135); end
  def test_intermediate_output_d135; assert_equal("Geothermal", worksheet.intermediate_output_d135); end
  def test_intermediate_output_j135; assert_in_epsilon(3.1908239999999997, worksheet.intermediate_output_j135, 0.002); end
  def test_intermediate_output_k135; assert_in_epsilon(3.2521859999999996, worksheet.intermediate_output_k135, 0.002); end
  def test_intermediate_output_l135; assert_in_epsilon(4.346707158904107, worksheet.intermediate_output_l135, 0.002); end
  def test_intermediate_output_m135; assert_in_epsilon(5.461217999999999, worksheet.intermediate_output_m135, 0.002); end
  def test_intermediate_output_n135; assert_in_epsilon(9.674720652054798, worksheet.intermediate_output_n135, 0.002); end
  def test_intermediate_output_o135; assert_in_epsilon(13.908212986301379, worksheet.intermediate_output_o135, 0.002); end
  def test_intermediate_output_p135; assert_in_epsilon(22.576602842465768, worksheet.intermediate_output_p135, 0.002); end
  def test_intermediate_output_q135; assert_in_epsilon(31.244992698630146, worksheet.intermediate_output_q135, 0.002); end
  def test_intermediate_output_r135; assert_in_epsilon(39.91338255479453, worksheet.intermediate_output_r135, 0.002); end
  def test_intermediate_output_s135; assert_in_epsilon(48.5817724109589, worksheet.intermediate_output_s135, 0.002); end
  def test_intermediate_output_c136; assert_equal("E.15", worksheet.intermediate_output_c136); end
  def test_intermediate_output_d136; assert_equal("Ocean Power", worksheet.intermediate_output_d136); end
  def test_intermediate_output_j136; assert_in_delta(0.0, (worksheet.intermediate_output_j136||0), 0.002); end
  def test_intermediate_output_k136; assert_in_delta(0.0, (worksheet.intermediate_output_k136||0), 0.002); end
  def test_intermediate_output_l136; assert_in_delta(0.0, (worksheet.intermediate_output_l136||0), 0.002); end
  def test_intermediate_output_m136; assert_in_delta(0.0, (worksheet.intermediate_output_m136||0), 0.002); end
  def test_intermediate_output_n136; assert_in_epsilon(13.782824113828097, worksheet.intermediate_output_n136, 0.002); end
  def test_intermediate_output_o136; assert_in_epsilon(27.565648227656194, worksheet.intermediate_output_o136, 0.002); end
  def test_intermediate_output_p136; assert_in_epsilon(48.190514327266044, worksheet.intermediate_output_p136, 0.002); end
  def test_intermediate_output_q136; assert_in_epsilon(68.81538042687599, worksheet.intermediate_output_q136, 0.002); end
  def test_intermediate_output_r136; assert_in_epsilon(89.44024652648588, worksheet.intermediate_output_r136, 0.002); end
  def test_intermediate_output_s136; assert_in_epsilon(110.06511262609587, worksheet.intermediate_output_s136, 0.002); end
  def test_intermediate_output_c137; assert_equal("V.02", worksheet.intermediate_output_c137); end
  def test_intermediate_output_d137; assert_equal("Generation in Demand-side", worksheet.intermediate_output_d137); end
  def test_intermediate_output_j137; assert_in_delta(0.0, (worksheet.intermediate_output_j137||0), 0.002); end
  def test_intermediate_output_k137; assert_in_delta(0.0, (worksheet.intermediate_output_k137||0), 0.002); end
  def test_intermediate_output_l137; assert_in_epsilon(1.290994722384229, worksheet.intermediate_output_l137, 0.002); end
  def test_intermediate_output_m137; assert_in_epsilon(2.7525392261495574, worksheet.intermediate_output_m137, 0.002); end
  def test_intermediate_output_n137; assert_in_epsilon(4.674012586042792, worksheet.intermediate_output_n137, 0.002); end
  def test_intermediate_output_o137; assert_in_epsilon(6.950701608178826, worksheet.intermediate_output_o137, 0.002); end
  def test_intermediate_output_p137; assert_in_epsilon(8.009247122769551, worksheet.intermediate_output_p137, 0.002); end
  def test_intermediate_output_q137; assert_in_epsilon(8.796140682378683, worksheet.intermediate_output_q137, 0.002); end
  def test_intermediate_output_r137; assert_in_epsilon(9.311382287006225, worksheet.intermediate_output_r137, 0.002); end
  def test_intermediate_output_s137; assert_in_epsilon(9.711873977578714, worksheet.intermediate_output_s137, 0.002); end
  def test_intermediate_output_d138; assert_equal("Total generation", worksheet.intermediate_output_d138); end
  def test_intermediate_output_j138; assert_in_epsilon(937.6659554982186, worksheet.intermediate_output_j138, 0.002); end
  def test_intermediate_output_k138; assert_in_epsilon(903.4910905110852, worksheet.intermediate_output_k138, 0.002); end
  def test_intermediate_output_l138; assert_in_epsilon(868.617689107312, worksheet.intermediate_output_l138, 0.002); end
  def test_intermediate_output_m138; assert_in_epsilon(841.1781804938573, worksheet.intermediate_output_m138, 0.002); end
  def test_intermediate_output_n138; assert_in_epsilon(833.0780357411222, worksheet.intermediate_output_n138, 0.002); end
  def test_intermediate_output_o138; assert_in_epsilon(824.9378526407397, worksheet.intermediate_output_o138, 0.002); end
  def test_intermediate_output_p138; assert_in_epsilon(818.0731893675076, worksheet.intermediate_output_p138, 0.002); end
  def test_intermediate_output_q138; assert_in_epsilon(816.6504435324182, worksheet.intermediate_output_q138, 0.002); end
  def test_intermediate_output_r138; assert_in_epsilon(809.0522740659975, worksheet.intermediate_output_r138, 0.002); end
  def test_intermediate_output_s138; assert_in_epsilon(801.3540542971135, worksheet.intermediate_output_s138, 0.002); end
  def test_intermediate_output_c139; assert_equal("BV.01", worksheet.intermediate_output_c139); end
  def test_intermediate_output_d139; assert_equal("Baseilne", worksheet.intermediate_output_d139); end
  def test_intermediate_output_j139; assert_in_epsilon(935.6277557684782, worksheet.intermediate_output_j139, 0.002); end
  def test_intermediate_output_k139; assert_in_epsilon(898.3738445930273, worksheet.intermediate_output_k139, 0.002); end
  def test_intermediate_output_l139; assert_in_epsilon(925.1205202084643, worksheet.intermediate_output_l139, 0.002); end
  def test_intermediate_output_m139; assert_in_epsilon(950.7681427075643, worksheet.intermediate_output_m139, 0.002); end
  def test_intermediate_output_n139; assert_in_epsilon(975.9515624093557, worksheet.intermediate_output_n139, 0.002); end
  def test_intermediate_output_o139; assert_in_epsilon(995.5258034676835, worksheet.intermediate_output_o139, 0.002); end
  def test_intermediate_output_p139; assert_in_epsilon(1011.1051505463433, worksheet.intermediate_output_p139, 0.002); end
  def test_intermediate_output_q139; assert_in_epsilon(1025.839328548595, worksheet.intermediate_output_q139, 0.002); end
  def test_intermediate_output_r139; assert_in_epsilon(1037.681575005917, worksheet.intermediate_output_r139, 0.002); end
  def test_intermediate_output_s139; assert_in_epsilon(1049.966700762042, worksheet.intermediate_output_s139, 0.002); end
  def test_intermediate_output_d141; assert_equal("Electricity used in Japan", worksheet.intermediate_output_d141); end
  def test_intermediate_output_j141; assert_in_epsilon(937.6485963137609, worksheet.intermediate_output_j141, 0.002); end
  def test_intermediate_output_k141; assert_in_epsilon(903.483044035987, worksheet.intermediate_output_k141, 0.002); end
  def test_intermediate_output_l141; assert_in_epsilon(868.6091441552234, worksheet.intermediate_output_l141, 0.002); end
  def test_intermediate_output_m141; assert_in_epsilon(841.1715923999255, worksheet.intermediate_output_m141, 0.002); end
  def test_intermediate_output_n141; assert_in_epsilon(833.0730438176045, worksheet.intermediate_output_n141, 0.002); end
  def test_intermediate_output_o141; assert_in_epsilon(824.9342707935716, worksheet.intermediate_output_o141, 0.002); end
  def test_intermediate_output_p141; assert_in_epsilon(818.0707640514054, worksheet.intermediate_output_p141, 0.002); end
  def test_intermediate_output_q141; assert_in_epsilon(816.6491121425358, worksheet.intermediate_output_q141, 0.002); end
  def test_intermediate_output_r141; assert_in_epsilon(809.0516955123409, worksheet.intermediate_output_r141, 0.002); end
  def test_intermediate_output_s141; assert_in_epsilon(801.3540542971134, worksheet.intermediate_output_s141, 0.002); end
  def test_intermediate_output_b144; assert_equal("Emissions", worksheet.intermediate_output_b144); end
  def test_intermediate_output_c146; assert_equal("Emissions as % of base year, adjusted so that 2007 matches actuals", worksheet.intermediate_output_c146); end
  def test_intermediate_output_d147; assert_equal("IPCC Sector", worksheet.intermediate_output_d147); end
  def test_intermediate_output_f147; assert_equal("2007 Actuals, GHG Inv.", worksheet.intermediate_output_f147); end
  def test_intermediate_output_g147; assert_equal("2007 Actuals, GHG Inv.", worksheet.intermediate_output_g147); end
  def test_intermediate_output_h147; assert_equal("2007 Actuals, GHG Inv.", worksheet.intermediate_output_h147); end
  def test_intermediate_output_j147; assert_in_epsilon(2005.0, worksheet.intermediate_output_j147, 0.002); end
  def test_intermediate_output_k147; assert_in_epsilon(2010.0, worksheet.intermediate_output_k147, 0.002); end
  def test_intermediate_output_l147; assert_in_epsilon(2015.0, worksheet.intermediate_output_l147, 0.002); end
  def test_intermediate_output_m147; assert_in_epsilon(2020.0, worksheet.intermediate_output_m147, 0.002); end
  def test_intermediate_output_n147; assert_in_epsilon(2025.0, worksheet.intermediate_output_n147, 0.002); end
  def test_intermediate_output_o147; assert_in_epsilon(2030.0, worksheet.intermediate_output_o147, 0.002); end
  def test_intermediate_output_p147; assert_in_epsilon(2035.0, worksheet.intermediate_output_p147, 0.002); end
  def test_intermediate_output_q147; assert_in_epsilon(2040.0, worksheet.intermediate_output_q147, 0.002); end
  def test_intermediate_output_r147; assert_in_epsilon(2045.0, worksheet.intermediate_output_r147, 0.002); end
  def test_intermediate_output_s147; assert_in_epsilon(2050.0, worksheet.intermediate_output_s147, 0.002); end
  def test_intermediate_output_c148; assert_in_delta(1.0, worksheet.intermediate_output_c148, 0.002); end
  def test_intermediate_output_d148; assert_equal("Fuel Combustion", worksheet.intermediate_output_d148); end
  def test_intermediate_output_f148; assert_in_delta(0.8479252288606266, worksheet.intermediate_output_f148, 0.002); end
  def test_intermediate_output_g148; assert_in_delta(0.9602850732435115, worksheet.intermediate_output_g148, 0.002); end
  def test_intermediate_output_h148; assert_in_delta(0.8966805798647544, worksheet.intermediate_output_h148, 0.002); end
  def test_intermediate_output_j148; assert_in_delta(0.9562032506612059, worksheet.intermediate_output_j148, 0.002); end
  def test_intermediate_output_k148; assert_in_delta(0.847893087706665, worksheet.intermediate_output_k148, 0.002); end
  def test_intermediate_output_l148; assert_in_delta(0.8194107353274771, worksheet.intermediate_output_l148, 0.002); end
  def test_intermediate_output_m148; assert_in_delta(0.7207161333135373, worksheet.intermediate_output_m148, 0.002); end
  def test_intermediate_output_n148; assert_in_delta(0.6247662214003284, worksheet.intermediate_output_n148, 0.002); end
  def test_intermediate_output_o148; assert_in_delta(0.5385500044376457, worksheet.intermediate_output_o148, 0.002); end
  def test_intermediate_output_p148; assert_in_delta(0.46867598583913295, worksheet.intermediate_output_p148, 0.002); end
  def test_intermediate_output_q148; assert_in_delta(0.3976162377695392, worksheet.intermediate_output_q148, 0.002); end
  def test_intermediate_output_r148; assert_in_delta(0.34314279616455495, worksheet.intermediate_output_r148, 0.002); end
  def test_intermediate_output_s148; assert_in_delta(0.2877782288269543, worksheet.intermediate_output_s148, 0.002); end
  def test_intermediate_output_c149; assert_in_epsilon(2.0, worksheet.intermediate_output_c149, 0.002); end
  def test_intermediate_output_d149; assert_equal("Industrial Processes", worksheet.intermediate_output_d149); end
  def test_intermediate_output_f149; assert_in_delta(0.09682581954083373, worksheet.intermediate_output_f149, 0.002); end
  def test_intermediate_output_g149; assert_in_delta(0.05839334000168503, worksheet.intermediate_output_g149, 0.002); end
  def test_intermediate_output_h149; assert_in_delta(0.05220617687430699, worksheet.intermediate_output_h149, 0.002); end
  def test_intermediate_output_j149; assert_in_delta(0.061261909387037856, worksheet.intermediate_output_j149, 0.002); end
  def test_intermediate_output_k149; assert_in_delta(0.05475334402065207, worksheet.intermediate_output_k149, 0.002); end
  def test_intermediate_output_l149; assert_in_delta(0.05490116691341244, worksheet.intermediate_output_l149, 0.002); end
  def test_intermediate_output_m149; assert_in_delta(0.05504914541878574, worksheet.intermediate_output_m149, 0.002); end
  def test_intermediate_output_n149; assert_in_delta(0.05520682217332899, worksheet.intermediate_output_n149, 0.002); end
  def test_intermediate_output_o149; assert_in_delta(0.055373243658533994, worksheet.intermediate_output_o149, 0.002); end
  def test_intermediate_output_p149; assert_in_delta(0.0555608189488532, worksheet.intermediate_output_p149, 0.002); end
  def test_intermediate_output_q149; assert_in_delta(0.05575420493770537, worksheet.intermediate_output_q149, 0.002); end
  def test_intermediate_output_r149; assert_in_delta(0.05595266893618959, worksheet.intermediate_output_r149, 0.002); end
  def test_intermediate_output_s149; assert_in_delta(0.05615553985068933, worksheet.intermediate_output_s149, 0.002); end
  def test_intermediate_output_c150; assert_in_epsilon(3.0, worksheet.intermediate_output_c150, 0.002); end
  def test_intermediate_output_d150; assert_equal("Solvent and Other Product Use", worksheet.intermediate_output_d150); end
  def test_intermediate_output_f150; assert_in_delta(0.00022759228528380275, worksheet.intermediate_output_f150, 0.002); end
  def test_intermediate_output_g150; assert_in_delta(0.00021121379054432575, worksheet.intermediate_output_g150, 0.002); end
  def test_intermediate_output_h150; assert_in_delta(7.844967802381104e-05, worksheet.intermediate_output_h150, 0.002); end
  def test_intermediate_output_j150; assert_in_delta(0.0, (worksheet.intermediate_output_j150||0), 0.002); end
  def test_intermediate_output_k150; assert_in_delta(0.0, (worksheet.intermediate_output_k150||0), 0.002); end
  def test_intermediate_output_l150; assert_in_delta(0.0, (worksheet.intermediate_output_l150||0), 0.002); end
  def test_intermediate_output_m150; assert_in_delta(0.0, (worksheet.intermediate_output_m150||0), 0.002); end
  def test_intermediate_output_n150; assert_in_delta(0.0, (worksheet.intermediate_output_n150||0), 0.002); end
  def test_intermediate_output_o150; assert_in_delta(0.0, (worksheet.intermediate_output_o150||0), 0.002); end
  def test_intermediate_output_p150; assert_in_delta(0.0, (worksheet.intermediate_output_p150||0), 0.002); end
  def test_intermediate_output_q150; assert_in_delta(0.0, (worksheet.intermediate_output_q150||0), 0.002); end
  def test_intermediate_output_r150; assert_in_delta(0.0, (worksheet.intermediate_output_r150||0), 0.002); end
  def test_intermediate_output_s150; assert_in_delta(0.0, (worksheet.intermediate_output_s150||0), 0.002); end
  def test_intermediate_output_c151; assert_in_epsilon(4.0, worksheet.intermediate_output_c151, 0.002); end
  def test_intermediate_output_d151; assert_equal("Agriculture", worksheet.intermediate_output_d151); end
  def test_intermediate_output_f151; assert_in_delta(0.02554272698589529, worksheet.intermediate_output_f151, 0.002); end
  def test_intermediate_output_g151; assert_in_delta(0.020903361361285264, worksheet.intermediate_output_g151, 0.002); end
  def test_intermediate_output_h151; assert_in_delta(0.020230588037062004, worksheet.intermediate_output_h151, 0.002); end
  def test_intermediate_output_j151; assert_in_delta(0.02101481346925911, worksheet.intermediate_output_j151, 0.002); end
  def test_intermediate_output_k151; assert_in_delta(0.02013850078941684, worksheet.intermediate_output_k151, 0.002); end
  def test_intermediate_output_l151; assert_in_delta(0.017411437938398926, worksheet.intermediate_output_l151, 0.002); end
  def test_intermediate_output_m151; assert_in_delta(0.01472229596027242, worksheet.intermediate_output_m151, 0.002); end
  def test_intermediate_output_n151; assert_in_delta(0.01420073081372548, worksheet.intermediate_output_n151, 0.002); end
  def test_intermediate_output_o151; assert_in_delta(0.013616660674926917, worksheet.intermediate_output_o151, 0.002); end
  def test_intermediate_output_p151; assert_in_delta(0.012981354946740823, worksheet.intermediate_output_p151, 0.002); end
  def test_intermediate_output_q151; assert_in_delta(0.012302854757824553, worksheet.intermediate_output_q151, 0.002); end
  def test_intermediate_output_r151; assert_in_delta(0.011602343750044056, worksheet.intermediate_output_r151, 0.002); end
  def test_intermediate_output_s151; assert_in_delta(0.010906656847972708, worksheet.intermediate_output_s151, 0.002); end
  def test_intermediate_output_c152; assert_in_epsilon(5.0, worksheet.intermediate_output_c152, 0.002); end
  def test_intermediate_output_d152; assert_equal("Land Use, Land-Use Change and Forestry", worksheet.intermediate_output_d152); end
  def test_intermediate_output_f152; assert_in_delta(0.0, (worksheet.intermediate_output_f152||0), 0.002); end
  def test_intermediate_output_g152; assert_in_delta(0.0, (worksheet.intermediate_output_g152||0), 0.002); end
  def test_intermediate_output_h152; assert_in_delta(0.0, (worksheet.intermediate_output_h152||0), 0.002); end
  def test_intermediate_output_j152; assert_in_delta(0.0, (worksheet.intermediate_output_j152||0), 0.002); end
  def test_intermediate_output_k152; assert_in_delta(0.0, (worksheet.intermediate_output_k152||0), 0.002); end
  def test_intermediate_output_l152; assert_in_delta(0.0, (worksheet.intermediate_output_l152||0), 0.002); end
  def test_intermediate_output_m152; assert_in_delta(0.0, (worksheet.intermediate_output_m152||0), 0.002); end
  def test_intermediate_output_n152; assert_in_delta(0.0, (worksheet.intermediate_output_n152||0), 0.002); end
  def test_intermediate_output_o152; assert_in_delta(0.0, (worksheet.intermediate_output_o152||0), 0.002); end
  def test_intermediate_output_p152; assert_in_delta(0.0, (worksheet.intermediate_output_p152||0), 0.002); end
  def test_intermediate_output_q152; assert_in_delta(0.0, (worksheet.intermediate_output_q152||0), 0.002); end
  def test_intermediate_output_r152; assert_in_delta(0.0, (worksheet.intermediate_output_r152||0), 0.002); end
  def test_intermediate_output_s152; assert_in_delta(0.0, (worksheet.intermediate_output_s152||0), 0.002); end
  def test_intermediate_output_c153; assert_in_epsilon(6.0, worksheet.intermediate_output_c153, 0.002); end
  def test_intermediate_output_d153; assert_equal("Waste", worksheet.intermediate_output_d153); end
  def test_intermediate_output_f153; assert_in_delta(0.02947863232736064, worksheet.intermediate_output_f153, 0.002); end
  def test_intermediate_output_g153; assert_in_delta(0.031619860534428126, worksheet.intermediate_output_g153, 0.002); end
  def test_intermediate_output_h153; assert_in_delta(0.027671975525496464, worksheet.intermediate_output_h153, 0.002); end
  def test_intermediate_output_j153; assert_in_delta(0.032932875413951346, worksheet.intermediate_output_j153, 0.002); end
  def test_intermediate_output_k153; assert_in_delta(0.02903396595372238, worksheet.intermediate_output_k153, 0.002); end
  def test_intermediate_output_l153; assert_in_delta(0.03080909447973731, worksheet.intermediate_output_l153, 0.002); end
  def test_intermediate_output_m153; assert_in_delta(0.029826252845608515, worksheet.intermediate_output_m153, 0.002); end
  def test_intermediate_output_n153; assert_in_delta(0.02898888819009118, worksheet.intermediate_output_n153, 0.002); end
  def test_intermediate_output_o153; assert_in_delta(0.028172468919266096, worksheet.intermediate_output_o153, 0.002); end
  def test_intermediate_output_p153; assert_in_delta(0.027208872795352033, worksheet.intermediate_output_p153, 0.002); end
  def test_intermediate_output_q153; assert_in_delta(0.026251206504627957, worksheet.intermediate_output_q153, 0.002); end
  def test_intermediate_output_r153; assert_in_delta(0.025251265801797037, worksheet.intermediate_output_r153, 0.002); end
  def test_intermediate_output_s153; assert_in_delta(0.0242545809731909, worksheet.intermediate_output_s153, 0.002); end
  def test_intermediate_output_c154; assert_in_epsilon(7.0, worksheet.intermediate_output_c154, 0.002); end
  def test_intermediate_output_d154; assert_equal("Other", worksheet.intermediate_output_d154); end
  def test_intermediate_output_f154; assert_in_delta(0.0, (worksheet.intermediate_output_f154||0), 0.002); end
  def test_intermediate_output_g154; assert_in_delta(0.0, (worksheet.intermediate_output_g154||0), 0.002); end
  def test_intermediate_output_h154; assert_in_delta(0.0, (worksheet.intermediate_output_h154||0), 0.002); end
  def test_intermediate_output_j154; assert_in_delta(0.0, (worksheet.intermediate_output_j154||0), 0.002); end
  def test_intermediate_output_k154; assert_in_delta(0.0, (worksheet.intermediate_output_k154||0), 0.002); end
  def test_intermediate_output_l154; assert_in_delta(0.0, (worksheet.intermediate_output_l154||0), 0.002); end
  def test_intermediate_output_m154; assert_in_delta(0.0, (worksheet.intermediate_output_m154||0), 0.002); end
  def test_intermediate_output_n154; assert_in_delta(0.0, (worksheet.intermediate_output_n154||0), 0.002); end
  def test_intermediate_output_o154; assert_in_delta(0.0, (worksheet.intermediate_output_o154||0), 0.002); end
  def test_intermediate_output_p154; assert_in_delta(0.0, (worksheet.intermediate_output_p154||0), 0.002); end
  def test_intermediate_output_q154; assert_in_delta(0.0, (worksheet.intermediate_output_q154||0), 0.002); end
  def test_intermediate_output_r154; assert_in_delta(0.0, (worksheet.intermediate_output_r154||0), 0.002); end
  def test_intermediate_output_s154; assert_in_delta(0.0, (worksheet.intermediate_output_s154||0), 0.002); end
  def test_intermediate_output_c155; assert_equal("X3", worksheet.intermediate_output_c155); end
  def test_intermediate_output_d155; assert_equal("Carbon capture", worksheet.intermediate_output_d155); end
  def test_intermediate_output_j155; assert_in_delta(0.0, (worksheet.intermediate_output_j155||0), 0.002); end
  def test_intermediate_output_k155; assert_in_delta(0.0, (worksheet.intermediate_output_k155||0), 0.002); end
  def test_intermediate_output_l155; assert_in_delta(0.0, (worksheet.intermediate_output_l155||0), 0.002); end
  def test_intermediate_output_m155; assert_in_delta(0.0, (worksheet.intermediate_output_m155||0), 0.002); end
  def test_intermediate_output_n155; assert_in_delta(0.0, (worksheet.intermediate_output_n155||0), 0.002); end
  def test_intermediate_output_o155; assert_in_delta(0.0, (worksheet.intermediate_output_o155||0), 0.002); end
  def test_intermediate_output_p155; assert_in_delta(0.0, (worksheet.intermediate_output_p155||0), 0.002); end
  def test_intermediate_output_q155; assert_in_delta(0.0, (worksheet.intermediate_output_q155||0), 0.002); end
  def test_intermediate_output_r155; assert_in_delta(0.0, (worksheet.intermediate_output_r155||0), 0.002); end
  def test_intermediate_output_s155; assert_in_delta(0.0, (worksheet.intermediate_output_s155||0), 0.002); end
  def test_intermediate_output_d156; assert_equal("Total", worksheet.intermediate_output_d156); end
  def test_intermediate_output_f156; assert_in_delta(1.0, worksheet.intermediate_output_f156, 0.002); end
  def test_intermediate_output_g156; assert_in_epsilon(1.0714128489314543, worksheet.intermediate_output_g156, 0.002); end
  def test_intermediate_output_h156; assert_in_delta(0.9968677699796437, worksheet.intermediate_output_h156, 0.002); end
  def test_intermediate_output_j156; assert_in_epsilon(1.0714128489314543, worksheet.intermediate_output_j156, 0.002); end
  def test_intermediate_output_k156; assert_in_delta(0.9518188984704563, worksheet.intermediate_output_k156, 0.002); end
  def test_intermediate_output_l156; assert_in_delta(0.9225324346590258, worksheet.intermediate_output_l156, 0.002); end
  def test_intermediate_output_m156; assert_in_delta(0.8203138275382039, worksheet.intermediate_output_m156, 0.002); end
  def test_intermediate_output_n156; assert_in_delta(0.7231626625774741, worksheet.intermediate_output_n156, 0.002); end
  def test_intermediate_output_o156; assert_in_delta(0.6357123776903727, worksheet.intermediate_output_o156, 0.002); end
  def test_intermediate_output_p156; assert_in_delta(0.564427032530079, worksheet.intermediate_output_p156, 0.002); end
  def test_intermediate_output_q156; assert_in_delta(0.4919245039696971, worksheet.intermediate_output_q156, 0.002); end
  def test_intermediate_output_r156; assert_in_delta(0.43594907465258564, worksheet.intermediate_output_r156, 0.002); end
  def test_intermediate_output_s156; assert_in_delta(0.37909500649880723, worksheet.intermediate_output_s156, 0.002); end
  def test_intermediate_output_d157; assert_equal("Baseline", worksheet.intermediate_output_d157); end
  def test_intermediate_output_j157; assert_in_epsilon(1.0705894671192278, worksheet.intermediate_output_j157, 0.002); end
  def test_intermediate_output_k157; assert_in_delta(0.9496298144584631, worksheet.intermediate_output_k157, 0.002); end
  def test_intermediate_output_l157; assert_in_epsilon(1.0671830399887814, worksheet.intermediate_output_l157, 0.002); end
  def test_intermediate_output_m157; assert_in_epsilon(1.047923631572759, worksheet.intermediate_output_m157, 0.002); end
  def test_intermediate_output_n157; assert_in_epsilon(1.0181698601838889, worksheet.intermediate_output_n157, 0.002); end
  def test_intermediate_output_o157; assert_in_delta(0.9878266844627052, worksheet.intermediate_output_o157, 0.002); end
  def test_intermediate_output_p157; assert_in_delta(0.9688840226099203, worksheet.intermediate_output_p157, 0.002); end
  def test_intermediate_output_q157; assert_in_delta(0.9509786926869728, worksheet.intermediate_output_q157, 0.002); end
  def test_intermediate_output_r157; assert_in_delta(0.9333137816887546, worksheet.intermediate_output_r157, 0.002); end
  def test_intermediate_output_s157; assert_in_delta(0.9163890161751442, worksheet.intermediate_output_s157, 0.002); end
  def test_intermediate_output_e159; assert_equal("Adjustment factor:", worksheet.intermediate_output_e159); end
  def test_intermediate_output_j159; assert_in_epsilon(1.0492191252110281, worksheet.intermediate_output_j159, 0.002); end
  def test_intermediate_output_r159; assert_equal("% reduction 1990-2050", worksheet.intermediate_output_r159); end
  def test_intermediate_output_s159; assert_in_delta(0.6209049935011928, worksheet.intermediate_output_s159, 0.002); end
  def test_intermediate_output_c161; assert_equal("Emissions by sector", worksheet.intermediate_output_c161); end
  def test_intermediate_output_f161; assert_equal("Sector", worksheet.intermediate_output_f161); end
  def test_intermediate_output_j161; assert_in_epsilon(2005.0, worksheet.intermediate_output_j161, 0.002); end
  def test_intermediate_output_k161; assert_in_epsilon(2010.0, worksheet.intermediate_output_k161, 0.002); end
  def test_intermediate_output_l161; assert_in_epsilon(2015.0, worksheet.intermediate_output_l161, 0.002); end
  def test_intermediate_output_m161; assert_in_epsilon(2020.0, worksheet.intermediate_output_m161, 0.002); end
  def test_intermediate_output_n161; assert_in_epsilon(2025.0, worksheet.intermediate_output_n161, 0.002); end
  def test_intermediate_output_o161; assert_in_epsilon(2030.0, worksheet.intermediate_output_o161, 0.002); end
  def test_intermediate_output_p161; assert_in_epsilon(2035.0, worksheet.intermediate_output_p161, 0.002); end
  def test_intermediate_output_q161; assert_in_epsilon(2040.0, worksheet.intermediate_output_q161, 0.002); end
  def test_intermediate_output_r161; assert_in_epsilon(2045.0, worksheet.intermediate_output_r161, 0.002); end
  def test_intermediate_output_s161; assert_in_epsilon(2050.0, worksheet.intermediate_output_s161, 0.002); end
  def test_intermediate_output_c162; assert_equal("I", worksheet.intermediate_output_c162); end
  def test_intermediate_output_f162; assert_equal("Nuclear and Fossil Fired Plants", worksheet.intermediate_output_f162); end
  def test_intermediate_output_j162; assert_in_epsilon(374.94227695551126, worksheet.intermediate_output_j162, 0.002); end
  def test_intermediate_output_k162; assert_in_epsilon(302.4890099510233, worksheet.intermediate_output_k162, 0.002); end
  def test_intermediate_output_l162; assert_in_epsilon(338.8146858896861, worksheet.intermediate_output_l162, 0.002); end
  def test_intermediate_output_m162; assert_in_epsilon(280.03835904215146, worksheet.intermediate_output_m162, 0.002); end
  def test_intermediate_output_n162; assert_in_epsilon(227.86264582910587, worksheet.intermediate_output_n162, 0.002); end
  def test_intermediate_output_o162; assert_in_epsilon(183.21585711359162, worksheet.intermediate_output_o162, 0.002); end
  def test_intermediate_output_p162; assert_in_epsilon(150.48828949488154, worksheet.intermediate_output_p162, 0.002); end
  def test_intermediate_output_q162; assert_in_epsilon(112.09276405444129, worksheet.intermediate_output_q162, 0.002); end
  def test_intermediate_output_r162; assert_in_epsilon(87.52269569243232, worksheet.intermediate_output_r162, 0.002); end
  def test_intermediate_output_s162; assert_in_epsilon(59.05087717122782, worksheet.intermediate_output_s162, 0.002); end
  def test_intermediate_output_c163; assert_equal("II", worksheet.intermediate_output_c163); end
  def test_intermediate_output_f163; assert_equal("Renewables", worksheet.intermediate_output_f163); end
  def test_intermediate_output_j163; assert_in_delta(0.0, (worksheet.intermediate_output_j163||0), 0.002); end
  def test_intermediate_output_k163; assert_in_delta(0.0, (worksheet.intermediate_output_k163||0), 0.002); end
  def test_intermediate_output_l163; assert_in_delta(0.0, (worksheet.intermediate_output_l163||0), 0.002); end
  def test_intermediate_output_m163; assert_in_delta(0.0, (worksheet.intermediate_output_m163||0), 0.002); end
  def test_intermediate_output_n163; assert_in_delta(0.0, (worksheet.intermediate_output_n163||0), 0.002); end
  def test_intermediate_output_o163; assert_in_delta(0.0, (worksheet.intermediate_output_o163||0), 0.002); end
  def test_intermediate_output_p163; assert_in_delta(0.0, (worksheet.intermediate_output_p163||0), 0.002); end
  def test_intermediate_output_q163; assert_in_delta(0.0, (worksheet.intermediate_output_q163||0), 0.002); end
  def test_intermediate_output_r163; assert_in_delta(0.0, (worksheet.intermediate_output_r163||0), 0.002); end
  def test_intermediate_output_s163; assert_in_delta(0.0, (worksheet.intermediate_output_s163||0), 0.002); end
  def test_intermediate_output_c164; assert_equal("III", worksheet.intermediate_output_c164); end
  def test_intermediate_output_f164; assert_equal("Biomass Energy Supply", worksheet.intermediate_output_f164); end
  def test_intermediate_output_j164; assert_in_epsilon(13.654895653531295, worksheet.intermediate_output_j164, 0.002); end
  def test_intermediate_output_k164; assert_in_epsilon(6.959075373992217, worksheet.intermediate_output_k164, 0.002); end
  def test_intermediate_output_l164; assert_in_epsilon(-22.900032482093494, worksheet.intermediate_output_l164, 0.002); end
  def test_intermediate_output_m164; assert_in_epsilon(-47.11450615283171, worksheet.intermediate_output_m164, 0.002); end
  def test_intermediate_output_n164; assert_in_epsilon(-61.56697884775826, worksheet.intermediate_output_n164, 0.002); end
  def test_intermediate_output_o164; assert_in_epsilon(-69.56914168129649, worksheet.intermediate_output_o164, 0.002); end
  def test_intermediate_output_p164; assert_in_epsilon(-77.75555777835697, worksheet.intermediate_output_p164, 0.002); end
  def test_intermediate_output_q164; assert_in_epsilon(-75.36845006604264, worksheet.intermediate_output_q164, 0.002); end
  def test_intermediate_output_r164; assert_in_epsilon(-75.53268286216844, worksheet.intermediate_output_r164, 0.002); end
  def test_intermediate_output_s164; assert_in_epsilon(-64.28167234499641, worksheet.intermediate_output_s164, 0.002); end
  def test_intermediate_output_c165; assert_equal("IV", worksheet.intermediate_output_c165); end
  def test_intermediate_output_f165; assert_equal("Transport", worksheet.intermediate_output_f165); end
  def test_intermediate_output_j165; assert_in_epsilon(240.53347941400207, worksheet.intermediate_output_j165, 0.002); end
  def test_intermediate_output_k165; assert_in_epsilon(226.7236666581844, worksheet.intermediate_output_k165, 0.002); end
  def test_intermediate_output_l165; assert_in_epsilon(200.66645975295782, worksheet.intermediate_output_l165, 0.002); end
  def test_intermediate_output_m165; assert_in_epsilon(175.9486572034451, worksheet.intermediate_output_m165, 0.002); end
  def test_intermediate_output_n165; assert_in_epsilon(146.49391558205633, worksheet.intermediate_output_n165, 0.002); end
  def test_intermediate_output_o165; assert_in_epsilon(119.9010400098878, worksheet.intermediate_output_o165, 0.002); end
  def test_intermediate_output_p165; assert_in_epsilon(97.71184028218764, worksheet.intermediate_output_p165, 0.002); end
  def test_intermediate_output_q165; assert_in_epsilon(78.78777659520914, worksheet.intermediate_output_q165, 0.002); end
  def test_intermediate_output_r165; assert_in_epsilon(67.31005347158187, worksheet.intermediate_output_r165, 0.002); end
  def test_intermediate_output_s165; assert_in_epsilon(56.177285041525444, worksheet.intermediate_output_s165, 0.002); end
  def test_intermediate_output_c166; assert_equal("V", worksheet.intermediate_output_c166); end
  def test_intermediate_output_f166; assert_equal("Heating, Cooling and Hot Water Supply", worksheet.intermediate_output_f166); end
  def test_intermediate_output_j166; assert_in_epsilon(112.23652279353931, worksheet.intermediate_output_j166, 0.002); end
  def test_intermediate_output_k166; assert_in_epsilon(88.70382000014206, worksheet.intermediate_output_k166, 0.002); end
  def test_intermediate_output_l166; assert_in_epsilon(75.77243390454743, worksheet.intermediate_output_l166, 0.002); end
  def test_intermediate_output_m166; assert_in_epsilon(67.33655599348309, worksheet.intermediate_output_m166, 0.002); end
  def test_intermediate_output_n166; assert_in_epsilon(59.54205132723066, worksheet.intermediate_output_n166, 0.002); end
  def test_intermediate_output_o166; assert_in_epsilon(52.12841051746147, worksheet.intermediate_output_o166, 0.002); end
  def test_intermediate_output_p166; assert_in_epsilon(45.396469538865674, worksheet.intermediate_output_p166, 0.002); end
  def test_intermediate_output_q166; assert_in_epsilon(38.98790969194879, worksheet.intermediate_output_q166, 0.002); end
  def test_intermediate_output_r166; assert_in_epsilon(33.092425123454504, worksheet.intermediate_output_r166, 0.002); end
  def test_intermediate_output_s166; assert_in_epsilon(27.910393284422824, worksheet.intermediate_output_s166, 0.002); end
  def test_intermediate_output_c167; assert_equal("VI", worksheet.intermediate_output_c167); end
  def test_intermediate_output_f167; assert_equal("Cooking, Lighting and Appliances", worksheet.intermediate_output_f167); end
  def test_intermediate_output_j167; assert_in_epsilon(15.182838870108359, worksheet.intermediate_output_j167, 0.002); end
  def test_intermediate_output_k167; assert_in_epsilon(14.02539572860438, worksheet.intermediate_output_k167, 0.002); end
  def test_intermediate_output_l167; assert_in_epsilon(12.902246979055047, worksheet.intermediate_output_l167, 0.002); end
  def test_intermediate_output_m167; assert_in_epsilon(12.191129796819808, worksheet.intermediate_output_m167, 0.002); end
  def test_intermediate_output_n167; assert_in_epsilon(11.392305093176665, worksheet.intermediate_output_n167, 0.002); end
  def test_intermediate_output_o167; assert_in_epsilon(10.529386291433738, worksheet.intermediate_output_o167, 0.002); end
  def test_intermediate_output_p167; assert_in_epsilon(9.620108943094097, worksheet.intermediate_output_p167, 0.002); end
  def test_intermediate_output_q167; assert_in_epsilon(8.720127967819263, worksheet.intermediate_output_q167, 0.002); end
  def test_intermediate_output_r167; assert_in_epsilon(7.829443365609235, worksheet.intermediate_output_r167, 0.002); end
  def test_intermediate_output_s167; assert_in_epsilon(6.9480551364640135, worksheet.intermediate_output_s167, 0.002); end
  def test_intermediate_output_c168; assert_equal("VII", worksheet.intermediate_output_c168); end
  def test_intermediate_output_f168; assert_equal("Industry", worksheet.intermediate_output_f168); end
  def test_intermediate_output_j168; assert_in_epsilon(504.07261709005525, worksheet.intermediate_output_j168, 0.002); end
  def test_intermediate_output_k168; assert_in_epsilon(476.28236278457183, worksheet.intermediate_output_k168, 0.002); end
  def test_intermediate_output_l168; assert_in_epsilon(442.1300731417195, worksheet.intermediate_output_l168, 0.002); end
  def test_intermediate_output_m168; assert_in_epsilon(412.76142131192324, worksheet.intermediate_output_m168, 0.002); end
  def test_intermediate_output_n168; assert_in_epsilon(385.91844439549277, worksheet.intermediate_output_n168, 0.002); end
  def test_intermediate_output_o168; assert_in_epsilon(360.77959030238236, worksheet.intermediate_output_o168, 0.002); end
  def test_intermediate_output_p168; assert_in_epsilon(338.99867614708126, worksheet.intermediate_output_p168, 0.002); end
  def test_intermediate_output_q168; assert_in_epsilon(318.33037524254456, worksheet.intermediate_output_q168, 0.002); end
  def test_intermediate_output_r168; assert_in_epsilon(296.3821218510142, worksheet.intermediate_output_r168, 0.002); end
  def test_intermediate_output_s168; assert_in_epsilon(275.9827628496583, worksheet.intermediate_output_s168, 0.002); end
  def test_intermediate_output_c169; assert_equal("VIII", worksheet.intermediate_output_c169); end
  def test_intermediate_output_f169; assert_equal("Hydrocarbon Supply", worksheet.intermediate_output_f169); end
  def test_intermediate_output_j169; assert_in_delta(0.0, (worksheet.intermediate_output_j169||0), 0.002); end
  def test_intermediate_output_k169; assert_in_delta(0.0, (worksheet.intermediate_output_k169||0), 0.002); end
  def test_intermediate_output_l169; assert_in_delta(0.0, (worksheet.intermediate_output_l169||0), 0.002); end
  def test_intermediate_output_m169; assert_in_delta(0.0, (worksheet.intermediate_output_m169||0), 0.002); end
  def test_intermediate_output_n169; assert_in_delta(0.0, (worksheet.intermediate_output_n169||0), 0.002); end
  def test_intermediate_output_o169; assert_in_delta(0.0, (worksheet.intermediate_output_o169||0), 0.002); end
  def test_intermediate_output_p169; assert_in_delta(0.0, (worksheet.intermediate_output_p169||0), 0.002); end
  def test_intermediate_output_q169; assert_in_delta(0.0, (worksheet.intermediate_output_q169||0), 0.002); end
  def test_intermediate_output_r169; assert_in_delta(0.0, (worksheet.intermediate_output_r169||0), 0.002); end
  def test_intermediate_output_s169; assert_in_delta(0.0, (worksheet.intermediate_output_s169||0), 0.002); end
  def test_intermediate_output_c170; assert_equal("IX", worksheet.intermediate_output_c170); end
  def test_intermediate_output_f170; assert_equal("Refineries", worksheet.intermediate_output_f170); end
  def test_intermediate_output_j170; assert_in_epsilon(1.4534825608165218, worksheet.intermediate_output_j170, 0.002); end
  def test_intermediate_output_k170; assert_in_epsilon(1.1127744697951967, worksheet.intermediate_output_k170, 0.002); end
  def test_intermediate_output_l170; assert_in_epsilon(1.0250464388785974, worksheet.intermediate_output_l170, 0.002); end
  def test_intermediate_output_m170; assert_in_delta(0.9585789394915543, worksheet.intermediate_output_m170, 0.002); end
  def test_intermediate_output_n170; assert_in_delta(0.885967732336554, worksheet.intermediate_output_n170, 0.002); end
  def test_intermediate_output_o170; assert_in_delta(0.8166649078435967, worksheet.intermediate_output_o170, 0.002); end
  def test_intermediate_output_p170; assert_in_delta(0.7250162778102356, worksheet.intermediate_output_p170, 0.002); end
  def test_intermediate_output_q170; assert_in_delta(0.6420333605581077, worksheet.intermediate_output_q170, 0.002); end
  def test_intermediate_output_r170; assert_in_delta(0.5705713830650376, worksheet.intermediate_output_r170, 0.002); end
  def test_intermediate_output_s170; assert_in_delta(0.5063212002775404, worksheet.intermediate_output_s170, 0.002); end
  def test_intermediate_output_c171; assert_equal("X", worksheet.intermediate_output_c171); end
  def test_intermediate_output_f171; assert_equal("Hydrogen Production", worksheet.intermediate_output_f171); end
  def test_intermediate_output_j171; assert_in_delta(0.0, (worksheet.intermediate_output_j171||0), 0.002); end
  def test_intermediate_output_k171; assert_in_delta(0.0, (worksheet.intermediate_output_k171||0), 0.002); end
  def test_intermediate_output_l171; assert_in_delta(0.6850158500835029, worksheet.intermediate_output_l171, 0.002); end
  def test_intermediate_output_m171; assert_in_epsilon(1.0594639248327404, worksheet.intermediate_output_m171, 0.002); end
  def test_intermediate_output_n171; assert_in_epsilon(2.414040278746956, worksheet.intermediate_output_n171, 0.002); end
  def test_intermediate_output_o171; assert_in_epsilon(2.9904752868204465, worksheet.intermediate_output_o171, 0.002); end
  def test_intermediate_output_p171; assert_in_epsilon(2.882885504563149, worksheet.intermediate_output_p171, 0.002); end
  def test_intermediate_output_q171; assert_in_epsilon(2.253780718606346, worksheet.intermediate_output_q171, 0.002); end
  def test_intermediate_output_r171; assert_in_epsilon(1.0180104485883597, worksheet.intermediate_output_r171, 0.002); end
  def test_intermediate_output_s171; assert_in_delta(0.0, (worksheet.intermediate_output_s171||0), 0.002); end
  def test_intermediate_output_f172; assert_equal("Total", worksheet.intermediate_output_f172); end
  def test_intermediate_output_j172; assert_in_epsilon(1262.076113337564, worksheet.intermediate_output_j172, 0.002); end
  def test_intermediate_output_k172; assert_in_epsilon(1116.2961049663134, worksheet.intermediate_output_k172, 0.002); end
  def test_intermediate_output_l172; assert_in_epsilon(1049.0959294748347, worksheet.intermediate_output_l172, 0.002); end
  def test_intermediate_output_m172; assert_in_epsilon(903.1796600593153, worksheet.intermediate_output_m172, 0.002); end
  def test_intermediate_output_n172; assert_in_epsilon(772.9423913903875, worksheet.intermediate_output_n172, 0.002); end
  def test_intermediate_output_o172; assert_in_epsilon(660.7922827481245, worksheet.intermediate_output_o172, 0.002); end
  def test_intermediate_output_p172; assert_in_epsilon(568.0677284101267, worksheet.intermediate_output_p172, 0.002); end
  def test_intermediate_output_q172; assert_in_epsilon(484.4463175650848, worksheet.intermediate_output_q172, 0.002); end
  def test_intermediate_output_r172; assert_in_epsilon(418.19263847357706, worksheet.intermediate_output_r172, 0.002); end
  def test_intermediate_output_s172; assert_in_epsilon(362.2940223385795, worksheet.intermediate_output_s172, 0.002); end
  def test_intermediate_output_c174; assert_equal("Modelled emissions", worksheet.intermediate_output_c174); end
  def test_intermediate_output_d175; assert_equal("IPCC Sector", worksheet.intermediate_output_d175); end
  def test_intermediate_output_f175; assert_equal("Actuals, GHG Inv.", worksheet.intermediate_output_f175); end
  def test_intermediate_output_g175; assert_equal("Actuals, GHG Inv.", worksheet.intermediate_output_g175); end
  def test_intermediate_output_h175; assert_equal("Actuals, GHG Inv.", worksheet.intermediate_output_h175); end
  def test_intermediate_output_s175; assert_equal("Mt CO2e", worksheet.intermediate_output_s175); end
  def test_intermediate_output_c176; assert_equal("1A", worksheet.intermediate_output_c176); end
  def test_intermediate_output_d176; assert_equal("Fuel Combustion", worksheet.intermediate_output_d176); end
  def test_intermediate_output_f176; assert_in_epsilon(1066.4408527513074, worksheet.intermediate_output_f176, 0.002); end
  def test_intermediate_output_g176; assert_in_epsilon(1210.8042755863103, worksheet.intermediate_output_g176, 0.002); end
  def test_intermediate_output_h176; assert_in_epsilon(1130.6024041592734, worksheet.intermediate_output_h176, 0.002); end
  def test_intermediate_output_j176; assert_in_epsilon(1149.5112635638836, worksheet.intermediate_output_j176, 0.002); end
  def test_intermediate_output_k176; assert_in_epsilon(1019.3048956305062, worksheet.intermediate_output_k176, 0.002); end
  def test_intermediate_output_l176; assert_in_epsilon(985.0644924003017, worksheet.intermediate_output_l176, 0.002); end
  def test_intermediate_output_m176; assert_in_epsilon(866.4175869546983, worksheet.intermediate_output_m176, 0.002); end
  def test_intermediate_output_n176; assert_in_epsilon(751.0702437973438, worksheet.intermediate_output_n176, 0.002); end
  def test_intermediate_output_o176; assert_in_epsilon(647.4243793517459, worksheet.intermediate_output_o176, 0.002); end
  def test_intermediate_output_p176; assert_in_epsilon(563.4244856534956, worksheet.intermediate_output_p176, 0.002); end
  def test_intermediate_output_q176; assert_in_epsilon(477.99915297916493, worksheet.intermediate_output_q176, 0.002); end
  def test_intermediate_output_r176; assert_in_epsilon(412.5132485475295, worksheet.intermediate_output_r176, 0.002); end
  def test_intermediate_output_s176; assert_in_epsilon(345.95606657507227, worksheet.intermediate_output_s176, 0.002); end
  def test_intermediate_output_c177; assert_equal("1B", worksheet.intermediate_output_c177); end
  def test_intermediate_output_d177; assert_equal("Fugitive Emissions from Fuels", worksheet.intermediate_output_d177); end
  def test_intermediate_output_f177; assert_in_epsilon(3.073878812763854, worksheet.intermediate_output_f177, 0.002); end
  def test_intermediate_output_g177; assert_in_delta(0.43345785755831284, worksheet.intermediate_output_g177, 0.002); end
  def test_intermediate_output_h177; assert_in_delta(0.40898343844314305, worksheet.intermediate_output_h177, 0.002); end
  def test_intermediate_output_j177; assert_in_delta(0.0, (worksheet.intermediate_output_j177||0), 0.002); end
  def test_intermediate_output_k177; assert_in_delta(0.0, (worksheet.intermediate_output_k177||0), 0.002); end
  def test_intermediate_output_l177; assert_in_delta(0.0, (worksheet.intermediate_output_l177||0), 0.002); end
  def test_intermediate_output_m177; assert_in_delta(0.0, (worksheet.intermediate_output_m177||0), 0.002); end
  def test_intermediate_output_n177; assert_in_delta(0.0, (worksheet.intermediate_output_n177||0), 0.002); end
  def test_intermediate_output_o177; assert_in_delta(0.0, (worksheet.intermediate_output_o177||0), 0.002); end
  def test_intermediate_output_p177; assert_in_delta(0.0, (worksheet.intermediate_output_p177||0), 0.002); end
  def test_intermediate_output_q177; assert_in_delta(0.0, (worksheet.intermediate_output_q177||0), 0.002); end
  def test_intermediate_output_r177; assert_in_delta(0.0, (worksheet.intermediate_output_r177||0), 0.002); end
  def test_intermediate_output_s177; assert_in_delta(0.0, (worksheet.intermediate_output_s177||0), 0.002); end
  def test_intermediate_output_c178; assert_in_delta(1.0, worksheet.intermediate_output_c178, 0.002); end
  def test_intermediate_output_d178; assert_equal("Fuel Combustion", worksheet.intermediate_output_d178); end
  def test_intermediate_output_f178; assert_in_epsilon(1069.5147315640713, worksheet.intermediate_output_f178, 0.002); end
  def test_intermediate_output_g178; assert_in_epsilon(1211.2377334438686, worksheet.intermediate_output_g178, 0.002); end
  def test_intermediate_output_h178; assert_in_epsilon(1131.0113875977165, worksheet.intermediate_output_h178, 0.002); end
  def test_intermediate_output_j178; assert_in_epsilon(1149.5112635638836, worksheet.intermediate_output_j178, 0.002); end
  def test_intermediate_output_k178; assert_in_epsilon(1019.3048956305062, worksheet.intermediate_output_k178, 0.002); end
  def test_intermediate_output_l178; assert_in_epsilon(985.0644924003017, worksheet.intermediate_output_l178, 0.002); end
  def test_intermediate_output_m178; assert_in_epsilon(866.4175869546983, worksheet.intermediate_output_m178, 0.002); end
  def test_intermediate_output_n178; assert_in_epsilon(751.0702437973438, worksheet.intermediate_output_n178, 0.002); end
  def test_intermediate_output_o178; assert_in_epsilon(647.4243793517459, worksheet.intermediate_output_o178, 0.002); end
  def test_intermediate_output_p178; assert_in_epsilon(563.4244856534956, worksheet.intermediate_output_p178, 0.002); end
  def test_intermediate_output_q178; assert_in_epsilon(477.99915297916493, worksheet.intermediate_output_q178, 0.002); end
  def test_intermediate_output_r178; assert_in_epsilon(412.5132485475295, worksheet.intermediate_output_r178, 0.002); end
  def test_intermediate_output_s178; assert_in_epsilon(345.95606657507227, worksheet.intermediate_output_s178, 0.002); end
  def test_intermediate_output_c179; assert_in_epsilon(2.0, worksheet.intermediate_output_c179, 0.002); end
  def test_intermediate_output_d179; assert_equal("Industrial Processes", worksheet.intermediate_output_d179); end
  def test_intermediate_output_f179; assert_in_epsilon(122.12944829326172, worksheet.intermediate_output_f179, 0.002); end
  def test_intermediate_output_g179; assert_in_epsilon(73.65335436586831, worksheet.intermediate_output_g179, 0.002); end
  def test_intermediate_output_h179; assert_in_epsilon(65.8492911229187, worksheet.intermediate_output_h179, 0.002); end
  def test_intermediate_output_j179; assert_in_epsilon(73.64674280194546, worksheet.intermediate_output_j179, 0.002); end
  def test_intermediate_output_k179; assert_in_epsilon(65.82239249448861, worksheet.intermediate_output_k179, 0.002); end
  def test_intermediate_output_l179; assert_in_epsilon(66.00009956683242, worksheet.intermediate_output_l179, 0.002); end
  def test_intermediate_output_m179; assert_in_epsilon(66.17799371075458, worksheet.intermediate_output_m179, 0.002); end
  def test_intermediate_output_n179; assert_in_epsilon(66.36754672181613, worksheet.intermediate_output_n179, 0.002); end
  def test_intermediate_output_o179; assert_in_epsilon(66.567612316249, worksheet.intermediate_output_o179, 0.002); end
  def test_intermediate_output_p179; assert_in_epsilon(66.7931082124814, worksheet.intermediate_output_p179, 0.002); end
  def test_intermediate_output_q179; assert_in_epsilon(67.0255895099956, worksheet.intermediate_output_q179, 0.002); end
  def test_intermediate_output_r179; assert_in_epsilon(67.26417539799773, worksheet.intermediate_output_r179, 0.002); end
  def test_intermediate_output_s179; assert_in_epsilon(67.50805911320755, worksheet.intermediate_output_s179, 0.002); end
  def test_intermediate_output_c180; assert_in_epsilon(3.0, worksheet.intermediate_output_c180, 0.002); end
  def test_intermediate_output_d180; assert_equal("Solvent and Other Product Use", worksheet.intermediate_output_d180); end
  def test_intermediate_output_f180; assert_in_delta(0.28706929999999997, worksheet.intermediate_output_f180, 0.002); end
  def test_intermediate_output_g180; assert_in_delta(0.26641059, worksheet.intermediate_output_g180, 0.002); end
  def test_intermediate_output_h180; assert_in_delta(0.09895104364999999, worksheet.intermediate_output_h180, 0.002); end
  def test_intermediate_output_j180; assert_in_delta(0.0, (worksheet.intermediate_output_j180||0), 0.002); end
  def test_intermediate_output_k180; assert_in_delta(0.0, (worksheet.intermediate_output_k180||0), 0.002); end
  def test_intermediate_output_l180; assert_in_delta(0.0, (worksheet.intermediate_output_l180||0), 0.002); end
  def test_intermediate_output_m180; assert_in_delta(0.0, (worksheet.intermediate_output_m180||0), 0.002); end
  def test_intermediate_output_n180; assert_in_delta(0.0, (worksheet.intermediate_output_n180||0), 0.002); end
  def test_intermediate_output_o180; assert_in_delta(0.0, (worksheet.intermediate_output_o180||0), 0.002); end
  def test_intermediate_output_p180; assert_in_delta(0.0, (worksheet.intermediate_output_p180||0), 0.002); end
  def test_intermediate_output_q180; assert_in_delta(0.0, (worksheet.intermediate_output_q180||0), 0.002); end
  def test_intermediate_output_r180; assert_in_delta(0.0, (worksheet.intermediate_output_r180||0), 0.002); end
  def test_intermediate_output_s180; assert_in_delta(0.0, (worksheet.intermediate_output_s180||0), 0.002); end
  def test_intermediate_output_c181; assert_in_epsilon(4.0, worksheet.intermediate_output_c181, 0.002); end
  def test_intermediate_output_d181; assert_equal("Agriculture", worksheet.intermediate_output_d181); end
  def test_intermediate_output_f181; assert_in_epsilon(32.217844057361425, worksheet.intermediate_output_f181, 0.002); end
  def test_intermediate_output_g181; assert_in_epsilon(26.36606643387954, worksheet.intermediate_output_g181, 0.002); end
  def test_intermediate_output_h181; assert_in_epsilon(25.517476302616465, worksheet.intermediate_output_h181, 0.002); end
  def test_intermediate_output_j181; assert_in_epsilon(25.263211318203712, worksheet.intermediate_output_j181, 0.002); end
  def test_intermediate_output_k181; assert_in_epsilon(24.209741467326317, worksheet.intermediate_output_k181, 0.002); end
  def test_intermediate_output_l181; assert_in_epsilon(20.931369989793637, worksheet.intermediate_output_l181, 0.002); end
  def test_intermediate_output_m181; assert_in_epsilon(17.698585546693966, worksheet.intermediate_output_m181, 0.002); end
  def test_intermediate_output_n181; assert_in_epsilon(17.071579718985813, worksheet.intermediate_output_n181, 0.002); end
  def test_intermediate_output_o181; assert_in_epsilon(16.369432761426314, worksheet.intermediate_output_o181, 0.002); end
  def test_intermediate_output_p181; assert_in_epsilon(15.605692322506474, worksheet.intermediate_output_p181, 0.002); end
  def test_intermediate_output_q181; assert_in_epsilon(14.79002514196703, worksheet.intermediate_output_q181, 0.002); end
  def test_intermediate_output_r181; assert_in_epsilon(13.94789739021828, worksheet.intermediate_output_r181, 0.002); end
  def test_intermediate_output_s181; assert_in_epsilon(13.111568995296079, worksheet.intermediate_output_s181, 0.002); end
  def test_intermediate_output_c182; assert_in_epsilon(5.0, worksheet.intermediate_output_c182, 0.002); end
  def test_intermediate_output_d182; assert_equal("Land Use, Land-Use Change and Forestry", worksheet.intermediate_output_d182); end
  def test_intermediate_output_f182; assert_in_delta(0.0, (worksheet.intermediate_output_f182||0), 0.002); end
  def test_intermediate_output_g182; assert_in_delta(0.0, (worksheet.intermediate_output_g182||0), 0.002); end
  def test_intermediate_output_h182; assert_in_delta(0.0, (worksheet.intermediate_output_h182||0), 0.002); end
  def test_intermediate_output_j182; assert_in_delta(0.0, (worksheet.intermediate_output_j182||0), 0.002); end
  def test_intermediate_output_k182; assert_in_delta(0.0, (worksheet.intermediate_output_k182||0), 0.002); end
  def test_intermediate_output_l182; assert_in_delta(0.0, (worksheet.intermediate_output_l182||0), 0.002); end
  def test_intermediate_output_m182; assert_in_delta(0.0, (worksheet.intermediate_output_m182||0), 0.002); end
  def test_intermediate_output_n182; assert_in_delta(0.0, (worksheet.intermediate_output_n182||0), 0.002); end
  def test_intermediate_output_o182; assert_in_delta(0.0, (worksheet.intermediate_output_o182||0), 0.002); end
  def test_intermediate_output_p182; assert_in_delta(0.0, (worksheet.intermediate_output_p182||0), 0.002); end
  def test_intermediate_output_q182; assert_in_delta(0.0, (worksheet.intermediate_output_q182||0), 0.002); end
  def test_intermediate_output_r182; assert_in_delta(0.0, (worksheet.intermediate_output_r182||0), 0.002); end
  def test_intermediate_output_s182; assert_in_delta(0.0, (worksheet.intermediate_output_s182||0), 0.002); end
  def test_intermediate_output_c183; assert_in_epsilon(6.0, worksheet.intermediate_output_c183, 0.002); end
  def test_intermediate_output_d183; assert_equal("Waste", worksheet.intermediate_output_d183); end
  def test_intermediate_output_f183; assert_in_epsilon(37.182325124159384, worksheet.intermediate_output_f183, 0.002); end
  def test_intermediate_output_g183; assert_in_epsilon(39.88312353556698, worksheet.intermediate_output_g183, 0.002); end
  def test_intermediate_output_h183; assert_in_epsilon(34.903532137812505, worksheet.intermediate_output_h183, 0.002); end
  def test_intermediate_output_j183; assert_in_epsilon(39.590653141688854, worksheet.intermediate_output_j183, 0.002); end
  def test_intermediate_output_k183; assert_in_epsilon(34.903532137812505, worksheet.intermediate_output_k183, 0.002); end
  def test_intermediate_output_l183; assert_in_epsilon(37.03752429221766, worksheet.intermediate_output_l183, 0.002); end
  def test_intermediate_output_m183; assert_in_epsilon(35.85598937487728, worksheet.intermediate_output_m183, 0.002); end
  def test_intermediate_output_n183; assert_in_epsilon(34.84934136090968, worksheet.intermediate_output_n183, 0.002); end
  def test_intermediate_output_o183; assert_in_epsilon(33.86787309361913, worksheet.intermediate_output_o183, 0.002); end
  def test_intermediate_output_p183; assert_in_epsilon(32.70947439836289, worksheet.intermediate_output_p183, 0.002); end
  def test_intermediate_output_q183; assert_in_epsilon(31.558204323552392, worksheet.intermediate_output_q183, 0.002); end
  def test_intermediate_output_r183; assert_in_epsilon(30.356113554664816, worksheet.intermediate_output_r183, 0.002); end
  def test_intermediate_output_s183; assert_in_epsilon(29.157936874221875, worksheet.intermediate_output_s183, 0.002); end
  def test_intermediate_output_c184; assert_in_epsilon(7.0, worksheet.intermediate_output_c184, 0.002); end
  def test_intermediate_output_d184; assert_equal("Other", worksheet.intermediate_output_d184); end
  def test_intermediate_output_f184; assert_in_delta(0.0, (worksheet.intermediate_output_f184||0), 0.002); end
  def test_intermediate_output_g184; assert_in_delta(0.0, (worksheet.intermediate_output_g184||0), 0.002); end
  def test_intermediate_output_h184; assert_in_delta(0.0, (worksheet.intermediate_output_h184||0), 0.002); end
  def test_intermediate_output_j184; assert_in_delta(0.0, (worksheet.intermediate_output_j184||0), 0.002); end
  def test_intermediate_output_k184; assert_in_delta(0.0, (worksheet.intermediate_output_k184||0), 0.002); end
  def test_intermediate_output_l184; assert_in_delta(0.0, (worksheet.intermediate_output_l184||0), 0.002); end
  def test_intermediate_output_m184; assert_in_delta(0.0, (worksheet.intermediate_output_m184||0), 0.002); end
  def test_intermediate_output_n184; assert_in_delta(0.0, (worksheet.intermediate_output_n184||0), 0.002); end
  def test_intermediate_output_o184; assert_in_delta(0.0, (worksheet.intermediate_output_o184||0), 0.002); end
  def test_intermediate_output_p184; assert_in_delta(0.0, (worksheet.intermediate_output_p184||0), 0.002); end
  def test_intermediate_output_q184; assert_in_delta(0.0, (worksheet.intermediate_output_q184||0), 0.002); end
  def test_intermediate_output_r184; assert_in_delta(0.0, (worksheet.intermediate_output_r184||0), 0.002); end
  def test_intermediate_output_s184; assert_in_delta(0.0, (worksheet.intermediate_output_s184||0), 0.002); end
  def test_intermediate_output_c185; assert_equal("X3", worksheet.intermediate_output_c185); end
  def test_intermediate_output_d185; assert_equal("Carbon capture", worksheet.intermediate_output_d185); end
  def test_intermediate_output_j185; assert_in_delta(0.0, (worksheet.intermediate_output_j185||0), 0.002); end
  def test_intermediate_output_k185; assert_in_delta(0.0, (worksheet.intermediate_output_k185||0), 0.002); end
  def test_intermediate_output_l185; assert_in_delta(0.0, (worksheet.intermediate_output_l185||0), 0.002); end
  def test_intermediate_output_m185; assert_in_delta(0.0, (worksheet.intermediate_output_m185||0), 0.002); end
  def test_intermediate_output_n185; assert_in_delta(0.0, (worksheet.intermediate_output_n185||0), 0.002); end
  def test_intermediate_output_o185; assert_in_delta(0.0, (worksheet.intermediate_output_o185||0), 0.002); end
  def test_intermediate_output_p185; assert_in_delta(0.0, (worksheet.intermediate_output_p185||0), 0.002); end
  def test_intermediate_output_q185; assert_in_delta(0.0, (worksheet.intermediate_output_q185||0), 0.002); end
  def test_intermediate_output_r185; assert_in_delta(0.0, (worksheet.intermediate_output_r185||0), 0.002); end
  def test_intermediate_output_s185; assert_in_delta(0.0, (worksheet.intermediate_output_s185||0), 0.002); end
  def test_intermediate_output_d186; assert_equal("Total", worksheet.intermediate_output_d186); end
  def test_intermediate_output_f186; assert_in_epsilon(1261.3314183388538, worksheet.intermediate_output_f186, 0.002); end
  def test_intermediate_output_g186; assert_in_epsilon(1351.4066883691835, worksheet.intermediate_output_g186, 0.002); end
  def test_intermediate_output_h186; assert_in_epsilon(1257.3806382047142, worksheet.intermediate_output_h186, 0.002); end
  def test_intermediate_output_j186; assert_in_epsilon(1288.0118708257216, worksheet.intermediate_output_j186, 0.002); end
  def test_intermediate_output_k186; assert_in_epsilon(1144.2405617301335, worksheet.intermediate_output_k186, 0.002); end
  def test_intermediate_output_l186; assert_in_epsilon(1109.0334862491454, worksheet.intermediate_output_l186, 0.002); end
  def test_intermediate_output_m186; assert_in_epsilon(986.1501555870241, worksheet.intermediate_output_m186, 0.002); end
  def test_intermediate_output_n186; assert_in_epsilon(869.3587115990554, worksheet.intermediate_output_n186, 0.002); end
  def test_intermediate_output_o186; assert_in_epsilon(764.2292975230403, worksheet.intermediate_output_o186, 0.002); end
  def test_intermediate_output_p186; assert_in_epsilon(678.5327605868464, worksheet.intermediate_output_p186, 0.002); end
  def test_intermediate_output_q186; assert_in_epsilon(591.37297195468, worksheet.intermediate_output_q186, 0.002); end
  def test_intermediate_output_r186; assert_in_epsilon(524.0814348904103, worksheet.intermediate_output_r186, 0.002); end
  def test_intermediate_output_s186; assert_in_epsilon(455.73363155779776, worksheet.intermediate_output_s186, 0.002); end
  def test_intermediate_output_c188; assert_equal("Targets", worksheet.intermediate_output_c188); end
  def test_intermediate_output_j188; assert_equal("2050 target", worksheet.intermediate_output_j188); end
  def test_intermediate_output_k188; assert_equal("2020 target ", worksheet.intermediate_output_k188); end
  def test_intermediate_output_f189; assert_equal("KP base year", worksheet.intermediate_output_f189); end
  def test_intermediate_output_g189; assert_equal("Base year (2005)", worksheet.intermediate_output_g189); end
  def test_intermediate_output_h189; assert_equal("Base year (2010)", worksheet.intermediate_output_h189); end
  def test_intermediate_output_j189; assert_equal("(20% of KP base)", worksheet.intermediate_output_j189); end
  def test_intermediate_output_k189; assert_equal("(66% of base)", worksheet.intermediate_output_k189); end
  def test_intermediate_output_d190; assert_equal("Kyoto agreed sectors", worksheet.intermediate_output_d190); end
  def test_intermediate_output_f190; assert_in_epsilon(1261.3314183388538, worksheet.intermediate_output_f190, 0.002); end
  def test_intermediate_output_g190; assert_in_epsilon(1351.4066883691835, worksheet.intermediate_output_g190, 0.002); end
  def test_intermediate_output_h190; assert_in_epsilon(1257.3806382047142, worksheet.intermediate_output_h190, 0.002); end
  def test_intermediate_output_j190; assert_in_epsilon(252.26628366777078, worksheet.intermediate_output_j190, 0.002); end
  def test_intermediate_output_k190; assert_in_epsilon(832.4787361036435, worksheet.intermediate_output_k190, 0.002); end
  def test_intermediate_output_d191; assert_equal("Total", worksheet.intermediate_output_d191); end
  def test_intermediate_output_f191; assert_in_epsilon(1261.3314183388538, worksheet.intermediate_output_f191, 0.002); end
  def test_intermediate_output_g191; assert_in_epsilon(1351.4066883691835, worksheet.intermediate_output_g191, 0.002); end
  def test_intermediate_output_h191; assert_in_epsilon(1257.3806382047142, worksheet.intermediate_output_h191, 0.002); end
  def test_intermediate_output_j191; assert_in_epsilon(252.26628366777078, worksheet.intermediate_output_j191, 0.002); end
  def test_intermediate_output_k191; assert_in_epsilon(832.4787361036435, worksheet.intermediate_output_k191, 0.002); end
  def test_intermediate_output_d192; assert_equal("Target, for chart", worksheet.intermediate_output_d192); end
  def test_intermediate_output_j192; assert_in_delta(0.2, worksheet.intermediate_output_j192, 0.002); end
  def test_intermediate_output_k192; assert_in_delta(0.2, worksheet.intermediate_output_k192, 0.002); end
  def test_intermediate_output_l192; assert_in_delta(0.2, worksheet.intermediate_output_l192, 0.002); end
  def test_intermediate_output_m192; assert_in_delta(0.2, worksheet.intermediate_output_m192, 0.002); end
  def test_intermediate_output_n192; assert_in_delta(0.2, worksheet.intermediate_output_n192, 0.002); end
  def test_intermediate_output_o192; assert_in_delta(0.2, worksheet.intermediate_output_o192, 0.002); end
  def test_intermediate_output_p192; assert_in_delta(0.2, worksheet.intermediate_output_p192, 0.002); end
  def test_intermediate_output_q192; assert_in_delta(0.2, worksheet.intermediate_output_q192, 0.002); end
  def test_intermediate_output_r192; assert_in_delta(0.2, worksheet.intermediate_output_r192, 0.002); end
  def test_intermediate_output_s192; assert_in_delta(0.2, worksheet.intermediate_output_s192, 0.002); end
  def test_intermediate_output_d193; assert_equal("Dummy, for chart", worksheet.intermediate_output_d193); end
  def test_intermediate_output_j193; assert_in_delta(0.0, (worksheet.intermediate_output_j193||0), 0.002); end
  def test_intermediate_output_k193; assert_in_delta(0.0, (worksheet.intermediate_output_k193||0), 0.002); end
  def test_intermediate_output_l193; assert_in_delta(0.0, (worksheet.intermediate_output_l193||0), 0.002); end
  def test_intermediate_output_m193; assert_in_delta(0.0, (worksheet.intermediate_output_m193||0), 0.002); end
  def test_intermediate_output_n193; assert_in_delta(0.0, (worksheet.intermediate_output_n193||0), 0.002); end
  def test_intermediate_output_o193; assert_in_delta(0.0, (worksheet.intermediate_output_o193||0), 0.002); end
  def test_intermediate_output_p193; assert_in_delta(0.0, (worksheet.intermediate_output_p193||0), 0.002); end
  def test_intermediate_output_q193; assert_in_delta(0.0, (worksheet.intermediate_output_q193||0), 0.002); end
  def test_intermediate_output_r193; assert_in_delta(0.0, (worksheet.intermediate_output_r193||0), 0.002); end
  def test_intermediate_output_s193; assert_in_delta(0.0, (worksheet.intermediate_output_s193||0), 0.002); end
  def test_intermediate_output_b196; assert_equal("Emissions (Baseline)", worksheet.intermediate_output_b196); end
  def test_intermediate_output_c198; assert_equal("Emissions as % of base year, adjusted so that 2007 matches actuals", worksheet.intermediate_output_c198); end
  def test_intermediate_output_d199; assert_equal("IPCC Sector", worksheet.intermediate_output_d199); end
  def test_intermediate_output_j199; assert_in_epsilon(2005.0, worksheet.intermediate_output_j199, 0.002); end
  def test_intermediate_output_k199; assert_in_epsilon(2010.0, worksheet.intermediate_output_k199, 0.002); end
  def test_intermediate_output_l199; assert_in_epsilon(2015.0, worksheet.intermediate_output_l199, 0.002); end
  def test_intermediate_output_m199; assert_in_epsilon(2020.0, worksheet.intermediate_output_m199, 0.002); end
  def test_intermediate_output_n199; assert_in_epsilon(2025.0, worksheet.intermediate_output_n199, 0.002); end
  def test_intermediate_output_o199; assert_in_epsilon(2030.0, worksheet.intermediate_output_o199, 0.002); end
  def test_intermediate_output_p199; assert_in_epsilon(2035.0, worksheet.intermediate_output_p199, 0.002); end
  def test_intermediate_output_q199; assert_in_epsilon(2040.0, worksheet.intermediate_output_q199, 0.002); end
  def test_intermediate_output_r199; assert_in_epsilon(2045.0, worksheet.intermediate_output_r199, 0.002); end
  def test_intermediate_output_s199; assert_in_epsilon(2050.0, worksheet.intermediate_output_s199, 0.002); end
  def test_intermediate_output_c200; assert_in_delta(1.0, worksheet.intermediate_output_c200, 0.002); end
  def test_intermediate_output_d200; assert_equal("Fuel Combustion", worksheet.intermediate_output_d200); end
  def test_intermediate_output_j200; assert_in_delta(0.9553798688489794, worksheet.intermediate_output_j200, 0.002); end
  def test_intermediate_output_k200; assert_in_delta(0.8457040036946718, worksheet.intermediate_output_k200, 0.002); end
  def test_intermediate_output_l200; assert_in_delta(0.9640613406572324, worksheet.intermediate_output_l200, 0.002); end
  def test_intermediate_output_m200; assert_in_delta(0.9483259373480922, worksheet.intermediate_output_m200, 0.002); end
  def test_intermediate_output_n200; assert_in_delta(0.9197734190067433, worksheet.intermediate_output_n200, 0.002); end
  def test_intermediate_output_o200; assert_in_delta(0.8906643112099779, worksheet.intermediate_output_o200, 0.002); end
  def test_intermediate_output_p200; assert_in_delta(0.8731329759189741, worksheet.intermediate_output_p200, 0.002); end
  def test_intermediate_output_q200; assert_in_delta(0.8566704264868148, worksheet.intermediate_output_q200, 0.002); end
  def test_intermediate_output_r200; assert_in_delta(0.8405075032007241, worksheet.intermediate_output_r200, 0.002); end
  def test_intermediate_output_s200; assert_in_delta(0.8250722385032913, worksheet.intermediate_output_s200, 0.002); end
  def test_intermediate_output_c201; assert_in_epsilon(2.0, worksheet.intermediate_output_c201, 0.002); end
  def test_intermediate_output_d201; assert_equal("Industrial Processes", worksheet.intermediate_output_d201); end
  def test_intermediate_output_j201; assert_in_delta(0.061261909387037856, worksheet.intermediate_output_j201, 0.002); end
  def test_intermediate_output_k201; assert_in_delta(0.05475334402065207, worksheet.intermediate_output_k201, 0.002); end
  def test_intermediate_output_l201; assert_in_delta(0.05490116691341244, worksheet.intermediate_output_l201, 0.002); end
  def test_intermediate_output_m201; assert_in_delta(0.05504914541878574, worksheet.intermediate_output_m201, 0.002); end
  def test_intermediate_output_n201; assert_in_delta(0.05520682217332899, worksheet.intermediate_output_n201, 0.002); end
  def test_intermediate_output_o201; assert_in_delta(0.055373243658533994, worksheet.intermediate_output_o201, 0.002); end
  def test_intermediate_output_p201; assert_in_delta(0.0555608189488532, worksheet.intermediate_output_p201, 0.002); end
  def test_intermediate_output_q201; assert_in_delta(0.05575420493770537, worksheet.intermediate_output_q201, 0.002); end
  def test_intermediate_output_r201; assert_in_delta(0.05595266893618959, worksheet.intermediate_output_r201, 0.002); end
  def test_intermediate_output_s201; assert_in_delta(0.05615553985068933, worksheet.intermediate_output_s201, 0.002); end
  def test_intermediate_output_c202; assert_in_epsilon(3.0, worksheet.intermediate_output_c202, 0.002); end
  def test_intermediate_output_d202; assert_equal("Solvent and Other Product Use", worksheet.intermediate_output_d202); end
  def test_intermediate_output_j202; assert_in_delta(0.0, (worksheet.intermediate_output_j202||0), 0.002); end
  def test_intermediate_output_k202; assert_in_delta(0.0, (worksheet.intermediate_output_k202||0), 0.002); end
  def test_intermediate_output_l202; assert_in_delta(0.0, (worksheet.intermediate_output_l202||0), 0.002); end
  def test_intermediate_output_m202; assert_in_delta(0.0, (worksheet.intermediate_output_m202||0), 0.002); end
  def test_intermediate_output_n202; assert_in_delta(0.0, (worksheet.intermediate_output_n202||0), 0.002); end
  def test_intermediate_output_o202; assert_in_delta(0.0, (worksheet.intermediate_output_o202||0), 0.002); end
  def test_intermediate_output_p202; assert_in_delta(0.0, (worksheet.intermediate_output_p202||0), 0.002); end
  def test_intermediate_output_q202; assert_in_delta(0.0, (worksheet.intermediate_output_q202||0), 0.002); end
  def test_intermediate_output_r202; assert_in_delta(0.0, (worksheet.intermediate_output_r202||0), 0.002); end
  def test_intermediate_output_s202; assert_in_delta(0.0, (worksheet.intermediate_output_s202||0), 0.002); end
  def test_intermediate_output_c203; assert_in_epsilon(4.0, worksheet.intermediate_output_c203, 0.002); end
  def test_intermediate_output_d203; assert_equal("Agriculture", worksheet.intermediate_output_d203); end
  def test_intermediate_output_j203; assert_in_delta(0.02101481346925911, worksheet.intermediate_output_j203, 0.002); end
  def test_intermediate_output_k203; assert_in_delta(0.02013850078941684, worksheet.intermediate_output_k203, 0.002); end
  def test_intermediate_output_l203; assert_in_delta(0.017411437938398926, worksheet.intermediate_output_l203, 0.002); end
  def test_intermediate_output_m203; assert_in_delta(0.01472229596027242, worksheet.intermediate_output_m203, 0.002); end
  def test_intermediate_output_n203; assert_in_delta(0.01420073081372548, worksheet.intermediate_output_n203, 0.002); end
  def test_intermediate_output_o203; assert_in_delta(0.013616660674926917, worksheet.intermediate_output_o203, 0.002); end
  def test_intermediate_output_p203; assert_in_delta(0.012981354946740823, worksheet.intermediate_output_p203, 0.002); end
  def test_intermediate_output_q203; assert_in_delta(0.012302854757824553, worksheet.intermediate_output_q203, 0.002); end
  def test_intermediate_output_r203; assert_in_delta(0.011602343750044056, worksheet.intermediate_output_r203, 0.002); end
  def test_intermediate_output_s203; assert_in_delta(0.010906656847972708, worksheet.intermediate_output_s203, 0.002); end
  def test_intermediate_output_c204; assert_in_epsilon(5.0, worksheet.intermediate_output_c204, 0.002); end
  def test_intermediate_output_d204; assert_equal("Land Use, Land-Use Change and Forestry", worksheet.intermediate_output_d204); end
  def test_intermediate_output_j204; assert_in_delta(0.0, (worksheet.intermediate_output_j204||0), 0.002); end
  def test_intermediate_output_k204; assert_in_delta(0.0, (worksheet.intermediate_output_k204||0), 0.002); end
  def test_intermediate_output_l204; assert_in_delta(0.0, (worksheet.intermediate_output_l204||0), 0.002); end
  def test_intermediate_output_m204; assert_in_delta(0.0, (worksheet.intermediate_output_m204||0), 0.002); end
  def test_intermediate_output_n204; assert_in_delta(0.0, (worksheet.intermediate_output_n204||0), 0.002); end
  def test_intermediate_output_o204; assert_in_delta(0.0, (worksheet.intermediate_output_o204||0), 0.002); end
  def test_intermediate_output_p204; assert_in_delta(0.0, (worksheet.intermediate_output_p204||0), 0.002); end
  def test_intermediate_output_q204; assert_in_delta(0.0, (worksheet.intermediate_output_q204||0), 0.002); end
  def test_intermediate_output_r204; assert_in_delta(0.0, (worksheet.intermediate_output_r204||0), 0.002); end
  def test_intermediate_output_s204; assert_in_delta(0.0, (worksheet.intermediate_output_s204||0), 0.002); end
  def test_intermediate_output_c205; assert_in_epsilon(6.0, worksheet.intermediate_output_c205, 0.002); end
  def test_intermediate_output_d205; assert_equal("Waste", worksheet.intermediate_output_d205); end
  def test_intermediate_output_j205; assert_in_delta(0.032932875413951346, worksheet.intermediate_output_j205, 0.002); end
  def test_intermediate_output_k205; assert_in_delta(0.02903396595372238, worksheet.intermediate_output_k205, 0.002); end
  def test_intermediate_output_l205; assert_in_delta(0.03080909447973731, worksheet.intermediate_output_l205, 0.002); end
  def test_intermediate_output_m205; assert_in_delta(0.029826252845608515, worksheet.intermediate_output_m205, 0.002); end
  def test_intermediate_output_n205; assert_in_delta(0.02898888819009118, worksheet.intermediate_output_n205, 0.002); end
  def test_intermediate_output_o205; assert_in_delta(0.028172468919266096, worksheet.intermediate_output_o205, 0.002); end
  def test_intermediate_output_p205; assert_in_delta(0.027208872795352033, worksheet.intermediate_output_p205, 0.002); end
  def test_intermediate_output_q205; assert_in_delta(0.026251206504627957, worksheet.intermediate_output_q205, 0.002); end
  def test_intermediate_output_r205; assert_in_delta(0.025251265801797037, worksheet.intermediate_output_r205, 0.002); end
  def test_intermediate_output_s205; assert_in_delta(0.0242545809731909, worksheet.intermediate_output_s205, 0.002); end
  def test_intermediate_output_c206; assert_in_epsilon(7.0, worksheet.intermediate_output_c206, 0.002); end
  def test_intermediate_output_d206; assert_equal("Other", worksheet.intermediate_output_d206); end
  def test_intermediate_output_j206; assert_in_delta(0.0, (worksheet.intermediate_output_j206||0), 0.002); end
  def test_intermediate_output_k206; assert_in_delta(0.0, (worksheet.intermediate_output_k206||0), 0.002); end
  def test_intermediate_output_l206; assert_in_delta(0.0, (worksheet.intermediate_output_l206||0), 0.002); end
  def test_intermediate_output_m206; assert_in_delta(0.0, (worksheet.intermediate_output_m206||0), 0.002); end
  def test_intermediate_output_n206; assert_in_delta(0.0, (worksheet.intermediate_output_n206||0), 0.002); end
  def test_intermediate_output_o206; assert_in_delta(0.0, (worksheet.intermediate_output_o206||0), 0.002); end
  def test_intermediate_output_p206; assert_in_delta(0.0, (worksheet.intermediate_output_p206||0), 0.002); end
  def test_intermediate_output_q206; assert_in_delta(0.0, (worksheet.intermediate_output_q206||0), 0.002); end
  def test_intermediate_output_r206; assert_in_delta(0.0, (worksheet.intermediate_output_r206||0), 0.002); end
  def test_intermediate_output_s206; assert_in_delta(0.0, (worksheet.intermediate_output_s206||0), 0.002); end
  def test_intermediate_output_c207; assert_equal("X3", worksheet.intermediate_output_c207); end
  def test_intermediate_output_d207; assert_equal("Carbon capture", worksheet.intermediate_output_d207); end
  def test_intermediate_output_j207; assert_in_delta(0.0, (worksheet.intermediate_output_j207||0), 0.002); end
  def test_intermediate_output_k207; assert_in_delta(0.0, (worksheet.intermediate_output_k207||0), 0.002); end
  def test_intermediate_output_l207; assert_in_delta(0.0, (worksheet.intermediate_output_l207||0), 0.002); end
  def test_intermediate_output_m207; assert_in_delta(0.0, (worksheet.intermediate_output_m207||0), 0.002); end
  def test_intermediate_output_n207; assert_in_delta(0.0, (worksheet.intermediate_output_n207||0), 0.002); end
  def test_intermediate_output_o207; assert_in_delta(0.0, (worksheet.intermediate_output_o207||0), 0.002); end
  def test_intermediate_output_p207; assert_in_delta(0.0, (worksheet.intermediate_output_p207||0), 0.002); end
  def test_intermediate_output_q207; assert_in_delta(0.0, (worksheet.intermediate_output_q207||0), 0.002); end
  def test_intermediate_output_r207; assert_in_delta(0.0, (worksheet.intermediate_output_r207||0), 0.002); end
  def test_intermediate_output_s207; assert_in_delta(0.0, (worksheet.intermediate_output_s207||0), 0.002); end
  def test_intermediate_output_d208; assert_equal("Total", worksheet.intermediate_output_d208); end
  def test_intermediate_output_j208; assert_in_epsilon(1.0705894671192278, worksheet.intermediate_output_j208, 0.002); end
  def test_intermediate_output_k208; assert_in_delta(0.9496298144584632, worksheet.intermediate_output_k208, 0.002); end
  def test_intermediate_output_l208; assert_in_epsilon(1.067183039988781, worksheet.intermediate_output_l208, 0.002); end
  def test_intermediate_output_m208; assert_in_epsilon(1.047923631572759, worksheet.intermediate_output_m208, 0.002); end
  def test_intermediate_output_n208; assert_in_epsilon(1.0181698601838889, worksheet.intermediate_output_n208, 0.002); end
  def test_intermediate_output_o208; assert_in_delta(0.9878266844627049, worksheet.intermediate_output_o208, 0.002); end
  def test_intermediate_output_p208; assert_in_delta(0.9688840226099201, worksheet.intermediate_output_p208, 0.002); end
  def test_intermediate_output_q208; assert_in_delta(0.9509786926869727, worksheet.intermediate_output_q208, 0.002); end
  def test_intermediate_output_r208; assert_in_delta(0.9333137816887548, worksheet.intermediate_output_r208, 0.002); end
  def test_intermediate_output_s208; assert_in_delta(0.9163890161751442, worksheet.intermediate_output_s208, 0.002); end
  def test_intermediate_output_c210; assert_equal("Modelled emissions", worksheet.intermediate_output_c210); end
  def test_intermediate_output_d211; assert_equal("IPCC Sector", worksheet.intermediate_output_d211); end
  def test_intermediate_output_s211; assert_equal("Mt CO2e", worksheet.intermediate_output_s211); end
  def test_intermediate_output_c212; assert_equal("1A", worksheet.intermediate_output_c212); end
  def test_intermediate_output_d212; assert_equal("Fuel Combustion", worksheet.intermediate_output_d212); end
  def test_intermediate_output_j212; assert_in_epsilon(1148.5214251935229, worksheet.intermediate_output_j212, 0.002); end
  def test_intermediate_output_k212; assert_in_epsilon(1016.6732618989392, worksheet.intermediate_output_k212, 0.002); end
  def test_intermediate_output_l212; assert_in_epsilon(1158.9579611716201, worksheet.intermediate_output_l212, 0.002); end
  def test_intermediate_output_m212; assert_in_epsilon(1140.0414564137986, worksheet.intermediate_output_m212, 0.002); end
  def test_intermediate_output_n212; assert_in_epsilon(1105.716702326423, worksheet.intermediate_output_n212, 0.002); end
  def test_intermediate_output_o212; assert_in_epsilon(1070.7228375162597, worksheet.intermediate_output_o212, 0.002); end
  def test_intermediate_output_p212; assert_in_epsilon(1049.6473314788261, worksheet.intermediate_output_p212, 0.002); end
  def test_intermediate_output_q212; assert_in_epsilon(1029.85667924442, worksheet.intermediate_output_q212, 0.002); end
  def test_intermediate_output_r212; assert_in_epsilon(1010.4262261931126, worksheet.intermediate_output_r212, 0.002); end
  def test_intermediate_output_s212; assert_in_epsilon(991.8705366851342, worksheet.intermediate_output_s212, 0.002); end
  def test_intermediate_output_c213; assert_equal("1B", worksheet.intermediate_output_c213); end
  def test_intermediate_output_d213; assert_equal("Fugitive Emissions from Fuels", worksheet.intermediate_output_d213); end
  def test_intermediate_output_j213; assert_in_delta(0.0, (worksheet.intermediate_output_j213||0), 0.002); end
  def test_intermediate_output_k213; assert_in_delta(0.0, (worksheet.intermediate_output_k213||0), 0.002); end
  def test_intermediate_output_l213; assert_in_delta(0.0, (worksheet.intermediate_output_l213||0), 0.002); end
  def test_intermediate_output_m213; assert_in_delta(0.0, (worksheet.intermediate_output_m213||0), 0.002); end
  def test_intermediate_output_n213; assert_in_delta(0.0, (worksheet.intermediate_output_n213||0), 0.002); end
  def test_intermediate_output_o213; assert_in_delta(0.0, (worksheet.intermediate_output_o213||0), 0.002); end
  def test_intermediate_output_p213; assert_in_delta(0.0, (worksheet.intermediate_output_p213||0), 0.002); end
  def test_intermediate_output_q213; assert_in_delta(0.0, (worksheet.intermediate_output_q213||0), 0.002); end
  def test_intermediate_output_r213; assert_in_delta(0.0, (worksheet.intermediate_output_r213||0), 0.002); end
  def test_intermediate_output_s213; assert_in_delta(0.0, (worksheet.intermediate_output_s213||0), 0.002); end
  def test_intermediate_output_c214; assert_in_delta(1.0, worksheet.intermediate_output_c214, 0.002); end
  def test_intermediate_output_d214; assert_equal("Fuel Combustion", worksheet.intermediate_output_d214); end
  def test_intermediate_output_j214; assert_in_epsilon(1148.5214251935229, worksheet.intermediate_output_j214, 0.002); end
  def test_intermediate_output_k214; assert_in_epsilon(1016.6732618989392, worksheet.intermediate_output_k214, 0.002); end
  def test_intermediate_output_l214; assert_in_epsilon(1158.9579611716201, worksheet.intermediate_output_l214, 0.002); end
  def test_intermediate_output_m214; assert_in_epsilon(1140.0414564137986, worksheet.intermediate_output_m214, 0.002); end
  def test_intermediate_output_n214; assert_in_epsilon(1105.716702326423, worksheet.intermediate_output_n214, 0.002); end
  def test_intermediate_output_o214; assert_in_epsilon(1070.7228375162597, worksheet.intermediate_output_o214, 0.002); end
  def test_intermediate_output_p214; assert_in_epsilon(1049.6473314788261, worksheet.intermediate_output_p214, 0.002); end
  def test_intermediate_output_q214; assert_in_epsilon(1029.85667924442, worksheet.intermediate_output_q214, 0.002); end
  def test_intermediate_output_r214; assert_in_epsilon(1010.4262261931126, worksheet.intermediate_output_r214, 0.002); end
  def test_intermediate_output_s214; assert_in_epsilon(991.8705366851342, worksheet.intermediate_output_s214, 0.002); end
  def test_intermediate_output_c215; assert_in_epsilon(2.0, worksheet.intermediate_output_c215, 0.002); end
  def test_intermediate_output_d215; assert_equal("Industrial Processes", worksheet.intermediate_output_d215); end
  def test_intermediate_output_j215; assert_in_epsilon(73.64674280194546, worksheet.intermediate_output_j215, 0.002); end
  def test_intermediate_output_k215; assert_in_epsilon(65.82239249448861, worksheet.intermediate_output_k215, 0.002); end
  def test_intermediate_output_l215; assert_in_epsilon(66.00009956683242, worksheet.intermediate_output_l215, 0.002); end
  def test_intermediate_output_m215; assert_in_epsilon(66.17799371075458, worksheet.intermediate_output_m215, 0.002); end
  def test_intermediate_output_n215; assert_in_epsilon(66.36754672181613, worksheet.intermediate_output_n215, 0.002); end
  def test_intermediate_output_o215; assert_in_epsilon(66.567612316249, worksheet.intermediate_output_o215, 0.002); end
  def test_intermediate_output_p215; assert_in_epsilon(66.7931082124814, worksheet.intermediate_output_p215, 0.002); end
  def test_intermediate_output_q215; assert_in_epsilon(67.0255895099956, worksheet.intermediate_output_q215, 0.002); end
  def test_intermediate_output_r215; assert_in_epsilon(67.26417539799773, worksheet.intermediate_output_r215, 0.002); end
  def test_intermediate_output_s215; assert_in_epsilon(67.50805911320755, worksheet.intermediate_output_s215, 0.002); end
  def test_intermediate_output_c216; assert_in_epsilon(3.0, worksheet.intermediate_output_c216, 0.002); end
  def test_intermediate_output_d216; assert_equal("Solvent and Other Product Use", worksheet.intermediate_output_d216); end
  def test_intermediate_output_j216; assert_in_delta(0.0, (worksheet.intermediate_output_j216||0), 0.002); end
  def test_intermediate_output_k216; assert_in_delta(0.0, (worksheet.intermediate_output_k216||0), 0.002); end
  def test_intermediate_output_l216; assert_in_delta(0.0, (worksheet.intermediate_output_l216||0), 0.002); end
  def test_intermediate_output_m216; assert_in_delta(0.0, (worksheet.intermediate_output_m216||0), 0.002); end
  def test_intermediate_output_n216; assert_in_delta(0.0, (worksheet.intermediate_output_n216||0), 0.002); end
  def test_intermediate_output_o216; assert_in_delta(0.0, (worksheet.intermediate_output_o216||0), 0.002); end
  def test_intermediate_output_p216; assert_in_delta(0.0, (worksheet.intermediate_output_p216||0), 0.002); end
  def test_intermediate_output_q216; assert_in_delta(0.0, (worksheet.intermediate_output_q216||0), 0.002); end
  def test_intermediate_output_r216; assert_in_delta(0.0, (worksheet.intermediate_output_r216||0), 0.002); end
  def test_intermediate_output_s216; assert_in_delta(0.0, (worksheet.intermediate_output_s216||0), 0.002); end
  def test_intermediate_output_c217; assert_in_epsilon(4.0, worksheet.intermediate_output_c217, 0.002); end
  def test_intermediate_output_d217; assert_equal("Agriculture", worksheet.intermediate_output_d217); end
  def test_intermediate_output_j217; assert_in_epsilon(25.263211318203712, worksheet.intermediate_output_j217, 0.002); end
  def test_intermediate_output_k217; assert_in_epsilon(24.209741467326317, worksheet.intermediate_output_k217, 0.002); end
  def test_intermediate_output_l217; assert_in_epsilon(20.931369989793637, worksheet.intermediate_output_l217, 0.002); end
  def test_intermediate_output_m217; assert_in_epsilon(17.698585546693966, worksheet.intermediate_output_m217, 0.002); end
  def test_intermediate_output_n217; assert_in_epsilon(17.071579718985813, worksheet.intermediate_output_n217, 0.002); end
  def test_intermediate_output_o217; assert_in_epsilon(16.369432761426314, worksheet.intermediate_output_o217, 0.002); end
  def test_intermediate_output_p217; assert_in_epsilon(15.605692322506474, worksheet.intermediate_output_p217, 0.002); end
  def test_intermediate_output_q217; assert_in_epsilon(14.79002514196703, worksheet.intermediate_output_q217, 0.002); end
  def test_intermediate_output_r217; assert_in_epsilon(13.94789739021828, worksheet.intermediate_output_r217, 0.002); end
  def test_intermediate_output_s217; assert_in_epsilon(13.111568995296079, worksheet.intermediate_output_s217, 0.002); end
  def test_intermediate_output_c218; assert_in_epsilon(5.0, worksheet.intermediate_output_c218, 0.002); end
  def test_intermediate_output_d218; assert_equal("Land Use, Land-Use Change and Forestry", worksheet.intermediate_output_d218); end
  def test_intermediate_output_j218; assert_in_delta(0.0, (worksheet.intermediate_output_j218||0), 0.002); end
  def test_intermediate_output_k218; assert_in_delta(0.0, (worksheet.intermediate_output_k218||0), 0.002); end
  def test_intermediate_output_l218; assert_in_delta(0.0, (worksheet.intermediate_output_l218||0), 0.002); end
  def test_intermediate_output_m218; assert_in_delta(0.0, (worksheet.intermediate_output_m218||0), 0.002); end
  def test_intermediate_output_n218; assert_in_delta(0.0, (worksheet.intermediate_output_n218||0), 0.002); end
  def test_intermediate_output_o218; assert_in_delta(0.0, (worksheet.intermediate_output_o218||0), 0.002); end
  def test_intermediate_output_p218; assert_in_delta(0.0, (worksheet.intermediate_output_p218||0), 0.002); end
  def test_intermediate_output_q218; assert_in_delta(0.0, (worksheet.intermediate_output_q218||0), 0.002); end
  def test_intermediate_output_r218; assert_in_delta(0.0, (worksheet.intermediate_output_r218||0), 0.002); end
  def test_intermediate_output_s218; assert_in_delta(0.0, (worksheet.intermediate_output_s218||0), 0.002); end
  def test_intermediate_output_c219; assert_in_epsilon(6.0, worksheet.intermediate_output_c219, 0.002); end
  def test_intermediate_output_d219; assert_equal("Waste", worksheet.intermediate_output_d219); end
  def test_intermediate_output_j219; assert_in_epsilon(39.590653141688854, worksheet.intermediate_output_j219, 0.002); end
  def test_intermediate_output_k219; assert_in_epsilon(34.903532137812505, worksheet.intermediate_output_k219, 0.002); end
  def test_intermediate_output_l219; assert_in_epsilon(37.03752429221766, worksheet.intermediate_output_l219, 0.002); end
  def test_intermediate_output_m219; assert_in_epsilon(35.85598937487728, worksheet.intermediate_output_m219, 0.002); end
  def test_intermediate_output_n219; assert_in_epsilon(34.84934136090968, worksheet.intermediate_output_n219, 0.002); end
  def test_intermediate_output_o219; assert_in_epsilon(33.86787309361913, worksheet.intermediate_output_o219, 0.002); end
  def test_intermediate_output_p219; assert_in_epsilon(32.70947439836289, worksheet.intermediate_output_p219, 0.002); end
  def test_intermediate_output_q219; assert_in_epsilon(31.558204323552392, worksheet.intermediate_output_q219, 0.002); end
  def test_intermediate_output_r219; assert_in_epsilon(30.356113554664816, worksheet.intermediate_output_r219, 0.002); end
  def test_intermediate_output_s219; assert_in_epsilon(29.157936874221875, worksheet.intermediate_output_s219, 0.002); end
  def test_intermediate_output_c220; assert_in_epsilon(7.0, worksheet.intermediate_output_c220, 0.002); end
  def test_intermediate_output_d220; assert_equal("Other", worksheet.intermediate_output_d220); end
  def test_intermediate_output_j220; assert_in_delta(0.0, (worksheet.intermediate_output_j220||0), 0.002); end
  def test_intermediate_output_k220; assert_in_delta(0.0, (worksheet.intermediate_output_k220||0), 0.002); end
  def test_intermediate_output_l220; assert_in_delta(0.0, (worksheet.intermediate_output_l220||0), 0.002); end
  def test_intermediate_output_m220; assert_in_delta(0.0, (worksheet.intermediate_output_m220||0), 0.002); end
  def test_intermediate_output_n220; assert_in_delta(0.0, (worksheet.intermediate_output_n220||0), 0.002); end
  def test_intermediate_output_o220; assert_in_delta(0.0, (worksheet.intermediate_output_o220||0), 0.002); end
  def test_intermediate_output_p220; assert_in_delta(0.0, (worksheet.intermediate_output_p220||0), 0.002); end
  def test_intermediate_output_q220; assert_in_delta(0.0, (worksheet.intermediate_output_q220||0), 0.002); end
  def test_intermediate_output_r220; assert_in_delta(0.0, (worksheet.intermediate_output_r220||0), 0.002); end
  def test_intermediate_output_s220; assert_in_delta(0.0, (worksheet.intermediate_output_s220||0), 0.002); end
  def test_intermediate_output_c221; assert_equal("X3", worksheet.intermediate_output_c221); end
  def test_intermediate_output_d221; assert_equal("Carbon capture", worksheet.intermediate_output_d221); end
  def test_intermediate_output_j221; assert_in_delta(0.0, (worksheet.intermediate_output_j221||0), 0.002); end
  def test_intermediate_output_k221; assert_in_delta(0.0, (worksheet.intermediate_output_k221||0), 0.002); end
  def test_intermediate_output_l221; assert_in_delta(0.0, (worksheet.intermediate_output_l221||0), 0.002); end
  def test_intermediate_output_m221; assert_in_delta(0.0, (worksheet.intermediate_output_m221||0), 0.002); end
  def test_intermediate_output_n221; assert_in_delta(0.0, (worksheet.intermediate_output_n221||0), 0.002); end
  def test_intermediate_output_o221; assert_in_delta(0.0, (worksheet.intermediate_output_o221||0), 0.002); end
  def test_intermediate_output_p221; assert_in_delta(0.0, (worksheet.intermediate_output_p221||0), 0.002); end
  def test_intermediate_output_q221; assert_in_delta(0.0, (worksheet.intermediate_output_q221||0), 0.002); end
  def test_intermediate_output_r221; assert_in_delta(0.0, (worksheet.intermediate_output_r221||0), 0.002); end
  def test_intermediate_output_s221; assert_in_delta(0.0, (worksheet.intermediate_output_s221||0), 0.002); end
  def test_intermediate_output_d222; assert_equal("Total", worksheet.intermediate_output_d222); end
  def test_intermediate_output_j222; assert_in_epsilon(1287.0220324553609, worksheet.intermediate_output_j222, 0.002); end
  def test_intermediate_output_k222; assert_in_epsilon(1141.6089279985667, worksheet.intermediate_output_k222, 0.002); end
  def test_intermediate_output_l222; assert_in_epsilon(1282.926955020464, worksheet.intermediate_output_l222, 0.002); end
  def test_intermediate_output_m222; assert_in_epsilon(1259.7740250461245, worksheet.intermediate_output_m222, 0.002); end
  def test_intermediate_output_n222; assert_in_epsilon(1224.0051701281345, worksheet.intermediate_output_n222, 0.002); end
  def test_intermediate_output_o222; assert_in_epsilon(1187.5277556875544, worksheet.intermediate_output_o222, 0.002); end
  def test_intermediate_output_p222; assert_in_epsilon(1164.755606412177, worksheet.intermediate_output_p222, 0.002); end
  def test_intermediate_output_q222; assert_in_epsilon(1143.2304982199353, worksheet.intermediate_output_q222, 0.002); end
  def test_intermediate_output_r222; assert_in_epsilon(1121.9944125359932, worksheet.intermediate_output_r222, 0.002); end
  def test_intermediate_output_s222; assert_in_epsilon(1101.6481016678597, worksheet.intermediate_output_s222, 0.002); end
  def test_intermediate_output_b225; assert_equal("Electricity Generation Emissions", worksheet.intermediate_output_b225); end
  def test_intermediate_output_c227; assert_equal("Emissions from Electricity Generation", worksheet.intermediate_output_c227); end
  def test_intermediate_output_j227; assert_in_epsilon(2005.0, worksheet.intermediate_output_j227, 0.002); end
  def test_intermediate_output_k227; assert_equal("2010", worksheet.intermediate_output_k227); end
  def test_intermediate_output_l227; assert_equal("2015", worksheet.intermediate_output_l227); end
  def test_intermediate_output_m227; assert_equal("2020", worksheet.intermediate_output_m227); end
  def test_intermediate_output_n227; assert_equal("2025", worksheet.intermediate_output_n227); end
  def test_intermediate_output_o227; assert_equal("2030", worksheet.intermediate_output_o227); end
  def test_intermediate_output_p227; assert_equal("2035", worksheet.intermediate_output_p227); end
  def test_intermediate_output_q227; assert_equal("2040", worksheet.intermediate_output_q227); end
  def test_intermediate_output_r227; assert_equal("2045", worksheet.intermediate_output_r227); end
  def test_intermediate_output_s227; assert_equal("2050", worksheet.intermediate_output_s227); end
  def test_intermediate_output_c228; assert_equal("Power Generation", worksheet.intermediate_output_c228); end
  def test_intermediate_output_j228; assert_in_epsilon(374.94227695551126, worksheet.intermediate_output_j228, 0.002); end
  def test_intermediate_output_k228; assert_in_epsilon(302.4890099510233, worksheet.intermediate_output_k228, 0.002); end
  def test_intermediate_output_l228; assert_in_epsilon(338.8146858896861, worksheet.intermediate_output_l228, 0.002); end
  def test_intermediate_output_m228; assert_in_epsilon(280.03835904215146, worksheet.intermediate_output_m228, 0.002); end
  def test_intermediate_output_n228; assert_in_epsilon(227.86264582910587, worksheet.intermediate_output_n228, 0.002); end
  def test_intermediate_output_o228; assert_in_epsilon(183.21585711359162, worksheet.intermediate_output_o228, 0.002); end
  def test_intermediate_output_p228; assert_in_epsilon(150.48828949488154, worksheet.intermediate_output_p228, 0.002); end
  def test_intermediate_output_q228; assert_in_epsilon(112.09276405444129, worksheet.intermediate_output_q228, 0.002); end
  def test_intermediate_output_r228; assert_in_epsilon(87.52269569243232, worksheet.intermediate_output_r228, 0.002); end
  def test_intermediate_output_s228; assert_in_epsilon(59.05087717122782, worksheet.intermediate_output_s228, 0.002); end
  def test_intermediate_output_c229; assert_equal("CCS in Power", worksheet.intermediate_output_c229); end
  def test_intermediate_output_j229; assert_in_delta(0.0, (worksheet.intermediate_output_j229||0), 0.002); end
  def test_intermediate_output_k229; assert_in_delta(0.0, (worksheet.intermediate_output_k229||0), 0.002); end
  def test_intermediate_output_l229; assert_in_delta(0.0, (worksheet.intermediate_output_l229||0), 0.002); end
  def test_intermediate_output_m229; assert_in_delta(0.0, (worksheet.intermediate_output_m229||0), 0.002); end
  def test_intermediate_output_n229; assert_in_delta(0.0, (worksheet.intermediate_output_n229||0), 0.002); end
  def test_intermediate_output_o229; assert_in_delta(0.0, (worksheet.intermediate_output_o229||0), 0.002); end
  def test_intermediate_output_p229; assert_in_delta(0.0, (worksheet.intermediate_output_p229||0), 0.002); end
  def test_intermediate_output_q229; assert_in_delta(0.0, (worksheet.intermediate_output_q229||0), 0.002); end
  def test_intermediate_output_r229; assert_in_delta(0.0, (worksheet.intermediate_output_r229||0), 0.002); end
  def test_intermediate_output_s229; assert_in_delta(0.0, (worksheet.intermediate_output_s229||0), 0.002); end
  def test_intermediate_output_c230; assert_equal("Total Emissions from Power", worksheet.intermediate_output_c230); end
  def test_intermediate_output_j230; assert_in_epsilon(374.94227695551126, worksheet.intermediate_output_j230, 0.002); end
  def test_intermediate_output_k230; assert_in_epsilon(302.4890099510233, worksheet.intermediate_output_k230, 0.002); end
  def test_intermediate_output_l230; assert_in_epsilon(338.8146858896861, worksheet.intermediate_output_l230, 0.002); end
  def test_intermediate_output_m230; assert_in_epsilon(280.03835904215146, worksheet.intermediate_output_m230, 0.002); end
  def test_intermediate_output_n230; assert_in_epsilon(227.86264582910587, worksheet.intermediate_output_n230, 0.002); end
  def test_intermediate_output_o230; assert_in_epsilon(183.21585711359162, worksheet.intermediate_output_o230, 0.002); end
  def test_intermediate_output_p230; assert_in_epsilon(150.48828949488154, worksheet.intermediate_output_p230, 0.002); end
  def test_intermediate_output_q230; assert_in_epsilon(112.09276405444129, worksheet.intermediate_output_q230, 0.002); end
  def test_intermediate_output_r230; assert_in_epsilon(87.52269569243232, worksheet.intermediate_output_r230, 0.002); end
  def test_intermediate_output_s230; assert_in_epsilon(59.05087717122782, worksheet.intermediate_output_s230, 0.002); end
  def test_intermediate_output_c232; assert_equal("Emissions reclassified", worksheet.intermediate_output_c232); end
  def test_intermediate_output_j232; assert_in_epsilon(2005.0, worksheet.intermediate_output_j232, 0.002); end
  def test_intermediate_output_k232; assert_equal("2010", worksheet.intermediate_output_k232); end
  def test_intermediate_output_l232; assert_equal("2015", worksheet.intermediate_output_l232); end
  def test_intermediate_output_m232; assert_equal("2020", worksheet.intermediate_output_m232); end
  def test_intermediate_output_n232; assert_equal("2025", worksheet.intermediate_output_n232); end
  def test_intermediate_output_o232; assert_equal("2030", worksheet.intermediate_output_o232); end
  def test_intermediate_output_p232; assert_equal("2035", worksheet.intermediate_output_p232); end
  def test_intermediate_output_q232; assert_equal("2040", worksheet.intermediate_output_q232); end
  def test_intermediate_output_r232; assert_equal("2045", worksheet.intermediate_output_r232); end
  def test_intermediate_output_s232; assert_equal("2050", worksheet.intermediate_output_s232); end
  def test_intermediate_output_c233; assert_in_delta(1.0, worksheet.intermediate_output_c233, 0.002); end
  def test_intermediate_output_d233; assert_equal("Fuel Combustion", worksheet.intermediate_output_d233); end
  def test_intermediate_output_j233; assert_in_epsilon(374.94227695551126, worksheet.intermediate_output_j233, 0.002); end
  def test_intermediate_output_k233; assert_in_epsilon(302.4890099510233, worksheet.intermediate_output_k233, 0.002); end
  def test_intermediate_output_l233; assert_in_epsilon(338.8146858896861, worksheet.intermediate_output_l233, 0.002); end
  def test_intermediate_output_m233; assert_in_epsilon(280.03835904215146, worksheet.intermediate_output_m233, 0.002); end
  def test_intermediate_output_n233; assert_in_epsilon(227.86264582910587, worksheet.intermediate_output_n233, 0.002); end
  def test_intermediate_output_o233; assert_in_epsilon(183.21585711359162, worksheet.intermediate_output_o233, 0.002); end
  def test_intermediate_output_p233; assert_in_epsilon(150.48828949488154, worksheet.intermediate_output_p233, 0.002); end
  def test_intermediate_output_q233; assert_in_epsilon(112.09276405444129, worksheet.intermediate_output_q233, 0.002); end
  def test_intermediate_output_r233; assert_in_epsilon(87.52269569243232, worksheet.intermediate_output_r233, 0.002); end
  def test_intermediate_output_s233; assert_in_epsilon(59.05087717122782, worksheet.intermediate_output_s233, 0.002); end
  def test_intermediate_output_c234; assert_equal("X3", worksheet.intermediate_output_c234); end
  def test_intermediate_output_d234; assert_equal("Carbon capture", worksheet.intermediate_output_d234); end
  def test_intermediate_output_j234; assert_in_delta(0.0, (worksheet.intermediate_output_j234||0), 0.002); end
  def test_intermediate_output_k234; assert_in_delta(0.0, (worksheet.intermediate_output_k234||0), 0.002); end
  def test_intermediate_output_l234; assert_in_delta(0.0, (worksheet.intermediate_output_l234||0), 0.002); end
  def test_intermediate_output_m234; assert_in_delta(0.0, (worksheet.intermediate_output_m234||0), 0.002); end
  def test_intermediate_output_n234; assert_in_delta(0.0, (worksheet.intermediate_output_n234||0), 0.002); end
  def test_intermediate_output_o234; assert_in_delta(0.0, (worksheet.intermediate_output_o234||0), 0.002); end
  def test_intermediate_output_p234; assert_in_delta(0.0, (worksheet.intermediate_output_p234||0), 0.002); end
  def test_intermediate_output_q234; assert_in_delta(0.0, (worksheet.intermediate_output_q234||0), 0.002); end
  def test_intermediate_output_r234; assert_in_delta(0.0, (worksheet.intermediate_output_r234||0), 0.002); end
  def test_intermediate_output_s234; assert_in_delta(0.0, (worksheet.intermediate_output_s234||0), 0.002); end
  def test_intermediate_output_d235; assert_equal("Total", worksheet.intermediate_output_d235); end
  def test_intermediate_output_j235; assert_in_epsilon(374.94227695551126, worksheet.intermediate_output_j235, 0.002); end
  def test_intermediate_output_k235; assert_in_epsilon(302.4890099510233, worksheet.intermediate_output_k235, 0.002); end
  def test_intermediate_output_l235; assert_in_epsilon(338.8146858896861, worksheet.intermediate_output_l235, 0.002); end
  def test_intermediate_output_m235; assert_in_epsilon(280.03835904215146, worksheet.intermediate_output_m235, 0.002); end
  def test_intermediate_output_n235; assert_in_epsilon(227.86264582910587, worksheet.intermediate_output_n235, 0.002); end
  def test_intermediate_output_o235; assert_in_epsilon(183.21585711359162, worksheet.intermediate_output_o235, 0.002); end
  def test_intermediate_output_p235; assert_in_epsilon(150.48828949488154, worksheet.intermediate_output_p235, 0.002); end
  def test_intermediate_output_q235; assert_in_epsilon(112.09276405444129, worksheet.intermediate_output_q235, 0.002); end
  def test_intermediate_output_r235; assert_in_epsilon(87.52269569243232, worksheet.intermediate_output_r235, 0.002); end
  def test_intermediate_output_s235; assert_in_epsilon(59.05087717122782, worksheet.intermediate_output_s235, 0.002); end
  def test_intermediate_output_c237; assert_equal("Emissions intensity", worksheet.intermediate_output_c237); end
  def test_intermediate_output_e237; assert_equal("MtCO2e/TWh", worksheet.intermediate_output_e237); end
  def test_intermediate_output_j237; assert_in_delta(0.3998676445027694, worksheet.intermediate_output_j237, 0.002); end
  def test_intermediate_output_k237; assert_in_delta(0.33480021344749716, worksheet.intermediate_output_k237, 0.002); end
  def test_intermediate_output_l237; assert_in_delta(0.3900619226830272, worksheet.intermediate_output_l237, 0.002); end
  def test_intermediate_output_m237; assert_in_delta(0.3329120577970061, worksheet.intermediate_output_m237, 0.002); end
  def test_intermediate_output_n237; assert_in_delta(0.27351896947612464, worksheet.intermediate_output_n237, 0.002); end
  def test_intermediate_output_o237; assert_in_delta(0.22209655736743372, worksheet.intermediate_output_o237, 0.002); end
  def test_intermediate_output_p237; assert_in_delta(0.183954554984538, worksheet.intermediate_output_p237, 0.002); end
  def test_intermediate_output_q237; assert_in_delta(0.13725917244296654, worksheet.intermediate_output_q237, 0.002); end
  def test_intermediate_output_r237; assert_in_delta(0.10817928395723508, worksheet.intermediate_output_r237, 0.002); end
  def test_intermediate_output_s237; assert_in_delta(0.07368887304503965, worksheet.intermediate_output_s237, 0.002); end
  def test_intermediate_output_e238; assert_equal("gCO2e/KWh", worksheet.intermediate_output_e238); end
  def test_intermediate_output_j238; assert_in_epsilon(399.8676445027694, worksheet.intermediate_output_j238, 0.002); end
  def test_intermediate_output_k238; assert_in_epsilon(334.8002134474972, worksheet.intermediate_output_k238, 0.002); end
  def test_intermediate_output_l238; assert_in_epsilon(390.0619226830272, worksheet.intermediate_output_l238, 0.002); end
  def test_intermediate_output_m238; assert_in_epsilon(332.9120577970061, worksheet.intermediate_output_m238, 0.002); end
  def test_intermediate_output_n238; assert_in_epsilon(273.51896947612465, worksheet.intermediate_output_n238, 0.002); end
  def test_intermediate_output_o238; assert_in_epsilon(222.09655736743372, worksheet.intermediate_output_o238, 0.002); end
  def test_intermediate_output_p238; assert_in_epsilon(183.954554984538, worksheet.intermediate_output_p238, 0.002); end
  def test_intermediate_output_q238; assert_in_epsilon(137.25917244296653, worksheet.intermediate_output_q238, 0.002); end
  def test_intermediate_output_r238; assert_in_epsilon(108.17928395723509, worksheet.intermediate_output_r238, 0.002); end
  def test_intermediate_output_s238; assert_in_epsilon(73.68887304503966, worksheet.intermediate_output_s238, 0.002); end
  def test_intermediate_output_b241; assert_equal("Primary supply, format for web-based interface", worksheet.intermediate_output_b241); end
  def test_intermediate_output_c243; assert_equal("K.06", worksheet.intermediate_output_c243); end
  def test_intermediate_output_d243; assert_equal("Nuclear", worksheet.intermediate_output_d243); end
  def test_intermediate_output_f243; assert_in_epsilon(44.054, worksheet.intermediate_output_f243, 0.002); end
  def test_intermediate_output_g243; assert_in_epsilon(61.79, worksheet.intermediate_output_g243, 0.002); end
  def test_intermediate_output_h243; assert_in_epsilon(61.528, worksheet.intermediate_output_h243, 0.002); end
  def test_intermediate_output_j243; assert_in_epsilon(64.0074862005619, worksheet.intermediate_output_j243, 0.002); end
  def test_intermediate_output_k243; assert_in_epsilon(59.82922166023329, worksheet.intermediate_output_k243, 0.002); end
  def test_intermediate_output_l243; assert_in_epsilon(23.156219301758558, worksheet.intermediate_output_l243, 0.002); end
  def test_intermediate_output_m243; assert_in_epsilon(23.587296817394783, worksheet.intermediate_output_m243, 0.002); end
  def test_intermediate_output_n243; assert_in_epsilon(19.541105166138586, worksheet.intermediate_output_n243, 0.002); end
  def test_intermediate_output_o243; assert_in_epsilon(15.759497019988455, worksheet.intermediate_output_o243, 0.002); end
  def test_intermediate_output_p243; assert_in_epsilon(9.493385228330135, worksheet.intermediate_output_p243, 0.002); end
  def test_intermediate_output_q243; assert_in_epsilon(6.981777906689127, worksheet.intermediate_output_q243, 0.002); end
  def test_intermediate_output_r243; assert_in_epsilon(4.143635820209899, worksheet.intermediate_output_r243, 0.002); end
  def test_intermediate_output_s243; assert_in_epsilon(3.5550988527544516, worksheet.intermediate_output_s243, 0.002); end
  def test_intermediate_output_c244; assert_equal("R.01", worksheet.intermediate_output_c244); end
  def test_intermediate_output_d244; assert_equal("Solar", worksheet.intermediate_output_d244); end
  def test_intermediate_output_f244; assert_in_epsilon(1.124, worksheet.intermediate_output_f244, 0.002); end
  def test_intermediate_output_g244; assert_in_delta(0.561801307146473, worksheet.intermediate_output_g244, 0.002); end
  def test_intermediate_output_h244; assert_in_delta(0.395, worksheet.intermediate_output_h244, 0.002); end
  def test_intermediate_output_j244; assert_in_delta(0.504623103660877, worksheet.intermediate_output_j244, 0.002); end
  def test_intermediate_output_k244; assert_in_delta(0.7018015731363714, worksheet.intermediate_output_k244, 0.002); end
  def test_intermediate_output_l244; assert_in_epsilon(2.6263533026333183, worksheet.intermediate_output_l244, 0.002); end
  def test_intermediate_output_m244; assert_in_epsilon(4.697432151648752, worksheet.intermediate_output_m244, 0.002); end
  def test_intermediate_output_n244; assert_in_epsilon(6.643718742264187, worksheet.intermediate_output_n244, 0.002); end
  def test_intermediate_output_o244; assert_in_epsilon(8.59000533287962, worksheet.intermediate_output_o244, 0.002); end
  def test_intermediate_output_p244; assert_in_epsilon(10.669704699745054, worksheet.intermediate_output_p244, 0.002); end
  def test_intermediate_output_q244; assert_in_epsilon(12.749404066610486, worksheet.intermediate_output_q244, 0.002); end
  def test_intermediate_output_r244; assert_in_epsilon(14.829103433475922, worksheet.intermediate_output_r244, 0.002); end
  def test_intermediate_output_s244; assert_in_epsilon(16.908802800341356, worksheet.intermediate_output_s244, 0.002); end
  def test_intermediate_output_c245; assert_equal("R.02", worksheet.intermediate_output_c245); end
  def test_intermediate_output_d245; assert_equal("Wind", worksheet.intermediate_output_d245); end
  def test_intermediate_output_f245; assert_in_delta(0.0, (worksheet.intermediate_output_f245||0), 0.002); end
  def test_intermediate_output_g245; assert_in_delta(0.0, (worksheet.intermediate_output_g245||0), 0.002); end
  def test_intermediate_output_h245; assert_in_delta(0.0, (worksheet.intermediate_output_h245||0), 0.002); end
  def test_intermediate_output_j245; assert_in_delta(0.16356165090283747, worksheet.intermediate_output_j245, 0.002); end
  def test_intermediate_output_k245; assert_in_delta(0.3794328804815133, worksheet.intermediate_output_k245, 0.002); end
  def test_intermediate_output_l245; assert_in_delta(0.7620314703353396, worksheet.intermediate_output_l245, 0.002); end
  def test_intermediate_output_m245; assert_in_epsilon(1.216536887360275, worksheet.intermediate_output_m245, 0.002); end
  def test_intermediate_output_n245; assert_in_epsilon(2.632814961306964, worksheet.intermediate_output_n245, 0.002); end
  def test_intermediate_output_o245; assert_in_epsilon(4.047585554600172, worksheet.intermediate_output_o245, 0.002); end
  def test_intermediate_output_p245; assert_in_epsilon(5.015388134135855, worksheet.intermediate_output_p245, 0.002); end
  def test_intermediate_output_q245; assert_in_epsilon(7.337662080825451, worksheet.intermediate_output_q245, 0.002); end
  def test_intermediate_output_r245; assert_in_epsilon(6.948732072226997, worksheet.intermediate_output_r245, 0.002); end
  def test_intermediate_output_s245; assert_in_epsilon(7.914273430782458, worksheet.intermediate_output_s245, 0.002); end
  def test_intermediate_output_c246; assert_equal("R.05", worksheet.intermediate_output_c246); end
  def test_intermediate_output_d246; assert_equal("Hydro", worksheet.intermediate_output_d246); end
  def test_intermediate_output_f246; assert_in_epsilon(19.584, worksheet.intermediate_output_f246, 0.002); end
  def test_intermediate_output_g246; assert_in_epsilon(17.705, worksheet.intermediate_output_g246, 0.002); end
  def test_intermediate_output_h246; assert_in_epsilon(19.526, worksheet.intermediate_output_h246, 0.002); end
  def test_intermediate_output_j246; assert_in_epsilon(28.739518746297904, worksheet.intermediate_output_j246, 0.002); end
  def test_intermediate_output_k246; assert_in_epsilon(27.536705537998298, worksheet.intermediate_output_k246, 0.002); end
  def test_intermediate_output_l246; assert_in_epsilon(28.19078915079535, worksheet.intermediate_output_l246, 0.002); end
  def test_intermediate_output_m246; assert_in_epsilon(28.84487276359241, worksheet.intermediate_output_m246, 0.002); end
  def test_intermediate_output_n246; assert_in_epsilon(29.49895637638946, worksheet.intermediate_output_n246, 0.002); end
  def test_intermediate_output_o246; assert_in_epsilon(30.153039989186514, worksheet.intermediate_output_o246, 0.002); end
  def test_intermediate_output_p246; assert_in_epsilon(30.80712360198357, worksheet.intermediate_output_p246, 0.002); end
  def test_intermediate_output_q246; assert_in_epsilon(31.46120721478062, worksheet.intermediate_output_q246, 0.002); end
  def test_intermediate_output_r246; assert_in_epsilon(32.115290827577674, worksheet.intermediate_output_r246, 0.002); end
  def test_intermediate_output_s246; assert_in_epsilon(32.76937444037473, worksheet.intermediate_output_s246, 0.002); end
  def test_intermediate_output_c247; assert_equal("R.06", worksheet.intermediate_output_c247); end
  def test_intermediate_output_d247; assert_equal("Geothermal", worksheet.intermediate_output_d247); end
  def test_intermediate_output_f247; assert_in_delta(0.33399999999999996, worksheet.intermediate_output_f247, 0.002); end
  def test_intermediate_output_g247; assert_in_delta(0.8170000000000001, worksheet.intermediate_output_g247, 0.002); end
  def test_intermediate_output_h247; assert_in_delta(0.6859999999999999, worksheet.intermediate_output_h247, 0.002); end
  def test_intermediate_output_j247; assert_in_delta(0.27436147893379187, worksheet.intermediate_output_j247, 0.002); end
  def test_intermediate_output_k247; assert_in_delta(0.27963766122098016, worksheet.intermediate_output_k247, 0.002); end
  def test_intermediate_output_l247; assert_in_delta(0.3737495407484185, worksheet.intermediate_output_l247, 0.002); end
  def test_intermediate_output_m247; assert_in_delta(0.46958022355975915, worksheet.intermediate_output_m247, 0.002); end
  def test_intermediate_output_n247; assert_in_delta(0.831876238353809, worksheet.intermediate_output_n247, 0.002); end
  def test_intermediate_output_o247; assert_in_epsilon(1.1958910564317609, worksheet.intermediate_output_o247, 0.002); end
  def test_intermediate_output_p247; assert_in_epsilon(1.9412384215361793, worksheet.intermediate_output_p247, 0.002); end
  def test_intermediate_output_q247; assert_in_epsilon(2.686585786640597, worksheet.intermediate_output_q247, 0.002); end
  def test_intermediate_output_r247; assert_in_epsilon(3.4319331517450156, worksheet.intermediate_output_r247, 0.002); end
  def test_intermediate_output_s247; assert_in_epsilon(4.177280516849432, worksheet.intermediate_output_s247, 0.002); end
  def test_intermediate_output_c248; assert_equal("R.07", worksheet.intermediate_output_c248); end
  def test_intermediate_output_d248; assert_equal("Ocean power", worksheet.intermediate_output_d248); end
  def test_intermediate_output_f248; assert_in_delta(0.0, (worksheet.intermediate_output_f248||0), 0.002); end
  def test_intermediate_output_g248; assert_in_delta(0.0, (worksheet.intermediate_output_g248||0), 0.002); end
  def test_intermediate_output_h248; assert_in_delta(0.0, (worksheet.intermediate_output_h248||0), 0.002); end
  def test_intermediate_output_j248; assert_in_delta(0.0, (worksheet.intermediate_output_j248||0), 0.002); end
  def test_intermediate_output_k248; assert_in_delta(0.0, (worksheet.intermediate_output_k248||0), 0.002); end
  def test_intermediate_output_l248; assert_in_delta(0.0, (worksheet.intermediate_output_l248||0), 0.002); end
  def test_intermediate_output_m248; assert_in_delta(0.0, (worksheet.intermediate_output_m248||0), 0.002); end
  def test_intermediate_output_n248; assert_in_epsilon(1.1851095540694838, worksheet.intermediate_output_n248, 0.002); end
  def test_intermediate_output_o248; assert_in_epsilon(2.3702191081389676, worksheet.intermediate_output_o248, 0.002); end
  def test_intermediate_output_p248; assert_in_epsilon(4.143638377236977, worksheet.intermediate_output_p248, 0.002); end
  def test_intermediate_output_q248; assert_in_epsilon(5.917057646334994, worksheet.intermediate_output_q248, 0.002); end
  def test_intermediate_output_r248; assert_in_epsilon(7.690476915433007, worksheet.intermediate_output_r248, 0.002); end
  def test_intermediate_output_s248; assert_in_epsilon(9.463896184531029, worksheet.intermediate_output_s248, 0.002); end
  def test_intermediate_output_d249; assert_equal("Bioenergy", worksheet.intermediate_output_d249); end
  def test_intermediate_output_f249; assert_in_epsilon(8.893, worksheet.intermediate_output_f249, 0.002); end
  def test_intermediate_output_g249; assert_in_epsilon(10.280999999999999, worksheet.intermediate_output_g249, 0.002); end
  def test_intermediate_output_h249; assert_in_epsilon(11.104, worksheet.intermediate_output_h249, 0.002); end
  def test_intermediate_output_j249; assert_in_epsilon(6.549433709130697, worksheet.intermediate_output_j249, 0.002); end
  def test_intermediate_output_k249; assert_in_epsilon(7.056681000964719, worksheet.intermediate_output_k249, 0.002); end
  def test_intermediate_output_l249; assert_in_epsilon(15.333103246526319, worksheet.intermediate_output_l249, 0.002); end
  def test_intermediate_output_m249; assert_in_epsilon(21.30269678276905, worksheet.intermediate_output_m249, 0.002); end
  def test_intermediate_output_n249; assert_in_epsilon(24.79084933660702, worksheet.intermediate_output_n249, 0.002); end
  def test_intermediate_output_o249; assert_in_epsilon(26.610403379306785, worksheet.intermediate_output_o249, 0.002); end
  def test_intermediate_output_p249; assert_in_epsilon(28.400654616000665, worksheet.intermediate_output_p249, 0.002); end
  def test_intermediate_output_q249; assert_in_epsilon(27.49702900651738, worksheet.intermediate_output_q249, 0.002); end
  def test_intermediate_output_r249; assert_in_epsilon(27.24012535241646, worksheet.intermediate_output_r249, 0.002); end
  def test_intermediate_output_s249; assert_in_epsilon(24.080261518721674, worksheet.intermediate_output_s249, 0.002); end
  def test_intermediate_output_d250; assert_equal("Coal", worksheet.intermediate_output_d250); end
  def test_intermediate_output_f250; assert_in_epsilon(79.935, worksheet.intermediate_output_f250, 0.002); end
  def test_intermediate_output_g250; assert_in_epsilon(117.39099999999999, worksheet.intermediate_output_g250, 0.002); end
  def test_intermediate_output_h250; assert_in_epsilon(118.055, worksheet.intermediate_output_h250, 0.002); end
  def test_intermediate_output_j250; assert_in_epsilon(119.23907491195291, worksheet.intermediate_output_j250, 0.002); end
  def test_intermediate_output_k250; assert_in_epsilon(106.68765449560583, worksheet.intermediate_output_k250, 0.002); end
  def test_intermediate_output_l250; assert_in_epsilon(105.48506155380802, worksheet.intermediate_output_l250, 0.002); end
  def test_intermediate_output_m250; assert_in_epsilon(90.4853095823946, worksheet.intermediate_output_m250, 0.002); end
  def test_intermediate_output_n250; assert_in_epsilon(74.75532498794931, worksheet.intermediate_output_n250, 0.002); end
  def test_intermediate_output_o250; assert_in_epsilon(61.43465069214548, worksheet.intermediate_output_o250, 0.002); end
  def test_intermediate_output_p250; assert_in_epsilon(51.972909905437035, worksheet.intermediate_output_p250, 0.002); end
  def test_intermediate_output_q250; assert_in_epsilon(42.561906534738704, worksheet.intermediate_output_q250, 0.002); end
  def test_intermediate_output_r250; assert_in_epsilon(35.06809522202344, worksheet.intermediate_output_r250, 0.002); end
  def test_intermediate_output_s250; assert_in_epsilon(28.014634679005283, worksheet.intermediate_output_s250, 0.002); end
  def test_intermediate_output_d251; assert_equal("Oil", worksheet.intermediate_output_d251); end
  def test_intermediate_output_f251; assert_in_epsilon(279.24, worksheet.intermediate_output_f251, 0.002); end
  def test_intermediate_output_g251; assert_in_epsilon(276.655, worksheet.intermediate_output_g251, 0.002); end
  def test_intermediate_output_h251; assert_in_epsilon(242.30599999999998, worksheet.intermediate_output_h251, 0.002); end
  def test_intermediate_output_j251; assert_in_epsilon(228.29899026325324, worksheet.intermediate_output_j251, 0.002); end
  def test_intermediate_output_k251; assert_in_epsilon(205.4450297772961, worksheet.intermediate_output_k251, 0.002); end
  def test_intermediate_output_l251; assert_in_epsilon(191.58897070098206, worksheet.intermediate_output_l251, 0.002); end
  def test_intermediate_output_m251; assert_in_epsilon(175.13795976998912, worksheet.intermediate_output_m251, 0.002); end
  def test_intermediate_output_n251; assert_in_epsilon(157.70941404955056, worksheet.intermediate_output_n251, 0.002); end
  def test_intermediate_output_o251; assert_in_epsilon(141.39117391786493, worksheet.intermediate_output_o251, 0.002); end
  def test_intermediate_output_p251; assert_in_epsilon(126.62091828822791, worksheet.intermediate_output_p251, 0.002); end
  def test_intermediate_output_q251; assert_in_epsilon(112.64858021332824, worksheet.intermediate_output_q251, 0.002); end
  def test_intermediate_output_r251; assert_in_epsilon(102.237149912931, worksheet.intermediate_output_r251, 0.002); end
  def test_intermediate_output_s251; assert_in_epsilon(91.61339424736323, worksheet.intermediate_output_s251, 0.002); end
  def test_intermediate_output_d252; assert_equal("Gas", worksheet.intermediate_output_d252); end
  def test_intermediate_output_f252; assert_in_epsilon(48.376000000000005, worksheet.intermediate_output_f252, 0.002); end
  def test_intermediate_output_g252; assert_in_epsilon(78.818, worksheet.intermediate_output_g252, 0.002); end
  def test_intermediate_output_h252; assert_in_epsilon(94.84299999999999, worksheet.intermediate_output_h252, 0.002); end
  def test_intermediate_output_j252; assert_in_epsilon(91.95491288380958, worksheet.intermediate_output_j252, 0.002); end
  def test_intermediate_output_k252; assert_in_epsilon(85.2029959660818, worksheet.intermediate_output_k252, 0.002); end
  def test_intermediate_output_l252; assert_in_epsilon(88.07192072189741, worksheet.intermediate_output_l252, 0.002); end
  def test_intermediate_output_m252; assert_in_epsilon(79.46187856070975, worksheet.intermediate_output_m252, 0.002); end
  def test_intermediate_output_n252; assert_in_epsilon(74.64490679590078, worksheet.intermediate_output_n252, 0.002); end
  def test_intermediate_output_o252; assert_in_epsilon(69.43621297840016, worksheet.intermediate_output_o252, 0.002); end
  def test_intermediate_output_p252; assert_in_epsilon(64.71767435316116, worksheet.intermediate_output_p252, 0.002); end
  def test_intermediate_output_q252; assert_in_epsilon(58.08986774935832, worksheet.intermediate_output_q252, 0.002); end
  def test_intermediate_output_r252; assert_in_epsilon(53.486681059170664, worksheet.intermediate_output_r252, 0.002); end
  def test_intermediate_output_s252; assert_in_epsilon(47.61451880693228, worksheet.intermediate_output_s252, 0.002); end
  def test_intermediate_output_d253; assert_equal("Total Primary Supply", worksheet.intermediate_output_d253); end
  def test_intermediate_output_f253; assert_in_epsilon(481.54, worksheet.intermediate_output_f253, 0.002); end
  def test_intermediate_output_g253; assert_in_epsilon(564.0188013071463, worksheet.intermediate_output_g253, 0.002); end
  def test_intermediate_output_h253; assert_in_epsilon(548.443, worksheet.intermediate_output_h253, 0.002); end
  def test_intermediate_output_j253; assert_in_epsilon(539.7319629485038, worksheet.intermediate_output_j253, 0.002); end
  def test_intermediate_output_k253; assert_in_epsilon(493.11916055301896, worksheet.intermediate_output_k253, 0.002); end
  def test_intermediate_output_l253; assert_in_epsilon(455.5881989894848, worksheet.intermediate_output_l253, 0.002); end
  def test_intermediate_output_m253; assert_in_epsilon(425.2035635394185, worksheet.intermediate_output_m253, 0.002); end
  def test_intermediate_output_n253; assert_in_epsilon(392.23407620853015, worksheet.intermediate_output_n253, 0.002); end
  def test_intermediate_output_o253; assert_in_epsilon(360.98867902894284, worksheet.intermediate_output_o253, 0.002); end
  def test_intermediate_output_p253; assert_in_epsilon(333.78263562579457, worksheet.intermediate_output_p253, 0.002); end
  def test_intermediate_output_q253; assert_in_epsilon(307.93107820582395, worksheet.intermediate_output_q253, 0.002); end
  def test_intermediate_output_r253; assert_in_epsilon(287.1912237672101, worksheet.intermediate_output_r253, 0.002); end
  def test_intermediate_output_s253; assert_in_epsilon(266.11153547765593, worksheet.intermediate_output_s253, 0.002); end
  def test_intermediate_output_d254; assert_equal("Imported energy", worksheet.intermediate_output_d254); end
  def test_intermediate_output_f254; assert_in_epsilon(451.605, worksheet.intermediate_output_f254, 0.002); end
  def test_intermediate_output_g254; assert_in_epsilon(534.6539999999999, worksheet.intermediate_output_g254, 0.002); end
  def test_intermediate_output_h254; assert_in_epsilon(516.732, worksheet.intermediate_output_h254, 0.002); end
  def test_intermediate_output_j254; assert_in_epsilon(503.50046425957765, worksheet.intermediate_output_j254, 0.002); end
  def test_intermediate_output_k254; assert_in_epsilon(457.16490189921706, worksheet.intermediate_output_k254, 0.002); end
  def test_intermediate_output_l254; assert_in_epsilon(415.61901011941205, worksheet.intermediate_output_l254, 0.002); end
  def test_intermediate_output_m254; assert_in_epsilon(381.95887610769694, worksheet.intermediate_output_m254, 0.002); end
  def test_intermediate_output_n254; assert_in_epsilon(343.4253349305859, worksheet.intermediate_output_n254, 0.002); end
  def test_intermediate_output_o254; assert_in_epsilon(306.61567258214546, worksheet.intermediate_output_o254, 0.002); end
  def test_intermediate_output_p254; assert_in_epsilon(273.18927698559656, worksheet.intermediate_output_p254, 0.002); end
  def test_intermediate_output_q254; assert_in_epsilon(239.76289600507147, worksheet.intermediate_output_q254, 0.002); end
  def test_intermediate_output_r254; assert_in_epsilon(214.15942196119113, worksheet.intermediate_output_r254, 0.002); end
  def test_intermediate_output_s254; assert_in_epsilon(186.8616426992166, worksheet.intermediate_output_s254, 0.002); end
  def test_intermediate_output_r255; assert_equal("% imported", worksheet.intermediate_output_r255); end
  def test_intermediate_output_s255; assert_in_delta(0.7021929446380818, worksheet.intermediate_output_s255, 0.002); end
  def test_intermediate_output_d256; assert_equal("Primary demand", worksheet.intermediate_output_d256); end
  def test_intermediate_output_f256; assert_in_epsilon(447.39119245282046, worksheet.intermediate_output_f256, 0.002); end
  def test_intermediate_output_g256; assert_in_epsilon(17.705, worksheet.intermediate_output_g256, 0.002); end
  def test_intermediate_output_h256; assert_in_epsilon(19.526, worksheet.intermediate_output_h256, 0.002); end
  def test_intermediate_output_j256; assert_in_epsilon(515.0004220254175, worksheet.intermediate_output_j256, 0.002); end
  def test_intermediate_output_k256; assert_in_epsilon(467.77543873826676, worksheet.intermediate_output_k256, 0.002); end
  def test_intermediate_output_l256; assert_in_epsilon(425.3498098242481, worksheet.intermediate_output_l256, 0.002); end
  def test_intermediate_output_m256; assert_in_epsilon(391.5322504245636, worksheet.intermediate_output_m256, 0.002); end
  def test_intermediate_output_n256; assert_in_epsilon(354.7539446794853, worksheet.intermediate_output_n256, 0.002); end
  def test_intermediate_output_o256; assert_in_epsilon(320.12711702090644, worksheet.intermediate_output_o256, 0.002); end
  def test_intermediate_output_p256; assert_in_epsilon(291.1093584717261, worksheet.intermediate_output_p256, 0.002); end
  def test_intermediate_output_q256; assert_in_epsilon(264.6661933845093, worksheet.intermediate_output_q256, 0.002); end
  def test_intermediate_output_r256; assert_in_epsilon(243.12729701370785, worksheet.intermediate_output_r256, 0.002); end
  def test_intermediate_output_s256; assert_in_epsilon(221.51832771023953, worksheet.intermediate_output_s256, 0.002); end
  def test_intermediate_output_b259; assert_equal("Electricity, format for web-based interface", worksheet.intermediate_output_b259); end
  def test_intermediate_output_c261; assert_equal("V.01", worksheet.intermediate_output_c261); end
  def test_intermediate_output_j261; assert_in_epsilon(2005.0, worksheet.intermediate_output_j261, 0.002); end
  def test_intermediate_output_k261; assert_in_epsilon(2010.0, worksheet.intermediate_output_k261, 0.002); end
  def test_intermediate_output_l261; assert_in_epsilon(2015.0, worksheet.intermediate_output_l261, 0.002); end
  def test_intermediate_output_m261; assert_in_epsilon(2020.0, worksheet.intermediate_output_m261, 0.002); end
  def test_intermediate_output_n261; assert_in_epsilon(2025.0, worksheet.intermediate_output_n261, 0.002); end
  def test_intermediate_output_o261; assert_in_epsilon(2030.0, worksheet.intermediate_output_o261, 0.002); end
  def test_intermediate_output_p261; assert_in_epsilon(2035.0, worksheet.intermediate_output_p261, 0.002); end
  def test_intermediate_output_q261; assert_in_epsilon(2040.0, worksheet.intermediate_output_q261, 0.002); end
  def test_intermediate_output_r261; assert_in_epsilon(2045.0, worksheet.intermediate_output_r261, 0.002); end
  def test_intermediate_output_s261; assert_in_epsilon(2050.0, worksheet.intermediate_output_s261, 0.002); end
  def test_intermediate_output_c262; assert_equal("VII.a", worksheet.intermediate_output_c262); end
  def test_intermediate_output_d262; assert_equal("Manufacturing and Construction", worksheet.intermediate_output_d262); end
  def test_intermediate_output_j262; assert_in_epsilon(23.436264625698154, worksheet.intermediate_output_j262, 0.002); end
  def test_intermediate_output_k262; assert_in_epsilon(22.576604642274926, worksheet.intermediate_output_k262, 0.002); end
  def test_intermediate_output_l262; assert_in_epsilon(22.15716755826234, worksheet.intermediate_output_l262, 0.002); end
  def test_intermediate_output_m262; assert_in_epsilon(21.760375435522914, worksheet.intermediate_output_m262, 0.002); end
  def test_intermediate_output_n262; assert_in_epsilon(21.289853678003144, worksheet.intermediate_output_n262, 0.002); end
  def test_intermediate_output_o262; assert_in_epsilon(20.875183611756345, worksheet.intermediate_output_o262, 0.002); end
  def test_intermediate_output_p262; assert_in_epsilon(20.843495163020318, worksheet.intermediate_output_p262, 0.002); end
  def test_intermediate_output_q262; assert_in_epsilon(20.766224279263067, worksheet.intermediate_output_q262, 0.002); end
  def test_intermediate_output_r262; assert_in_epsilon(20.702847852661613, worksheet.intermediate_output_r262, 0.002); end
  def test_intermediate_output_s262; assert_in_epsilon(20.617848509621766, worksheet.intermediate_output_s262, 0.002); end
  def test_intermediate_output_c263; assert_equal("VII.b", worksheet.intermediate_output_c263); end
  def test_intermediate_output_d263; assert_equal("Agriculture, Forestry and Fisheries", worksheet.intermediate_output_d263); end
  def test_intermediate_output_j263; assert_in_delta(0.12987136126223175, worksheet.intermediate_output_j263, 0.002); end
  def test_intermediate_output_k263; assert_in_delta(0.0778008285550143, worksheet.intermediate_output_k263, 0.002); end
  def test_intermediate_output_l263; assert_in_delta(0.06492686338388085, worksheet.intermediate_output_l263, 0.002); end
  def test_intermediate_output_m263; assert_in_delta(0.052859477143548224, worksheet.intermediate_output_m263, 0.002); end
  def test_intermediate_output_n263; assert_in_delta(0.048959379377542786, worksheet.intermediate_output_n263, 0.002); end
  def test_intermediate_output_o263; assert_in_delta(0.044944035525673054, worksheet.intermediate_output_o263, 0.002); end
  def test_intermediate_output_p263; assert_in_delta(0.04154076804897993, worksheet.intermediate_output_p263, 0.002); end
  def test_intermediate_output_q263; assert_in_delta(0.03981093956692327, worksheet.intermediate_output_q263, 0.002); end
  def test_intermediate_output_r263; assert_in_delta(0.03796041067339228, worksheet.intermediate_output_r263, 0.002); end
  def test_intermediate_output_s263; assert_in_delta(0.03607557324993192, worksheet.intermediate_output_s263, 0.002); end
  def test_intermediate_output_c264; assert_equal("V.a.1", worksheet.intermediate_output_c264); end
  def test_intermediate_output_d264; assert_equal("Residential Space Heating and Cooling", worksheet.intermediate_output_d264); end
  def test_intermediate_output_j264; assert_in_epsilon(2.8365014877930363, worksheet.intermediate_output_j264, 0.002); end
  def test_intermediate_output_k264; assert_in_epsilon(2.09514744502624, worksheet.intermediate_output_k264, 0.002); end
  def test_intermediate_output_l264; assert_in_epsilon(1.9344492237914706, worksheet.intermediate_output_l264, 0.002); end
  def test_intermediate_output_m264; assert_in_epsilon(2.1826361778689134, worksheet.intermediate_output_m264, 0.002); end
  def test_intermediate_output_n264; assert_in_epsilon(2.3537952464774587, worksheet.intermediate_output_n264, 0.002); end
  def test_intermediate_output_o264; assert_in_epsilon(2.4522121465253113, worksheet.intermediate_output_o264, 0.002); end
  def test_intermediate_output_p264; assert_in_epsilon(2.566219817521481, worksheet.intermediate_output_p264, 0.002); end
  def test_intermediate_output_q264; assert_in_epsilon(2.649312140126689, worksheet.intermediate_output_q264, 0.002); end
  def test_intermediate_output_r264; assert_in_epsilon(2.6920663187026337, worksheet.intermediate_output_r264, 0.002); end
  def test_intermediate_output_s264; assert_in_epsilon(2.714895579787615, worksheet.intermediate_output_s264, 0.002); end
  def test_intermediate_output_c265; assert_equal("V.a.2", worksheet.intermediate_output_c265); end
  def test_intermediate_output_d265; assert_equal("Residential Hot Water Supply", worksheet.intermediate_output_d265); end
  def test_intermediate_output_j265; assert_in_epsilon(1.9407406361238604, worksheet.intermediate_output_j265, 0.002); end
  def test_intermediate_output_k265; assert_in_epsilon(1.6890954107634717, worksheet.intermediate_output_k265, 0.002); end
  def test_intermediate_output_l265; assert_in_epsilon(2.0630721361528743, worksheet.intermediate_output_l265, 0.002); end
  def test_intermediate_output_m265; assert_in_epsilon(2.4835310701740108, worksheet.intermediate_output_m265, 0.002); end
  def test_intermediate_output_n265; assert_in_epsilon(2.77907664856719, worksheet.intermediate_output_n265, 0.002); end
  def test_intermediate_output_o265; assert_in_epsilon(2.950115755470057, worksheet.intermediate_output_o265, 0.002); end
  def test_intermediate_output_p265; assert_in_epsilon(3.013783214149142, worksheet.intermediate_output_p265, 0.002); end
  def test_intermediate_output_q265; assert_in_epsilon(3.003871609942532, worksheet.intermediate_output_q265, 0.002); end
  def test_intermediate_output_r265; assert_in_epsilon(2.929040519228625, worksheet.intermediate_output_r265, 0.002); end
  def test_intermediate_output_s265; assert_in_epsilon(2.842794380660058, worksheet.intermediate_output_s265, 0.002); end
  def test_intermediate_output_c266; assert_equal("V.b", worksheet.intermediate_output_c266); end
  def test_intermediate_output_d266; assert_equal("Commercial Heating, Cooling and Hot Water Supply", worksheet.intermediate_output_d266); end
  def test_intermediate_output_j266; assert_in_epsilon(2.3225941479440086, worksheet.intermediate_output_j266, 0.002); end
  def test_intermediate_output_k266; assert_in_epsilon(1.9599725660784078, worksheet.intermediate_output_k266, 0.002); end
  def test_intermediate_output_l266; assert_in_epsilon(1.9543934980693738, worksheet.intermediate_output_l266, 0.002); end
  def test_intermediate_output_m266; assert_in_epsilon(1.909581291700118, worksheet.intermediate_output_m266, 0.002); end
  def test_intermediate_output_n266; assert_in_epsilon(1.9015123397205147, worksheet.intermediate_output_n266, 0.002); end
  def test_intermediate_output_o266; assert_in_epsilon(1.8413678382700964, worksheet.intermediate_output_o266, 0.002); end
  def test_intermediate_output_p266; assert_in_epsilon(1.8163865923841924, worksheet.intermediate_output_p266, 0.002); end
  def test_intermediate_output_q266; assert_in_epsilon(1.80615151472407, worksheet.intermediate_output_q266, 0.002); end
  def test_intermediate_output_r266; assert_in_epsilon(1.8766182402572988, worksheet.intermediate_output_r266, 0.002); end
  def test_intermediate_output_s266; assert_in_epsilon(1.8003305972749617, worksheet.intermediate_output_s266, 0.002); end
  def test_intermediate_output_c267; assert_equal("VI.a", worksheet.intermediate_output_c267); end
  def test_intermediate_output_d267; assert_equal("Residential Cooking, Lighting and Appliances", worksheet.intermediate_output_d267); end
  def test_intermediate_output_j267; assert_in_epsilon(19.6074204130013, worksheet.intermediate_output_j267, 0.002); end
  def test_intermediate_output_k267; assert_in_epsilon(18.502394680934582, worksheet.intermediate_output_k267, 0.002); end
  def test_intermediate_output_l267; assert_in_epsilon(16.135225890730926, worksheet.intermediate_output_l267, 0.002); end
  def test_intermediate_output_m267; assert_in_epsilon(14.052209639992833, worksheet.intermediate_output_m267, 0.002); end
  def test_intermediate_output_n267; assert_in_epsilon(12.833824709204304, worksheet.intermediate_output_n267, 0.002); end
  def test_intermediate_output_o267; assert_in_epsilon(11.736724228902368, worksheet.intermediate_output_o267, 0.002); end
  def test_intermediate_output_p267; assert_in_epsilon(10.90945987322212, worksheet.intermediate_output_p267, 0.002); end
  def test_intermediate_output_q267; assert_in_epsilon(10.255734874213726, worksheet.intermediate_output_q267, 0.002); end
  def test_intermediate_output_r267; assert_in_epsilon(9.673542376261782, worksheet.intermediate_output_r267, 0.002); end
  def test_intermediate_output_s267; assert_in_epsilon(9.127299527021096, worksheet.intermediate_output_s267, 0.002); end
  def test_intermediate_output_c268; assert_equal("VI.b", worksheet.intermediate_output_c268); end
  def test_intermediate_output_d268; assert_equal("Commercial Cooking, Lighting and Appliances", worksheet.intermediate_output_d268); end
  def test_intermediate_output_j268; assert_in_epsilon(27.742712469926587, worksheet.intermediate_output_j268, 0.002); end
  def test_intermediate_output_k268; assert_in_epsilon(28.157565968504976, worksheet.intermediate_output_k268, 0.002); end
  def test_intermediate_output_l268; assert_in_epsilon(27.594343423268416, worksheet.intermediate_output_l268, 0.002); end
  def test_intermediate_output_m268; assert_in_epsilon(26.8909121615386, worksheet.intermediate_output_m268, 0.002); end
  def test_intermediate_output_n268; assert_in_epsilon(26.709953758452208, worksheet.intermediate_output_n268, 0.002); end
  def test_intermediate_output_o268; assert_in_epsilon(26.652246581648033, worksheet.intermediate_output_o268, 0.002); end
  def test_intermediate_output_p268; assert_in_epsilon(26.19743992935231, worksheet.intermediate_output_p268, 0.002); end
  def test_intermediate_output_q268; assert_in_epsilon(26.201891334142342, worksheet.intermediate_output_q268, 0.002); end
  def test_intermediate_output_r268; assert_in_epsilon(26.30032280045698, worksheet.intermediate_output_r268, 0.002); end
  def test_intermediate_output_s268; assert_in_epsilon(26.418180942274965, worksheet.intermediate_output_s268, 0.002); end
  def test_intermediate_output_c269; assert_equal("IV.a", worksheet.intermediate_output_c269); end
  def test_intermediate_output_d269; assert_equal("Passenger Transport", worksheet.intermediate_output_d269); end
  def test_intermediate_output_j269; assert_in_epsilon(2.1063117328311636, worksheet.intermediate_output_j269, 0.002); end
  def test_intermediate_output_k269; assert_in_epsilon(2.139785835914909, worksheet.intermediate_output_k269, 0.002); end
  def test_intermediate_output_l269; assert_in_epsilon(2.2084321081407228, worksheet.intermediate_output_l269, 0.002); end
  def test_intermediate_output_m269; assert_in_epsilon(2.2104250605413363, worksheet.intermediate_output_m269, 0.002); end
  def test_intermediate_output_n269; assert_in_epsilon(2.4624517188353585, worksheet.intermediate_output_n269, 0.002); end
  def test_intermediate_output_o269; assert_in_epsilon(2.6186510076384173, worksheet.intermediate_output_o269, 0.002); end
  def test_intermediate_output_p269; assert_in_epsilon(2.6993490226524752, worksheet.intermediate_output_p269, 0.002); end
  def test_intermediate_output_q269; assert_in_epsilon(2.70860985340521, worksheet.intermediate_output_q269, 0.002); end
  def test_intermediate_output_r269; assert_in_epsilon(2.5006410986495657, worksheet.intermediate_output_r269, 0.002); end
  def test_intermediate_output_s269; assert_in_epsilon(2.421551051753479, worksheet.intermediate_output_s269, 0.002); end
  def test_intermediate_output_c270; assert_equal("IV.b", worksheet.intermediate_output_c270); end
  def test_intermediate_output_d270; assert_equal("Freight Transport", worksheet.intermediate_output_d270); end
  def test_intermediate_output_j270; assert_in_delta(0.5008502203260141, worksheet.intermediate_output_j270, 0.002); end
  def test_intermediate_output_k270; assert_in_delta(0.4871910085327649, worksheet.intermediate_output_k270, 0.002); end
  def test_intermediate_output_l270; assert_in_delta(0.5377007732833388, worksheet.intermediate_output_l270, 0.002); end
  def test_intermediate_output_m270; assert_in_delta(0.5845126852138738, worksheet.intermediate_output_m270, 0.002); end
  def test_intermediate_output_n270; assert_in_delta(0.6343909416780755, worksheet.intermediate_output_n270, 0.002); end
  def test_intermediate_output_o270; assert_in_delta(0.6876048461103659, worksheet.intermediate_output_o270, 0.002); end
  def test_intermediate_output_p270; assert_in_delta(0.7128821488577857, worksheet.intermediate_output_p270, 0.002); end
  def test_intermediate_output_q270; assert_in_delta(0.7759635952591597, worksheet.intermediate_output_q270, 0.002); end
  def test_intermediate_output_r270; assert_in_delta(0.8413313900139164, worksheet.intermediate_output_r270, 0.002); end
  def test_intermediate_output_s270; assert_in_delta(0.9087420760933314, worksheet.intermediate_output_s270, 0.002); end
  def test_intermediate_output_c271; assert_equal("X.a", worksheet.intermediate_output_c271); end
  def test_intermediate_output_d271; assert_equal("Hydrogen Production for Transport", worksheet.intermediate_output_d271); end
  def test_intermediate_output_j271; assert_in_delta(0.0, (worksheet.intermediate_output_j271||0), 0.002); end
  def test_intermediate_output_k271; assert_in_delta(0.0, (worksheet.intermediate_output_k271||0), 0.002); end
  def test_intermediate_output_l271; assert_in_delta(0.03723127257127633, worksheet.intermediate_output_l271, 0.002); end
  def test_intermediate_output_m271; assert_in_delta(0.20069495386580363, worksheet.intermediate_output_m271, 0.002); end
  def test_intermediate_output_n271; assert_in_delta(0.6175696981368759, worksheet.intermediate_output_n271, 0.002); end
  def test_intermediate_output_o271; assert_in_epsilon(1.0725295520717837, worksheet.intermediate_output_o271, 0.002); end
  def test_intermediate_output_p271; assert_in_epsilon(1.540867722846687, worksheet.intermediate_output_p271, 0.002); end
  def test_intermediate_output_q271; assert_in_epsilon(2.011614050459971, worksheet.intermediate_output_q271, 0.002); end
  def test_intermediate_output_r271; assert_in_epsilon(2.0115529408449127, worksheet.intermediate_output_r271, 0.002); end
  def test_intermediate_output_s271; assert_in_epsilon(2.0163277035451155, worksheet.intermediate_output_s271, 0.002); end
  def test_intermediate_output_d272; assert_equal("Total", worksheet.intermediate_output_d272); end
  def test_intermediate_output_j272; assert_in_epsilon(80.62326709490635, worksheet.intermediate_output_j272, 0.002); end
  def test_intermediate_output_k272; assert_in_epsilon(77.68555838658527, worksheet.intermediate_output_k272, 0.002); end
  def test_intermediate_output_l272; assert_in_epsilon(74.68694274765461, worksheet.intermediate_output_l272, 0.002); end
  def test_intermediate_output_m272; assert_in_epsilon(72.32773795356196, worksheet.intermediate_output_m272, 0.002); end
  def test_intermediate_output_n272; assert_in_epsilon(71.63138811845268, worksheet.intermediate_output_n272, 0.002); end
  def test_intermediate_output_o272; assert_in_epsilon(70.93157960391845, worksheet.intermediate_output_o272, 0.002); end
  def test_intermediate_output_p272; assert_in_epsilon(70.34142425205549, worksheet.intermediate_output_p272, 0.002); end
  def test_intermediate_output_q272; assert_in_epsilon(70.21918419110368, worksheet.intermediate_output_q272, 0.002); end
  def test_intermediate_output_r272; assert_in_epsilon(69.56592394775072, worksheet.intermediate_output_r272, 0.002); end
  def test_intermediate_output_s272; assert_in_epsilon(68.90404594128232, worksheet.intermediate_output_s272, 0.002); end
  def test_intermediate_output_d274; assert_equal("Transport", worksheet.intermediate_output_d274); end
  def test_intermediate_output_j274; assert_in_epsilon(2.6071619531571777, worksheet.intermediate_output_j274, 0.002); end
  def test_intermediate_output_k274; assert_in_epsilon(2.626976844447674, worksheet.intermediate_output_k274, 0.002); end
  def test_intermediate_output_l274; assert_in_epsilon(2.783364153995338, worksheet.intermediate_output_l274, 0.002); end
  def test_intermediate_output_m274; assert_in_epsilon(2.9956326996210136, worksheet.intermediate_output_m274, 0.002); end
  def test_intermediate_output_n274; assert_in_epsilon(3.7144123586503097, worksheet.intermediate_output_n274, 0.002); end
  def test_intermediate_output_o274; assert_in_epsilon(4.378785405820567, worksheet.intermediate_output_o274, 0.002); end
  def test_intermediate_output_p274; assert_in_epsilon(4.953098894356948, worksheet.intermediate_output_p274, 0.002); end
  def test_intermediate_output_q274; assert_in_epsilon(5.496187499124341, worksheet.intermediate_output_q274, 0.002); end
  def test_intermediate_output_r274; assert_in_epsilon(5.3535254295083945, worksheet.intermediate_output_r274, 0.002); end
  def test_intermediate_output_s274; assert_in_epsilon(5.346620831391926, worksheet.intermediate_output_s274, 0.002); end
  def test_intermediate_output_d275; assert_equal("Industry", worksheet.intermediate_output_d275); end
  def test_intermediate_output_j275; assert_in_epsilon(23.566135986960386, worksheet.intermediate_output_j275, 0.002); end
  def test_intermediate_output_k275; assert_in_epsilon(22.65440547082994, worksheet.intermediate_output_k275, 0.002); end
  def test_intermediate_output_l275; assert_in_epsilon(22.222094421646222, worksheet.intermediate_output_l275, 0.002); end
  def test_intermediate_output_m275; assert_in_epsilon(21.813234912666463, worksheet.intermediate_output_m275, 0.002); end
  def test_intermediate_output_n275; assert_in_epsilon(21.338813057380687, worksheet.intermediate_output_n275, 0.002); end
  def test_intermediate_output_o275; assert_in_epsilon(20.92012764728202, worksheet.intermediate_output_o275, 0.002); end
  def test_intermediate_output_p275; assert_in_epsilon(20.885035931069297, worksheet.intermediate_output_p275, 0.002); end
  def test_intermediate_output_q275; assert_in_epsilon(20.80603521882999, worksheet.intermediate_output_q275, 0.002); end
  def test_intermediate_output_r275; assert_in_epsilon(20.740808263335005, worksheet.intermediate_output_r275, 0.002); end
  def test_intermediate_output_s275; assert_in_epsilon(20.653924082871697, worksheet.intermediate_output_s275, 0.002); end
  def test_intermediate_output_d276; assert_equal("Residential", worksheet.intermediate_output_d276); end
  def test_intermediate_output_j276; assert_in_epsilon(24.384662536918196, worksheet.intermediate_output_j276, 0.002); end
  def test_intermediate_output_k276; assert_in_epsilon(22.286637536724292, worksheet.intermediate_output_k276, 0.002); end
  def test_intermediate_output_l276; assert_in_epsilon(20.13274725067527, worksheet.intermediate_output_l276, 0.002); end
  def test_intermediate_output_m276; assert_in_epsilon(18.718376888035756, worksheet.intermediate_output_m276, 0.002); end
  def test_intermediate_output_n276; assert_in_epsilon(17.966696604248952, worksheet.intermediate_output_n276, 0.002); end
  def test_intermediate_output_o276; assert_in_epsilon(17.13905213089774, worksheet.intermediate_output_o276, 0.002); end
  def test_intermediate_output_p276; assert_in_epsilon(16.489462904892743, worksheet.intermediate_output_p276, 0.002); end
  def test_intermediate_output_q276; assert_in_epsilon(15.908918624282947, worksheet.intermediate_output_q276, 0.002); end
  def test_intermediate_output_r276; assert_in_epsilon(15.29464921419304, worksheet.intermediate_output_r276, 0.002); end
  def test_intermediate_output_s276; assert_in_epsilon(14.68498948746877, worksheet.intermediate_output_s276, 0.002); end
  def test_intermediate_output_d277; assert_equal("Commercial", worksheet.intermediate_output_d277); end
  def test_intermediate_output_j277; assert_in_epsilon(30.065306617870597, worksheet.intermediate_output_j277, 0.002); end
  def test_intermediate_output_k277; assert_in_epsilon(30.11753853458338, worksheet.intermediate_output_k277, 0.002); end
  def test_intermediate_output_l277; assert_in_epsilon(29.54873692133779, worksheet.intermediate_output_l277, 0.002); end
  def test_intermediate_output_m277; assert_in_epsilon(28.80049345323872, worksheet.intermediate_output_m277, 0.002); end
  def test_intermediate_output_n277; assert_in_epsilon(28.611466098172723, worksheet.intermediate_output_n277, 0.002); end
  def test_intermediate_output_o277; assert_in_epsilon(28.493614419918128, worksheet.intermediate_output_o277, 0.002); end
  def test_intermediate_output_p277; assert_in_epsilon(28.0138265217365, worksheet.intermediate_output_p277, 0.002); end
  def test_intermediate_output_q277; assert_in_epsilon(28.008042848866413, worksheet.intermediate_output_q277, 0.002); end
  def test_intermediate_output_r277; assert_in_epsilon(28.176941040714276, worksheet.intermediate_output_r277, 0.002); end
  def test_intermediate_output_s277; assert_in_epsilon(28.218511539549926, worksheet.intermediate_output_s277, 0.002); end
  def test_intermediate_output_d278; assert_equal("Total", worksheet.intermediate_output_d278); end
  def test_intermediate_output_j278; assert_in_epsilon(80.62326709490637, worksheet.intermediate_output_j278, 0.002); end
  def test_intermediate_output_k278; assert_in_epsilon(77.68555838658529, worksheet.intermediate_output_k278, 0.002); end
  def test_intermediate_output_l278; assert_in_epsilon(74.68694274765463, worksheet.intermediate_output_l278, 0.002); end
  def test_intermediate_output_m278; assert_in_epsilon(72.32773795356195, worksheet.intermediate_output_m278, 0.002); end
  def test_intermediate_output_n278; assert_in_epsilon(71.63138811845268, worksheet.intermediate_output_n278, 0.002); end
  def test_intermediate_output_o278; assert_in_epsilon(70.93157960391845, worksheet.intermediate_output_o278, 0.002); end
  def test_intermediate_output_p278; assert_in_epsilon(70.34142425205549, worksheet.intermediate_output_p278, 0.002); end
  def test_intermediate_output_q278; assert_in_epsilon(70.2191841911037, worksheet.intermediate_output_q278, 0.002); end
  def test_intermediate_output_r278; assert_in_epsilon(69.56592394775072, worksheet.intermediate_output_r278, 0.002); end
  def test_intermediate_output_s278; assert_in_epsilon(68.90404594128232, worksheet.intermediate_output_s278, 0.002); end
end
