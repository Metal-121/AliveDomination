// My faction config
/*
B_SwedenArmy_WDL_typeMappings = [] call ALiVE_fnc_hashCreate;

B_SwedenArmy_WDL_factionCustomGroups = [] call ALiVE_fnc_hashCreate;
[B_SwedenArmy_WDL_factionCustomGroups,"Infantry", ["b_swedenarmy_infantry_infantry_section_wdl","b_swedenarmy_infantry_infantry_group_wdl","b_swedenarmy_infantry_infantry_section_at_wdl","b_swedenarmy_infantry_infantry_section_support_wdl","b_swedenarmy_infantry_infantry_section_engineers_wdl","b_swedenarmy_infantry_infantry_section_eod_wdl","b_swedenarmy_infantry_infantry_section_sentry_wdl","b_swedenarmy_infantry_infantry_section_recon_wdl","b_swedenarmy_infantry_infantry_section_aa_wdl","b_swedenarmy_infantry_infantry_recon_group_wdl","b_swedenarmy_infantry_recon_scouts_wdl","b_swedenarmy_infantry_assault_amfibie_section_wdl","b_swedenarmy_infantry_assault_amfibie_group_wdl"]] call ALiVE_fnc_hashSet;
[B_SwedenArmy_WDL_factionCustomGroups,"SpecOps", ["b_swedenarmy_specops_recon_group_wdl","b_swedenarmy_specops_recon_sentry_section_wdl","b_swedenarmy_specops_recon_scouts_wdl","b_swedenarmy_specops_weapons_section_wdl","b_swedenarmy_specops_sabotage_section_wdl","b_swedenarmy_specops_recon_eod_wdl","b_swedenarmy_specops_recon_support_section_wdl","b_swedenarmy_specops_attack_diving_team_wdl","b_bswedenarmywdl_specops_attack_diving_team_suface"]] call ALiVE_fnc_hashSet;
[B_SwedenArmy_WDL_factionCustomGroups,"Motorized", ["b_swedenarmy_motorized_weapons_section_wdl","b_swedenarmy_motorized_fire_section_wdl","b_swedenarmy_motorized_infantry_group_wdl","b_swedenarmy_motorized_recon_engineer_wdl","b_swedenarmy_motorized_combat_medic_wdl","b_swedenarmy_motorized_recon_sentry_wdl"]] call ALiVE_fnc_hashSet;
[B_SwedenArmy_WDL_factionCustomGroups,"Motorized_MTP", ["b_bswedenarmywdl_motorized_mtp_sabotage_section","b_bswedenarmywdl_motorized_mtp_uav_operators"]] call ALiVE_fnc_hashSet;
[B_SwedenArmy_WDL_factionCustomGroups,"Mechanized", ["b_swedenarmy_mechanized_mechanized_at_section_wdl","b_swedenarmy_mechanized_mechanized_recon_section_wdl","b_swedenarmy_mechanized_lkv90_section_wdl"]] call ALiVE_fnc_hashSet;
[B_SwedenArmy_WDL_factionCustomGroups,"Armored", ["b_swedenarmy_armored_strf90_group_wdl","b_swedenarmy_armored_mbt_group_wdl","b_swedenarmy_armored_mbt_section_wdl","b_swedenarmy_armored_strf90_section_wdl"]] call ALiVE_fnc_hashSet;
[B_SwedenArmy_WDL_factionCustomGroups,"Artillery", ["b_swedenarmy_artillery_grkbv_amos_group_wdl","b_swedenarmy_artillery_m4_scorcher_group_wdl","b_swedenarmy_artillery_grk_m84_group_wdl"]] call ALiVE_fnc_hashSet;
[B_SwedenArmy_WDL_factionCustomGroups,"Naval", ["b_swedenarmy_naval_strb90_section_wdl","b_swedenarmy_naval_strb90_rws_section_wdl"]] call ALiVE_fnc_hashSet;
[B_SwedenArmy_WDL_factionCustomGroups,"Air", ["b_bswedenarmywdl_air_airborne_infantry_group","b_bswedenarmywdl_air_airborne_recon_group","b_bswedenarmywdl_air_airborne_fire_team"]] call ALiVE_fnc_hashSet;
[B_SwedenArmy_WDL_factionCustomGroups,"Support", ["b_swedenarmy_motorized_mtp_support_section_at_wdl","b_swedenarmy_support_support_section_aa_wdl"]] call ALiVE_fnc_hashSet;

B_SwedenArmy_WDL_mappings = [] call ALiVE_fnc_hashCreate;
[B_SwedenArmy_WDL_mappings,"Side", "WEST"] call ALiVE_fnc_hashSet;
[B_SwedenArmy_WDL_mappings,"GroupSideName", "WEST"] call ALiVE_fnc_hashSet;
[B_SwedenArmy_WDL_mappings,"FactionName", "B_SwedenArmy_WDL"] call ALiVE_fnc_hashSet;
[B_SwedenArmy_WDL_mappings,"GroupFactionName", "B_SwedenArmy_WDL"] call ALiVE_fnc_hashSet;
[B_SwedenArmy_WDL_mappings,"GroupFactionTypes", B_SwedenArmy_WDL_typeMappings] call ALiVE_fnc_hashSet;
[B_SwedenArmy_WDL_mappings,"Groups", B_SwedenArmy_WDL_factionCustomGroups] call ALiVE_fnc_hashSet;

[ALiVE_factionCustomMappings,"B_SwedenArmy_WDL", B_SwedenArmy_WDL_mappings] call ALiVE_fnc_hashSet;
B_SwedenArmy_WDL_mappings = [] call ALiVE_fnc_hashCreate;
[B_SwedenArmy_WDL_mappings,"Side", "WEST"] call ALiVE_fnc_hashSet;
[B_SwedenArmy_WDL_mappings,"GroupSideName", "WEST"] call ALiVE_fnc_hashSet;
[B_SwedenArmy_WDL_mappings,"FactionName", "B_SwedenArmy_WDL"] call ALiVE_fnc_hashSet;
[B_SwedenArmy_WDL_mappings,"GroupFactionName", "B_SwedenArmy_WDL"] call ALiVE_fnc_hashSet;
[B_SwedenArmy_WDL_mappings,"GroupFactionTypes", B_SwedenArmy_WDL_typeMappings] call ALiVE_fnc_hashSet;
[B_SwedenArmy_WDL_mappings,"Groups", B_SwedenArmy_WDL_factionCustomGroups] call ALiVE_fnc_hashSet;

[ALiVE_factionCustomMappings,"B_SwedenArmy_WDL", B_SwedenArmy_WDL_mappings] call ALiVE_fnc_hashSet;
O_SLOArmy_WDL_typeMappings = [] call ALiVE_fnc_hashCreate;
/////////
O_SLOArmy_WDL_factionCustomGroups = [] call ALiVE_fnc_hashCreate;
[O_SLOArmy_WDL_factionCustomGroups,"Infantry", ["o_sloarmy_infantry_infantry_squad_wdl","o_sloarmy_infantry_fireteam_wdl","o_sloarmy_infantry_antiair_team_wdl","o_sloarmy_infantry_antitank_team_wdl","o_sloarmy_infantry_support_team_wdl","o_sloarmy_infantry_sniper_team_wdl","o_sloarmy_infantry_sniper_team_ksvk_wdl","o_sloarmy_infantry_scout_team_wdl"]] call ALiVE_fnc_hashSet;
[O_SLOArmy_WDL_factionCustomGroups,"SpecOps", ["o_sloarmy_specops_spetsnaz_team_wdl","o_sloarmy_specops_spetznas_scouts_wdl","o_sloarmy_specops_spetsnaz_nightoperators_wdl","o_sloarmy_specops_spetsnaz_sabotage_team_wdl","o_sloarmy_specops_spetsnaz_diving_sabotage_team_wdl","o_sloarmy_specops_diving_sabotage_team_wdl"]] call ALiVE_fnc_hashSet;
[O_SLOArmy_WDL_factionCustomGroups,"Motorized", ["o_sloarmy_motorized_infantry_squad_wdl","o_sloarmy_motorized_qrf_team_wdl","o_sloarmy_motorized_scout_team_wdl"]] call ALiVE_fnc_hashSet;
[O_SLOArmy_WDL_factionCustomGroups,"Motorized_MTP", ["o_sloarmy_motorized_mtp_infantry_team_wdl","o_sloarmy_motorized_mtp_scouts_wdl","o_sloarmy_motorized_mtp_search_team_wdl"]] call ALiVE_fnc_hashSet;
[O_SLOArmy_WDL_factionCustomGroups,"Mechanized", ["o_sloarmy_mechanized_infantry_squad_wdl"]] call ALiVE_fnc_hashSet;
[O_SLOArmy_WDL_factionCustomGroups,"Armored", ["o_sloarmy_armored_t72_team_wdl","o_sloarmy_armored_t90_team_wdl"]] call ALiVE_fnc_hashSet;
[O_SLOArmy_WDL_factionCustomGroups,"Artillery", ["o_sloarmy_artillery_podnod_team_wdl","o_sloarmy_artillery_bm_21_team_wdl","o_sloarmy_artillery_d30_team_wdl"]] call ALiVE_fnc_hashSet;
[O_SLOArmy_WDL_factionCustomGroups,"Naval", ["o_sloarmy_naval_patrol_team_wdl","o_sloarmy_naval_qrf_team_wdl"]] call ALiVE_fnc_hashSet;
[O_SLOArmy_WDL_factionCustomGroups,"Air", ["o_sloarmy_air_airborne_qrf_team_wdl","o_sloarmy_air_airborn_infantry_team_wdl","o_sloarmy_air_airborne_sabotage_team_wdl"]] call ALiVE_fnc_hashSet;
[O_SLOArmy_WDL_factionCustomGroups,"Support", ["o_sloarmy_support_support_team_wdl"]] call ALiVE_fnc_hashSet;

O_SLOArmy_WDL_mappings = [] call ALiVE_fnc_hashCreate;
[O_SLOArmy_WDL_mappings,"Side", "EAST"] call ALiVE_fnc_hashSet;
[O_SLOArmy_WDL_mappings,"GroupSideName", "EAST"] call ALiVE_fnc_hashSet;
[O_SLOArmy_WDL_mappings,"FactionName", "O_SLOArmy_WDL"] call ALiVE_fnc_hashSet;
[O_SLOArmy_WDL_mappings,"GroupFactionName", "O_SLOArmy_WDL"] call ALiVE_fnc_hashSet;
[O_SLOArmy_WDL_mappings,"GroupFactionTypes", O_SLOArmy_WDL_typeMappings] call ALiVE_fnc_hashSet;
[O_SLOArmy_WDL_mappings,"Groups", O_SLOArmy_WDL_factionCustomGroups] call ALiVE_fnc_hashSet;

[ALiVE_factionCustomMappings,"O_SLOArmy_WDL", O_SLOArmy_WDL_mappings] call ALiVE_fnc_hashSet;
*/
/*
 * CQB houses
 */
 
ALiVE_MIL_CQB_STRATEGICHOUSES = 
[
	//CUP 
	"O_SLOArmy_Diver_TeamLeader_WDL_01",
	"O_SLOArmy_Diver_WDL_01",
	//A3
	"Land_Cargo_Patrol_V1_F",
	"Land_Cargo_Patrol_V2_F",
	"Land_Cargo_House_V1_F",
	"Land_Cargo_House_V2_F",
	"Land_Cargo_Tower_V3_F",
	"Land_Airport_Tower_F",
	"Land_Cargo_HQ_V1_F",
	"Land_Cargo_HQ_V2_F",
	"Land_MilOffices_V1_F",
	"Land_Offices_01_V1_F",
	"Land_Research_HQ_F",
	"Land_CarService_F",
	"Land_Hospital_main_F",
	"Land_dp_smallFactory_F",
	"Land_Radar_F",
	"Land_TentHangar_V1_F",
 
	//A2
	"Land_A_TVTower_Base",
	"Land_Dam_ConcP_20",
	"Land_Ind_Expedice_1",
	"Land_Ind_SiloVelke_02",
	"Land_Mil_Barracks",
	"Land_Mil_Barracks_i",
	"Land_Mil_Barracks_L",
	"Land_Mil_Guardhouse",
	"Land_Mil_House",
	"Land_Fort_Watchtower",
	"Land_Vysilac_FM",
	"Land_SS_hangar",
	"Land_telek1",
	"Land_vez",
	"Land_A_FuelStation_Shed",
	"Land_watertower1",
	"Land_trafostanica_velka",
	"Land_Ind_Oil_Tower_EP1",
	"Land_A_Villa_EP1",
	"Land_fortified_nest_small_EP1",
	"Land_Mil_Barracks_i_EP1",
	"Land_fortified_nest_big_EP1",
	"Land_Fort_Watchtower_EP1",
	"Land_Ind_PowerStation_EP1",
	"Land_Ind_PowerStation"
];
/*
 * CQB unit blacklist TODO - Alla enheter i CUP Russian som inte ska användas, inga default enheter i detta mission är med ändå
 */
 
ALiVE_MIL_CQB_UNITBLACKLIST = 
[
	//CUP
	"CUP_O_TK_Soldier_AA",
	"CUP_O_TK_INS_Soldier_AA",
	"CUP_O_TK_InfantrySectionAA",
	"CUP_O_TK_MILITIA_AATeam",
	"O_SLOArmy_Diver_TeamLeader_WDL_01",
	"O_SLOArmy_Diver_WDL_01",
	//A3
	"B_Helipilot_F",
	"B_diver_F",
	"B_diver_TL_F",
	"B_diver_exp_F",
	"B_RangeMaster_F",
	"B_crew_F",
	"B_Pilot_F",
	"B_helicrew_F",
 
	"O_helipilot_F",
	"O_diver_F",
	"O_diver_TL_F",
	"O_diver_exp_F",
	"O_crew_F",
	"O_Pilot_F",
	"O_helicrew_F",
	"O_UAV_AI",
 
	"I_crew_F",
	"I_helipilot_F",
	"I_helicrew_F",
	"I_diver_F",
	"I_diver_exp_F",
	"I_diver_TL_F",
	"I_pilot_F",
	"I_Story_Colonel_F",
 
	"B_Soldier_VR_F",
    "O_Soldier_VR_F",
    "I_Soldier_VR_F",
    "C_Soldier_VR_F",
    "B_Protagonist_VR_F",
    "O_Protagonist_VR_F",
    "I_Protagonist_VR_F",
 
    "C_Driver_1_black_F",
	"C_Driver_1_blue_F",
	"C_Driver_1_F",
	"C_Driver_1_green_F",
	"C_Driver_1_orange_F",
	"C_Driver_1_random_base_F",
	"C_Driver_1_red_F",
	"C_Driver_1_white_F",
	"C_Driver_1_yellow_F",
	"C_Driver_2_F",
	"C_Driver_3_F",
	"C_Driver_4_F"
	
	//CUP
	// Armed Forces of the Russian Federation
	//Default, EMR,Ratnik Autumn, Ratnik Beige Digital, Ratnik Desert, Ratnik Summer, Ratnik Winter, VDV, VDV EMR
	// skulle kanske gör en ny mod av de 2 som ska användas... sagt och gjort
	
	
];
 /*
 * Mil placement / Ambient civilians / Mil logistics vehicle blacklist
 */
 
ALiVE_PLACEMENT_UNITBLACKLIST = 
[
	"O_UAV_AI",
	"B_UAV_AI",
	"C_Driver_1_black_F",
	"C_Driver_1_blue_F",
	"C_Driver_1_F",
	"C_Driver_1_green_F",
	"C_Driver_1_orange_F",
	"C_Driver_1_random_base_F",
	"C_Driver_1_red_F",
	"C_Driver_1_white_F",
	"C_Driver_1_yellow_F",
	"C_Driver_2_F",
	"C_Driver_3_F",
	"C_Driver_4_F",
	"B_Soldier_VR_F",
    "O_Soldier_VR_F",
    "I_Soldier_VR_F",
    "C_Soldier_VR_F",
    "B_Protagonist_VR_F",
    "O_Protagonist_VR_F",
    "I_Protagonist_VR_F",
    "C_Marshal_F",
    "C_man_pilot_F"
];
 
/*
 * Mil placement / Ambient civilians / Mil logistics vehicle blacklist
 */
 
ALiVE_PLACEMENT_VEHICLEBLACKLIST = 
[
	"O_UAV_02_F",
	"O_UAV_02_CAS_F",
	"O_UAV_01_F",
	"O_UGV_01_F",
	"O_UGV_01_rcws_F",
	"B_UAV_01_F",
	"B_UAV_02_F",
	"B_UAV_02_CAS_F",
	"B_UGV_01_F",
	"B_UGV_01_rcws_F",
	"B_Parachute_02_F",
	"I_Parachute_02_F",
	"O_Parachute_02_F",
	"Parachute",
	"Parachute_02_base_F",
	"ParachuteBase",
	"ParachuteEast",
	"ParachuteG",
	"ParachuteWest",
	"C_Kart_01_Blu_F",
	"C_Kart_01_F",
	"C_Kart_01_F_Base",
	"C_Kart_01_Fuel_F",
	"C_Kart_01_Red_F",
	"C_Kart_01_Vrana_F"
 
];
 
/*
 * Mil placement group blacklist
 */
 
ALiVE_PLACEMENT_GROUPBLACKLIST = 
[
	"HAF_AttackTeam_UAV",
	"HAF_ReconTeam_UAV",
	"HAF_AttackTeam_UGV",
	"HAF_ReconTeam_UGV",
	"HAF_SmallTeam_UAV",
	"HAF_DiverTeam",
	"HAF_DiverTeam_Boat",
	"HAF_DiverTeam_SDV",
	"BUS_AttackTeam_UAV",
	"BUS_ReconTeam_UAV",
	"BUS_AttackTeam_UGV",
	"BUS_ReconTeam_UGV",
	"BUS_SmallTeam_UAV",
	"BUS_DiverTeam",
	"BUS_DiverTeam_Boat",
	"BUS_DiverTeam_SDV",
	"OI_AttackTeam_UAV",
	"OI_ReconTeam_UAV",
	"OI_AttackTeam_UGV",
	"OI_ReconTeam_UGV",
	"OI_SmallTeam_UAV",
	"OI_diverTeam",
	"OI_diverTeam_Boat",
	"OI_diverTeam_SDV",
	"BUS_TankPlatoon_AA",
	"BUS_MechInf_AA"
	/*,
	"b_swedenarmy_infantry_infantry_section_engineers_wdl",
	"b_swedenarmy_infantry_infantry_section_eod_wdl",
	"b_swedenarmy_infantry_recon_scouts_wdl",
	"b_swedenarmy_infantry_assault_amfibie_section_wdl",
	"b_swedenarmy_infantry_assault_amfibie_group_wdl",
	"b_swedenarmy_specops_attack_diving_team_wdl",
	"b_bswedenarmywdl_specops_attack_diving_team_suface",
	"b_swedenarmy_mechanized_mechanized_recon_section_wdl",
	"b_swedenarmy_mechanized_lkv90_section_wdl"
	*/
];
 
/*
 * Custom transport,support, and ammo classes for factions
 * Used by MP,MCP,ML to place support vehicles and ammo boxes
 * If no faction specific settings are found will fall back to side
 */
 
/*
 * Mil placement ambient vehicles for sides
 */
 
ALIVE_sideDefaultSupports = [] call ALIVE_fnc_hashCreate;
[ALIVE_sideDefaultSupports, "EAST", ["O_Truck_02_Ammo_F","O_Truck_02_box_F","O_Truck_02_fuel_F","O_Truck_02_medical_F","O_Truck_02_transport_F","O_Truck_02_covered_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultSupports, "WEST", ["B_Truck_01_ammo_F","B_Truck_01_fuel_F","B_Truck_01_medical_F","B_Truck_01_Repair_F","B_Truck_01_transport_F","B_Truck_01_covered_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultSupports, "GUER", ["I_Truck_02_ammo_F","I_Truck_02_box_F","I_Truck_02_fuel_F","I_Truck_02_medical_F","I_Truck_02_covered_F","I_Truck_02_transport_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultSupports, "CIV", ["C_Van_01_box_F","C_Van_01_transport_F","C_Van_01_fuel_F"]] call ALIVE_fnc_hashSet;
 
/*
 * Mil placement random supply boxes for sides
 */
 
ALIVE_sideDefaultSupplies = [] call ALIVE_fnc_hashCreate;
[ALIVE_sideDefaultSupplies, "EAST", ["Box_East_Ammo_F","Box_East_AmmoOrd_F","Box_East_Grenades_F","Box_East_Support_F","Box_East_Wps_F","Box_East_WpsLaunch_F","Box_East_WpsSpecial_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultSupplies, "WEST", ["Box_NATO_Ammo_F","Box_NATO_AmmoOrd_F","Box_NATO_Grenades_F","Box_NATO_Support_F","Box_NATO_Wps_F","Box_NATO_WpsLaunch_F","Box_NATO_WpsSpecial_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultSupplies, "GUER", ["Box_IND_Ammo_F","Box_IND_AmmoOrd_F","Box_IND_Grenades_F","Box_IND_Support_F","Box_IND_Wps_F","Box_IND_WpsLaunch_F","Box_IND_WpsSpecial_F"]] call ALIVE_fnc_hashSet;
 
/*
 * Mil logistics convoy transport vehicles fallback for sides
 */
 
ALIVE_sideDefaultTransport = [] call ALIVE_fnc_hashCreate;
[ALIVE_sideDefaultTransport, "EAST", ["O_Truck_02_transport_F","O_Truck_02_covered_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultTransport, "WEST", ["B_Truck_01_transport_F","B_Truck_01_covered_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultTransport, "GUER", ["I_Truck_02_covered_F","I_Truck_02_transport_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultTransport, "CIV", ["C_Van_01_transport_F"]] call ALIVE_fnc_hashSet;
 
/*
 * Mil logistics air transport vehicles fallback for sides
 */
 
ALIVE_sideDefaultAirTransport = [] call ALIVE_fnc_hashCreate;
[ALIVE_sideDefaultAirTransport, "EAST", ["O_Heli_Attack_02_F","O_Heli_Light_02_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultAirTransport, "WEST", ["B_Heli_Transport_01_camo_F","B_Heli_Transport_01_camo_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultAirTransport, "GUER", ["I_Heli_light_03_unarmed_F","I_Heli_Transport_02_F"]] call ALIVE_fnc_hashSet;
[ALIVE_sideDefaultAirTransport, "CIV", []] call ALIVE_fnc_hashSet;
 
 
/*
 * Mil placement ambient vehicles per faction
 */
 
ALIVE_factionDefaultSupports = [] call ALIVE_fnc_hashCreate;
[ALIVE_factionDefaultSupports, "O_SLOArmy_WDL" ,["O_SLOArmy_Ural_Ammo_WDL_01","O_SLOArmy_Ural_Refuel_WDL_01","O_SLOArmy_UAZ_469_Medevac_WDL_01","O_SLOArmy_Ural_Repair_WDL_01","O_SLOArmy_BMP_2Ambulance_WDL_01","O_SLOArmy_UAZ_469_Open_WDL_01","O_SLOArmy_Ural_Open_WDL_01"]]  call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupports, "O_SerbienArmy_WDL" ,["O_SerbienArmy_M1152_RSV_WDL_01","O_SerbienArmy_Ural_375D_Fuel_WDL_01","O_SerbienArmy_Ural_375D_Fuel_WDL_01","O_SerbienArmy_URAL_4320_Repair_WDL_01","O_SerbienArmy_Van_Ambulance_WDL_01","O_SerbienArmy_M1152_Cargo_WDL_01","O_SerbienArmy_M1152_Transport_WDL_01"]] call ALIVE_fnc_hashSet;
//[ALIVE_factionDefaultSupports, "B_SwedenArmy_WDL" , ["B_SwedenArmy_HEMTT_Ammo_WDL_01","B_SwedenArmy_HEMTT_Fuel_WDL_01","B_SwedenArmy_HRMTT_Medical_WDL_01","B_SwedenArmy_HEMTT_Repair_WDL_01","B_SwedenArmy_MTVR_WDL_01"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupports, "sfp_swe_2015", ["B_T_Truck_01_ammo_F","B_T_Truck_01_fuel_F","sfp_tgb1314","B_T_Truck_01_Repair_F","sfp_tgb20"]] call ALIVE_fnc_hashSet;

[ALIVE_factionDefaultSupports, "OPF_F",["O_SLOArmy_Ural_Ammo_WDL_01","O_SLOArmy_Ural_Refuel_WDL_01","O_SLOArmy_UAZ_469_Medevac_WDL_01","O_SLOArmy_Ural_Repair_WDL_01","O_SLOArmy_BMP_2Ambulance_WDL_01","O_SLOArmy_UAZ_469_Open_WDL_01","O_SLOArmy_Ural_Open_WDL_01"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupports, "OPF_G_F", ["O_G_Offroad_01_armed_F","O_G_Van_01_fuel_F","O_G_Van_01_transport_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupports, "IND_F", ["I_Truck_02_ammo_F","I_Truck_02_box_F","I_Truck_02_fuel_F","I_Truck_02_medical_F","I_Truck_02_covered_F","I_Truck_02_transport_F"]] call ALIVE_fnc_hashSet;
//[ALIVE_factionDefaultSupports, "BLU_F", ["B_SwedenArmy_HEMTT_Ammo_WDL_01","B_SwedenArmy_HEMTT_Fuel_WDL_01","B_SwedenArmy_HRMTT_Medical_WDL_01","B_SwedenArmy_HEMTT_Repair_WDL_01","B_SwedenArmy_MTVR_WDL_01"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupports, "BLU_G_F", ["B_G_Van_01_fuel_F","B_G_Van_01_transport_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupports, "CIV_F", ["C_Van_01_box_F","C_Van_01_transport_F","C_Van_01_fuel_F"]] call ALIVE_fnc_hashSet;
 
/*
 * Mil placement random supply boxes per faction
 */
 
ALIVE_factionDefaultSupplies = [] call ALIVE_fnc_hashCreate;
[ALIVE_factionDefaultSupplies, "O_SLOArmy_WDL" ["O_SLOArmy_WDL_AmmoBox","O_SLOArmy_WDL_WeaponsBox","O_SLOArmy_WDL_LaunchersBox","O_SLOArmy_WDL_UniformBox","O_SLOArmy_WDL_SupportBox","O_SLOArmy_WDL_SupplyBox"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupplies, "O_SerbienArmy_WDL" ["Box_East_Ammo_F","Box_East_AmmoOrd_F","Box_East_Grenades_F","Box_East_Support_F","Box_East_Wps_F","Box_East_WpsLaunch_F","Box_East_WpsSpecial_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupplies, "sfp_swe_2015" , ["sfp_ammobox_container_2015","ACE_medicalSupplyCrate","ACE_medicalSupplyCrate_advanced", "ACE_Box_Misc","Box_NATO_AmmoOrd_F","sfp_ammocrate_556","sfp_ammocrate_127","sfp_rbs17_missile_container"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupplies, "B_SwedenArmy_WDL" , ["B_SwedenArmy_WDL_AmmoBox","B_SwedenArmy_WDL_WeaponsBox","B_SwedenArmy_WDL_LaunchersBox", "B_SwedenArmy_WDL_UniformBox","B_SwedenArmy_WDL_SupportBox","B_SwedenArmy_WDL_SupplyBox"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupplies, "OPF_F", ["O_SLOArmy_WDL_AmmoBox","O_SLOArmy_WDL_WeaponsBox","O_SLOArmy_WDL_LaunchersBox","O_SLOArmy_WDL_SupportBox","O_SLOArmy_WDL_SupplyBox"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupplies, "OPF_G_F", ["Box_East_Ammo_F","Box_East_AmmoOrd_F","Box_East_Grenades_F","Box_East_Support_F","Box_East_Wps_F","Box_East_WpsLaunch_F","Box_East_WpsSpecial_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupplies, "IND_F", ["Box_IND_Ammo_F","Box_IND_AmmoOrd_F","Box_IND_Grenades_F","Box_IND_Support_F","Box_IND_Wps_F","Box_IND_WpsLaunch_F","Box_IND_WpsSpecial_F"]] call ALIVE_fnc_hashSet;
//[ALIVE_factionDefaultSupplies, "BLU_F", ["B_SwedenArmy_WDL_AmmoBox","B_SwedenArmy_WDL_WeaponsBox","B_SwedenArmy_WDL_LaunchersBox", "B_SwedenArmy_WDL_UniformBox","B_SwedenArmy_WDL_SupportBox","B_SwedenArmy_WDL_SupplyBox"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupplies, "BLU_G_F", ["Box_IND_Ammo_F","Box_IND_AmmoOrd_F","Box_IND_Grenades_F","Box_IND_Support_F","Box_IND_Wps_F","Box_IND_WpsLaunch_F","Box_IND_WpsSpecial_F"]] call ALIVE_fnc_hashSet;
 
/*
 * Mil logistics convoy transport vehicles per faction
 */
 
ALIVE_factionDefaultTransport = [] call ALIVE_fnc_hashCreate;
[ALIVE_factionDefaultTransport, "O_SLOArmy_WDL", ["O_SLOArmy_UAZ_469_Open_WDL_01","O_SLOArmy_Ural_Open_WDL_01"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultTransport, "O_SerbienArmy_WDL", ["O_SerbienArmy_Ural_375D_open_WDL_01","O_SerbienArmy_Ural_375D_WDL_01"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultTransport, "B_SwedenArmy_WDL", ["B_SwedenArmy_MTVR_WDL_01","B_SwedenArmy_HEMTT_Open_WDL_01"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultTransport, "sfp_swe_2015", ["sfp_tgb20","sfp_tgb13_ksp58"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultTransport, "OPF_F", ["O_SLOArmy_UAZ_469_Open_WDL_01","O_SLOArmy_Ural_Open_WDL_01"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultTransport, "OPF_G_F", ["O_G_Van_01_transport_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultTransport, "IND_F", ["I_Truck_02_covered_F","I_Truck_02_transport_F"]] call ALIVE_fnc_hashSet;
//[ALIVE_factionDefaultTransport, "BLU_F", ["B_SwedenArmy_MTVR_WDL_01","B_SwedenArmy_HEMTT_Open_WDL_01"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultTransport, "BLU_G_F", ["B_G_Van_01_transport_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultTransport, "CIV_F", ["C_Van_01_transport_F"]] call ALIVE_fnc_hashSet;
 
/*
 * Mil logistics air transport vehicles per faction
 */
 
ALIVE_factionDefaultAirTransport = [] call ALIVE_fnc_hashCreate;
[ALIVE_factionDefaultAirTransport, "O_SLOArmy_WDL" , ["O_SLOArmy_Mi8_MTV3_WDL_01", "O_SLOArmy_Mi_24P_WDL_01","O_SLOArmy_Mi_24V_WDL_01","O_SLOArmy_Mi6A_VIV_WDL_01","O_SLOArmy_KA_60_WDL_01"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultAirTransport, "O_SerbienArmy_WDL" , ["O_SerbienArmy_HT_40_WDL_01", "O_SerbienArmy_HT_48_WDL_01"]] call ALIVE_fnc_hashSet;
//[ALIVE_factionDefaultAirTransport, "B_SwedenArmy_WDL", ["B_SwedenArmy_HKP_20_WDL_01","B_SwedenArmyWDL_Hkp_4_01","B_SwedenArmy_TP_84_Hercules_Transport_WDL_01"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultAirTransport, "sfp_swe_2015", ["sfp_hkp4_2015","sfp_hkp16","sfp_tp84_2015"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultAirTransport, "OPF_F", ["O_Heli_Attack_02_F","O_Heli_Light_02_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultAirTransport, "OPF_G_F", ["I_Heli_light_03_unarmed_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultAirTransport, "IND_F", ["I_Heli_light_03_unarmed_F","I_Heli_Transport_02_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultAirTransport, "BLU_F", ["sfp_hkp4_2015","sfp_hkp16"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultAirTransport, "BLU_G_F", ["I_Heli_light_03_unarmed_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultAirTransport, "CIV_F", []] call ALIVE_fnc_hashSet;
 
 
/*
 * Garrison building defaults
 */
 
ALIVE_garrisonPositions = [] call ALIVE_fnc_hashCreate;
[ALIVE_garrisonPositions, "Land_Cargo_HQ_V1_F", [6,7,8]] call ALIVE_fnc_hashSet;
[ALIVE_garrisonPositions, "Land_Cargo_HQ_V2_F", [6,7,8]] call ALIVE_fnc_hashSet;
[ALIVE_garrisonPositions, "Land_Cargo_HQ_V3_F", [6,7,8]] call ALIVE_fnc_hashSet;
[ALIVE_garrisonPositions, "Land_Medevac_HQ_V1_F", [6,7,8]] call ALIVE_fnc_hashSet;
[ALIVE_garrisonPositions, "Land_Cargo_Tower_V3_F", [15,12,8]] call ALIVE_fnc_hashSet;
[ALIVE_garrisonPositions, "Land_Cargo_Tower_V2_F", [15,12,8]] call ALIVE_fnc_hashSet;
[ALIVE_garrisonPositions, "Land_Cargo_Tower_V1_F", [15,12,8]] call ALIVE_fnc_hashSet;
[ALIVE_garrisonPositions, "Land_Cargo_Patrol_V1_F", [1]] call ALIVE_fnc_hashSet;
[ALIVE_garrisonPositions, "Land_Cargo_Patrol_V2_F", [1]] call ALIVE_fnc_hashSet;
[ALIVE_garrisonPositions, "Land_Cargo_Patrol_V3_F", [1]] call ALIVE_fnc_hashSet;
[ALIVE_garrisonPositions, "Land_CarService_F", [2,5]] call ALIVE_fnc_hashSet;
[ALIVE_garrisonPositions, "Land_u_Barracks_V2_F", [36,37,35,34,32,33,40,44]] call ALIVE_fnc_hashSet;
[ALIVE_garrisonPositions, "Land_i_Barracks_V1_F", [36,37,35,34,32,33,40,44]] call ALIVE_fnc_hashSet;
[ALIVE_garrisonPositions, "Land_i_Barracks_V2_F", [36,37,35,34,32,33,40,44]] call ALIVE_fnc_hashSet;

