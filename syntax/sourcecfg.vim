" Vim syntax file
" Language:     source engine configuration
" Maintainer:   Ryan Delaney <ryan delaney at gmail com> OpenGPG: 0D98863B4E1D07B6
" Last Change:  $Wed Mar  5 16:00:07 PST 2014$
" Filenames:    *.cfg
" URL:          https://github.com/rpdelaney/vim-sourcecfg
" Notes:        Developed mainly with Left 4 Dead 2 game servers. Please send
"               email or pull requests if you run into problems with
"               configuration files for any Source engine games.
" Legal:        Valve, the Valve logo, Steam, Source, and the Source logo are
"               trademarks and/or registered trademarks of Valve Corporation.
"               All other trademarks are property of their respective owners.

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Always ignore case
syn case ignore

" Syntax: Numbers {{{1
syn match sourceSteamID         '\vSTEAM_[0-5]\:[0-4]:\d+'
syn match sourceNumber          '\<\d\+\>'

" Syntax: Todo {{{1
syn keyword sourceSpecialComment   contained TODO FIXME XXX DEBUG NOTE DEFAULT

" Syntax: Keys {{{1
syn keyword sourceBindableKey   A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
syn keyword sourceBindableKey   F1 F2 F3 F4 F5 F6 F7 F8 F9 F10 F11 F12
syn keyword sourceBindableKey   SPACE ENTER ESCAPE PAUSE BACKSPACE
syn keyword sourceBindableKey   TAB SEMICOLON SHIFT CTRL ALT
syn keyword sourceBindableKey   UPARROW DOWNARROW LEFTARROW RIGHTARROW INS
syn keyword sourceBindableKey   HOME PGUP PGDN DEL END
syn keyword sourceBindableKey   KP_HOME KP_UPARROW KP_PGUP KP_LEFTARROW KP_5
syn keyword sourceBindableKey   KP_RIGHTARROW KP_END KP_ENTER KP_DOWNARROW KP_PGDN
syn keyword sourceBindableKey   KP_INS KP_DEL KP_SLASH KP_MINUS KP_PLUS
syn keyword sourceBindableKey   KP_MULTIPLY MOUSE1 MOUSE2 MOUSE3 MOUSE4
syn keyword sourceBindableKey   MOUSE5 MWHEELUP MWHEELDOWN
syn match sourceBindableKey     "^bind.*(\-\|'\|`\|=\|]\|\\|,\|/)"

" Syntax: Commands {{{1
syn match sourceCommand         '+alt1\|+alt2\|+attack2\|+attack\|+back'
syn match sourceCommand         '+break\|+camdistance\|+camin\|+cammousemove\|+camout'
syn match sourceCommand         '+campitchdown\|+campitchup\|+camyawleft\|+camyawright\|+commandermousemove'
syn match sourceCommand         '+demoui2\|+duck\|+forward\|+graph\|+grenade1'
syn match sourceCommand         '+grenade2\|+invaction\|+jlook\|+jump\|+klook'
syn match sourceCommand         '+left\|+lookdown\|+lookspin\|+lookup\|+mat_texture_list'
syn match sourceCommand         '+menuAccept\|+menuDown\|+menuUp\|+mouse_menu\|+movedown'
syn match sourceCommand         '+moveleft\|+moveright\|+moveup\|+posedebug\|+quickswitch'
syn match sourceCommand         '+reload\|+right\|+score\|+showbudget\|+showbudget_texture'
syn match sourceCommand         '+showbudget_texture_global\|+showscores\|+showstats\|+showvprof\|+sixense_left_point_gesture'
syn match sourceCommand         '+sixense_ratchet\|+sixense_right_point_gesture\|+speed\|+strafe\|+use'
syn match sourceCommand         '+use_action_slot_item\|+vgui_drawtree\|+voicerecord\|+walk\|+zoom'
syn match sourceCommand         '-alt1\|-alt2\|-attack2\|-attack\|-back'
syn match sourceCommand         '-break\|-camdistance\|-camin\|-cammousemove\|-camout'
syn match sourceCommand         '-campitchdown\|-campitchup\|-camyawleft\|-camyawright\|-commandermousemove'
syn match sourceCommand         '-demoui2\|-duck\|-forward\|-graph\|-grenade1'
syn match sourceCommand         '-grenade2\|-invaction\|-jlook\|-jump\|-klook'
syn match sourceCommand         '-left\|-lookdown\|-lookspin\|-lookup\|-mat_texture_list'
syn match sourceCommand         '-menuAccept\|-menuDown\|-menuUp\|-mouse_menu\|-movedown'
syn match sourceCommand         '-moveleft\|-moveright\|-moveup\|-posedebug\|-quickswitch'
syn match sourceCommand         '-reload\|-right\|-score\|-showbudget\|-showbudget_texture'
syn match sourceCommand         '-showbudget_texture_global\|-showscores\|-showstats\|-showvprof\|-sixense_left_point_gesture'
syn match sourceCommand         '-sixense_ratchet\|-sixense_right_point_gesture\|-speed\|-strafe\|-use'
syn match sourceCommand         '-use_action_slot_item\|-vgui_drawtree\|-voicerecord\|-walk\|-zoom'
syn keyword sourceCommand       BindToggle CreateHairball OpenMatchmakingLobby OpenQuickplayDialog OpenSteamWorkshopDialog
syn keyword sourceCommand       Print_Steam_Stats RefreshMatchmakingLobby Reset_Steam_Stats ShowSteamStatsSessionID Test_CreateEntity
syn keyword sourceCommand       Test_EHandle Test_InitRandomEntitySpawner Test_Loop Test_LoopCount Test_LoopForNumSeconds
syn keyword sourceCommand       Test_ProxyToggle_EnableProxy Test_ProxyToggle_EnsureValue Test_ProxyToggle_SetValue Test_RandomChance Test_RandomPlayerPosition
syn keyword sourceCommand       Test_RandomizeInPVS Test_RemoveAllRandomEntities Test_RunFrame Test_SendKey Test_SpawnRandomEntities
syn keyword sourceCommand       Test_StartLoop Test_StartScript Test_Wait Test_WaitForCheckPoint TrackerAnim
syn keyword sourceCommand       TransmitEvents __screenshot_internal _autosave _autosavedangerous _bugreporter_restart
syn keyword sourceCommand       _record _resetgamestats _restart abuse_report_queue abuse_report_submit
syn keyword sourceCommand       achievement_evaluate achievement_mark_dirty achievement_reset achievement_reset_all achievement_status
syn keyword sourceCommand       achievement_test_clan_count achievement_test_friend_count achievement_unlock achievement_unlock_all addip
syn keyword sourceCommand       ai_clear_bad_links ai_debug_node_connect ai_disable ai_drop_hint ai_dump_hints
syn keyword sourceCommand       ai_hull ai_next_hull ai_nodes ai_resume ai_set_move_height_epsilon
syn keyword sourceCommand       ai_show_connect ai_show_connect_fly ai_show_connect_jump ai_show_graph_connect ai_show_grid
syn keyword sourceCommand       ai_show_hints ai_show_hull ai_show_node ai_show_visibility ai_step
syn keyword sourceCommand       ai_test_los ainet_generate_report ainet_generate_report_only air_density alias
syn keyword sourceCommand       askconnect_accept async_resume async_suspend audit_save_in_memory autosave
syn keyword sourceCommand       autosavedangerous autosavedangerousissafe banid banip bench_end
syn keyword sourceCommand       bench_showstatsdialog bench_start bench_upload benchframe bind
syn keyword sourceCommand       bind_mac blackbox_dump blackbox_record bloodspray bot
syn keyword sourceCommand       bot_changeteams bot_command bot_drop bot_hurt bot_kick
syn keyword sourceCommand       bot_kill bot_moveto bot_refill bot_teleport bot_whack
syn keyword sourceCommand       box buddha budget_toggle_group bug bug_swap
syn keyword sourceCommand       buildcubemaps cache_print cache_print_lru cache_print_summary callvote
syn keyword sourceCommand       camortho cancelselect cast_hull cast_ray cc_bot_selectweapon
syn keyword sourceCommand       cc_emit cc_findsound cc_flush cc_random cc_showblocks
syn keyword sourceCommand       centerview ch_createairboat ch_createjeep changeclass changelevel
syn keyword sourceCommand       changelevel2 changelevel_next changeteam chooseteam cl_animationinfo
syn keyword sourceCommand       cl_benchmark_particle_system cl_buy_favorite cl_buy_favorite_reset cl_buy_favorite_set cl_clearhinthistory
syn keyword sourceCommand       cl_coach_find_coach cl_coach_toggle cl_consistencycheck cl_create_server cl_decline_first_notification
syn keyword sourceCommand       cl_destroy_ragdolls cl_dump_particle_stats cl_dumpsplithacks cl_engine_reload_rosetta cl_ent_absbox
syn keyword sourceCommand       cl_ent_bbox cl_ent_rbox cl_find_ent cl_find_ent_index cl_fullupdate
syn keyword sourceCommand       cl_gameserver_create_identity cl_gameserver_list cl_gameserver_reset_identity cl_panelanimation cl_particles_dump_effects
syn keyword sourceCommand       cl_particles_dumplist cl_precacheinfo cl_pred_track cl_predictioncopy_describe cl_print_consistency_list
syn keyword sourceCommand       cl_removedecals cl_report_soundpatch cl_showents cl_soundemitter_flush cl_soundemitter_reload
syn keyword sourceCommand       cl_soundscape_flush cl_soundscape_printdebuginfo cl_ss_origin cl_trade cl_trade_steamid
syn keyword sourceCommand       cl_training_class_unlock_all cl_trigger_first_notification cl_updatevisibility cl_view clear
syn keyword sourceCommand       clear_debug_overlays cmd cmd1 cmd2 cmd3
syn keyword sourceCommand       cmd4 collision_test colorcorrectionui commentary_cvarsnotchanging commentary_finishnode
syn keyword sourceCommand       commentary_showmodelviewer commentary_testfirstrun condump connect connect_lobby
syn keyword sourceCommand       connect_splitscreen create_flashlight creditsdone cs_make_vip currency_give
syn keyword sourceCommand       cvarlist dbghist_addline dbghist_dump debugsystemui demo_gototick
syn keyword sourceCommand       demo_pause demo_resume demo_returntolobby demo_setendtick demo_timescale
syn keyword sourceCommand       demo_togglepause demolist demos demoui demoui2
syn keyword sourceCommand       devshots_nextmap devshots_screenshot differences director_log_scavenge_items director_print_player_counts
syn keyword sourceCommand       disconnect disguise dlight_debug drawcross drawline
syn keyword sourceCommand       dropitem dropprimary dsp_reload dti_flush dump_avatar_info
syn keyword sourceCommand       dump_entity_sizes dump_globals dump_panels dump_particlemanifest dump_pz_data
syn keyword sourceCommand       dump_server_demo dump_x360_cfg dump_x360_saves dumpentityfactories dumpeventqueue
syn keyword sourceCommand       dumpgamestringtable dumplongticks dumpsavedir dumpstringtables echo
syn keyword sourceCommand       econ_show_items_with_tag editdemo editor_toggle endmovie ent_absbox
syn keyword sourceCommand       ent_attachments ent_autoaim ent_bbox ent_cancelpendingentfires ent_create
syn keyword sourceCommand       ent_dump ent_fire ent_info ent_keyvalue ent_messages
syn keyword sourceCommand       ent_name ent_orient ent_pause ent_pivot ent_rbox
syn keyword sourceCommand       ent_remove ent_remove_all ent_rotate ent_setname ent_show_response_criteria
syn keyword sourceCommand       ent_step ent_teleport ent_text ent_viewoffset envmap
syn keyword sourceCommand       escape exec exit explode explodevector
syn keyword sourceCommand       fadein fadeout find find_ent find_ent_index
syn keyword sourceCommand       findflags firetarget firstperson flush flush_locked
syn keyword sourceCommand       fly_add_keyframe fly_clear_all_keyframes fly_show_path fly_start fogui
syn keyword sourceCommand       force_centerview forcebind foundry_engine_get_mouse_control foundry_engine_release_mouse_control foundry_select_entity
syn keyword sourceCommand       foundry_sync_hammer_view foundry_update_entity fov fs_printopenfiles fs_syncdvddevcache
syn keyword sourceCommand       fs_warning_level g15_dumpplayer g15_reload gameinstructor_reload_lessons gameinstructor_reset_counts
syn keyword sourceCommand       gamemenucommand gameui_activate gameui_allowescape gameui_allowescapetoshow gameui_hide
syn keyword sourceCommand       gameui_hide_dialog gameui_preventescape gameui_preventescapetoshow gameui_show_dialog getpos
syn keyword sourceCommand       getpos_exact ghost_spawn give givecurrentammo global_set
syn keyword sourceCommand       go_away_from_keyboard god groundlist hammer_update_entity hammer_update_safe_entities
syn keyword sourceCommand       heartbeat help hide_message_panel hideconsole hidepanel
syn keyword sourceCommand       hidestatpanel host_runofftime host_timer_report host_writeconfig host_writeconfig_ss
syn keyword sourceCommand       hud_reloadscheme hurtme ifm_basecamera_camerastate impulse incrementvar
syn keyword sourceCommand       inspect invnext invprev ipc_console_disable ipc_console_disable_all
syn keyword sourceCommand       ipc_console_show item_show_whitelistable_definitions itemtest itemtest_botcontrols join_class
syn keyword sourceCommand       joyadvancedupdate jpeg kdtree_test key_findbinding key_listboundkeys
syn keyword sourceCommand       key_updatelayout kick kick_transitioning kickall kickid
syn keyword sourceCommand       kill killserver killvector lastdisguise lastinv
syn keyword sourceCommand       light_crosshair lightprobe linefile listRecentNPCSpeech listdeaths
syn keyword sourceCommand       listdemo listid listip listissues listmaps
syn keyword sourceCommand       listmodels load load_itempreset loadcommentary loader_dump_table
syn keyword sourceCommand       log log_dumpchannels log_level logaddress_add logaddress_del
syn keyword sourceCommand       logaddress_delall logaddress_list map map_background map_commentary
syn keyword sourceCommand       map_edit map_showspawnpoints maps mat_configcurrent mat_crosshair
syn keyword sourceCommand       mat_crosshair_edit mat_crosshair_explorer mat_crosshair_printmaterial mat_crosshair_reloadmaterial mat_debug
syn keyword sourceCommand       mat_edit mat_hdr_enabled mat_info mat_reloadallmaterials mat_reloadmaterial
syn keyword sourceCommand       mat_reloadtextures mat_reporthwmorphmemory mat_savechanges mat_setvideomode mat_shadercount
syn keyword sourceCommand       mat_showmaterials mat_showmaterialsverbose mat_showtextures mat_spewvertexandpixelshaders mat_suppress
syn keyword sourceCommand       mat_texture_list_exclude mat_texture_list_txlod mat_texture_list_txlod_sync mat_texture_save_fonts maxplayers
syn keyword sourceCommand       mem_compact mem_dump mem_dumpvballocs mem_eat mem_incremental_compact
syn keyword sourceCommand       mem_test mem_vcollide memory memory_diff memory_list
syn keyword sourceCommand       memory_mark memory_status menuselect meta minisave
syn keyword sourceCommand       mission_debug_print mission_list mission_reload mission_show mm_add_item
syn keyword sourceCommand       mm_add_player mm_datacenter_debugprint mm_debugprint mm_message mm_select_session
syn keyword sourceCommand       mm_session_info mm_stats mod_dynamicmodeldebug model_list motd
syn keyword sourceCommand       movie_fixwave mp_disable_autokick mp_forcerespawnplayers mp_forcewin mp_scrambleteams
syn keyword sourceCommand       mp_showrespawntimes mp_switchteams mp_tournament_restart multvar music_dynamic_play
syn keyword sourceCommand       music_dynamic_stop_playing music_print nav_add_to_selected_set nav_add_to_selected_set_by_id nav_analyze
syn keyword sourceCommand       nav_avoid nav_begin_area nav_begin_deselecting nav_begin_drag_deselecting nav_begin_drag_selecting
syn keyword sourceCommand       nav_begin_selecting nav_begin_shift_xy nav_build_ladder nav_check_file_consistency nav_check_floor
syn keyword sourceCommand       nav_check_stairs nav_chop_selected nav_clear_attribute nav_clear_selected_set nav_clear_walkable_marks
syn keyword sourceCommand       nav_compress_id nav_connect nav_corner_lower nav_corner_place_on_ground nav_corner_raise
syn keyword sourceCommand       nav_corner_select nav_crouch nav_delete nav_delete_marked nav_disconnect
syn keyword sourceCommand       nav_disconnect_outgoing_oneways nav_dont_hide nav_dump_selected_set_positions nav_end_area nav_end_deselecting
syn keyword sourceCommand       nav_end_drag_deselecting nav_end_drag_selecting nav_end_selecting nav_end_shift_xy nav_flood_select
syn keyword sourceCommand       nav_gen_cliffs_approx nav_generate nav_generate_incremental nav_jump nav_ladder_flip
syn keyword sourceCommand       nav_load nav_lower_drag_volume_max nav_lower_drag_volume_min nav_make_sniper_spots nav_mark
syn keyword sourceCommand       nav_mark_attribute nav_mark_unnamed nav_mark_walkable nav_merge nav_merge_mesh
syn keyword sourceCommand       nav_no_hostages nav_no_jump nav_place_floodfill nav_place_list nav_place_pick
syn keyword sourceCommand       nav_place_replace nav_place_set nav_precise nav_raise_drag_volume_max nav_raise_drag_volume_min
syn keyword sourceCommand       nav_recall_selected_set nav_remove_from_selected_set nav_remove_jump_areas nav_run nav_save
syn keyword sourceCommand       nav_save_selected nav_select_blocked_areas nav_select_damaging_areas nav_select_half_space nav_select_invalid_areas
syn keyword sourceCommand       nav_select_larger_than nav_select_obstructed_areas nav_select_orphans nav_select_overlapping nav_select_radius
syn keyword sourceCommand       nav_select_stairs nav_set_place_mode nav_shift nav_show_dumped_positions nav_simplify_selected
syn keyword sourceCommand       nav_splice nav_split nav_stand nav_stop nav_store_selected_set
syn keyword sourceCommand       nav_strip nav_subdivide nav_test_stairs nav_toggle_deselecting nav_toggle_in_selected_set
syn keyword sourceCommand       nav_toggle_place_mode nav_toggle_place_painting nav_toggle_selected_set nav_toggle_selecting nav_transient
syn keyword sourceCommand       nav_unmark nav_update_blocked nav_update_lighting nav_use_place nav_walk
syn keyword sourceCommand       nav_warp_to_mark nav_world_center nb_command nb_debug nb_debug_filter
syn keyword sourceCommand       nb_delete_all nb_dump_debug_history nb_force_look_at nb_move_to_cursor nb_select
syn keyword sourceCommand       nb_warp_selected_here net_channels net_dumpeventstats net_reloadgameevents net_start
syn keyword sourceCommand       net_status net_steamcnx_status nextdemo nextmap noclip
syn keyword sourceCommand       notarget npc_ammo_deplete npc_bipass npc_combat npc_conditions
syn keyword sourceCommand       npc_create npc_create_aimed npc_destroy npc_destroy_unselected npc_enemies
syn keyword sourceCommand       npc_focus npc_freeze npc_freeze_unselected npc_go npc_go_random
syn keyword sourceCommand       npc_heal npc_kill npc_nearest npc_relationships npc_reset
syn keyword sourceCommand       npc_route npc_select npc_speakall npc_squads npc_steering
syn keyword sourceCommand       npc_steering_all npc_task_text npc_tasks npc_teleport npc_thinknow
syn keyword sourceCommand       npc_viewcone obj_dump_damage open_charinfo open_charinfo_armory open_charinfo_backpack
syn keyword sourceCommand       open_charinfo_crafting open_charinfo_direct open_replaybrowser open_replayinputpanel open_store
syn keyword sourceCommand       openserverbrowser opentf2options outtro_stats_done overview_mode overview_zoom
syn keyword sourceCommand       particle_test_start particle_test_stop path pause perfui
syn keyword sourceCommand       perfvisualbenchmark perfvisualbenchmark_abort personalstats phys_swap physics_budget
syn keyword sourceCommand       physics_constraints physics_debug_entity physics_highlight_active physics_report_active physics_select
syn keyword sourceCommand       picker ping pingserver pixelvis_debug play
syn keyword sourceCommand       playdemo player_ready_toggle playflush playgamesound playsoundscape
syn keyword sourceCommand       playvideo playvideo_exitcommand playvol plugin_load plugin_notify_non_valid
syn keyword sourceCommand       plugin_pause plugin_pause_all plugin_print plugin_unload plugin_unpause
syn keyword sourceCommand       plugin_unpause_all print_colorcorrection progress_enable prop_crosshair prop_debug
syn keyword sourceCommand       prop_dynamic_create prop_physics_create quit r_3dnow r_cheapwaterend
syn keyword sourceCommand       r_cheapwaterstart r_cleardecals r_flushlod r_printdecalinfo r_ropes_holiday_light_color
syn keyword sourceCommand       r_screenoverlay r_shadowangles r_shadowblobbycutoff r_shadowcolor r_shadowdir
syn keyword sourceCommand       r_shadowdist r_skyboxfogfactor r_sse2 radialmenu randommap
syn keyword sourceCommand       rbgc rcon recompute_speed record refresh_options_dialog
syn keyword sourceCommand       refreshplayerstats reload removeid removeip replay_add_fake_replays
syn keyword sourceCommand       replay_clearqueuedtakes replay_confirmquit replay_deleteclientreplays replay_docleanup replay_dopublishtest
syn keyword sourceCommand       replay_hidebrowser replay_printclientreplays replay_printqueuedtakes replay_printsessioninfo replay_record
syn keyword sourceCommand       replay_reloadbrowser replay_removeclientreplay replay_renderpause replay_renderunpause replay_stoprecord
syn keyword sourceCommand       replay_test_take_save_dlg report report_entities report_simthinklist report_soundpatch
syn keyword sourceCommand       report_touchlinks reset_spawnmenu_counts resetplayerstats respawn_entities restart
syn keyword sourceCommand       retry rfgc rpt rpt_client_enable rpt_connect
syn keyword sourceCommand       rpt_download_log rpt_end rpt_password rpt_screenshot rpt_server_enable
syn keyword sourceCommand       rpt_start rr_debugresponseconcept_exclude rr_reloadresponsesystems save save_finish_async
syn keyword sourceCommand       save_replay say say_team sb_add sb_move_to_cursor
syn keyword sourceCommand       scavenge_set_round_limit scene_flush screenshot scripted_user_func server_game_time
syn keyword sourceCommand       setang setang_exact setinfo setmaster setmodel
syn keyword sourceCommand       setpause setpos setpos_exact shake shake_stop messagemode messagemode2
syn keyword sourceCommand       showGameSettings show_addon_load_order show_addon_metadata show_menu showbudget_texture_global_dumpstats
syn keyword sourceCommand       showconsole showinfo showmapinfo showpanel showschemevisualizer
syn keyword sourceCommand       showstatsdlg showtriggers_toggle simple_bot_add sixense_aim_freeaim_spin_disabled sixense_bind
syn keyword sourceCommand       sixense_clear_bindings sixense_create_default_bindings sixense_delete_binding sixense_disable_gestures sixense_list_bindings
syn keyword sourceCommand       sixense_select_grenade sixense_select_machinegun sixense_select_melee sixense_select_pistol sixense_set_base_offset
syn keyword sourceCommand       sixense_set_filter_params sixense_show_frame sixense_write_bindings skip_next_map slot0
syn keyword sourceCommand       slot1 slot2 slot3 slot4 slot5 slot6 slot7 slot8 slot9 slot10 slot11 slot12
syn keyword sourceCommand       snapto snd_async_flush snd_async_showmem snd_async_showmem_music snd_async_showmem_summary
syn keyword sourceCommand       snd_buildsoundcachefordirectory snd_dump_filepaths snd_dumpclientsounds snd_getmixer snd_list_mix_groups
syn keyword sourceCommand       snd_list_mixers snd_playsounds snd_rebuildaudiocache snd_rebuildlocalizedaudiocache snd_restart
syn keyword sourceCommand       snd_setmixer snd_setmixlayer snd_setmixlayer_amount snd_setsoundparam snd_soundmixer_flush
syn keyword sourceCommand       snd_updateaudiocache snd_writemanifest sndplaydelay soundfade soundinfo
syn keyword sourceCommand       soundlist soundscape_dumpclient soundscape_flush spawnboomermenu spawnchargermenu
syn keyword sourceCommand       spawnhuntermenu spawnjockeymenu spawnmodemenu spawnsmokermenu spawnspittermenu
syn keyword sourceCommand       speak spec_help spec_menu spec_mode spec_next
syn keyword sourceCommand       spec_player spec_pos spec_prev spec_target spec_target_clear
syn keyword sourceCommand       spike ss_connect ss_disconnect ss_map star_memory
syn keyword sourceCommand       startdemos startmovie startupmenu stats stats_nexthighlight
syn keyword sourceCommand       status stop stopdemo stopsound stopsoundscape
syn keyword sourceCommand       stringtabledictionary stuffcmds surfaceprop sv_benchmark_force_start sv_bonus_map_challenge_update
syn keyword sourceCommand       sv_bonus_map_complete sv_bonus_map_unlock sv_clearhinthistory sv_debug_stuck_particles sv_findsoundname
syn keyword sourceCommand       sv_precacheinfo sv_pure sv_querycache_stats sv_showtags sv_shutdown
syn keyword sourceCommand       sv_soundemitter_filecheck sv_soundemitter_flush sv_soundemitter_reload sv_soundemitter_spew sv_soundscape_printdebuginfo
syn keyword sourceCommand       terror_reload_team_display terror_test_hud_glow test_dispatcheffect test_entity_blocker test_freezeframe
syn keyword sourceCommand       test_giveawayitem test_point testhudanim teststatpanel tf_bot_add
syn keyword sourceCommand       tf_bot_debug_stuck_log tf_bot_kick tf_bot_kill tf_bot_warp_team_to_me tf_clear_attribute
syn keyword sourceCommand       tf_crashclient tf_debugsentrydamage tf_dumpplayerstats tf_halloween_force_boss_spawn tf_invite_debug
syn keyword sourceCommand       tf_lobby_debug tf_mark tf_mvm_checkpoint tf_mvm_checkpoint_clear tf_mvm_force_victory
syn keyword sourceCommand       tf_mvm_jump_to_wave tf_mvm_tank_health tf_mvm_tank_kill tf_party_debug tf_select_ambush_areas
syn keyword sourceCommand       tf_select_with_attribute tf_server_lobby_debug tf_testrr tf_testvcd tf_wipe_attributes
syn keyword sourceCommand       thirdperson thirdperson_mayamode thirdpersonshoulder thread_test_tslist thread_test_tsqueue
syn keyword sourceCommand       threadpool_cycle_reserve threadpool_run_tests timedemo timedemo_vprofrecord timedemoquit
syn keyword sourceCommand       timeleft timerefresh toggle toggle_duck toggle_zoom
syn keyword sourceCommand       toggleconsole togglescores toolload training_continue training_showdlg
syn keyword sourceCommand       tv_clients tv_msg tv_record tv_relay tv_retry sv_status tv_stop tv_stoprecord tv_test_retry tv_test_start
syn keyword sourceCommand       tv_test_stop ui_pump_dlc_mount_content ui_pump_dlc_mount_corrupt ui_pump_dlc_mount_stage ui_reloadscheme
syn keyword sourceCommand       unbind unbind_mac unbindall unload_all_addons unpause
syn keyword sourceCommand       update_addon_paths use user user_context user_property
syn keyword sourceCommand       users vehicle_flushscript version vgui_drawtree_clear vgui_dump_panels
syn keyword sourceCommand       vgui_spew_fonts vgui_togglepanel viewanim_addkeyframe viewanim_create viewanim_load
syn keyword sourceCommand       viewanim_reset viewanim_save viewanim_test voice_menu_1 voice_menu_2
syn keyword sourceCommand       voice_menu_3 voice_mute voice_printtalkers voice_reset_mutelist voice_show_mute
syn keyword sourceCommand       voice_unmute voicerecord_toggle vox_reload voxeltree_box voxeltree_playerview
syn keyword sourceCommand       voxeltree_sphere voxeltree_view vphys_sleep_timeout vprof vprof_adddebuggroup1
syn keyword sourceCommand       vprof_cachemiss vprof_cachemiss_off vprof_cachemiss_on vprof_child vprof_collapse_all
syn keyword sourceCommand       vprof_dump_counters vprof_dump_groupnames vprof_expand_all vprof_expand_group vprof_generate_report
syn keyword sourceCommand       vprof_generate_report_AI vprof_generate_report_AI_only vprof_generate_report_budget vprof_generate_report_hierarchy vprof_generate_report_hierarchy_per_frame_and_co
syn keyword sourceCommand       vprof_generate_report_map_load vprof_nextsibling vprof_off vprof_on vprof_parent
syn keyword sourceCommand       vprof_playback_average vprof_playback_start vprof_playback_step vprof_playback_stepback vprof_playback_stop
syn keyword sourceCommand       vprof_prevsibling vprof_record_start vprof_record_stop vprof_remote_start vprof_remote_stop
syn keyword sourceCommand       vprof_reset vprof_reset_peaks vprof_to_csv vprof_vtune_group vtune vote
syn keyword sourceCommand       wait wc_air_edit_further wc_air_edit_nearer wc_air_node_edit wc_create wc_destroy
syn keyword sourceCommand       wc_destroy_undo wc_link_edit wipe_nav_attributes writeid writeip
syn keyword sourceCommand       xload xlook xmove xsave z_wind_dir

" Syntax: Local variables {{{1
syn keyword sourceVar           BlendBonesMode IgnoreReflectGlassFrustumCheck PhysPMC _cl_classmenuopen _fov
syn keyword sourceVar           addons_eclipse_content adsp_alley_min adsp_courtyard_min adsp_debug adsp_door_height
syn keyword sourceVar           adsp_duct_min adsp_hall_min adsp_low_ceiling adsp_opencourtyard_min adsp_openspace_min
syn keyword sourceVar           adsp_openstreet_min adsp_openwall_min adsp_room_min adsp_street_min adsp_tunnel_min
syn keyword sourceVar           adsp_wall_height ai_shot_bias_max ai_shot_bias_min airboat_joy_response_move ammo_adrenaline_max
syn keyword sourceVar           ammo_ammo_pack_max ammo_assaultrifle_max ammo_autoshotgun_max ammo_chainsaw_max ammo_firstaid_max
syn keyword sourceVar           ammo_grenadelauncher_max ammo_huntingrifle_max ammo_m60_max ammo_minigun_max ammo_molotov_max
syn keyword sourceVar           ammo_painpills_max ammo_pipebomb_max ammo_pistol_max ammo_shotgun_max ammo_smg_max
syn keyword sourceVar           ammo_sniperrifle_max ammo_turret_infected_damage ammo_turret_max ammo_turret_pz_damage ammo_turret_survivor_damage
syn keyword sourceVar           ammo_turret_tank_damage ammo_turret_witch_damage ammo_vomitjar_max anim_3wayblend async_allow_held_files
syn keyword sourceVar           async_mode async_serialize async_simulate_delay binds_per_command blackbox
syn keyword sourceVar           blink_duration budget_averages_window budget_background_alpha budget_bargraph_background_alpha budget_bargraph_range_ms
syn keyword sourceVar           budget_history_numsamplesvisible budget_history_range_ms budget_panel_bottom_of_history_fraction budget_panel_height budget_panel_width
syn keyword sourceVar           budget_panel_x budget_panel_y budget_peaks_window budget_show_averages budget_show_history
syn keyword sourceVar           budget_show_peaks bugreporter_console_bytes bugreporter_includebsp bugreporter_snapshot_delay bugreporter_uploadasync
syn keyword sourceVar           bugreporter_username building_cubemaps bullet_ff_through_walls c_maxdistance c_maxpitch
syn keyword sourceVar           c_maxyaw c_mindistance c_minpitch c_minyaw c_orthoheight
syn keyword sourceVar           c_orthowidth c_thirdpersonshoulder c_thirdpersonshoulderaimdist c_thirdpersonshoulderdist c_thirdpersonshoulderheight
syn keyword sourceVar           c_thirdpersonshoulderoffset cam_collision cam_idealdelta cam_idealdist cam_ideallag
syn keyword sourceVar           cam_idealpitch cam_idealyaw cam_snapto cc_captiontrace cc_lang
syn keyword sourceVar           cc_linger_time cc_minvisibleitems cc_predisplay_time cc_sentencecaptionnorepeat cc_showmissing
syn keyword sourceVar           cc_smallfontlength cc_subtitles cl_SetupAllBones cl_ShowBoneSetupEnts cl_ShowSunVectors
syn keyword sourceVar           cl__ragdoll_max_remove_per_frame cl_addon_debug cl_addon_fade_max cl_addon_fade_min cl_aggregate_particles
syn keyword sourceVar           cl_allowdownload cl_allowupload cl_anglespeedkey cl_ask_blacklist_for_any_server cl_ask_blacklist_max_session_duration
syn keyword sourceVar           cl_ask_blacklist_opt_out cl_ask_favorite_for_any_server cl_ask_favorite_min_session_duration cl_ask_favorite_opt_out cl_autohelp
syn keyword sourceVar           cl_autoreload cl_autorezoom cl_blobbyshadows cl_blurClearAlpha cl_blurDebug
syn keyword sourceVar           cl_blurPasses cl_blurTapSize cl_bob cl_bobcycle cl_bobup
syn keyword sourceVar           cl_boss_show_stun cl_burninggibs cl_buy_favorite_nowarn cl_buy_favorite_quiet cl_c4dynamiclight
syn keyword sourceVar           cl_chat_active cl_chat_wipehistory cl_chatfilter_version cl_chatfilters cl_clanid
syn keyword sourceVar           cl_class cl_clientmenudistancecap cl_clientmenuscalefactor cl_cloud_settings cl_cmdrate
syn keyword sourceVar           cl_color_survivor cl_color_zombie cl_colorblind cl_colorfastpath cl_consistencycheck_interval
syn keyword sourceVar           cl_crosshair_alpha cl_crosshair_blue cl_crosshair_circle_alpha cl_crosshair_circle_mode cl_crosshair_dynamic
syn keyword sourceVar           cl_crosshair_file cl_crosshair_green cl_crosshair_red cl_crosshair_scale cl_crosshair_thickness
syn keyword sourceVar           cl_crosshairalpha cl_crosshaircolor cl_customsounds cl_cycle_latch_tolerance cl_debug_entity
syn keyword sourceVar           cl_debug_player_perf cl_debug_player_use cl_debugrumble cl_demoviewoverride cl_detail_avoid_force
syn keyword sourceVar           cl_detail_avoid_radius cl_detail_avoid_recover_speed cl_detail_max_sway cl_detaildist cl_detailfade
syn keyword sourceVar           cl_disablehtmlmotd cl_downloadfilter cl_drawescaperoute cl_drawmonitors cl_drawprogressbar
syn keyword sourceVar           cl_dynamiccrosshair cl_ejectbrass cl_elevator_physics cl_failremoteconnections cl_fastradial
syn keyword sourceVar           cl_fasttempentcollision cl_flesh_sound_frequency cl_flipviewmodels cl_footstep_fx cl_forcepreload
syn keyword sourceVar           cl_foundry_ShowEntityHighlights cl_fov cl_glow_ability_b cl_glow_ability_colorblind_b cl_glow_ability_colorblind_g
syn keyword sourceVar           cl_glow_ability_colorblind_r cl_glow_ability_g cl_glow_ability_r cl_glow_debug cl_glow_ghost_infected_b
syn keyword sourceVar           cl_glow_ghost_infected_g cl_glow_ghost_infected_r cl_glow_infected_b cl_glow_infected_g cl_glow_infected_r
syn keyword sourceVar           cl_glow_infected_vomit_b cl_glow_infected_vomit_g cl_glow_infected_vomit_r cl_glow_item_b cl_glow_item_far_b
syn keyword sourceVar           cl_glow_item_far_g cl_glow_item_far_r cl_glow_item_g cl_glow_item_r cl_glow_physics_props
syn keyword sourceVar           cl_glow_range_end cl_glow_range_exp cl_glow_range_start cl_glow_survivor_b cl_glow_survivor_g
syn keyword sourceVar           cl_glow_survivor_health_bleed_pulse cl_glow_survivor_health_bleed_pulse_amount cl_glow_survivor_health_bleed_pulse_speed cl_glow_survivor_health_crit_b cl_glow_survivor_health_crit_colorblind_b
syn keyword sourceVar           cl_glow_survivor_health_crit_colorblind_g cl_glow_survivor_health_crit_colorblind_r cl_glow_survivor_health_crit_g cl_glow_survivor_health_crit_r cl_glow_survivor_health_high_b
syn keyword sourceVar           cl_glow_survivor_health_high_colorblind_b cl_glow_survivor_health_high_colorblind_g cl_glow_survivor_health_high_colorblind_r cl_glow_survivor_health_high_g cl_glow_survivor_health_high_r
syn keyword sourceVar           cl_glow_survivor_health_include_buffer cl_glow_survivor_health_low_b cl_glow_survivor_health_low_colorblind_b cl_glow_survivor_health_low_colorblind_g cl_glow_survivor_health_low_colorblind_r
syn keyword sourceVar           cl_glow_survivor_health_low_g cl_glow_survivor_health_low_r cl_glow_survivor_health_med_b cl_glow_survivor_health_med_colorblind_b cl_glow_survivor_health_med_colorblind_g
syn keyword sourceVar           cl_glow_survivor_health_med_colorblind_r cl_glow_survivor_health_med_g cl_glow_survivor_health_med_r cl_glow_survivor_hurt_b cl_glow_survivor_hurt_g
syn keyword sourceVar           cl_glow_survivor_hurt_r cl_glow_survivor_r cl_glow_survivor_vomit_b cl_glow_survivor_vomit_g cl_glow_survivor_vomit_r
syn keyword sourceVar           cl_glow_thirdstrike_item_b cl_glow_thirdstrike_item_colorblind_b cl_glow_thirdstrike_item_colorblind_g cl_glow_thirdstrike_item_colorblind_r cl_glow_thirdstrike_item_g
syn keyword sourceVar           cl_glow_thirdstrike_item_r cl_hud_minmode cl_hudhint_sound cl_ideal_spec_mode cl_idealpitchscale
syn keyword sourceVar           cl_ignore_vpk_assocation cl_impacteffects cl_impacteffects_limit_exit cl_impacteffects_limit_general cl_impacteffects_limit_water
syn keyword sourceVar           cl_infected_animinsim cl_interp cl_interp_all cl_interp_npcs cl_interp_ratio
syn keyword sourceVar           cl_interp_threadmodeticks cl_interpolate cl_jiggle_bone_framerate_cutoff cl_jiggle_bone_sanity cl_lagcomp_errorcheck
syn keyword sourceVar           cl_lagcompensation cl_language cl_left_hand_ik cl_localnetworkbackdoor cl_logofile
syn keyword sourceVar           cl_menuduration cl_modelfastpath cl_mouseenable cl_mouselook cl_mouselook2
syn keyword sourceVar           cl_music_debug cl_muzzleflash_dlight_1st cl_names_debug cl_new_impact_effects cl_notifications_max_num_visible
syn keyword sourceVar           cl_notifications_move_time cl_notifications_show_ingame cl_npc_speedmod_intime cl_npc_speedmod_outtime cl_obj_fake_alert
syn keyword sourceVar           cl_observercrosshair cl_particle_batch_mode cl_particle_fallback_base cl_particle_fallback_multiplier cl_particle_max_count
syn keyword sourceVar           cl_particle_sim_fallback_base_multiplier cl_particle_sim_fallback_threshold_ms cl_perf_wizard_enable cl_phys_block_dist cl_phys_block_fraction
syn keyword sourceVar           cl_phys_maxticks cl_phys_props_enable cl_phys_props_max cl_phys_props_respawndist cl_phys_props_respawnrate
syn keyword sourceVar           cl_pitchspeed cl_playback_screenshots cl_player_max_decal_count cl_player_max_separation_force cl_player_shadow_dist
syn keyword sourceVar           cl_playerspraydisable cl_pred_checkstuck cl_pred_doresetlatch cl_pred_error_verbose cl_pred_optimize
syn keyword sourceVar           cl_predict cl_predictweapons cl_quick_join_panel_accel cl_quick_join_panel_fakecount cl_quick_join_panel_tall
syn keyword sourceVar           cl_quick_join_scroll_max cl_quick_join_scroll_offset cl_quick_join_scroll_rate cl_quick_join_scroll_start cl_ragdoll_collide
syn keyword sourceVar           cl_ragdoll_default_scale cl_ragdoll_fade_time cl_ragdoll_force_multiplier cl_ragdoll_forcefade cl_ragdoll_limit
syn keyword sourceVar           cl_ragdoll_maxcount cl_ragdoll_maxcount_boss cl_ragdoll_maxcount_generic cl_ragdoll_maxcount_gib cl_ragdoll_maxcount_special
syn keyword sourceVar           cl_ragdoll_maxcount_survivor cl_ragdoll_physics_enable cl_ragdoll_reload cl_ragdoll_version cl_rematch_vote_in_progress
syn keyword sourceVar           cl_resend cl_retire_low_priority_lights cl_ricochet_percent cl_ricochet_percent_shotgun cl_rosetta_debug
syn keyword sourceVar           cl_rosetta_line_inner_radius cl_rosetta_line_outer_radius cl_rumblescale cl_savescreenshotstosteam cl_scalecrosshair
syn keyword sourceVar           cl_sceneentity_debug cl_screenshotlocation cl_screenshotname cl_screenshotusertag cl_session
syn keyword sourceVar           cl_show_bounds_errors cl_show_num_particle_systems cl_show_path cl_show_splashes cl_show_tickets
syn keyword sourceVar           cl_showbackpackrarities cl_showbattery cl_showcrit cl_showdemooverlay cl_showerror
syn keyword sourceVar           cl_showfps cl_showhelp cl_showpausedimage cl_showpluginmessages cl_showpos
syn keyword sourceVar           cl_showtextmsg cl_simdbones cl_simulate_no_quicktime cl_smoke_alpha cl_smoke_far
syn keyword sourceVar           cl_smoke_near cl_smooth cl_smoothtime cl_soundfile cl_spec_carrieditems
syn keyword sourceVar           cl_spec_mode cl_spoof_official_ip cl_starfield_diameter cl_starfield_distance cl_steamscreenshots
syn keyword sourceVar           cl_survivor_light_brightness cl_survivor_light_cone cl_survivor_light_debug cl_survivor_light_enable cl_survivor_light_offset_x
syn keyword sourceVar           cl_survivor_light_offset_y cl_survivor_light_offset_z cl_survivor_light_radius cl_survivor_light_rot cl_team
syn keyword sourceVar           cl_temp_health_fade cl_temp_health_pulse_incap cl_temp_health_pulse_rate cl_thirdperson cl_threaded_bone_setup
syn keyword sourceVar           cl_threaded_client_leaf_system cl_threaded_init cl_timeout cl_tlucfastpath cl_tracer_whiz_distance
syn keyword sourceVar           cl_tracers cl_trading_show_requests_from cl_training_completed_with_classes cl_transition_blur_fade_time cl_updaterate
syn keyword sourceVar           cl_use_simd_bones cl_use_tournament_specgui cl_viewbob cl_viewbob_cyclerate_duck cl_viewbob_cyclerate_run
syn keyword sourceVar           cl_viewbob_cyclerate_walk cl_viewbob_scale cl_viewbob_scale_duck cl_viewbob_up cl_viewmodelfovboomer
syn keyword sourceVar           cl_viewmodelfovhunter cl_viewmodelfovsmoker cl_viewmodelfovsurvivor cl_viewmodelfovtank cl_viewmodelsclonedasworld
syn keyword sourceVar           cl_viewtarget_clamp cl_voice_filter cl_vote_active cl_vote_ui_active_after_voting cl_vote_ui_show_notification
syn keyword sourceVar           cl_witch_glow_angry_b cl_witch_glow_angry_g cl_witch_glow_angry_r cl_witch_glow_idle_b cl_witch_glow_idle_g
syn keyword sourceVar           cl_witch_glow_idle_r cl_witch_glow_range cl_wpn_sway_interp cl_yawspeed clientport
syn keyword sourceVar           closecaption closedcaption commentary_firstrun con_drawnotify con_enable
syn keyword sourceVar           con_filter_enable con_filter_text con_filter_text_out con_logfile con_notifytime
syn keyword sourceVar           con_nprint_bgalpha con_nprint_bgborder con_timestamp con_trace connect_lobby
syn keyword sourceVar           contimes coop cpu_level crosshair datacachesize
syn keyword sourceVar           dbg_demofile deathmatch debug_materialmodifycontrol_client demo_avellimit demo_campaign_name
syn keyword sourceVar           demo_connect_string demo_debug demo_fastforwardfinalspeed demo_fastforwardramptime demo_fastforwardstartspeed
syn keyword sourceVar           demo_fov_override demo_interplimit demo_interpolateview demo_legacy_rollback demo_pauseatservertick
syn keyword sourceVar           demo_quitafterplayback demo_ui_enable developer disp_dynamic dlc_bypass_ownership_check
syn keyword sourceVar           download_debug dsp_automatic dsp_db_min dsp_db_mixdrop dsp_enhance_stereo
syn keyword sourceVar           dsp_facingaway dsp_mix_max dsp_mix_min dsp_player dsp_room
syn keyword sourceVar           dsp_slow_cpu dsp_spatial dsp_speaker dsp_vol_2ch dsp_vol_4ch
syn keyword sourceVar           dsp_vol_5ch dsp_volume dsp_water dt_ShowPartialChangeEnts dt_UsePartialChangeEnts
syn keyword sourceVar           dtwarning dtwatchclass dtwatchent dtwatchvar econ_never_show_items_in_cart_count
syn keyword sourceVar           engine_no_focus_sleep english er_colwidth er_graphwidthfrac er_maxname
syn keyword sourceVar           fast_fogvolume filesystem_buffer_size filesystem_max_stdio_read filesystem_native filesystem_report_buffered_io
syn keyword sourceVar           filesystem_unbuffered_io filesystem_use_overlapped_io first_aid_kit_view_duration flex_rules flex_smooth
syn keyword sourceVar           fly_speed fog_max_brightness_after_tonemapping fov_desired fov_desired2 fps_max
syn keyword sourceVar           fps_max_splitscreen fs_convert fs_monitor_read_from_pack fs_report_sync_opens fs_warning_mode
syn keyword sourceVar           func_break_max_pieces fx_drawimpactdebris fx_drawimpactdust fx_drawmetalspark fx_glass_velocity_cap
syn keyword sourceVar           g15_update_msec g_Language g_antlion_maxgibs g_cv_phys2_freeze_ragdolls g_ragdoll_fadespeed
syn keyword sourceVar           g_ragdoll_lvfadespeed g_ragdoll_max_fps g_ragdoll_min_fps gameinstructor_enable gameinstructor_start_sound_cooldown
syn keyword sourceVar           gameui_ingame_menu_active gameui_xbox gl_amd_occlusion_workaround gl_clear gl_nvidia_occlusion_workaround
syn keyword sourceVar           glow_outline_effect_enable gpu_level gpu_mem_level hap_HasDevice hap_damagescale_game
syn keyword sourceVar           hap_melee_scale hap_noclip_avatar_scale hap_ui_vehicles helping_hand_debug hl2_episodic
syn keyword sourceVar           host_ShowIPCCallCount host_flush_threshold host_framerate host_limitlocal host_map
syn keyword sourceVar           host_profile host_showcachemiss host_speeds host_syncfps host_thread_mode
syn keyword sourceVar           host_threaded_sound host_timer_spin_ms host_timescale host_xbox_e3_restart hostip
syn keyword sourceVar           hostname hostport hud_achievement_count hud_achievement_count_engineer hud_achievement_description
syn keyword sourceVar           hud_achievement_glowtime hud_achievement_tracker hud_autoaim_method hud_autoaim_scale_icon hud_autoreloadscript
syn keyword sourceVar           hud_classautokill hud_combattext hud_combattext_healing hud_deathnotice_bots hud_deathnotice_threats
syn keyword sourceVar           hud_deathnotice_time hud_dmgrecord_persisttime_deaths hud_dmgrecord_persisttime_other hud_draw_active_reticle hud_draw_fixed_reticle
syn keyword sourceVar           hud_drawhistory_time hud_escort_interp hud_escort_test_progress hud_escort_test_speed hud_fastswitch
syn keyword sourceVar           hud_freezecamhide hud_lowammowarning_maxposadjust hud_lowammowarning_threshold hud_magnetism hud_medicautocallers
syn keyword sourceVar           hud_medicautocallersthreshold hud_medichealtargetmarker hud_quickinfo hud_reticle_alpha_speed hud_reticle_maxalpha
syn keyword sourceVar           hud_reticle_minalpha hud_reticle_scale hud_saytext_time hud_scavenge_timer_warning_range hud_showemptyweaponslots
syn keyword sourceVar           hud_showtargetid hud_survival_target_time_range hud_takesshots hud_targetid_health hud_targetid_name_height
syn keyword sourceVar           hud_targetid_name_height_boomer hud_targetid_name_height_hunter hud_targetid_name_height_smoker hud_targetid_name_height_tank hud_targetid_player_view_cone
syn keyword sourceVar           hud_targetid_pz_ss_view_cone hud_targetid_skill hud_targetid_upgrades hud_winpanel_scoreanim_chingdelay hud_winpanel_scoreanim_effectdelay
syn keyword sourceVar           hud_winpanel_scoreanim_effectdelay_mult hud_winpanel_scoreanim_scoredelay hud_winpanel_tiebreak_anim hud_winpanel_tiebreak_intro hud_winpanel_tiebreak_outro
syn keyword sourceVar           hud_zombieteam hud_zombieteam_showself ifm_steadycam_2ddragconstant ifm_steadycam_2dspringconstant ifm_steadycam_armspeed
syn keyword sourceVar           ifm_steadycam_mousefactor ifm_steadycam_mousepower ifm_steadycam_noise ifm_steadycam_rotatedamp ifm_steadycam_rotaterate
syn keyword sourceVar           ifm_steadycam_sensitivity ifm_steadycam_zoomdamp ifm_steadycam_zoomspeed in_usekeyboardsampletime inferno_dlights
syn keyword sourceVar           inferno_entity_flame_scale inferno_fire ip joy_accel_filter joy_accelmax
syn keyword sourceVar           joy_accelscale joy_advanced joy_advaxisr joy_advaxisu joy_advaxisv
syn keyword sourceVar           joy_advaxisx joy_advaxisy joy_advaxisz joy_autoaimdampen joy_autoaimdampenrange
syn keyword sourceVar           joy_autosprint joy_axisbutton_threshold joy_cfg_preset joy_cfg_preset2 joy_circle_correct
syn keyword sourceVar           joy_diagonalpov joy_display_input joy_forwardsensitivity joy_forwardthreshold joy_inverty
syn keyword sourceVar           joy_inverty2 joy_inverty_default joy_legacy joy_legacy2 joy_lookspin_default
syn keyword sourceVar           joy_lowend joy_lowmap joy_movement_stick joy_movement_stick2 joy_movement_stick_default
syn keyword sourceVar           joy_name joy_pegged joy_pitchsensitivity joy_pitchsensitivity2 joy_pitchsensitivity_default
syn keyword sourceVar           joy_pitchthreshold joy_response_look joy_response_move joy_response_move_vehicle joy_sensitive_step0
syn keyword sourceVar           joy_sensitive_step1 joy_sensitive_step2 joy_sidesensitivity joy_sidethreshold joy_variable_frametime
syn keyword sourceVar           joy_vehicle_turn_lowend joy_vehicle_turn_lowmap joy_virtual_peg joy_wingmanwarrior_centerhack joy_wingmanwarrior_turnhack
syn keyword sourceVar           joy_xcontroller_cfg_loaded joy_xcontroller_found joy_yawsensitivity joy_yawsensitivity2 joy_yawsensitivity_default
syn keyword sourceVar           joy_yawthreshold joystick joystick_force_disabled joystick_force_disabled_set jpeg_quality
syn keyword sourceVar           ladder_autocenter ladder_console_controls ladder_horizon leaderboard_force_rank_show_interval loader_defer_non_critical_jobs
syn keyword sourceVar           loader_spew_info loader_spew_info_ex loader_throttle_io localplayer_visionflags locator_fade_time
syn keyword sourceVar           locator_lerp_rest locator_lerp_speed locator_lerp_time locator_pulse_time lod_TransitionDist
syn keyword sourceVar           lookspring lookstrafe lower_body lower_body_hulk_layers m_customaccel
syn keyword sourceVar           m_customaccel_exponent m_customaccel_max m_customaccel_scale m_filter m_filter2
syn keyword sourceVar           m_forward m_mouseaccel1 m_mouseaccel2 m_mousespeed m_pitch
syn keyword sourceVar           m_pitch2 m_rawinput m_side m_yaw map_noareas
syn keyword sourceVar           mat_360_aa_override mat_aaquality mat_alphacoverage mat_antialias mat_autoexposure_max
syn keyword sourceVar           mat_autoexposure_min mat_bloom_scalefactor_scalar mat_bloomscale mat_bufferprimitives mat_bumpmap
syn keyword sourceVar           mat_clipz mat_colcorrection_disableentities mat_colcorrection_editor mat_color_projection mat_colorcorrection
syn keyword sourceVar           mat_compressedtextures mat_debug_postprocessing_effects mat_debugdepth mat_debugdepthmode mat_debugdepthval
syn keyword sourceVar           mat_debugdepthvalmax mat_depthfeather_enable mat_diffuse mat_disable_bloom mat_disable_d3d9ex
syn keyword sourceVar           mat_disable_fancy_blending mat_disable_lightwarp mat_disable_ps_patch mat_disablehwmorph mat_dof_enabled
syn keyword sourceVar           mat_dof_far_blur_depth mat_dof_far_blur_radius mat_dof_far_focus_depth mat_dof_max_blur_radius mat_dof_near_blur_depth
syn keyword sourceVar           mat_dof_near_blur_radius mat_dof_near_focus_depth mat_dof_override mat_dof_quality mat_drawTexture
syn keyword sourceVar           mat_drawTextureScale mat_drawTitleSafe mat_dump_rts mat_dxlevel mat_envmapsize
syn keyword sourceVar           mat_envmaptgasize mat_excludetextures mat_fastspecular mat_filterlightmaps mat_filtertextures
syn keyword sourceVar           mat_force_ps_patch mat_force_vertexfog mat_forceaniso mat_forcehardwaresync mat_forcemanagedtextureintohardware
syn keyword sourceVar           mat_framebuffercopyoverlaysize mat_grain_enable mat_grain_scale_override mat_hdr_level mat_hdr_manual_tonemap_rate
syn keyword sourceVar           mat_levelflush mat_lightmap_pfms mat_local_contrast_edge_scale_override mat_local_contrast_enable mat_local_contrast_midtone_mask_override
syn keyword sourceVar           mat_local_contrast_scale_override mat_local_contrast_vignette_end_override mat_local_contrast_vignette_start_override mat_managedtextures mat_max_worldmesh_vertices
syn keyword sourceVar           mat_maxframelatency mat_mipmaptextures mat_monitorgamma mat_monitorgamma_tv_enabled mat_monitorgamma_tv_exp
syn keyword sourceVar           mat_monitorgamma_tv_range_max mat_monitorgamma_tv_range_min mat_motion_blur_enabled mat_motion_blur_falling_intensity mat_motion_blur_falling_max
syn keyword sourceVar           mat_motion_blur_falling_min mat_motion_blur_forward_enabled mat_motion_blur_percent_of_screen_max mat_motion_blur_rotation_intensity mat_motion_blur_strength
syn keyword sourceVar           mat_non_hdr_bloom_scalefactor mat_parallaxmap mat_parallaxmapsamplesmax mat_parallaxmapsamplesmin mat_phong
syn keyword sourceVar           mat_picmip mat_postprocess_x mat_postprocess_y mat_postprocessing_combine mat_powersavingsmode
syn keyword sourceVar           mat_queue_mode mat_queue_priority mat_queue_report mat_reducefillrate mat_reduceparticles
syn keyword sourceVar           mat_report_queue_status mat_shadowstate mat_show_ab_hdr mat_show_ab_hdr_hudelement mat_show_histogram
syn keyword sourceVar           mat_showenvmapmask mat_showlightmappage mat_skybox_reflection_clip mat_skybox_water_reflection mat_software_aa_blur_one_pixel_lines
syn keyword sourceVar           mat_software_aa_debug mat_software_aa_edge_threshold mat_software_aa_quality mat_software_aa_strength mat_software_aa_strength_vgui
syn keyword sourceVar           mat_software_aa_tap_offset mat_softwarelighting mat_specular mat_spew_long_frames mat_spewalloc
syn keyword sourceVar           mat_supportflashlight mat_supports_d3d9ex mat_texture_limit mat_texture_list mat_texture_list_all
syn keyword sourceVar           mat_texture_list_all_frames mat_texture_list_content_path mat_texture_list_exclude_editing mat_texture_list_view mat_tonemapping_occlusion_use_stencil
syn keyword sourceVar           mat_treesway mat_trilinear mat_triplebuffered mat_use_compressed_hdr_textures mat_vignette_enable
syn keyword sourceVar           mat_vsync mat_wateroverlaysize matchmakingport mem_dumpstats mem_force_flush
syn keyword sourceVar           mem_force_flush_section mem_level mem_max_heapsize mem_max_heapsize_dedicated mem_min_heapsize
syn keyword sourceVar           mem_periodicdumps mem_test_each_frame mem_test_every_n_seconds mem_test_quiet metamod_version
syn keyword sourceVar           miniprofiler_dump mm_basedir mm_datacenter_delay_mount_frames mm_datacenter_query_delay mm_datacenter_report_version
syn keyword sourceVar           mm_datacenter_retry_infochunks_attempts mm_datacenter_retry_interval mm_datacenter_update_interval mm_dedicated_allow mm_dedicated_fake
syn keyword sourceVar           mm_dedicated_force_servers mm_dedicated_ip mm_dedicated_min_request_time mm_dedicated_search_maxping mm_dedicated_search_maxresults
syn keyword sourceVar           mm_dedicated_timeout_request mm_dlcs_mask_extras mm_dlcs_mask_fake mm_events_listeners_validation mm_heartbeat_seconds
syn keyword sourceVar           mm_heartbeat_seconds_xlsp mm_heartbeat_timeout mm_heartbeat_timeout_legacy mm_ignored_sessions_forget_pass mm_ignored_sessions_forget_time
syn keyword sourceVar           mm_match_search_update_interval mm_matchmaking_dlcsquery mm_matchmaking_version mm_max_spectators mm_minplayers
syn keyword sourceVar           mm_player_search_count mm_player_search_lan_ping_duration mm_player_search_lan_ping_interval mm_player_search_update_interval mm_pluginsfile
syn keyword sourceVar           mm_server_search_inet_ping_interval mm_server_search_inet_ping_refresh mm_server_search_inet_ping_timeout mm_server_search_inet_ping_window mm_server_search_lan_ping_duration
syn keyword sourceVar           mm_server_search_lan_ping_interval mm_server_search_lan_ports mm_server_search_server_lifetime mm_server_search_update_interval mm_session_search_num_results
syn keyword sourceVar           mm_session_search_ping_limit mm_session_search_qos_timeout mm_session_sys_delay_create mm_session_sys_timeout mm_teamsearch_errortime
syn keyword sourceVar           mm_teamsearch_nostart mm_tu_string mod_check_vcollide mod_dont_load_vertices mod_dynamicloadspew
syn keyword sourceVar           mod_dynamicunloadtex mod_dynamicunloadtime mod_forcedata mod_forcetouchdata mod_load_anims_async
syn keyword sourceVar           mod_load_fakestall mod_load_mesh_async mod_load_showstall mod_load_vcollide_async mod_lock_mdls_on_load
syn keyword sourceVar           mod_lock_meshes_on_load mod_test_mesh_not_available mod_test_not_available mod_test_verts_not_available mod_touchalldata
syn keyword sourceVar           mod_trace_load morph_debug morph_path motd_intros mp_allowspectators
syn keyword sourceVar           mp_blockstyle mp_bonusroundtime mp_buytime mp_capdeteriorate_time mp_capstyle
syn keyword sourceVar           mp_chattime mp_decals mp_disable_respawn_times mp_facefronttime mp_fadetoblack
syn keyword sourceVar           mp_feetyawrate mp_feetyawrate_max mp_forceautoteam mp_forcecamera mp_friendlyfire
syn keyword sourceVar           mp_gamemode mp_ik mp_maxrounds mp_playerid mp_playerid_delay
syn keyword sourceVar           mp_playerid_hold mp_respawnwavetime mp_slammoveyaw mp_stalemate_meleeonly mp_teams_unbalance_limit
syn keyword sourceVar           mp_timelimit mp_tournament mp_usehwmmodels mp_usehwmvcds mp_weapon_ak47_price
syn keyword sourceVar           mp_weapon_aug_price mp_weapon_awp_price mp_weapon_deagle_price mp_weapon_elite_price mp_weapon_famas_price
syn keyword sourceVar           mp_weapon_fiveseven_price mp_weapon_g3sg1_price mp_weapon_galil_price mp_weapon_glock_price mp_weapon_m249_price
syn keyword sourceVar           mp_weapon_m3_price mp_weapon_m4a1_price mp_weapon_mac10_price mp_weapon_mp5navy_price mp_weapon_p228_price
syn keyword sourceVar           mp_weapon_p90_price mp_weapon_scout_price mp_weapon_sg550_price mp_weapon_sg552_price mp_weapon_tmp_price
syn keyword sourceVar           mp_weapon_ump45_price mp_weapon_usp_price mp_weapon_xm1014_price mp_winlimit music_master_latency_report
syn keyword sourceVar           music_master_spew muzzleflash_light name name2 nb_shadow_blobby_dist
syn keyword sourceVar           nb_shadow_cull_dist nb_shadow_dist net_allow_multicast net_allow_syslink net_chokeloop
syn keyword sourceVar           net_compresspackets net_compresspackets_minsize net_compressvoice net_drawslider net_dumptest
syn keyword sourceVar           net_graph net_graphheight net_graphmsecs net_graphpos net_graphproportionalfont
syn keyword sourceVar           net_graphshowinterp net_graphshowlatency net_graphsolid net_graphtext net_maxcleartime
syn keyword sourceVar           net_maxfilesize net_maxfragments net_maxpacketdrop net_maxroutable net_megasnapshot
syn keyword sourceVar           net_minroutable net_paranoid net_public_adr net_queue_trace net_queued_packet_thread
syn keyword sourceVar           net_scale net_showdrop net_showeventlisteners net_showevents net_showfragments
syn keyword sourceVar           net_showmsg net_showpeaks net_showsplits net_showtcp net_showudp
syn keyword sourceVar           net_showudp_remoteonly net_showudp_wire net_showusercmd net_splitpacket_maxrate net_splitrate
syn keyword sourceVar           net_steamcnx_allowrelay net_steamcnx_debug net_steamcnx_enabled net_udp_rcvbuf net_usesocketsforloopback
syn keyword sourceVar           netgraph_pos next_weapon_timer old_radiusdamage opt_EnumerateLeavesFastAlgorithm option_duck_method_default overview_alpha
syn keyword sourceVar           overview_health overview_locked overview_names overview_tracks particle_sim_alt_cores
syn keyword sourceVar           password perf_fire_bullet_firstpredictedonly perf_fire_bullet_single peril_notice_timer phonemedelay
syn keyword sourceVar           phonemefilter phonemesnap phys2_air_density phys2_angular_damping phys2_angular_damping_in_water
syn keyword sourceVar           phys2_artificial_acceleration phys2_async phys2_async_server phys2_buoyancy_damping phys2_buoyancy_factor
syn keyword sourceVar           phys2_buoyancy_version phys2_buoyant_damping_multiplier phys2_buoyant_sleep_energy_threshold phys2_ccd_epsilon phys2_clamp_velocity
syn keyword sourceVar           phys2_cmodels phys2_contact_report_threshold phys2_continuous_cd phys2_debug_draw phys2_debug_draw_scale
syn keyword sourceVar           phys2_debug_dump_entities phys2_debug_traceray phys2_debug_wakeup phys2_dedicated_thread_pool phys2_default_friction
syn keyword sourceVar           phys2_default_wakeup_counter phys2_dump_exclude_list phys2_dump_ray_counts phys2_enable phys2_enable_breakable_constraints
syn keyword sourceVar           phys2_enable_buoyancy phys2_enable_deferred_calls phys2_enable_drives phys2_enable_energy_sleep_test phys2_enable_sap_multi
syn keyword sourceVar           phys2_enable_variable_timestep phys2_expensive_sync_warning phys2_force_apply_magnitude phys2_global_ccd_motion_threshold_multiplier phys2_global_skin_width_multiplier
syn keyword sourceVar           phys2_hack_ignore_level_collision phys2_hack_ignore_models phys2_hack_ignore_rays phys2_hack_print_rays phys2_hack_replace_bboxes
syn keyword sourceVar           phys2_level_prefer_polytopes phys2_linear_damping phys2_linear_damping_in_water phys2_mass_exponent phys2_max_angular_velocity
syn keyword sourceVar           phys2_max_substeps phys2_max_timestep phys2_merge_static_props phys2_num_threads phys2_ragdoll_ccd
syn keyword sourceVar           phys2_ragdoll_clamp_angular_velocity phys2_ragdoll_clamp_linear_velocity phys2_ragdoll_convert_to_capsules phys2_ragdoll_create_constraints phys2_ragdoll_default_friction
syn keyword sourceVar           phys2_ragdoll_drive_damping phys2_ragdoll_drive_spring phys2_ragdoll_force_magnitude phys2_ragdoll_iterations phys2_ragdoll_joint_damping
syn keyword sourceVar           phys2_ragdoll_joint_or phys2_ragdoll_log phys2_ragdoll_projection_angle phys2_ragdoll_projection_distance phys2_ragdoll_projection_mode
syn keyword sourceVar           phys2_ragdoll_self_collision phys2_ragdoll_torque_magnitude phys2_ragdoll_use_boxes phys2_ragdoll_use_d6_joints phys2_ragdoll_velocity
syn keyword sourceVar           phys2_report_asserts phys2_report_errors phys2_report_messages phys2_report_warnings phys2_res_mgr_break
syn keyword sourceVar           phys2_scheduler_enable phys2_scheduler_stats phys2_scheduler_yield phys2_sim_hw phys2_sim_thread_mask_client
syn keyword sourceVar           phys2_sim_thread_mask_server phys2_sim_thread_stack phys2_sleep_angular_velocity phys2_sleep_damping phys2_sleep_energy_threshold
syn keyword sourceVar           phys2_sleep_linear_velocity phys2_solver_batch_size phys2_support_level phys2_thread_mask_client phys2_thread_mask_server
syn keyword sourceVar           phys2_thread_stack phys2_version phys2_visualize phys2_water_density_multiplier phys2_water_single_actor
syn keyword sourceVar           phys2_water_wakeup_counter phys2_xbox_scheduler phys2_xbox_scheduler_thread_mask phys2_xbox_sim_thread_priority phys2ui_mouse_wheel_scale
syn keyword sourceVar           phys_debug_check_contacts phys_enable_experimental_optimizations phys_enable_query_cache phys_enable_simd_optimizations phys_pushscale
syn keyword sourceVar           phys_ragdoll_force_magnitude physics2_polytope_radius_factor physx_subdir ping_max_green ping_max_red
syn keyword sourceVar           ping_max_yellow pipeline_static_props prop_use props_break_max_pieces props_break_max_pieces_perframe
syn keyword sourceVar           publish_file_last_dir punch_angle_decay_rate pyro_dof pyro_max_intensity pyro_max_rate
syn keyword sourceVar           pyro_max_side_length pyro_max_side_width pyro_min_intensity pyro_min_rate pyro_min_side_length
syn keyword sourceVar           pyro_min_side_width pyro_vignette pyro_vignette_distortion r_3dsky r_DispDrawAxes
syn keyword sourceVar           r_DrawDetailProps r_DrawSpecificStaticProp r_FlashlightDetailProps r_ForceRestore r_ForceWaterLeaf
syn keyword sourceVar           r_PhysPropStaticLighting r_RainAllowInSplitScreen r_RainParticleDensity r_ShowViewerArea r_WaterDrawReflection
syn keyword sourceVar           r_WaterDrawRefraction r_ambientboost r_ambientfactor r_ambientmin r_aspectratio
syn keyword sourceVar           r_bloomtintb r_bloomtintexponent r_bloomtintexponent_ghost r_bloomtintg r_bloomtintr
syn keyword sourceVar           r_debug_sequencesets r_decal_cover_count r_decal_cullsize r_decal_overlap_area r_decal_overlap_count
syn keyword sourceVar           r_decals r_decalstaticprops r_dopixelvisibility r_draw_flashlight_3rd_person r_draw_lasersight_1st_person
syn keyword sourceVar           r_draw_lasersight_3rd_person r_drawbatchdecals r_drawdetailprops r_drawflecks r_drawmodeldecals
syn keyword sourceVar           r_drawmodelstatsoverlaymax r_drawmodelstatsoverlaymin r_drawopaquestaticpropslast r_drawpixelvisibility r_drawtracers_firstperson
syn keyword sourceVar           r_drawunderwaterfogblocker r_drawviewmodel r_dynamic r_emulategl r_entityclips
syn keyword sourceVar           r_eyeglintlodpixels r_eyegloss r_eyemove r_eyes r_eyeshift_x
syn keyword sourceVar           r_eyeshift_y r_eyeshift_z r_eyesize r_fade360style r_fastzreject
syn keyword sourceVar           r_fastzrejectdisp r_flashlight_3rd_person_range r_flashlight_topdown r_flashlight_version2 r_flashlightculldepth
syn keyword sourceVar           r_flashlightdepthres r_flashlightdepthtexture r_flashlightdrawdepth r_flashlightdrawfrustum r_flashlightdrawfrustumbbox
syn keyword sourceVar           r_flashlightdrawsweptbbox r_flashlightinfectedfar r_flashlightinfectedfov r_flashlightinfectedlinear r_flashlightinfectedshadows
syn keyword sourceVar           r_flashlightmodels r_flashlightmuzzleflash r_flashlightnodraw r_flashlightrender r_flashlightrendermodels
syn keyword sourceVar           r_flashlightrenderworld r_flashlightscissor r_flashlightupdatedepth r_flashlightvolumetrics r_flashlightvolumetricsdrawnatend
syn keyword sourceVar           r_flex r_frustumcullworld r_glint_alwaysdraw r_glint_procedural r_hunkalloclightmaps
syn keyword sourceVar           r_impactparticles r_jiggle_bones r_lightaverage r_lightcache_zbuffercache r_lod
syn keyword sourceVar           r_maxdlights r_maxmodeldecal r_maxnewsamples r_maxsampledist r_minlightmap
syn keyword sourceVar           r_minnewsamples r_norefresh r_occludeemaxarea r_occluderminarea r_occludermincount
syn keyword sourceVar           r_occlusion r_overlayfadeenable r_overlayfademax r_overlayfademin r_overlaywireframe
syn keyword sourceVar           r_particle_sim_spike_threshold_ms r_particle_timescale r_pix_recordframes r_pix_start r_pixelfog
syn keyword sourceVar           r_pixelvisibility_partial r_pixelvisibility_spew r_portalscloseall r_proplightingfromdisk r_propsmaxdist
syn keyword sourceVar           r_queued_decals r_queued_post_processing r_queued_ropes r_renderoverlayfragment r_rootlod
syn keyword sourceVar           r_rope_holiday_light_scale r_ropes_holiday_lights_allowed r_ropetranslucent r_screenfademaxsize r_screenfademinsize
syn keyword sourceVar           r_sequence_debug r_shader_srgb r_shadow_half_update_rate r_shadow_lightpos_lerptime r_shadow_shortenfactor
syn keyword sourceVar           r_shadowfromworldlights r_shadowlod r_shadowlodbias r_shadowmaxrendered r_shadowrendertotexture
syn keyword sourceVar           r_shadows r_shadows_on_renderables_enable r_snapportal r_spewleaf r_spray_lifetime
syn keyword sourceVar           r_sse_s r_staticlight_streams r_staticprop_lod r_staticpropinfo r_teeth
syn keyword sourceVar           r_threaded_client_shadow_manager r_threaded_particles r_threaded_renderables r_threaded_shadow_clip r_threadeddetailprops
syn keyword sourceVar           r_unlimitedrefract r_unloadlightmaps r_visambient r_visualizeproplightcaching r_waterforceexpensive
syn keyword sourceVar           r_waterforcereflectentities r_worldlightmin r_worldlights r_worldlistcache ragdoll_collide
syn keyword sourceVar           ragdoll_door_uncollide_time ragdoll_force_to_sleep_time ragdoll_self_collision ragdoll_sleepaftertime ragdoll_slowdown
syn keyword sourceVar           ragdoll_slowdown_time rate rcon_address rcon_password reload_materials
syn keyword sourceVar           replay_block_dump_interval replay_buffersize replay_cache_client_ragdolls replay_data_lifespan replay_deathcammaxverticaloffset
syn keyword sourceVar           replay_debug replay_dodiskcleanup replay_editor_camera_length replay_editor_fov_mousewheel_invert replay_editor_fov_mousewheel_multiplier
syn keyword sourceVar           replay_enable replay_enableeventbasedscreenshots replay_enablerenderpreview replay_fileserver_host replay_fileserver_path
syn keyword sourceVar           replay_fileserver_port replay_fileserver_protocol replay_flushinterval replay_forcereconstruct replay_ignorereplayticks
syn keyword sourceVar           replay_local_fileserver_path replay_maxconcurrentdownloads replay_maxscreenshotsperreplay replay_mintimebetweenscreenshots replay_movie_export_last_dir
syn keyword sourceVar           replay_movie_reveal_warning replay_msgduration_connectrecording replay_msgduration_error replay_msgduration_misc replay_msgduration_replaysavailable
syn keyword sourceVar           replay_msgduration_startrecord replay_msgduration_stoprecord replay_perftip_count_enter replay_perftip_count_exit replay_perftip_count_freecam_enter
syn keyword sourceVar           replay_perftip_count_freecam_exit replay_perftip_count_freecam_exit2 replay_playerdeathscreenshotdelay replay_postdeathrecordtime replay_postwinreminderduration
syn keyword sourceVar           replay_publish_simulate_delay_ftp replay_publish_simulate_delay_local_http replay_publish_simulate_rename_fail replay_quitmsg_dontaskagain replay_ragdoll_blending
syn keyword sourceVar           replay_ragdoll_dbg replay_ragdoll_tickoffset replay_recording replay_renderqueue_first_add replay_rendersetting_encodingquality
syn keyword sourceVar           replay_rendersetting_exportraw replay_rendersetting_motionblur_can_toggle replay_rendersetting_motionblurenabled replay_rendersetting_motionblurquality replay_rendersetting_quitwhendone
syn keyword sourceVar           replay_rendersetting_renderglow replay_replayeditor_rewindmsgcounter replay_replaywelcomedlgcount replay_screenshotkilldelay replay_screenshotresolution
syn keyword sourceVar           replay_screenshotsentrykilldelay replay_sentrycammaxverticaloffset replay_sentrycamoffset_frontback replay_sentrycamoffset_leftright replay_sentrycamoffset_updown
syn keyword sourceVar           replay_sessioninfo_updatefrequency replay_voice_during_playback res_restrict_access room_type rope_averagelight
syn keyword sourceVar           rope_collide rope_rendersolid rope_shake rope_smooth rope_smooth_enlarge
syn keyword sourceVar           rope_smooth_maxalpha rope_smooth_maxalphawidth rope_smooth_minalpha rope_smooth_minwidth rope_solid_maxalpha
syn keyword sourceVar           rope_solid_maxwidth rope_solid_minalpha rope_solid_minwidth rope_subdiv rope_wind_dist
syn keyword sourceVar           rpt_vprof_time save_async save_asyncdelay save_console save_disable
syn keyword sourceVar           save_history_count save_huddelayframes save_in_memory save_noxsave save_screenshot
syn keyword sourceVar           save_spew sb_close_browser_on_connect sb_dontshow_maxplayer_warning sb_firstopentime sb_mod_suggested_maxplayers
syn keyword sourceVar           sb_numtimesopened sb_perf_collect sb_perf_dump_low sb_perf_dump_low_dist sb_quick_list_bit_field
syn keyword sourceVar           sb_showblacklists scavenge_scoreboard_round_sound_effect_interval scavenge_scoreboard_round_time_effect_delay scavenge_scoreboard_round_time_effect_duration scavenge_scoreboard_survivor_score_effect_delay
syn keyword sourceVar           scene_clientflex scene_print scene_vcdautosave scr_centertime sensitivity
syn keyword sourceVar           sfm_record_hz shake_show shotgun_reload_cancel_delay showbudget_texture_global_sum showparticlecounts
syn keyword sourceVar           sixense_aim_1to1_heading_multiplier sixense_aim_1to1_pitch_multiplier sixense_aim_1to1_ratchet_vertical sixense_aim_freeaim_accel_band_exponent sixense_aim_freeaim_accel_band_size
syn keyword sourceVar           sixense_aim_freeaim_auto_level_rate sixense_aim_freeaim_dead_zone_radius sixense_aim_freeaim_heading_multiplier sixense_aim_freeaim_max_speed sixense_aim_freeaim_pitch_multiplier
syn keyword sourceVar           sixense_aim_freeaim_switch_blend_time_exit sixense_aim_scope_heading_multiplier sixense_aim_scope_pitch_multiplier sixense_always_draw_crosshair sixense_base_offset_x
syn keyword sourceVar           sixense_base_offset_y sixense_base_offset_z sixense_controller_angle_mode sixense_crosshair_horiz_multiplier sixense_crosshair_vert_multiplier
syn keyword sourceVar           sixense_crouch_sensitivity sixense_enabled sixense_exit_metroid_blend sixense_exit_one_to_one_dot sixense_features_enabled
syn keyword sourceVar           sixense_feet_angles_offset_stick_spin_exponent sixense_feet_angles_offset_stick_spin_horiz_multiplier sixense_feet_angles_offset_stick_spin_invert_pitch sixense_feet_angles_offset_stick_spin_vert_multiplier sixense_filter_level
syn keyword sourceVar           sixense_jump_sensitivity sixense_left_handed sixense_max_charge_spin sixense_melee_pitch_blend_val sixense_mode
syn keyword sourceVar           sixense_mouse_enabled sixense_mouse_sensitivity sixense_point_gesture_angle_threshold sixense_reload_sensitivity sixense_roll_correct_blend
syn keyword sourceVar           sixense_sensitivity_level sixense_spring_view_enabled sixense_spring_view_max_angle sixense_spring_view_max_spring sixense_spring_view_min_angle
syn keyword sourceVar           sixense_spring_view_min_spring sixense_tilt_gesture_angle_threshold sixense_trigger_threshold sixense_walking_dead_zone_percent sixense_walking_exponent
syn keyword sourceVar           sixense_weapon_select_sensitivity sixense_zoom_momentary_time sk_autoaim_mode skill smoothstairs
syn keyword sourceVar           snd_async_fullyasync snd_async_minsize snd_async_spew_blocking snd_async_stream_fail snd_async_stream_spew
syn keyword sourceVar           snd_cull_duplicates snd_debug_gaincurve snd_debug_gaincurvevol snd_defer_trace snd_delay_sound_shift
syn keyword sourceVar           snd_disable_mixer_duck snd_disable_mixer_solo snd_duckerattacktime snd_duckerreleasetime snd_duckerthreshold
syn keyword sourceVar           snd_ducktovolume snd_legacy_surround snd_list snd_lockpartial snd_max_same_sounds
syn keyword sourceVar           snd_max_same_weapon_sounds snd_mergemethod snd_mix_async snd_mix_minframetime snd_mixahead
syn keyword sourceVar           snd_mixer_master_dsp snd_mixer_master_level snd_moviefix snd_musicvolume snd_mute_losefocus
syn keyword sourceVar           snd_noextraupdate snd_pitchquality snd_prefetch_common snd_profile snd_show snd_ShowThreadFrameTime
syn keyword sourceVar           snd_show_maxchannels_errors snd_showclassname snd_showmixer snd_soundmixer snd_soundmixer_parse_debug
syn keyword sourceVar           snd_soundmixer_version snd_spatialize_roundrobin snd_store_filepaths snd_surround_speakers snd_vox_captiontrace
syn keyword sourceVar           snd_vox_globaltimeout snd_vox_sectimetout snd_vox_seqtimetout soundpatch_captionlength soundscape_message
syn keyword sourceVar           sourcemod_version spec_allowroaming spec_autodirector spec_centerchasecam spec_chasedistance
syn keyword sourceVar           spec_chasedistancestep spec_cinematic spec_closeup_range spec_lockedchasecam spec_lockedchasecam_center_speed
syn keyword sourceVar           spec_lockedchasecam_delay spec_lockedchasecam_pitch spec_lockedchasecam_yaw spec_longshot_range spec_max_tracking_error
syn keyword sourceVar           spec_scoreboard spec_track spec_tracking_power spew_consolelog_to_debugstring ss_splitmode
syn keyword sourceVar           ss_verticalsplit ss_voice_hearpartner stats_highlight_interval steam_stats_write_to_keyvalue steamworks_client_sessionid
syn keyword sourceVar           steamworks_immediate_upload steamworks_server_sessionid steamworks_sessionid_client steamworks_show_uploads steamworks_stats_disable
syn keyword sourceVar           still_vel_limit still_view_accel_limit store_version stringtable_alwaysrebuilddictionaries stringtable_usedictionaries
syn keyword sourceVar           studio_queue_mode survivor_allow_crawling survivor_drag_continuous_fire survivor_expressions survivor_expressions_anger
syn keyword sourceVar           survivor_expressions_fear survivor_it_fade_in_interval survivor_it_fade_out_interval survivor_lean survivor_ledge_grab_health
syn keyword sourceVar           survivor_revive_after_drag survivor_revive_continuous_fire survivor_teammatefocus_enabled survivor_teammatefocus_speed survivor_teammatefocus_stickyness
syn keyword sourceVar           survivor_upgrade_reload_duration sys_attract_mode_timeout sys_minidumpexpandedspew sys_minidumpspewlines systemlinkport
syn keyword sourceVar           tank_pz_forward teamwork_event_display_time teamwork_event_fade_in_time teamwork_event_fade_out_time teamwork_event_min_interval
syn keyword sourceVar           telemetry_demoend telemetry_demostart telemetry_filtervalue telemetry_framecount telemetry_level
syn keyword sourceVar           telemetry_pause telemetry_resume telemetry_server testscript_debug texture_budget_background_alpha
syn keyword sourceVar           texture_budget_panel_bottom_of_history_fraction texture_budget_panel_global texture_budget_panel_height texture_budget_panel_width texture_budget_panel_x
syn keyword sourceVar           texture_budget_panel_y tf_arena_max_streak tf_arena_preround_time tf_arena_round_time tf_arena_use_queue
syn keyword sourceVar           tf_build_menu_controller_mode tf_chargedfriends tf_clientsideeye_lookats tf_coach_min_time_played tf_coach_request_nevershowagain
syn keyword sourceVar           tf_colorblindassist tf_dingaling_pitchmaxdmg tf_dingaling_pitchmindmg tf_dingaling_volume tf_dingalingaling
syn keyword sourceVar           tf_dingalingaling_repeat_delay tf_disguise_menu_controller_mode tf_explanations_backpackpanel tf_explanations_charinfo_armory_panel tf_explanations_charinfopanel
syn keyword sourceVar           tf_explanations_craftingpanel tf_explanations_discardpanel tf_explanations_store tf_explanations_tradingpanel tf_highfive_hintcount
syn keyword sourceVar           tf_hud_no_crosshair_on_scope_zoom tf_hud_notification_duration tf_hud_num_building_alert_beeps tf_last_store_pricesheet_version tf_matchgroups
syn keyword sourceVar           tf_matchmaking_goodenough_count_end tf_matchmaking_goodenough_count_start tf_matchmaking_goodenough_score_end tf_matchmaking_goodenough_score_start tf_matchmaking_join_in_progress
syn keyword sourceVar           tf_matchmaking_max_search_time tf_matchmaking_noob_hours_played tf_matchmaking_noob_map_score_boost tf_matchmaking_numbers_increase_maxplayers_penalty tf_matchmaking_numbers_serverfull_headroom
syn keyword sourceVar           tf_matchmaking_numbers_valve_bonus_hrs_a tf_matchmaking_numbers_valve_bonus_hrs_b tf_matchmaking_numbers_valve_bonus_pts_a tf_matchmaking_numbers_valve_bonus_pts_b tf_matchmaking_ogs_odds
syn keyword sourceVar           tf_matchmaking_ping_a tf_matchmaking_ping_a_score tf_matchmaking_ping_b tf_matchmaking_ping_b_score tf_matchmaking_ping_c
syn keyword sourceVar           tf_matchmaking_ping_c_score tf_matchmaking_retry_cooldown_seconds tf_matchmaking_retry_max_penalty tf_matchmaking_spew_level tf_matchmaking_ticket_help
syn keyword sourceVar           tf_max_separation_force tf_medieval_thirdperson tf_medigun_autoheal tf_mm_mannup_disabled tf_mvm_classupgradehelpcount
syn keyword sourceVar           tf_mvm_tabs_discovered tf_particles_disable_weather tf_quickplay_beta_ask_percentage tf_quickplay_beta_preference tf_quickplay_lastviewedmode
syn keyword sourceVar           tf_recent_achievements tf_remember_activeweapon tf_remember_lastswitched tf_replay_pyrovision tf_respawn_on_loadoutchanges
syn keyword sourceVar           tf_roundinfo_pause tf_show_preset_explanation_in_class_loadout tf_simple_disguise_menu tf_sniper_fullcharge_bell tf_spectate_pyrovision
syn keyword sourceVar           tf_spectator_target_location tf_stats_track tf_steam_workshop_query_timeout tf_test_hat_bodygroup tf_testitem_recent
syn keyword sourceVar           tf_training_has_prompted_for_forums tf_training_has_prompted_for_loadout tf_training_has_prompted_for_offline_practice tf_training_has_prompted_for_options tf_training_has_prompted_for_training
syn keyword sourceVar           tf_weapon_select_demo_start_delay tf_weapon_select_demo_time think_limit thirdperson_platformer thirdperson_screenspace
syn keyword sourceVar           threadpool_affinity threadpool_reserve timedemo_runcount tir_start tir_stop
syn keyword sourceVar           tracer_extra training_map_video tv_autorecord tv_autoretry tv_chatgroupsize
syn keyword sourceVar           tv_chattimelimit tv_debug tv_deltacache tv_dispatchmode tv_enable
syn keyword sourceVar           tv_maxclients tv_maxrate tv_name tv_nochat tv_overridemaster
syn keyword sourceVar           tv_password tv_port tv_relaypassword tv_relayvoice tv_snapshotrate
syn keyword sourceVar           tv_timeout tv_title tv_transmitall ui_blogpost_scroll_speed ui_blogpost_upload_retry_time
syn keyword sourceVar           ui_blogpost_upload_version ui_blogpost_vote_test ui_foundgames_fake_content ui_foundgames_fake_count ui_foundgames_spinner_time
syn keyword sourceVar           ui_foundgames_update_time ui_game_allow_create_public ui_game_allow_create_random ui_l4d_debug ui_loading_tip_f1
syn keyword sourceVar           ui_loading_tip_f2 ui_loading_tip_refresh ui_lobby_idle_time ui_lobby_noresults_create_msg_time ui_lobby_start_enabled
syn keyword sourceVar           ui_lobby_stat_switch_time ui_lobby_stat_team_search_max ui_mainmenu_blogpost_animation ui_mainmenu_challenge ui_old_options_menu
syn keyword sourceVar           ui_play_online_browser ui_public_lobby_filter_campaign ui_public_lobby_filter_difficulty2 ui_public_lobby_filter_status ui_start_dlc_time_corrupt
syn keyword sourceVar           ui_start_dlc_time_loaded ui_start_dlc_time_pump ui_volume_max v_centermove v_centerspeed
syn keyword sourceVar           v_ipitch_cycle v_ipitch_level v_iroll_cycle v_iroll_level v_iyaw_cycle
syn keyword sourceVar           v_iyaw_level vcr_verbose verbose_tank_music versus_stats_highlight_interval vgui_drawfocus
syn keyword sourceVar           vgui_drawkeyfocus vgui_drawtree_bounds vgui_drawtree_draw_selected vgui_drawtree_freeze vgui_drawtree_hidden
syn keyword sourceVar           vgui_drawtree_panelalpha vgui_drawtree_panelptr vgui_drawtree_popupsonly vgui_drawtree_render_order vgui_drawtree_scheme
syn keyword sourceVar           vgui_drawtree_visible vgui_message_dialog_modal vgui_show_glyph_miss video_quicktime_decode_gamma video_quicktime_encode_gamma
syn keyword sourceVar           view_offset viewmodel_fov viewmodel_fov_demo viewmodel_offset_x viewmodel_offset_y
syn keyword sourceVar           viewmodel_offset_z violence_ablood violence_agibs violence_hblood violence_hgibs
syn keyword sourceVar           vm_camera vm_camera_interp_speed vm_camera_no_roll vm_camera_scale vm_draw_addon
syn keyword sourceVar           vm_draw_always vm_fade voice_all_icons voice_avggain voice_clientdebug
syn keyword sourceVar           voice_debugfeedback voice_debugfeedbackfrom voice_dsound voice_enable voice_fadeouttime
syn keyword sourceVar           voice_forcemicrecord voice_head_icon_height voice_head_icon_size voice_inputfromfile voice_local_icon
syn keyword sourceVar           voice_loopback voice_maxgain voice_minimum_gain voice_modenable voice_overdrive
syn keyword sourceVar           voice_overdrivefadetime voice_profile voice_recordtofile voice_scale voice_showchannels
syn keyword sourceVar           voice_showincoming voice_spatialize voice_steal voice_threshold voice_vox
syn keyword sourceVar           voice_writevoices voice_xsend_debug volume vphysics_client_threaded vphysics_client_threaded_min_cpus
syn keyword sourceVar           vprof_counters vprof_counters_show_minmax vprof_dump_oninterval vprof_dump_spikes vprof_dump_spikes_budget_group
syn keyword sourceVar           vprof_dump_spikes_hiearchy vprof_dump_spikes_node vprof_dump_spikes_terse vprof_graph vprof_graphheight
syn keyword sourceVar           vprof_graphwidth vprof_scope vprof_server_spike_threshold vprof_server_thread vprof_unaccounted_limit
syn keyword sourceVar           vprof_verbose vprof_warningmsec weapon_spawn_fade_distance windows_speaker_config x360_audio_english
syn keyword sourceVar           x360_resolution_height x360_resolution_interlaced x360_resolution_widescreen_mode x360_resolution_width youtube_http_proxy
syn keyword sourceVar           youtube_username z_added_light_max z_added_light_min z_added_light_scale z_anim_idle_speed_max
syn keyword sourceVar           z_anim_idle_speed_min z_atomize_gibbed_limbs_probability z_burn_decay_rate z_debug_infected_anim z_debug_shared_random
syn keyword sourceVar           z_difficulty z_escape_route_far z_escape_route_near z_escape_route_segment_fade_in_rate z_escape_route_segment_fade_out_rate
syn keyword sourceVar           z_ghost_ahead_flow z_ghost_friction z_gib_spread_force z_gib_spread_randomize z_gib_spread_torque
syn keyword sourceVar           z_gun_swing_coop_max_penalty z_gun_swing_coop_min_penalty z_gun_swing_vs_amt_penalty z_gun_swing_vs_cooldown z_gun_swing_vs_max_penalty
syn keyword sourceVar           z_gun_swing_vs_min_penalty z_gun_swing_vs_restore_time z_infected_damage_cutouts z_infected_decals z_infected_gib_count
syn keyword sourceVar           z_infected_gib_max_speed z_infected_gib_min_speed z_infected_shadows z_infected_tinting z_it_decay_rate
syn keyword sourceVar           z_leap_cooldown z_lunge_cooldown z_lunge_reflect z_max_player_zombies z_minigun_debug
syn keyword sourceVar           z_minigun_fire_anim_speed z_minigun_firing_speed z_minigun_particles z_minigun_spin_down_speed z_minigun_spin_up_speed
syn keyword sourceVar           z_minigun_spread z_minigun_stand_distance z_mob_simple_shadows z_network_compression z_nightvision_b
syn keyword sourceVar           z_nightvision_g z_nightvision_r z_ragdoll_impact_strength z_round_start_attack_prevention z_scrimmage_a_far
syn keyword sourceVar           z_scrimmage_a_near z_scrimmage_b z_scrimmage_creep_delay z_scrimmage_creep_rate z_scrimmage_debug
syn keyword sourceVar           z_scrimmage_far z_scrimmage_g z_scrimmage_height z_scrimmage_r z_scrimmage_reset
syn keyword sourceVar           z_scrimmage_yardline_a_far z_scrimmage_yardline_a_near z_scrimmage_yardline_b z_scrimmage_yardline_far z_scrimmage_yardline_g
syn keyword sourceVar           z_scrimmage_yardline_height z_scrimmage_yardline_r z_scrimmage_yardline_width z_spec_nightvision z_splatter_delay
syn keyword sourceVar           z_splatter_delay_melee z_splatterdistance z_tracer_particles z_transitioning_player_addon_rebuild z_witch_rage_smoothing
syn keyword sourceVar           z_wound_client_disabled zoom_sensitivity_ratio

" Syntax: Server variables {{{1
syn keyword sourceServerVar     ai_LOS_mode ai_actbusy_search_time ai_ally_manager_debug ai_auto_contact_solver ai_block_damage
syn keyword sourceServerVar     ai_citizen_debug_commander ai_debug_assault ai_debug_avoidancebounds ai_debug_directnavprobe ai_debug_doors
syn keyword sourceServerVar     ai_debug_dyninteractions ai_debug_efficiency ai_debug_enemies ai_debug_enemyfinders ai_debug_eventresponses
syn keyword sourceServerVar     ai_debug_expressions ai_debug_follow ai_debug_loners ai_debug_looktargets ai_debug_nav
syn keyword sourceServerVar     ai_debug_ragdoll_magnets ai_debug_readiness ai_debug_speech ai_debug_squads ai_debug_think_ticks
syn keyword sourceServerVar     ai_debugscriptconditions ai_default_efficient ai_ef_hate_npc_duration ai_ef_hate_npc_frequency ai_efficiency_override
syn keyword sourceServerVar     ai_enable_fear_behavior ai_expression_frametime ai_expression_optimization ai_fear_player_dist ai_find_lateral_cover
syn keyword sourceServerVar     ai_find_lateral_los ai_follow_move_commands ai_follow_use_points ai_follow_use_points_when_moving ai_force_serverside_ragdoll
syn keyword sourceServerVar     ai_frametime_limit ai_lead_time ai_moveprobe_debug ai_moveprobe_jump_debug ai_moveprobe_usetracelist
syn keyword sourceServerVar     ai_navigator_generate_spikes ai_navigator_generate_spikes_strength ai_new_aiming ai_newgroundturret ai_no_local_paths
syn keyword sourceServerVar     ai_no_node_cache ai_no_select_box ai_no_steer ai_no_talk_delay ai_norebuildgraph
syn keyword sourceServerVar     ai_path_adjust_speed_on_immediate_turns ai_path_insert_pause_at_est_end ai_path_insert_pause_at_obstruction ai_post_frame_navigation ai_radial_max_link_dist
syn keyword sourceServerVar     ai_reaction_delay_alert ai_reaction_delay_idle ai_readiness_decay ai_rebalance_thinks ai_report_task_timings_on_limit
syn keyword sourceServerVar     ai_sequence_debug ai_setupbones_debug ai_shot_bias ai_shot_bias_max ai_shot_bias_min
syn keyword sourceServerVar     ai_shot_stats ai_shot_stats_term ai_show_hull_attacks ai_show_think_tolerance ai_simulate_task_overtime
syn keyword sourceServerVar     ai_spread_cone_focus_time ai_spread_defocused_cone_multiplier ai_spread_pattern_focus_time ai_strong_optimizations ai_strong_optimizations_no_checkstand
syn keyword sourceServerVar     ai_task_pre_script ai_test_moveprobe_ignoresmall ai_think_limit_label ai_use_clipped_paths ai_use_efficiency
syn keyword sourceServerVar     ai_use_frame_think_limits ai_use_readiness ai_use_think_optimizations ai_use_visibility_cache airboat_fatal_stress
syn keyword sourceServerVar     allow_all_bot_survivor_team ammo_max anim_3wayblend antlion_easycrush autoaim_max_deflect
syn keyword sourceServerVar     autoaim_max_dist autoaim_unlock_target autoaim_viewing_client birds_debug blob_batchpercent
syn keyword sourceServerVar     blob_element_speed blob_mindist blob_numelements blob_radius bot_changeclass
syn keyword sourceServerVar     bot_forceattack bot_forceattack2 bot_forceattack_down bot_forcefireweapon bot_mimic
syn keyword sourceServerVar     bot_mimic_inverse bot_mimic_yaw_offset breakable_disable_gib_limit breakable_multiplayer bugbait_distract_time
syn keyword sourceServerVar     bugbait_grenade_radius bugbait_hear_radius bugbait_radius bulletspeed car_alarm_chirp_distance
syn keyword sourceServerVar     car_alarm_chirp_duration car_alarm_chirp_interval car_alarm_distance car_alarm_duration cc_norepeat
syn keyword sourceServerVar     cl_ragdoll_pronecheck_distance cl_spewscriptintro collision_shake_amp collision_shake_freq collision_shake_time
syn keyword sourceServerVar     combine_guard_spawn_health combine_spawn_health commentary commentary_available common_dps_spew
syn keyword sourceServerVar     common_dps_window curve_bias darkness_ignore_LOS_to_sources dbg_spew_connected_players_level debug_l4dverbose
syn keyword sourceServerVar     debug_materialmodifycontrol debug_overlay_fullposition debug_physimpact debug_touchlinks decalfrequency
syn keyword sourceServerVar     director_afk_timeout director_allow_infected_bots director_min_start_players director_report_screen_delay director_survival_setup_time
syn keyword sourceServerVar     director_vs_convert_pills dispcoll_drawplane displaysoundlist dog_debug dog_max_wait_time
syn keyword sourceServerVar     elevator_movedelay ent_debugkeys ent_show_contexts ent_steadystate_batchsize ent_steadystate_cooldown
syn keyword sourceServerVar     ent_steadystate_delay ent_steadystate_enable ent_steadystate_interval fall_speed_fatal fall_speed_safe
syn keyword sourceServerVar     fidget_max_interval fidget_min_interval fire_absorbrate fire_dmgbase fire_dmginterval
syn keyword sourceServerVar     fire_dmgscale fire_extabsorb fire_extscale fire_growthrate fire_heatscale
syn keyword sourceServerVar     fire_incomingheatscale fire_maxabsorb flex_expression flex_looktime flex_maxawaytime
syn keyword sourceServerVar     flex_maxplayertime flex_minawaytime flex_minplayertime flex_talk free_pass_peek_debug
syn keyword sourceServerVar     func_break_max_pieces func_break_reduction_factor func_breakdmg_bullet func_breakdmg_club func_breakdmg_explosive
syn keyword sourceServerVar     g_Language g_ai_citizen_show_enemy g_antlion_cascade_push g_debug_antlion g_debug_antlion_worker
syn keyword sourceServerVar     g_debug_antlionguard g_debug_combine_camera g_debug_cscanner g_debug_darkness g_debug_doors
syn keyword sourceServerVar     g_debug_dropship g_debug_dynamicresupplies g_debug_npc_vehicle_roles g_debug_physcannon g_debug_transitions
syn keyword sourceServerVar     g_debug_turret g_debug_turret_ceiling g_debug_vortigaunt_aim g_helicopter_bomb_danger_radius g_helicopter_bullrush_bomb_enemy_distance
syn keyword sourceServerVar     g_helicopter_bullrush_bomb_speed g_helicopter_bullrush_bomb_time g_helicopter_bullrush_distance g_helicopter_bullrush_mega_bomb_health g_helicopter_bullrush_shoot_height
syn keyword sourceServerVar     g_helicopter_chargetime g_helicopter_idletime g_helicopter_maxfiringdist g_ragdoll_important_maxcount g_ragdoll_maxcount
syn keyword sourceServerVar     g_test_new_antlion_jump grenadelauncher_startpos_forward grenadelauncher_startpos_right grenadelauncher_startpos_up grenadelauncher_vel_up
syn keyword sourceServerVar     grenadelauncher_vel_variance hap_airboat_gun_mag hap_jeep_cannon_mag hap_turret_mag hide_server
syn keyword sourceServerVar     hl2_darkness_flashlight_factor hl2_episodic hl2_normspeed hl2_sprintspeed hl2_walkspeed
syn keyword sourceServerVar     hostfile hud_airboathint_numentries hud_jeephint_numentries inferno_max_trace_per_tick item_enable_content_streaming
syn keyword sourceServerVar     item_quality_chance_common item_quality_chance_rare item_quality_chance_unique l4d1_survivor_give_item l4d_show_incapupdate
syn keyword sourceServerVar     l4d_show_weaponequip l4d_stats_nogameplaycheck l4d_stats_track log_verbose_enable log_verbose_interval
syn keyword sourceServerVar     lservercfgfile mapcyclefile metropolice_charge metropolice_chase_use_follow metropolice_move_and_melee
syn keyword sourceServerVar     monk_headshot_freq mortar_visualize motd_enabled motdfile motdfile_text
syn keyword sourceServerVar     mp_allowNPCs mp_allowspectators mp_autocrosshair mp_autokick mp_autoteambalance
syn keyword sourceServerVar     mp_blockstyle mp_bonusroundtime mp_c4timer mp_capdeteriorate_time mp_capstyle
syn keyword sourceServerVar     mp_chattime mp_clan_ready_signal mp_clan_readyrestart mp_defaultteam mp_disable_respawn_times
syn keyword sourceServerVar     mp_enableroundwaittime mp_facefronttime mp_fadetoblack mp_falldamage mp_feetyawrate
syn keyword sourceServerVar     mp_flashlight mp_footsteps mp_forceautoteam mp_forcecamera mp_forcerespawn
syn keyword sourceServerVar     mp_fraglimit mp_freezetime mp_friendlyfire mp_highlander mp_holiday_nogifts
syn keyword sourceServerVar     mp_humans_must_join_team mp_humanteam mp_idledealmethod mp_idlemaxtime mp_ik
syn keyword sourceServerVar     mp_limitteams mp_logdetail mp_match_end_at_timelimit mp_maxrounds mp_respawnwavetime
syn keyword sourceServerVar     mp_restartgame mp_restartgame_immediate mp_restartround mp_roundlimit mp_roundtime
syn keyword sourceServerVar     mp_scrambleteams_auto mp_scrambleteams_auto_windifference mp_show_voice_icons mp_slammoveyaw mp_spawnprotectiontime
syn keyword sourceServerVar     mp_stalemate_at_timelimit mp_stalemate_enable mp_stalemate_meleeonly mp_stalemate_timelimit mp_startmoney
syn keyword sourceServerVar     mp_teamlist mp_teamoverride mp_teamplay mp_teams_unbalance_limit mp_time_between_capscoring
syn keyword sourceServerVar     mp_timelimit mp_tkpunish mp_tournament mp_tournament_allow_non_admin_restart mp_tournament_blueteamname
syn keyword sourceServerVar     mp_tournament_redteamname mp_tournament_stopwatch mp_tournament_whitelist mp_waitingforplayers_cancel mp_waitingforplayers_restart
syn keyword sourceServerVar     mp_waitingforplayers_time mp_weaponstay mp_windifference mp_windifference_min mp_winlimit
syn keyword sourceServerVar     music_bank_max_duration music_bank_min_duration nav_drag_selection_volume_zmax_offset nav_drag_selection_volume_zmin_offset nav_save_history
syn keyword sourceServerVar     nb_avoid nb_avoid_interval nb_debug_history nb_player_move_direct nb_stuck_dump_threshold
syn keyword sourceServerVar     nextlevel npc_barnacle_swallow npc_blob_idle_speed_factor npc_blob_show_centroid npc_blob_sin_amplitude
syn keyword sourceServerVar     npc_blob_straggler_dist npc_blob_think_interval npc_blob_use_model npc_blob_use_orientation npc_blob_use_threading
syn keyword sourceServerVar     npc_citizen_auto_player_squad npc_citizen_auto_player_squad_allow_use npc_citizen_dont_precache_all npc_citizen_explosive_resist npc_citizen_insignia
syn keyword sourceServerVar     npc_citizen_medic_emit_sound npc_citizen_squad_marker npc_create_equipment npc_go_do_run npc_height_adjust
syn keyword sourceServerVar     npc_sentences npc_strider_height_adj npc_strider_shake_ropes_magnitude npc_strider_shake_ropes_radius npc_vphysics
syn keyword sourceServerVar     obj_capture_damage obj_sapper_amount obj_show_damage object_deterioration_time old_radiusdamage
syn keyword sourceServerVar     option_duck_method phys2_shoot_speed phys_impactforcescale phys_penetration_error_time phys_pushscale
syn keyword sourceServerVar     phys_shoot_torque phys_speeds phys_stressbodyweights phys_timescale phys_upimpactforcescale
syn keyword sourceServerVar     physcannon_ball_cone physcannon_chargetime physcannon_cone physcannon_dmg_glass physcannon_maxforce
syn keyword sourceServerVar     physcannon_maxmass physcannon_mega_pullforce physcannon_mega_tracelength physcannon_minforce physcannon_pullforce
syn keyword sourceServerVar     physcannon_punt_cone physcannon_right_turrets physcannon_tracelength physicsshadowupdate_render pipe_bomb_beep_interval_delta
syn keyword sourceServerVar     pipe_bomb_beep_min_interval pipe_bomb_initial_beep_interval pipe_bomb_shake_amplitude pipe_bomb_shake_radius pipe_bomb_timer_duration
syn keyword sourceServerVar     pistol_use_new_accuracy player_limit_jump_speed player_old_armor player_showpredictedposition player_showpredictedposition_timestep
syn keyword sourceServerVar     player_squad_autosummon_debug player_squad_autosummon_move_tolerance player_squad_autosummon_player_tolerance player_squad_autosummon_time player_squad_autosummon_time_after_combat
syn keyword sourceServerVar     player_squad_double_tap_time player_squad_transient_commands player_throwforce prop_active_gib_limit prop_active_gib_max_fade_time
syn keyword sourceServerVar     props_break_max_pieces_perframe replay_dofileserver_cleanup_on_start replay_fileserver_autocleanup replay_fileserver_offload_aborttime replay_fileserver_offload_enable
syn keyword sourceServerVar     replay_fileserver_offload_hostname replay_fileserver_offload_login replay_fileserver_offload_maxuploads replay_fileserver_offload_password replay_fileserver_offload_port
syn keyword sourceServerVar     replay_fileserver_offload_protocol replay_fileserver_offload_proxy_host replay_fileserver_offload_proxy_port replay_fileserver_offload_remotepath replay_fileserver_offload_useproxy
syn keyword sourceServerVar     replay_max_publish_threads replay_name replay_record_voice rpg_missle_use_custom_detonators rr_debug_qa
syn keyword sourceServerVar     rr_debugplayer rr_debugresponseconcept rr_debugresponses rr_debugrule rr_dumpresponses
syn keyword sourceServerVar     sb_allow_leading sb_melee_approach_victim sb_reachable_cache_paranoia sb_skill sb_temp_health_consider_factor
syn keyword sourceServerVar     sb_toughness_buffer sb_transition scene_async_prefetch_spew scene_clamplookat scene_clientflex
syn keyword sourceServerVar     scene_clientplayback scene_flatturn scene_forcecombined scene_maxcaptionradius scene_print
syn keyword sourceServerVar     scene_showfaceto scene_showlook scene_showmoveto scene_showunlock script_attach_debugger_at_startup
syn keyword sourceServerVar     script_break_in_native_debugger_on_error servercfgfile showhitlocation showsniperdist showsniperlines
syn keyword sourceServerVar     sk_airboat_drain_rate sk_airboat_max_ammo sk_airboat_recharge_rate sk_allow_autoaim sk_ally_regen_time
syn keyword sourceServerVar     sk_ammo_qty_scale1 sk_ammo_qty_scale2 sk_ammo_qty_scale3 sk_antlion_air_attack_dmg sk_antlion_health
syn keyword sourceServerVar     sk_antlion_jump_damage sk_antlion_swipe_damage sk_antlionguard_dmg_charge sk_antlionguard_dmg_shove sk_antlionguard_health
syn keyword sourceServerVar     sk_apc_health sk_apc_missile_damage sk_auto_reload_time sk_autoaim_mode sk_autoaim_scale1
syn keyword sourceServerVar     sk_autoaim_scale2 sk_barnacle_health sk_barney_health sk_battery sk_bullseye_health
syn keyword sourceServerVar     sk_citizen_giveammo_player_delay sk_citizen_heal_ally sk_citizen_heal_ally_delay sk_citizen_heal_ally_min_pct sk_citizen_heal_player
syn keyword sourceServerVar     sk_citizen_heal_player_delay sk_citizen_heal_player_min_forced sk_citizen_heal_player_min_pct sk_citizen_health sk_citizen_player_stare_dist
syn keyword sourceServerVar     sk_citizen_player_stare_time sk_citizen_stare_heal_time sk_combine_ball_search_radius sk_combine_guard_health sk_combine_guard_kick
syn keyword sourceServerVar     sk_combine_s_health sk_combine_s_kick sk_combineball_guidefactor sk_combineball_seek_angle sk_combineball_seek_kill
syn keyword sourceServerVar     sk_crow_health sk_crow_melee_dmg sk_crowbar_lead_time sk_dmg_homer_grenade sk_dmg_inflict_scale1
syn keyword sourceServerVar     sk_dmg_inflict_scale2 sk_dmg_inflict_scale3 sk_dmg_pathfollower_grenade sk_dmg_sniper_penetrate_npc sk_dmg_sniper_penetrate_plr
syn keyword sourceServerVar     sk_dmg_take_scale1 sk_dmg_take_scale2 sk_dmg_take_scale3 sk_dropship_container_health sk_dynamic_resupply_modifier
syn keyword sourceServerVar     sk_env_headcrabcanister_shake_amplitude sk_env_headcrabcanister_shake_radius sk_env_headcrabcanister_shake_radius_vehicle sk_fraggrenade_radius sk_gunship_burst_dist
syn keyword sourceServerVar     sk_gunship_burst_min sk_gunship_burst_size sk_gunship_health_increments sk_headcrab_fast_health sk_headcrab_health
syn keyword sourceServerVar     sk_headcrab_melee_dmg sk_headcrab_poison_health sk_headcrab_poison_npc_damage sk_healthcharger sk_healthkit
syn keyword sourceServerVar     sk_healthvial sk_helicopter_burstcount sk_helicopter_drone_speed sk_helicopter_firingcone sk_helicopter_grenade_puntscale
syn keyword sourceServerVar     sk_helicopter_grenadedamage sk_helicopter_grenadeforce sk_helicopter_grenaderadius sk_helicopter_health sk_helicopter_num_bombs1
syn keyword sourceServerVar     sk_helicopter_num_bombs2 sk_helicopter_num_bombs3 sk_helicopter_roundsperburst sk_homer_grenade_radius sk_ichthyosaur_health
syn keyword sourceServerVar     sk_ichthyosaur_melee_dmg sk_jeep_gauss_damage sk_manhack_health sk_manhack_melee_dmg sk_manhack_v2
syn keyword sourceServerVar     sk_max_357 sk_max_alyxgun sk_max_ar2 sk_max_ar2_altfire sk_max_buckshot
syn keyword sourceServerVar     sk_max_crossbow sk_max_gauss_round sk_max_grenade sk_max_pistol sk_max_rpg_round
syn keyword sourceServerVar     sk_max_smg1 sk_max_smg1_grenade sk_max_sniper_round sk_metropolice_health sk_metropolice_simple_health
syn keyword sourceServerVar     sk_metropolice_stitch_along_hitcount sk_metropolice_stitch_at_hitcount sk_metropolice_stitch_behind_hitcount sk_metropolice_stitch_distance sk_metropolice_stitch_reaction
syn keyword sourceServerVar     sk_metropolice_stitch_tight_hitcount sk_npc_arm sk_npc_chest sk_npc_dmg_357 sk_npc_dmg_airboat
syn keyword sourceServerVar     sk_npc_dmg_alyxgun sk_npc_dmg_ar2 sk_npc_dmg_buckshot sk_npc_dmg_combineball sk_npc_dmg_crossbow
syn keyword sourceServerVar     sk_npc_dmg_crowbar sk_npc_dmg_dropship sk_npc_dmg_fraggrenade sk_npc_dmg_grenade sk_npc_dmg_gunship
syn keyword sourceServerVar     sk_npc_dmg_gunship_to_plr sk_npc_dmg_helicopter sk_npc_dmg_helicopter_to_plr sk_npc_dmg_pistol sk_npc_dmg_rpg_round
syn keyword sourceServerVar     sk_npc_dmg_smg1 sk_npc_dmg_smg1_grenade sk_npc_dmg_sniper_round sk_npc_dmg_stunstick sk_npc_head
syn keyword sourceServerVar     sk_npc_leg sk_npc_stomach sk_pathfollower_grenade_radius sk_player_arm sk_player_chest
syn keyword sourceServerVar     sk_player_head sk_player_leg sk_player_stomach sk_plr_dmg_357 sk_plr_dmg_airboat
syn keyword sourceServerVar     sk_plr_dmg_alyxgun sk_plr_dmg_ar2 sk_plr_dmg_buckshot sk_plr_dmg_crossbow sk_plr_dmg_crowbar
syn keyword sourceServerVar     sk_plr_dmg_fraggrenade sk_plr_dmg_grenade sk_plr_dmg_pistol sk_plr_dmg_rpg_round sk_plr_dmg_smg1
syn keyword sourceServerVar     sk_plr_dmg_smg1_grenade sk_plr_dmg_sniper_round sk_plr_dmg_stunstick sk_plr_grenade_drop_time sk_plr_health_drop_time
syn keyword sourceServerVar     sk_plr_num_shotgun_pellets sk_rollermine_shock sk_rollermine_stun_delay sk_rollermine_vehicle_intercept sk_scanner_dmg_dive
syn keyword sourceServerVar     sk_scanner_health sk_smg1_grenade_radius sk_stalker_health sk_stalker_melee_dmg sk_strider_health
syn keyword sourceServerVar     sk_strider_num_missiles1 sk_strider_num_missiles2 sk_strider_num_missiles3 sk_suitcharger sk_suitcharger_citadel
syn keyword sourceServerVar     sk_suitcharger_citadel_maxarmor sk_vortigaunt_armor_charge sk_vortigaunt_armor_charge_per_token sk_vortigaunt_dmg_claw sk_vortigaunt_dmg_rake
syn keyword sourceServerVar     sk_vortigaunt_dmg_zap sk_vortigaunt_health sk_vortigaunt_vital_antlion_worker_dmg sk_vortigaunt_zap_range sk_weapon_ar2_alt_fire_duration
syn keyword sourceServerVar     sk_weapon_ar2_alt_fire_mass sk_weapon_ar2_alt_fire_radius sk_zombie_dmg_both_slash sk_zombie_dmg_one_slash sk_zombie_health
syn keyword sourceServerVar     sk_zombie_poison_dmg_spit sk_zombie_poison_health smoke_trail smoothstairs sniper_xbox_delay
syn keyword sourceServerVar     sniperspeak sniperviewdist soundpatch_captionlength spec_filter spec_filter_infected
syn keyword sourceServerVar     spec_filter_survivors spit_scaling_min_scale steamworks_sessionid_server step_spline strider_always_use_procedural_height
syn keyword sourceServerVar     strider_ar2_altfire_dmg strider_distributed_fire strider_eyepositions strider_free_knowledge strider_free_pass_after_escorts_dead
syn keyword sourceServerVar     strider_free_pass_cover_dist strider_free_pass_duration strider_free_pass_move_tolerance strider_free_pass_refill_rate strider_free_pass_start_time
syn keyword sourceServerVar     strider_free_pass_tolerance_after_escorts_dead strider_idle_test strider_immolate strider_missile_suppress_dist strider_missile_suppress_time
syn keyword sourceServerVar     strider_pct_height_no_crouch_move strider_peek_eye_dist strider_peek_eye_dist_z strider_peek_time strider_peek_time_after_damage
syn keyword sourceServerVar     strider_show_cannonlos strider_show_focus strider_show_weapon_los_condition strider_show_weapon_los_z strider_test_height
syn keyword sourceServerVar     suitvolume survivor_death_anims survivor_incap_decay_rate survivor_incap_health survivor_incap_hopeless_decay_rate
syn keyword sourceServerVar     survivor_incap_max_fall_damage survivor_incap_tongued_decay_rate survivor_limit survivor_model_selection survivor_respawn_with_guns
syn keyword sourceServerVar     sv__ragdoll_max_remove_per_frame sv_accelerate sv_airaccelerate sv_allow_color_correction sv_allow_lobby_connect_only
syn keyword sourceServerVar     sv_allow_voice_from_file sv_allow_votes sv_allow_wait_command sv_allowdownload sv_allowupload
syn keyword sourceServerVar     sv_alltalk sv_alternateticks sv_autojump sv_autoladderdismount sv_autosave
syn keyword sourceServerVar     sv_backspeed sv_banid_dev_enabled sv_banid_enabled sv_benchmark_autovprofrecord sv_benchmark_freeroam
syn keyword sourceServerVar     sv_benchmark_numticks sv_bonus_challenge sv_bounce sv_cacheencodedents sv_cheats
syn keyword sourceServerVar     sv_client_cmdrate_difference sv_client_max_interp_ratio sv_client_min_interp_ratio sv_client_predict sv_clockcorrection_msecs
syn keyword sourceServerVar     sv_consistency sv_contact sv_debug_entity sv_debug_player_use sv_debugmanualmode
syn keyword sourceServerVar     sv_debugtempentities sv_deltaprint sv_deltatime sv_disable_glow_faritems sv_disable_glow_survivors
syn keyword sourceServerVar     sv_downloadurl sv_enableoldqueries sv_extra_client_connect_time sv_filterban sv_footsteps
syn keyword sourceServerVar     sv_forcepreload sv_friction sv_gameinstructor_disable sv_gametypes sv_glowenable
syn keyword sourceServerVar     sv_gravity sv_hibernate_ms sv_hibernate_ms_vgui sv_hibernate_postgame_delay sv_hibernate_when_empty
syn keyword sourceServerVar     sv_hosting_lobby sv_hudhint_sound sv_ignore_hitboxes sv_infected_scale_max sv_infected_scale_min
syn keyword sourceServerVar     sv_instancebaselines sv_ladder_useonly sv_ladderautomountdot sv_lagflushbonecache sv_lagpushticks
syn keyword sourceServerVar     sv_lan sv_log_onefile sv_logbans sv_logblocks sv_logdownloadlist
syn keyword sourceServerVar     sv_logecho sv_logfile sv_logflush sv_logsdir sv_logsecret
syn keyword sourceServerVar     sv_lowedict_action sv_lowedict_threshold sv_massreport sv_master_legacy_mode sv_master_share_game_socket
syn keyword sourceServerVar     sv_max_connects_sec sv_max_connects_sec_global sv_max_connects_window sv_max_queries_sec sv_max_queries_sec_global
syn keyword sourceServerVar     sv_max_queries_window sv_max_usercmd_future_ticks sv_maxclientframes sv_maxcmdrate sv_maxplayers
syn keyword sourceServerVar     sv_maxrate sv_maxreplay sv_maxroutable sv_maxspeed sv_maxunlag
syn keyword sourceServerVar     sv_maxupdaterate sv_maxvelocity sv_mincmdrate sv_minrate sv_minupdaterate
syn keyword sourceServerVar     sv_multiplayer_maxtempentities sv_multiplayer_sounds sv_music_debug sv_namechange_cooldown_seconds sv_netspike_on_reliable_snapshot_overflow
syn keyword sourceServerVar     sv_new_delta_bits sv_noclipaccelerate sv_noclipfriction sv_noclipspeed sv_npc_talker_maxdist
syn keyword sourceServerVar     sv_optimizedmovement sv_parallel_packentities sv_parallel_sendsnapshot sv_password sv_pausable
syn keyword sourceServerVar     sv_pausable_dev sv_pausable_dev_ds sv_player_max_separation_force sv_playerperfhistorycount sv_proj_stunball_damage
syn keyword sourceServerVar     sv_pure_kick_clients sv_pure_trace sv_pushaway_clientside sv_pushaway_clientside_size sv_pushaway_force
syn keyword sourceServerVar     sv_pushaway_max_force sv_pushaway_min_force sv_pushaway_min_player_speed sv_pvsskipanimation sv_pz_endgame_vote_period
syn keyword sourceServerVar     sv_pz_endgame_vote_post_period sv_ragdoll_maxcount sv_ragdoll_maxcount_boss sv_ragdoll_maxcount_generic sv_ragdoll_maxcount_gib
syn keyword sourceServerVar     sv_ragdoll_maxcount_special sv_ragdoll_maxcount_survivor sv_ragdoll_version sv_rcon_banpenalty sv_rcon_log
syn keyword sourceServerVar     sv_rcon_maxfailures sv_rcon_maxpacketbans sv_rcon_maxpacketsize sv_rcon_minfailures sv_rcon_minfailuretime
syn keyword sourceServerVar     sv_regeneration_wait_time sv_region sv_registration_message sv_registration_successful sv_rescue_disabled
syn keyword sourceServerVar     sv_reservation_grace sv_reservation_timeout sv_restrict_aspect_ratio_fov sv_robust_explosions sv_rollangle
syn keyword sourceServerVar     sv_rollspeed sv_runcmds sv_script_think_interval sv_search_key sv_search_team_key
syn keyword sourceServerVar     sv_sendtables sv_show_crosshair_target sv_show_whitelist_msg sv_showdamage sv_showdebugtracers
syn keyword sourceServerVar     sv_showimpacts sv_showladders sv_showplayerhitboxes sv_showprecachedsounds sv_skyname
syn keyword sourceServerVar     sv_sound_discardextraunreliable sv_soundemitter_trace sv_specaccelerate sv_specnoclip sv_specspeed
syn keyword sourceServerVar     sv_stats sv_steamblockingcheck sv_steamgroup sv_steamgroup_exclusive sv_stepsize
syn keyword sourceServerVar     sv_stickysprint sv_stickysprint_default sv_stopspeed sv_stressbots sv_strict_notarget
syn keyword sourceServerVar     sv_sync_client_updates sv_tags sv_test_scripted_sequences sv_teststepsimulation sv_thinktimecheck
syn keyword sourceServerVar     sv_threaded_init sv_timeout sv_tracereffects_limit_general sv_turbophysics sv_unlag
syn keyword sourceServerVar     sv_unlag_debug sv_unlag_fixstuck sv_unlockedchapters sv_use_steam_voice sv_useexplicitdelete
syn keyword sourceServerVar     sv_vehicle_autoaim_scale sv_visiblemaxplayers sv_voicecodec sv_voiceenable sv_vote_allow_spectators
syn keyword sourceServerVar     sv_vote_command_delay sv_vote_creation_timer sv_vote_failure_timer sv_vote_failure_timer_mvm sv_vote_issue_change_difficulty_allowed
syn keyword sourceServerVar     sv_vote_issue_change_map_later_allowed sv_vote_issue_change_map_now_allowed sv_vote_issue_change_mission_allowed sv_vote_issue_changelevel_allowed sv_vote_issue_changelevel_allowed_mvm
syn keyword sourceServerVar     sv_vote_issue_kick_allowed sv_vote_issue_kick_allowed_mvm sv_vote_issue_kick_spectators_mvm sv_vote_issue_mvm_challenge_allowed sv_vote_issue_nextlevel_allowed
syn keyword sourceServerVar     sv_vote_issue_nextlevel_allowextend sv_vote_issue_nextlevel_choicesmode sv_vote_issue_nextlevel_prevent_change sv_vote_issue_restart_game_allowed sv_vote_issue_scramble_teams_allowed
syn keyword sourceServerVar     sv_vote_kick_ban_duration sv_vote_timer_duration sv_vote_ui_hide_disabled_issues sv_wateraccelerate sv_waterdist
syn keyword sourceServerVar     sv_waterfriction sv_zoo_model_filter sv_zoo_spacing sv_zoo_spacing_rows sv_zoo_spacing_wrap
syn keyword sourceServerVar     sv_zoo_tint_clr sv_zoo_tint_loop sv_zoo_wrap_skin tank_rock_overhead_percent target_scan_use_query_cache
syn keyword sourceServerVar     tauntfrequency template_debug test_massive_dmg test_massive_dmg_clip tf_allow_player_use
syn keyword sourceServerVar     tf_allow_taunt_switch tf_arena_first_blood tf_arena_max_streak tf_arena_override_cap_enable_time tf_arena_override_team_size
syn keyword sourceServerVar     tf_arena_preround_time tf_arena_round_time tf_arena_use_queue tf_avoidteammates_pushaway tf_backstab_detection_method
syn keyword sourceServerVar     tf_birthday tf_birthday_ball_chance tf_boost_drain_time tf_bot_auto_vacate tf_bot_count
syn keyword sourceServerVar     tf_bot_difficulty tf_bot_force_class tf_bot_join_after_player tf_bot_keep_class_after_death tf_bot_melee_only
syn keyword sourceServerVar     tf_bot_notice_gunfire_range tf_bot_notice_quiet_gunfire_range tf_bot_offline_practice tf_bot_path_lookahead_range tf_bot_prefix_name_with_difficulty
syn keyword sourceServerVar     tf_bot_quota tf_bot_quota_mode tf_bot_sniper_allow_opportunistic tf_bot_taunt_victim_chance tf_caplinear
syn keyword sourceServerVar     tf_clamp_airducks tf_clamp_back_speed tf_clamp_back_speed_min tf_ctf_bonus_time tf_damage_disablespread
syn keyword sourceServerVar     tf_damage_events_track_for tf_damage_lineardist tf_damage_range tf_demoman_charge_drain_time tf_demoman_charge_regen_rate
syn keyword sourceServerVar     tf_dev_health_on_damage_recover_percentage tf_dev_marked_for_death_lifetime tf_escort_recede_time tf_escort_recede_time_overtime tf_flag_caps_per_round
syn keyword sourceServerVar     tf_force_holidays_off tf_forced_holiday tf_gamemode_arena tf_gamemode_cp tf_gamemode_ctf
syn keyword sourceServerVar     tf_gamemode_mvm tf_gamemode_payload tf_gamemode_sd tf_grenadelauncher_min_contact_speed tf_highfive_debug
syn keyword sourceServerVar     tf_invuln_time tf_max_health_boost tf_max_voice_speak_delay tf_medieval tf_medieval_autorp
syn keyword sourceServerVar     tf_medigun_lagcomp tf_mm_player_reservation_timeout_seconds tf_mm_servermode tf_mm_strict tf_mm_trusted
syn keyword sourceServerVar     tf_mvm_disconnect_on_victory tf_mvm_min_players_to_start tf_mvm_missioncyclefile tf_mvm_popfile tf_overtime_nag
syn keyword sourceServerVar     tf_player_movement_stun_time tf_playergib tf_pressandhold_minduration tf_resolve_stuck_players tf_scout_bat_launch_delay
syn keyword sourceServerVar     tf_scout_energydrink_activation tf_scout_energydrink_consume_rate tf_scout_energydrink_regen_rate tf_scout_stunball_base_duration tf_scout_stunball_base_speed
syn keyword sourceServerVar     tf_server_identity_account_id tf_server_identity_disable_quickplay tf_server_identity_token tf_showspeed tf_soldier_buff_pulses
syn keyword sourceServerVar     tf_spy_cloak_consume_rate tf_spy_cloak_no_attack_time tf_spy_cloak_regen_rate tf_spy_invis_time tf_spy_invis_unstealth_time
syn keyword sourceServerVar     tf_spy_max_cloaked_speed tf_stalematechangeclasstime tf_stats_nogameplaycheck tf_teamtalk tf_tournament_classlimit_demoman
syn keyword sourceServerVar     tf_tournament_classlimit_engineer tf_tournament_classlimit_heavy tf_tournament_classlimit_medic tf_tournament_classlimit_pyro tf_tournament_classlimit_scout
syn keyword sourceServerVar     tf_tournament_classlimit_sniper tf_tournament_classlimit_soldier tf_tournament_classlimit_spy tf_tournament_hide_domination_icons tf_use_fixed_weaponspreads
syn keyword sourceServerVar     tf_useparticletracers tf_weapon_criticals tf_whip_speed_increase think_limit tongue_bullet_radius
syn keyword sourceServerVar     trace_report training_can_build_dispenser training_can_build_sentry training_can_build_tele_entrance training_can_build_tele_exit
syn keyword sourceServerVar     training_can_destroy_buildings training_can_pickup_dispenser training_can_pickup_sentry training_can_pickup_tele_entrance training_can_pickup_tele_exit
syn keyword sourceServerVar     training_can_select_weapon_building training_can_select_weapon_item1 training_can_select_weapon_item2 training_can_select_weapon_melee training_can_select_weapon_pda
syn keyword sourceServerVar     training_can_select_weapon_primary training_can_select_weapon_secondary training_class tutor tv_allow_camera_man
syn keyword sourceServerVar     tv_allow_static_shots tv_delay tv_delaymapchange versus_force_start_time versus_marker_num
syn keyword sourceServerVar     versus_round_restarttimer versus_round_restarttimer_finale voice_serverdebug vprof_scope_entity_gamephys vprof_scope_entity_thinks
syn keyword sourceServerVar     vprof_think_limit vs_score_pp_health vs_score_pp_healthbuffer weapon_showproficiency witch_rage_ramp_duration
syn keyword sourceServerVar     xbox_autothrottle xbox_steering_deadzone xbox_throttlebias xbox_throttlespoof xc_crouch_debounce
syn keyword sourceServerVar     xc_crouch_range xc_uncrouch_on_jump xc_use_crouch_limiter z_attack_change_target_range z_attack_interval
syn keyword sourceServerVar     z_attack_max_range z_attack_min_range z_attack_movement_penalty z_attack_on_the_run_range z_bbq_min
syn keyword sourceServerVar     z_bbq_rate z_burn_max z_burn_rate z_checkpoint_debug z_damage_screen_fade_alpha
syn keyword sourceServerVar     z_damage_screen_fade_duration z_debug_infected_server_anim z_debug_stuck z_door_pound_damage z_exploding_force
syn keyword sourceServerVar     z_exploding_inner_radius z_exploding_outer_radius z_fatal_blast_incineration_probability z_fatal_blast_max_ragdolls z_fatal_blast_min_ragdolls
syn keyword sourceServerVar     z_finale_spawn_safety_range_override z_ghost_cooldown z_ghost_delay_minspawn z_ghost_duration z_ghost_group_spawn
syn keyword sourceServerVar     z_ghost_line_of_scrimmage_far z_ghost_line_of_scrimmage_near z_ghost_line_of_scrimmage_safety z_ghost_line_of_scrimmage_threat_bonus z_ghost_los_expected_progress
syn keyword sourceServerVar     z_ghost_offer_acceptance_time z_ghost_offer_spawn_safety_time z_ghost_spawn_distance z_head_damage_causes_wounds z_hunter_lunge_distance
syn keyword sourceServerVar     z_hunter_lunge_pitch z_max_survivor_damage z_minigun_atomize z_non_head_damage_factor_multiplier z_population
syn keyword sourceServerVar     z_pounce_shake_amplitude z_pounce_shake_duration z_pounce_shake_radius z_pounce_stumble_radius z_ragdoll_discard_range
syn keyword sourceServerVar     z_scrimmage_sphere z_skip_wounds z_survivor_respawn_health z_tank_footstep_shake_amplitude z_tank_footstep_shake_duration
syn keyword sourceServerVar     z_tank_footstep_shake_interval z_tank_footstep_shake_radius z_use_next_difficulty_damage_factor z_witch_always_kills z_witch_tongue_range
syn keyword sourceServerVar     zombie_ambushdist zombie_basemax zombie_basemin zombie_changemax zombie_changemin
syn keyword sourceServerVar     zombie_decaymax zombie_decaymin zombie_moanfreq zombie_stepfreq

" Syntax: Cheats {{{1
syn keyword sourceCheat         CreateHairball CreatePredictionError Smoker_escape_range Test_CreateEntity Test_EHandle
syn keyword sourceCheat         Test_InitRandomEntitySpawner Test_ProxyToggle_EnableProxy Test_ProxyToggle_EnsureValue Test_ProxyToggle_SetValue Test_RandomPlayerPosition
syn keyword sourceCheat         Test_RandomizeInPVS Test_RemoveAllRandomEntities Test_SpawnRandomEntities achievement_debug achievement_disable
syn keyword sourceCheat         achievement_notification_test action_progress_reset_interval adrenaline_backpack_speedup adrenaline_duration adrenaline_health_buffer
syn keyword sourceCheat         adrenaline_revive_speedup adrenaline_run_speed ai_debug_actbusy ai_debug_los ai_debug_shoot_positions
syn keyword sourceCheat         ai_drawbattlelines ai_inhibit_spawners ai_talk_idle_enabled ai_vehicle_avoidance air_density
syn keyword sourceCheat         allow_weapon_fire_to_use ammo_pack_use_duration anim_dumpstate anim_showmainactivity anim_showstate
syn keyword sourceCheat         anim_showstatelog bench_end bench_start bench_upload boomer_exposed_time_tolerance
syn keyword sourceCheat         boomer_leaker_chance boomer_pz_claw_dmg boomer_vomit_delay bot_com_meleerange bot_com_viewrange
syn keyword sourceCheat         bot_com_wpnrange bot_crouch bot_debug bot_dontmove bot_freeze
syn keyword sourceCheat         bot_jump bot_mimic bot_mimic_spec_buttons bot_mimic_yaw_offset bot_nav_offsetpathinset
syn keyword sourceCheat         bot_nav_recomputetime bot_nav_simplifypaths bot_nav_turnspeed bot_nav_usefeelers bot_nav_useoffsetpaths
syn keyword sourceCheat         bot_nav_wpdeceldistance bot_nav_wpdistance bot_randomnames bot_saveme bot_selectweaponslot
syn keyword sourceCheat         box buddha bug_swap c_maxdistance c_maxpitch
syn keyword sourceCheat         c_maxyaw c_mindistance c_minpitch c_minyaw c_orthoheight
syn keyword sourceCheat         c_orthowidth cam_collision cam_command cam_idealdelta cam_idealdist
syn keyword sourceCheat         cam_idealdistright cam_idealdistup cam_ideallag cam_idealpitch cam_idealyaw
syn keyword sourceCheat         cam_showangles cam_snapto camortho cast_hull cast_ray
syn keyword sourceCheat         ccs_write_convars ch_createairboat ch_createjeep chainsaw_attack_cone chainsaw_attack_distance
syn keyword sourceCheat         chainsaw_attack_force chainsaw_attract_distance chainsaw_damage chainsaw_debug chainsaw_hit_interval
syn keyword sourceCheat         chainsaw_startup_fadeout_time changelevel_inhibit changelevel_pause_interval chet_debug_idle cl_backspeed
syn keyword sourceCheat         cl_bob cl_bobcycle cl_bobup cl_camera_follow_bone_index cl_cinematiclight_b
syn keyword sourceCheat         cl_cinematiclight_g cl_cinematiclight_r cl_cinematiclight_scale cl_cinematiclight_tonemap cl_clock_correction
syn keyword sourceCheat         cl_clock_correction_adjustment_max_amount cl_clock_correction_adjustment_max_offset cl_clock_correction_adjustment_min_offset cl_clock_correction_force_server_tick cl_clock_showdebuginfo
syn keyword sourceCheat         cl_clockdrift_max_ms cl_clockdrift_max_ms_threadmode cl_crash cl_detail_multiplier cl_disable_ragdolls
syn keyword sourceCheat         cl_draw_airboat_wake cl_drawhud cl_drawleaf cl_drawmaterial cl_drawshadowtexture
syn keyword sourceCheat         cl_dumpplayer cl_ent_absbox cl_ent_bbox cl_ent_rbox cl_entityreport
syn keyword sourceCheat         cl_entityreport_sorted cl_extrapolate cl_extrapolate_amount cl_eyeball_boss_debug cl_fastdetailsprites
syn keyword sourceCheat         cl_find_ent cl_find_ent_index cl_flag_return_height cl_flag_return_size cl_flushentitypacket
syn keyword sourceCheat         cl_force_3rd_strike cl_forwardspeed cl_fullupdate cl_glow_blur_scale cl_glow_brightness
syn keyword sourceCheat         cl_glow_force cl_glow_it_timer_ratio_reduction cl_glow_los_delay cl_glow_los_fade_in_time cl_glow_los_fade_out_time
syn keyword sourceCheat         cl_gunlowerangle cl_gunlowerspeed cl_ignorepackets cl_jiggle_bone_debug cl_jiggle_bone_debug_pitch_constraints
syn keyword sourceCheat         cl_jiggle_bone_debug_yaw_constraints cl_jiggle_bone_invert cl_leafsystemvis cl_leveloverview cl_leveloverviewmarker
syn keyword sourceCheat         cl_max_shadow_renderable_dist cl_maxrenderable_dist cl_obj_test_building_damage cl_overdraw_test cl_particle_retire_cost
syn keyword sourceCheat         cl_particleeffect_aabb_buffer cl_particles_show_bbox cl_pclass cl_pdump cl_phys2_stats
syn keyword sourceCheat         cl_phys_timescale cl_pitchdown cl_pitchup cl_predict cl_predictionlist
syn keyword sourceCheat         cl_querycache_stats cl_ragdoll_gravity cl_reloadpostprocessparams cl_removedecals cl_shadowtextureoverlaysize
syn keyword sourceCheat         cl_showanimstate cl_showanimstate_activities cl_showanimstate_log cl_showents cl_showevents
syn keyword sourceCheat         cl_sidespeed cl_skipfastpath cl_skipslowpath cl_smoke_color_percent cl_smoke_fog_percent
syn keyword sourceCheat         cl_soundscape_flush cl_sporeclipdistance cl_sun_decay_rate cl_upspeed cl_use_update_interval
syn keyword sourceCheat         cl_view cl_viewtarget_debug cl_viewtarget_offset cl_viewtarget_player cl_winddir
syn keyword sourceCheat         cl_windspeed cl_witch_light_brightness cl_witch_light_color_b cl_witch_light_color_g cl_witch_light_color_r
syn keyword sourceCheat         cl_witch_light_cone cl_witch_light_debug cl_witch_light_enable cl_witch_light_offset_x cl_witch_light_offset_y
syn keyword sourceCheat         cl_witch_light_offset_z cl_witch_light_offset_z_max cl_witch_light_radius cl_wpn_sway_interp cl_wpn_sway_scale
syn keyword sourceCheat         claw_force claw_range claw_range_down claw_swing_duration claw_swing_interval
syn keyword sourceCheat         claw_swing_miss_interval clear_attribute cola_bottles_use_duration cola_bottles_use_range cola_bottles_use_tolerance
syn keyword sourceCheat         collect_entity_model_name collision_test colorcorrectionui crash create_flashlight
syn keyword sourceCheat         cs_ShowStateTransitions current_flow_distance debug_visibility_monitor debug_zombie_panel debugsystemui
syn keyword sourceCheat         default_fov defibrillator_return_to_life_time defibrillator_use_duration demo_recordcommands director_adrenaline_density
syn keyword sourceCheat         director_ai_tanks director_always_allow_wanderers director_ammo_density director_begin_script director_build_up_min_interval
syn keyword sourceCheat         director_clear_count director_clear_timeout director_configurable_weapon_spawn_density director_convert_pills director_convert_pills_critical_health
syn keyword sourceCheat         director_convert_pills_to_defib_health director_custom_finale_tank_spacing director_debug director_debug_revisit director_debug_scavenge_items
syn keyword sourceCheat         director_debug_threat_placement director_defibrillator_density director_end_script director_finale_item_cluster_count director_finale_panic_waves
syn keyword sourceCheat         director_finale_stage_delay director_force_background director_force_panic_event director_force_scripted_panic_event director_force_tank
syn keyword sourceCheat         director_force_versus_start director_force_witch director_gas_can_density director_gauntlet_movement_bonus director_gauntlet_movement_bonus_max
syn keyword sourceCheat         director_gauntlet_movement_threshold director_gauntlet_movement_timer_length director_gauntlet_tank_kite_distance director_ingress_range director_intensity_relax_allow_wanderers_threshold
syn keyword sourceCheat         director_intensity_relax_allow_wanderers_threshold_expert director_intensity_relax_allow_wanderers_threshold_hard director_intensity_relax_threshold director_intensity_threshold director_item_cluster_range
syn keyword sourceCheat         director_item_placement_method director_item_placement_spew director_magnum_spawn_density director_max_threat_areas director_melee_weapon_density
syn keyword sourceCheat         director_molotov_density director_music_dynamic_mob_size director_music_dynamic_mobstop_size director_music_dynamic_scanmobstop_size director_must_create_all_scavenge_items
syn keyword sourceCheat         director_no_bosses director_no_death_check director_no_mobs director_no_specials director_no_survivor_bots
syn keyword sourceCheat         director_num_reserved_wanderers director_output_population_visit director_oxygen_tank_density director_pain_pill_density director_panic_forever
syn keyword sourceCheat         director_panic_wave_pause_max director_panic_wave_pause_min director_per_map_weapon_upgrade_chance director_pipe_bomb_density director_pistol_density
syn keyword sourceCheat         director_propane_tank_density director_ready_duration director_ready_radius director_relax_max_flow_travel director_relax_max_interval
syn keyword sourceCheat         director_relax_min_interval director_report director_report_scavenge_items director_scavenge_item_override director_short_finale
syn keyword sourceCheat         director_show_intensity director_solve_item_density director_special_battlefield_respawn_interval director_special_finale_offer_length director_special_initial_spawn_delay_max
syn keyword sourceCheat         director_special_initial_spawn_delay_max_extra director_special_initial_spawn_delay_min director_special_original_offer_length director_special_respawn_interval director_spectate_specials
syn keyword sourceCheat         director_start director_stop director_super_weapon_density director_survivor_movement_window director_sustain_peak_max_time
syn keyword sourceCheat         director_sustain_peak_min_time director_tank_bypass_max_flow_travel director_tank_checkpoint_interval director_tank_force_offer director_tank_lottery_entry_time
syn keyword sourceCheat         director_tank_lottery_selection_time director_tank_max_interval director_tank_min_interval director_tank_offer_debug director_test_loop
syn keyword sourceCheat         director_test_loop_restarts_before_rotate director_test_loop_rotate_maps director_test_loop_time director_threat_clear_radius director_threat_max_separation
syn keyword sourceCheat         director_threat_min_separation director_threat_radius director_transition_timeout director_unfreeze_time director_upgradepack_density
syn keyword sourceCheat         director_vomitjar_density director_weapon_cluster_range disable_dynamic_prop_loading disable_static_prop_loading dismount
syn keyword sourceCheat         display_elapsedtime display_game_events dlight_debug drawcross drawline
syn keyword sourceCheat         dsp_dist_max dsp_dist_min dsp_off dumpgamestringtable editor_toggle
syn keyword sourceCheat         enable_debug_overlays enable_skeleton_draw endround ent_absbox ent_attachments
syn keyword sourceCheat         ent_autoaim ent_bbox ent_call ent_create ent_dump
syn keyword sourceCheat         ent_fire ent_info ent_keyvalue ent_messages ent_messages_draw
syn keyword sourceCheat         ent_name ent_orient ent_pause ent_pivot ent_rbox
syn keyword sourceCheat         ent_remove ent_remove_all ent_rotate ent_script_dump ent_setang
syn keyword sourceCheat         ent_setname ent_setpos ent_show_response_criteria ent_step ent_teleport
syn keyword sourceCheat         ent_text ent_text_allow_script ent_viewoffset explode explodevector
syn keyword sourceCheat         fade_crosshair fade_immediately fadein fadeout find_ent
syn keyword sourceCheat         find_ent_index firetarget first_aid_heal_percent first_aid_kit_max_heal first_aid_kit_use_duration
syn keyword sourceCheat         fish_debug fish_dormant flush flush_locked fog_2dskyboxfogfactor
syn keyword sourceCheat         fog_color fog_colorskybox fog_enable fog_enable_water_fog fog_enableskybox
syn keyword sourceCheat         fog_end fog_endskybox fog_hdrcolorscale fog_hdrcolorscaleskybox fog_maxdensity
syn keyword sourceCheat         fog_maxdensityskybox fog_override fog_start fog_startskybox force_disablex360
syn keyword sourceCheat         fuel_barrel_damage_amount fuel_barrel_damage_radius fuel_barrel_debug fuel_barrel_flame_instances fuel_barrel_health
syn keyword sourceCheat         fuel_barrel_screen_shake_amplitude fuel_barrel_screen_shake_duration fuel_barrel_screen_shake_frequency fuel_barrel_screen_shake_radius g_cannon_damageandradius
syn keyword sourceCheat         g_cannon_debug g_cannon_max_traveltime g_cannon_reloadtime g_debug_angularsensor g_debug_antlionmaker
syn keyword sourceCheat         g_debug_basehelicopter g_debug_basescanner g_debug_constraint_sounds g_debug_gunship g_debug_headcrab
syn keyword sourceCheat         g_debug_physcannon g_debug_ragdoll_removal g_debug_ragdoll_visualize g_debug_trackpather g_debug_vehiclebase
syn keyword sourceCheat         g_debug_vehicledriver g_debug_vehicleexit g_debug_vehiclesound g_jeepexitspeed gameinstructor_dump_open_lessons
syn keyword sourceCheat         gameinstructor_find_errors gameinstructor_verbose gameinstructor_verbose_lesson gas_can_use_duration gascan_spit_time
syn keyword sourceCheat         gascan_throw_force gascan_use_range gascan_use_tolerance give givecurrentammo
syn keyword sourceCheat         gl_clear_gray gl_clear_randomcolor global_set glow_outline_width glow_use_tolerance
syn keyword sourceCheat         god grenadelauncher_damage grenadelauncher_ff_scale grenadelauncher_ff_scale_self grenadelauncher_force_kill
syn keyword sourceCheat         grenadelauncher_radius_kill grenadelauncher_radius_stumble grenadelauncher_show_radius grenadelauncher_velocity hack_elevator_z_offset
syn keyword sourceCheat         hidehud host_sleep host_timescale hud_targetid_rangefinder hunk_print_allocations
syn keyword sourceCheat         hunk_track_allocation_types hunter_committed_attack_range hunter_leap_away_give_up_range hunter_pounce_air_speed hunter_pounce_loft_rate
syn keyword sourceCheat         hunter_pounce_max_loft_angle hunter_pounce_ready_range hunter_pz_claw_dmg hurtme in_forceuser
syn keyword sourceCheat         incendiary_ammo_burn_time inferno_acid_spawn_angle inferno_child_spawn_interval_multiplier inferno_child_spawn_max_depth inferno_damage
syn keyword sourceCheat         inferno_debug inferno_dlight_spacing inferno_flame_lifetime inferno_flame_spacing inferno_forward_reduction_factor
syn keyword sourceCheat         inferno_friendly_fire_duration inferno_initial_spawn_interval inferno_max_child_spawn_interval inferno_max_flames inferno_max_range
syn keyword sourceCheat         inferno_per_flame_spawn_duration inferno_scorch_decals inferno_spawn_angle inferno_surface_offset inferno_velocity_decay_factor
syn keyword sourceCheat         inferno_velocity_factor inferno_velocity_normal_factor intensity_averaged_following_decay intensity_decay_time intensity_enemy_death_far_range
syn keyword sourceCheat         intensity_enemy_death_near_range intensity_factor intensity_lock ipc_console_enable jockey
syn keyword sourceCheat         jockey_pounce_air_speed jockey_pounce_loft_rate jockey_pounce_max_loft_angle jockey_pz_claw_dmg jockeyme
syn keyword sourceCheat         kdtree_test kill killvector l4d2_snd_adrenaline leaderboard_duplicate_entries
syn keyword sourceCheat         light_crosshair lightcache_maxmiss linefile locator_split_len locator_split_maxwide_percent
syn keyword sourceCheat         lower_body_debug mark mat_accelerate_adjust_exposure_down mat_bloomamount_rate mat_bumpbasis
syn keyword sourceCheat         mat_camerarendertargetoverlaysize mat_colcorrection_forceentitiesclientside mat_crosshair mat_crosshair_edit mat_crosshair_explorer
syn keyword sourceCheat         mat_crosshair_printmaterial mat_crosshair_reloadmaterial mat_debug mat_debug_autoexposure mat_debug_bloom
syn keyword sourceCheat         mat_debug_process_halfscreen mat_debugalttab mat_depthbias_decal mat_depthbias_normal mat_depthbias_shadowmap
syn keyword sourceCheat         mat_diffuse mat_drawflat mat_drawwater mat_dynamic_tonemapping mat_dynamiclightmaps
syn keyword sourceCheat         mat_edit mat_exposure_center_region_x mat_exposure_center_region_x_flashlight mat_exposure_center_region_y mat_exposure_center_region_y_flashlight
syn keyword sourceCheat         mat_fastclip mat_fastnobump mat_fillrate mat_force_bloom mat_force_tonemap_min_avglum
syn keyword sourceCheat         mat_force_tonemap_percent_bright_pixels mat_force_tonemap_percent_target mat_force_tonemap_scale mat_forcedynamic mat_forcemanagedtextureintohardware
syn keyword sourceCheat         mat_frame_sync_enable mat_frame_sync_force_texture mat_fullbright mat_hdr_tonemapscale mat_hdr_uncapexposure
syn keyword sourceCheat         mat_hsv mat_leafvis mat_leafvisforceleaf mat_loadtextures mat_lpreview_mode
syn keyword sourceCheat         mat_luxels mat_measurefillrate mat_morphstats mat_norendering mat_normalmaps
syn keyword sourceCheat         mat_normals mat_postprocess_enable mat_proxy mat_reloadallmaterials mat_reloadmaterial
syn keyword sourceCheat         mat_reloadtextures mat_remoteshadercompile mat_reporthwmorphmemory mat_reversedepth mat_show_texture_memory_usage
syn keyword sourceCheat         mat_showcamerarendertarget mat_showframebuffertexture mat_showlowresimage mat_showmiplevels mat_showwatertextures
syn keyword sourceCheat         mat_slopescaledepthbias_decal mat_slopescaledepthbias_normal mat_slopescaledepthbias_shadowmap mat_softwareskin mat_stub
syn keyword sourceCheat         mat_supportflashlight mat_suppress mat_surfaceid mat_surfacemat mat_tessellation_accgeometrytangents
syn keyword sourceCheat         mat_tessellation_cornertangents mat_tessellation_update_buffers mat_tessellationlevel mat_tessellationmode mat_tonemap_algorithm
syn keyword sourceCheat         mat_tonemap_min_avglum mat_tonemap_percent_bright_pixels mat_tonemap_percent_target mat_viewportscale mat_visualize_dof
syn keyword sourceCheat         mat_wireframe mat_yuv melee_collateral_shove_count melee_combo_reset_time melee_dump_weapons
syn keyword sourceCheat         melee_dump_weapons_server melee_force_scalar melee_force_scalar_combat_character melee_range melee_reload_info
syn keyword sourceCheat         melee_reload_info_server melee_show_swing mem_dumpvballocs mem_force_flush mem_incremental_compact_rate
syn keyword sourceCheat         memory_diff memory_list memory_mark memory_status mix_dynamic_cull_max_CI_emitters
syn keyword sourceCheat         mix_dynamic_debug_CI mix_dynamic_max_CI_emitters mix_dynamic_num_attack_vox_CI mod_dynamicloadpause mod_dynamicloadthrottle
syn keyword sourceCheat         mounted_gun_cooldown_time mounted_gun_mount_cooldown_time mounted_gun_overheat_penalty_time mounted_gun_overheat_time mounted_gun_rate_of_fire
syn keyword sourceCheat         mp_feetmaxyawrate mp_forceactivityset mp_forcerespawnplayers mp_forcewin mp_showcleanedupents
syn keyword sourceCheat         mp_showgestureslots mp_showroundtransitions mp_simulatemultiplecappers multiplayerendgame music_calm_min_interval
syn keyword sourceCheat         music_dynamic_CI_sight_decay music_dynamic_PZ_BPM music_dynamic_PZ_interval_randmultmax music_dynamic_SI_close_distmax music_dynamic_SI_far_distmin
syn keyword sourceCheat         music_dynamic_SI_inrange_distmax music_dynamic_action_decay music_dynamic_ambient_decay music_dynamic_ambient_in_max music_dynamic_ambient_in_min
syn keyword sourceCheat         music_dynamic_ambient_out_max music_dynamic_ambient_out_min music_dynamic_ambient_vol_min_alert music_dynamic_attack_CI_close_decay music_dynamic_attack_CI_close_distmax
syn keyword sourceCheat         music_dynamic_attack_CI_distmax music_dynamic_attack_CI_near_decay music_dynamic_attack_CI_near_distmax music_dynamic_attack_CI_num music_dynamic_attack_CI_veryclose_decay
syn keyword sourceCheat         music_dynamic_attack_CI_veryclose_distmax music_dynamic_calm_decay music_dynamic_damage_decay music_dynamic_damage_duck_damage_max music_dynamic_damage_duck_damage_min
syn keyword sourceCheat         music_dynamic_damage_duck_max music_dynamic_damage_duck_min music_dynamic_damage_increment music_dynamic_debug music_dynamic_dodamage_decay
syn keyword sourceCheat         music_dynamic_dodamage_increment music_dynamic_gunfire_decay music_dynamic_gunfire_increment music_dynamic_gunfireslow_decay music_dynamic_gunfireslow_increment
syn keyword sourceCheat         music_dynamic_mob_action_close_max music_dynamic_mob_action_close_min music_dynamic_mob_action_decay music_dynamic_mob_action_increment music_dynamic_mob_action_max
syn keyword sourceCheat         music_dynamic_mob_action_min music_dynamic_mob_choir_BPM music_dynamic_mob_choir_interval_beats music_dynamic_mob_choir_interval_randmultmax music_dynamic_mob_damage_max
syn keyword sourceCheat         music_dynamic_mob_damage_min music_dynamic_mob_decay music_dynamic_mob_increment music_dynamic_mob_large music_dynamic_mob_max
syn keyword sourceCheat         music_dynamic_mob_med music_dynamic_mob_min music_dynamic_mob_small music_dynamic_on music_dynamic_scavenge_beat
syn keyword sourceCheat         music_dynamic_solosuccess_damagemin music_dynamic_solosuccess_decay music_dynamic_solosuccess_increment music_dynamic_specials_interval_beats music_dynamic_threat_decay
syn keyword sourceCheat         music_dynamic_update_interval music_dynamic_witch_alert_interval music_dynamic_witch_near_max music_dynamic_witch_near_min music_intensity_override
syn keyword sourceCheat         music_intensity_threshold music_large_area_reveal_repeat_threshold music_large_area_reveal_threshold music_manager music_master_debug
syn keyword sourceCheat         music_master_tag_threshold music_min_pending_threat_time music_min_safe_time music_moment_of_silence_repeat_interval music_moment_of_silence_start_delay
syn keyword sourceCheat         nav_add_to_selected_set nav_add_to_selected_set_by_id nav_analyze nav_analyze_scripted nav_area_bgcolor
syn keyword sourceCheat         nav_area_max_size nav_auto_build_area nav_avoid nav_begin_area nav_begin_deselecting
syn keyword sourceCheat         nav_begin_drag_deselecting nav_begin_drag_selecting nav_begin_selecting nav_begin_shift_xy nav_blockers_can_affect_flow
syn keyword sourceCheat         nav_build_ladder nav_check_file_consistency nav_chop_selected nav_clear_attribute nav_clear_selected_set
syn keyword sourceCheat         nav_clear_walkable_marks nav_compress_id nav_connect nav_coplanar_slope_limit nav_coplanar_slope_limit_displacement
syn keyword sourceCheat         nav_corner_adjust_adjacent nav_corner_lower nav_corner_place_on_ground nav_corner_raise nav_corner_select
syn keyword sourceCheat         nav_create_area_at_feet nav_create_place_on_ground nav_crouch nav_debug_blocked nav_debug_finale_area
syn keyword sourceCheat         nav_delete nav_delete_marked nav_disconnect nav_displacement_test nav_dont_hide
syn keyword sourceCheat         nav_draw_limit nav_edit nav_end_area nav_end_deselecting nav_end_drag_deselecting
syn keyword sourceCheat         nav_end_drag_selecting nav_end_selecting nav_end_shift_xy nav_fix_playerclips nav_flood_select
syn keyword sourceCheat         nav_flood_select_tolerance nav_flow_max_survivor_climb_height nav_flow_max_survivor_drop_height nav_fog_edit nav_fog_mark
syn keyword sourceCheat         nav_fog_pick nav_fog_print_used nav_fog_replace nav_fog_select_place nav_fog_set
syn keyword sourceCheat         nav_gen_cliffs_approx nav_generate nav_generate_fencetops nav_generate_fixup_jump_areas nav_generate_incremental
syn keyword sourceCheat         nav_generate_incremental_range nav_generate_incremental_tolerance nav_gui nav_gui_rebuild nav_jump
syn keyword sourceCheat         nav_ladder_flip nav_load nav_lower_drag_volume_max nav_lower_drag_volume_min nav_lying_down_percent
syn keyword sourceCheat         nav_make_sniper_spots nav_mark nav_mark_attribute nav_mark_unnamed nav_mark_walkable
syn keyword sourceCheat         nav_max_auto_area_size nav_max_view_distance nav_max_vis_delta_list_length nav_merge nav_merge_mesh
syn keyword sourceCheat         nav_no_hostages nav_no_jump nav_obscure_range nav_place_floodfill nav_place_list
syn keyword sourceCheat         nav_place_pick nav_place_replace nav_place_set nav_potentially_visible_dot_tolerance nav_precise
syn keyword sourceCheat         nav_print_visibility_info nav_print_visible_set_counts nav_quicksave nav_raise_drag_volume_max nav_raise_drag_volume_min
syn keyword sourceCheat         nav_recall_selected_set nav_recompute_flow nav_recompute_flow_optimization nav_remove_from_selected_set nav_remove_jump_areas
syn keyword sourceCheat         nav_run nav_save nav_save_selected nav_select_blocked_areas nav_select_completely_visible
syn keyword sourceCheat         nav_select_damaging_areas nav_select_half_space nav_select_invalid_areas nav_select_obstructed_areas nav_select_partially_visible
syn keyword sourceCheat         nav_select_radius nav_select_stairs nav_select_threat nav_select_view_distance nav_select_visible_set_size
syn keyword sourceCheat         nav_selected_set_border_color nav_selected_set_color nav_set_place_mode nav_shift nav_show_approach_points
syn keyword sourceCheat         nav_show_area_info nav_show_compass nav_show_connectionblockers nav_show_continguous nav_show_danger
syn keyword sourceCheat         nav_show_func_nav_avoid nav_show_func_nav_prefer nav_show_ladder_bounds nav_show_light_intensity nav_show_node_grid
syn keyword sourceCheat         nav_show_node_id nav_show_nodes nav_show_player_area nav_show_player_counts nav_show_potentially_visible
syn keyword sourceCheat         nav_simplify_selected nav_slope_limit nav_slope_tolerance nav_snap_to_grid nav_solid_props
syn keyword sourceCheat         nav_splice nav_split nav_split_place_on_ground nav_stand nav_stop
syn keyword sourceCheat         nav_store_selected_set nav_strip nav_subdivide nav_test_node nav_test_node_crouch
syn keyword sourceCheat         nav_test_node_crouch_dir nav_test_stairs nav_test_visibility nav_toggle_deselecting nav_toggle_in_selected_set
syn keyword sourceCheat         nav_toggle_place_mode nav_toggle_place_painting nav_toggle_selected_set nav_toggle_selecting nav_transient
syn keyword sourceCheat         nav_trouble_report nav_trouble_report_corner_to_corner nav_trouble_report_invalid nav_trouble_report_suggestions nav_trouble_test_area
syn keyword sourceCheat         nav_trouble_test_debug_duration nav_trouble_walkable_backtrace nav_unmark nav_update_lighting nav_update_visibility_on_edit
syn keyword sourceCheat         nav_use_place nav_walk nav_warp_to_mark nav_world_center nb_acceleration
syn keyword sourceCheat         nb_allow_avoiding nb_allow_climbing nb_allow_gap_jumping nb_assault nb_blind
syn keyword sourceCheat         nb_chase_lead_time nb_command nb_debug nb_debug_climbing nb_debug_filter
syn keyword sourceCheat         nb_debug_history nb_debug_known_entities nb_delete_all nb_direct_chase_nav_check nb_force_look_at
syn keyword sourceCheat         nb_friction_forward nb_friction_sideways nb_goal_look_ahead_range nb_gravity nb_head_aim_resettle_angle
syn keyword sourceCheat         nb_head_aim_resettle_time nb_head_aim_settle_duration nb_head_aim_steady_max_rate nb_ladder_align_range nb_last_area_update_tolerance
syn keyword sourceCheat         nb_lean_forward_accel nb_lean_max_angle nb_lean_rate nb_move_to_cursor nb_move_to_position
syn keyword sourceCheat         nb_path_draw_inc nb_path_draw_segment_count nb_path_segment_influence_radius nb_player_crouch nb_player_move
syn keyword sourceCheat         nb_player_stop nb_player_walk nb_rush nb_saccade_speed nb_saccade_time
syn keyword sourceCheat         nb_select nb_speed_look_ahead_range nb_stop nb_stuck_dump_display nb_stuck_dump_filter_entindex
syn keyword sourceCheat         nb_stuck_dump_filter_identifier nb_stuck_dump_filter_min_duration nb_stuck_dump_filter_time_end nb_stuck_dump_filter_time_start nb_stuck_dump_show_details
syn keyword sourceCheat         nb_update_debug nb_update_framelimit nb_update_frequency nb_update_maxslide nb_vision_ignore_survivors
syn keyword sourceCheat         nb_vision_notice_hidden_range nb_warp_selected_here nb_yaw_rate net_blockmsg net_droppackets
syn keyword sourceCheat         net_fakejitter net_fakelag net_fakeloss net_showevents net_showreliablesounds
syn keyword sourceCheat         net_showusermessages next next_scavenge_cluster noclip noclip_fixup
syn keyword sourceCheat         notarget npc_ally_deathmessage obj_child_damage_factor obj_damage_factor object_verbose
syn keyword sourceCheat         pain_pills_decay_rate pain_pills_health_threshold pain_pills_health_value panel_test_title_safe particle_simulateoverflow
syn keyword sourceCheat         particle_test_attach_attachment particle_test_attach_mode particle_test_file particle_test_start particle_test_stop
syn keyword sourceCheat         perfui phys2_debug_wireframe phys2_default_max_velocity phys2_dump_runtime_sizes phys2_load
syn keyword sourceCheat         phys2_max_length_constraint_anchor phys2_mem_debug phys2_preload_models phys2_ragdoll_drive_type phys2_save
syn keyword sourceCheat         phys2_save_client phys2_save_server phys2_scheduler_manual_pools phys2_shadow_port phys2_shoot
syn keyword sourceCheat         phys2_stats phys2_vdb phys2_vdb_host phys2ui phys_enable_PIX_counters
syn keyword sourceCheat         phys_explosion_force phys_shoot physcannon_mega_enabled physx_debug_dll physx_valve_dll
syn keyword sourceCheat         picker player_debug_print_damage player_incap_use_radius player_throwforce player_use_radius
syn keyword sourceCheat         playsoundscape posedebug precache_all_survivors print_colorcorrection prop_crosshair
syn keyword sourceCheat         prop_debug prop_dynamic_create prop_physics_create pwatchent pwatchvar
syn keyword sourceCheat         pz_damages r_3dskyonly r_AirboatPitchCurveLinear r_AirboatPitchCurveZero r_AirboatRollCurveLinear
syn keyword sourceCheat         r_AirboatRollCurveZero r_AirboatViewBlendTo r_AirboatViewBlendToScale r_AirboatViewBlendToTime r_AirboatViewDampenDamp
syn keyword sourceCheat         r_AirboatViewDampenFreq r_AirboatViewZHeight r_ClipAreaPortals r_DispBuildable r_DispWalkable
syn keyword sourceCheat         r_DrawBeams r_DrawDisp r_DrawModelLightOrigin r_DrawPortals r_DrawRain
syn keyword sourceCheat         r_JeepFOV r_JeepViewBlendTo r_JeepViewBlendToScale r_JeepViewBlendToTime r_JeepViewDampenDamp
syn keyword sourceCheat         r_JeepViewDampenFreq r_JeepViewZHeight r_PortalTestEnts r_RainCheck r_RainDebugDuration
syn keyword sourceCheat         r_RainHack r_RainProfile r_RainRadius r_RainSideVel r_RainSimulate
syn keyword sourceCheat         r_RainSplashPercentage r_SnowColorBlue r_SnowColorGreen r_SnowColorRed r_SnowDebugBox
syn keyword sourceCheat         r_SnowEnable r_SnowEndAlpha r_SnowEndSize r_SnowFallSpeed r_SnowInsideRadius
syn keyword sourceCheat         r_SnowOutsideRadius r_SnowParticles r_SnowPosScale r_SnowRayEnable r_SnowRayLength
syn keyword sourceCheat         r_SnowRayRadius r_SnowSpeedScale r_SnowStartAlpha r_SnowStartSize r_SnowWindScale
syn keyword sourceCheat         r_SnowZoomOffset r_SnowZoomRadius r_VehicleViewClamp r_VehicleViewDampen r_ambientfraction
syn keyword sourceCheat         r_ambientlightingonly r_aspectratio r_avglight r_avglightmap r_clip3Dskyboxneartoworldfar
syn keyword sourceCheat         r_clip3Dskyboxneartoworldfarfudge r_colorstaticprops r_debugcheapwater r_debugrandomstaticlighting r_depthoverlay
syn keyword sourceCheat         r_drawallrenderables r_drawbrushmodels r_drawclipbrushes r_drawdecals r_drawentities
syn keyword sourceCheat         r_drawfuncdetail r_drawleaf r_drawlightcache r_drawlightinfo r_drawlights
syn keyword sourceCheat         r_drawmodelstatsoverlay r_drawmodelstatsoverlaydistance r_drawopaquerenderables r_drawopaqueworld r_drawothermodels
syn keyword sourceCheat         r_drawparticles r_drawrenderboxes r_drawropes r_drawskybox r_drawsprites
syn keyword sourceCheat         r_drawstaticprops r_drawtracers r_drawtranslucentrenderables r_drawtranslucentworld r_drawvgui
syn keyword sourceCheat         r_drawviewmodel r_drawworld r_dscale_basefov r_dscale_fardist r_dscale_farscale
syn keyword sourceCheat         r_dscale_neardist r_dscale_nearscale r_dynamiclighting r_entity r_eyeglintlodpixels
syn keyword sourceCheat         r_eyewaterepsilon r_farz r_flashlight_attach_to_viewmodel r_flashlight_version2 r_flashlightambient
syn keyword sourceCheat         r_flashlightbacktraceoffset r_flashlightbrightness r_flashlightclip r_flashlightconstant r_flashlightdrawclip
syn keyword sourceCheat         r_flashlightfar r_flashlightfov r_flashlightinfectedtexture r_flashlightladderdist r_flashlightlinear
syn keyword sourceCheat         r_flashlightlockposition r_flashlightmuzzleflashfov r_flashlightnear r_flashlightnearoffsetscale r_flashlightoffsetforward
syn keyword sourceCheat         r_flashlightoffsetforward_low r_flashlightoffsetright r_flashlightoffsetright_low r_flashlightoffsetup r_flashlightoffsetup_low
syn keyword sourceCheat         r_flashlightoffsetx r_flashlightoffsety r_flashlightoffsetz r_flashlightquadratic r_flashlightscissor
syn keyword sourceCheat         r_flashlightshadowatten r_flashlighttracedistcutoff r_flashlighttracedistwatercutoff r_flashlightvisualizetrace r_hwmorph
syn keyword sourceCheat         r_itemblinkmax r_itemblinkrate r_lightcache_invalidate r_lightcache_numambientsamples r_lightcache_radiusfactor
syn keyword sourceCheat         r_lightcachecenter r_lightcachemodel r_lightinterp r_lightmap r_lightstyle
syn keyword sourceCheat         r_lightwarpidentity r_lockpvs r_mapextents r_modelwireframedecal r_newflashlight
syn keyword sourceCheat         r_nohw r_nosw r_novis r_occlusionspew r_oldlightselection
syn keyword sourceCheat         r_particle_timescale r_partition_level r_portalscloseall r_portalsopenall r_proplightingpooling
syn keyword sourceCheat         r_radiosity r_rainalpha r_rainalphapow r_raindensity r_rainlength
syn keyword sourceCheat         r_rainspeed r_rainwidth r_randomflex r_rimlight r_screenfademaxsize
syn keyword sourceCheat         r_screenfademinsize r_screenoverlay r_shadow_debug_spew r_shadowangles r_shadowblobbycutoff
syn keyword sourceCheat         r_shadowcolor r_shadowdir r_shadowdist r_shadowfromanyworldlight r_shadowfromworldlights_debug
syn keyword sourceCheat         r_shadowids r_shadows_gamecontrol r_shadowwireframe r_showenvcubemap r_showz_power
syn keyword sourceCheat         r_skin r_skybox r_slowpathwireframe r_studio_stats r_studio_stats_lock
syn keyword sourceCheat         r_studio_stats_mode r_swingflashlight r_unloadlightmaps r_updaterefracttexture r_vehicleBrakeRate
syn keyword sourceCheat         r_visocclusion r_visualizelighttraces r_visualizelighttracesshowfulltrace r_visualizetraces radius_damage_show_hits
syn keyword sourceCheat         ragdoll_velocity_multiplier rangefinder recompute_speed report_cliententitysim report_clientthinklist
syn keyword sourceCheat         rescue_distance rescue_finale_ignore_distance rescue_finale_spawn_range rescue_ignore_distance rescue_interval
syn keyword sourceCheat         rescue_min_dead_time rescue_range rescue_show rescue_show_blocked rescue_spawn_flow
syn keyword sourceCheat         rescue_spawn_range rescue_update_nav rescue_yell_delay rescue_yell_interval reset_gameconvars
syn keyword sourceCheat         respawn_entities rope_min_pixel_diameter rr_followup_maxdist rr_forceconcept rr_remarkable_maxdist
syn keyword sourceCheat         rr_remarkable_world_entities_replay_limit rr_thenany_score_slop sb_all_bot_game sb_allow_shoot_through_survivors sb_battlestation_give_up_range_from_human
syn keyword sourceCheat         sb_battlestation_human_hold_time sb_close_checkpoint_door_interval sb_close_threat_range sb_combat_saccade_speed sb_crouch
syn keyword sourceCheat         sb_debug_apoproach_wait_time sb_debug_buddy sb_debug_locomotion sb_debug_retreat sb_debug_team_avoidance
syn keyword sourceCheat         sb_dont_bash sb_dont_shoot sb_enforce_proximity_lookat_timeout sb_enforce_proximity_range sb_escort
syn keyword sourceCheat         sb_far_hearing_range sb_flashlight sb_follow_stress_factor sb_force_max_intensity sb_friend_immobilized_reaction_time_expert
syn keyword sourceCheat         sb_friend_immobilized_reaction_time_hard sb_friend_immobilized_reaction_time_normal sb_friend_immobilized_reaction_time_vs sb_friendlyfire sb_give
syn keyword sourceCheat         sb_give_random_weapon sb_hindrance_range sb_hold_position sb_l4d1_survivor_behavior sb_locomotion_wait_threshold
syn keyword sourceCheat         sb_max_battlestation_range_from_human sb_max_scavenge_separation sb_max_team_melee_weapons sb_min_attention_notice_time sb_min_orphan_time_to_cover
syn keyword sourceCheat         sb_minigun_distance sb_move sb_narrow_corridor_width sb_near_hearing_range sb_neighbor_range
syn keyword sourceCheat         sb_normal_saccade_speed sb_open_fire sb_path_lookahead_range sb_perf_crawl sb_perf_crawl_ang
syn keyword sourceCheat         sb_perf_crawl_dist sb_perf_crawl_time sb_perf_dump sb_perf_dump_bots sb_pushscale
syn keyword sourceCheat         sb_reachability_cache_lifetime sb_replacement_interval sb_rescue_vehicle_loading_range sb_revive_friend_distance sb_separation_danger_max_range
syn keyword sourceCheat         sb_separation_danger_min_range sb_separation_range sb_show_threat_areas sb_sidestep_for_horde sb_stop
syn keyword sourceCheat         sb_takecontrol sb_threat_close_range sb_threat_exposure_stop sb_threat_exposure_walk sb_threat_far_range
syn keyword sourceCheat         sb_threat_medium_range sb_threat_very_close_range sb_threat_very_far_range sb_unstick sb_use_button_range
syn keyword sourceCheat         sb_use_upgrades sb_vomit_blind_time scavenge_cluster_bonus_time scavenge_cluster_range_squared scavenge_cluster_remove_on_pour
syn keyword sourceCheat         scavenge_increment_score scavenge_item_respawn_delay scavenge_match_finished_delay scavenge_overtime_grace_time scavenge_round_initial_time
syn keyword sourceCheat         scavenge_round_restart_delay scavenge_round_restart_delay_tied scavenge_round_setup_time scavenge_score_bonus_time scavenge_start
syn keyword sourceCheat         scavenge_wanderer_respawn_chance scenario_end screenfademaxsize screenfademinsize script
syn keyword sourceCheat         script_add_debug_filter script_add_watch script_add_watch_pattern script_attach_debugger script_clear_watches
syn keyword sourceCheat         script_debug script_dump_all script_execute script_find script_help
syn keyword sourceCheat         script_reload_code script_reload_enity_code script_reload_think script_remove_debug_filter script_remove_watch
syn keyword sourceCheat         script_remove_watch_pattern script_resurrect_unreachable script_trace_disable script_trace_disable_all script_trace_disable_key
syn keyword sourceCheat         script_trace_enable script_trace_enable_all script_trace_enable_key scripted_mode_activate scripted_mode_increment_stage
syn keyword sourceCheat         scripted_mode_shutdown scriptedmode_journal select_cliff select_invalid_finale_nospawn select_with_attribute
syn keyword sourceCheat         setang setang_exact setmodel setpos setpos_exact
syn keyword sourceCheat         setpos_player shake shake_stop shout_going_to_die_interval shout_make_way_interval
syn keyword sourceCheat         shout_max_warn_range shout_min_special_warn_interval shout_min_use_range shout_min_warn_interval shout_threat_range
syn keyword sourceCheat         shout_view_motion_threshold shout_view_target_threahold showbudget showbudget_texture showbudget_texture_global
syn keyword sourceCheat         showtriggers showtriggers_toggle singlestep sixense_aim_freeaim_switch_blend_time_enter sixense_teleport_metroid_blend_time
syn keyword sourceCheat         sixense_teleport_wait_to_blend_time smoker_pz_claw_dmg smoker_tongue_delay snd_filter snd_foliage_db_loss
syn keyword sourceCheat         snd_gain snd_gain_max snd_gain_min snd_obscured_gain_dB snd_play_in_out
syn keyword sourceCheat         snd_pre_gain_dist_falloff snd_refdb snd_refdist snd_set_custom_zombat_suffix snd_show
syn keyword sourceCheat         snd_showstart snd_visualize soundscape_debug soundscape_dumpclient soundscape_fadetime
syn keyword sourceCheat         soundscape_radius_debug spawn_behind_survivors_distance spec_freeze_distance_max spec_freeze_distance_min spec_freeze_time
syn keyword sourceCheat         spec_freeze_traveltime spec_keep_team_cc spec_keep_team_glows spike spitter_pz_claw_dmg
syn keyword sourceCheat         ss_debug_draw_player ss_mimic ss_teleport stats_show_empty stopsound
syn keyword sourceCheat         stopsoundscape surfaceprop survival_boomer_limit_increase survival_charger_limit_increase survival_generate_fake_times
syn keyword sourceCheat         survival_horde_stage_interval survival_horde_stage_interval_decay survival_hunter_limit_increase survival_jockey_limit_increase survival_lull_time
syn keyword sourceCheat         survival_lull_time_increment survival_lull_time_max survival_max_boomers survival_max_chargers survival_max_hunters
syn keyword sourceCheat         survival_max_jockeys survival_max_smokers survival_max_specials survival_max_spitters survival_round_restart_delay
syn keyword sourceCheat         survival_smoker_limit_increase survival_special_limit_increase survival_special_spawn_interval survival_special_spawn_interval_decay survival_special_stage_interval
syn keyword sourceCheat         survival_spitter_limit_increase survival_start survival_tank_multiple_spawn_delay survival_tank_stage_interval survival_tank_stage_interval_decay
syn keyword sourceCheat         survivor_accuracy_upgrade_factor survivor_autolook_voc_delay survivor_burn_factor_easy survivor_burn_factor_expert survivor_burn_factor_hard
syn keyword sourceCheat         survivor_burn_factor_normal survivor_calm_damage_delay survivor_calm_deploy_delay survivor_calm_intensity survivor_calm_no_flashlight
syn keyword sourceCheat         survivor_calm_recent_enemy_delay survivor_calm_weapon_delay survivor_crawl_speed survivor_crouch_speed survivor_damage_speed_factor
syn keyword sourceCheat         survivor_debug_active_area_set survivor_debug_in_combat survivor_debug_visibility survivor_drag_speed_multiplier survivor_drag_type
syn keyword sourceCheat         survivor_ff_avoidance survivor_ff_avoidance_pitch survivor_ff_avoidance_yaw survivor_ff_tolerance survivor_fog_vocalize_percent
syn keyword sourceCheat         survivor_friendly_fire_factor_easy survivor_friendly_fire_factor_expert survivor_friendly_fire_factor_hard survivor_friendly_fire_factor_normal survivor_fumes_walk_speed
syn keyword sourceCheat         survivor_give_attract_timeout survivor_hanging_eye_height survivor_hanging_from_tongue_eye_height survivor_helping_hand_inhibit_duration survivor_hitsound_interval_timer
syn keyword sourceCheat         survivor_incapacitated_accuracy_penalty survivor_incapacitated_cycle_time survivor_incapacitated_dizzy_severity survivor_incapacitated_dizzy_timer survivor_incapacitated_eye_height
syn keyword sourceCheat         survivor_incapacitated_reload_multiplier survivor_incapacitated_roll survivor_intensity_decay_threat_range survivor_intensity_recent_enemy_duration survivor_it_duration
syn keyword sourceCheat         survivor_knockdown_roll survivor_lazy_active_set survivor_ledge_grab_ground_check_time survivor_ledge_scales_health survivor_limp_health
syn keyword sourceCheat         survivor_limp_walk_speed survivor_max_incapacitated_count survivor_max_lunge_stagger_distance survivor_max_lunge_stagger_speed survivor_max_tongue_stagger_distance
syn keyword sourceCheat         survivor_max_tongue_stagger_duration survivor_max_tug_distance survivor_max_tug_duration survivor_min_lunge_stagger_speed survivor_no_pounce_or_hang
syn keyword sourceCheat         survivor_pounce_victim_eye_height survivor_push survivor_revive_duration survivor_revive_health survivor_shove_teammates
syn keyword sourceCheat         survivor_speed survivor_speed_boost_factor survivor_sprint_multiplier survivor_stun_immunity_duration survivor_team_hit_pitch_max
syn keyword sourceCheat         survivor_team_hit_pitch_min survivor_team_hit_yaw_max survivor_team_hit_yaw_min survivor_unstoppable_speed survivor_vision_range
syn keyword sourceCheat         survivor_vision_range_obscured sv_always_full_flush sv_anim_dumpstate sv_crash sv_creationtickcheck
syn keyword sourceCheat         sv_cycle_latch_timer sv_demo_entity_record_rate sv_disable_querycache sv_doors_push_players sv_dumpstringtables
syn keyword sourceCheat         sv_fallen_survivor_health_multiplier sv_footstepinterval sv_force_time_of_day sv_force_transmit_ents sv_healing_gnome_replenish_rate
syn keyword sourceCheat         sv_infected_ceda_vomitjar_probability sv_infected_riot_control_tonfa_probability sv_infinite_ammo sv_infinite_aux_power sv_infinite_primary_ammo
syn keyword sourceCheat         sv_lagcompensation_teleport_dist sv_lagcompensationforcerestore sv_memlimit sv_netvisdist sv_no_navmesh
syn keyword sourceCheat         sv_noclipduringpause sv_permawipe sv_phys2_stats sv_play_music sv_player_stuck_tolerance
syn keyword sourceCheat         sv_prop_door_max_close_attempts sv_pushaway_max_player_force sv_pushaway_player_force sv_regeneration_force_on sv_showanimstate
syn keyword sourceCheat         sv_showanimstate_activities sv_showanimstate_log sv_showfootsteps sv_showhitboxes sv_showhitboxes_cursor
syn keyword sourceCheat         sv_showlagcompensation sv_showonlyhitbox sv_shutdown sv_soundscape_printdebuginfo sv_spectatoridletime
syn keyword sourceCheat         sv_stop_music sv_suppress_viewpunch sv_sync_anims_spawn sv_tankpropfade sv_turbophysics_shadow
syn keyword sourceCheat         sv_vote_creation_timer sv_vote_plr_map_limit sv_vote_show_caller sv_zombie_touch_trigger_delay tank_attack_range
syn keyword sourceCheat         tank_auto_swing tank_burn_duration tank_burn_duration_expert tank_burn_duration_hard tank_fist_radius
syn keyword sourceCheat         tank_ground_pound_duration tank_ground_pound_reveal_distance tank_raffle_debug tank_run_spawn_delay tank_stasis_time_suicide
syn keyword sourceCheat         tank_stuck_failsafe tank_stuck_time_choose_new_target tank_stuck_time_suicide tank_stuck_visibility_tolerance_choose_new_target tank_stuck_visibility_tolerance_suicide
syn keyword sourceCheat         tank_swing_arc tank_swing_duration tank_swing_fast_interval tank_swing_interval tank_swing_miss_interval
syn keyword sourceCheat         tank_swing_physics_prop_force tank_swing_range tank_swing_yaw tank_throw_aim_error tank_throw_allow_range
syn keyword sourceCheat         tank_throw_lead_time_factor tank_throw_loft_rate tank_throw_max_loft_angle tank_throw_min_interval tank_visibility_tolerance_suicide
syn keyword sourceCheat         tank_windup_time terror_ammo_multiplier test_dispatcheffect test_entity_blocker test_freezeframe
syn keyword sourceCheat         test_outtro_pzendgame test_outtro_stats testhudanim tf_always_deathanim tf_always_loser
syn keyword sourceCheat         tf_archer_proxy_fire_rate tf_arena_change_limit tf_arena_force_class tf_arena_round_time tf_avoidteammates
syn keyword sourceCheat         tf_base_boss_max_turn_rate tf_base_boss_speed tf_bot_always_full_reload tf_bot_ammo_search_range tf_bot_arrow_elevation_rate
syn keyword sourceCheat         tf_bot_ballistic_elevation_rate tf_bot_capture_seek_and_destroy_max_duration tf_bot_capture_seek_and_destroy_min_duration tf_bot_cart_push_radius tf_bot_choose_target_interval
syn keyword sourceCheat         tf_bot_debug_ammo_scavenging tf_bot_debug_destroy_enemy_sentry tf_bot_debug_payload_guard_vantage_points tf_bot_debug_retreat_to_cover tf_bot_debug_seek_and_destroy
syn keyword sourceCheat         tf_bot_debug_sentry_placement tf_bot_debug_sniper tf_bot_debug_spy tf_bot_defend_owned_point_percent tf_bot_defense_debug
syn keyword sourceCheat         tf_bot_defense_must_defend_time tf_bot_engineer_exit_near_sentry_range tf_bot_engineer_max_sentry_travel_distance_to_point tf_bot_engineer_retaliate_range tf_bot_escort_range
syn keyword sourceCheat         tf_bot_fetch_lost_flag_time tf_bot_fire_weapon_allowed tf_bot_fire_weapon_min_time tf_bot_flag_escort_give_up_range tf_bot_flag_escort_max_count
syn keyword sourceCheat         tf_bot_flag_escort_range tf_bot_flag_kill_on_touch tf_bot_force_jump tf_bot_formation_debug tf_bot_health_critical_ratio
syn keyword sourceCheat         tf_bot_health_ok_ratio tf_bot_health_search_far_range tf_bot_health_search_near_range tf_bot_hitscan_range_limit tf_bot_max_grenade_launch_at_sentry_range
syn keyword sourceCheat         tf_bot_max_point_defend_range tf_bot_max_setup_gate_defend_range tf_bot_max_sticky_launch_at_sentry_range tf_bot_max_teleport_entrance_travel tf_bot_max_teleport_exit_travel_to_point
syn keyword sourceCheat         tf_bot_medic_cover_test_resolution tf_bot_medic_debug tf_bot_medic_max_call_response_range tf_bot_medic_max_heal_range tf_bot_medic_start_follow_range
syn keyword sourceCheat         tf_bot_medic_stop_follow_range tf_bot_melee_attack_abandon_range tf_bot_min_setup_gate_defend_range tf_bot_min_setup_gate_sniper_defend_range tf_bot_min_teleport_travel
syn keyword sourceCheat         tf_bot_near_point_travel_distance tf_bot_notice_backstab_chance tf_bot_notice_backstab_max_range tf_bot_notice_backstab_min_range tf_bot_npc_archer_arrow_damage
syn keyword sourceCheat         tf_bot_npc_archer_health tf_bot_npc_archer_shoot_interval tf_bot_npc_archer_speed tf_bot_offense_must_push_time tf_bot_payload_guard_range
syn keyword sourceCheat         tf_bot_pyro_always_reflect tf_bot_pyro_deflect_tolerance tf_bot_pyro_shove_away_range tf_bot_retreat_to_cover_range tf_bot_sniper_aim_error
syn keyword sourceCheat         tf_bot_sniper_aim_steady_rate tf_bot_sniper_choose_target_interval tf_bot_sniper_flee_range tf_bot_sniper_goal_entity_move_tolerance tf_bot_sniper_linger_time
syn keyword sourceCheat         tf_bot_sniper_melee_range tf_bot_sniper_patience_duration tf_bot_sniper_personal_space_range tf_bot_sniper_spot_epsilon tf_bot_sniper_spot_max_count
syn keyword sourceCheat         tf_bot_sniper_spot_min_range tf_bot_sniper_spot_point_tolerance tf_bot_sniper_spot_search_count tf_bot_sniper_target_linger_duration tf_bot_spy_change_target_range_threshold
syn keyword sourceCheat         tf_bot_spy_knife_range tf_bot_squad_escort_range tf_bot_sticky_base_range tf_bot_sticky_charge_rate tf_bot_stickybomb_density
syn keyword sourceCheat         tf_bot_suicide_bomb_range tf_bot_teleport_build_surface_normal_limit tf_bot_wait_in_cover_max_time tf_bot_wait_in_cover_min_time tf_cheapobjects
syn keyword sourceCheat         tf_damage_multiplier_blue tf_damage_multiplier_red tf_damageforcescale_other tf_damageforcescale_self_soldier_badrj tf_damageforcescale_self_soldier_rj
syn keyword sourceCheat         tf_damagescale_self_soldier tf_debug_ballistic_targeting tf_debug_ballistic_targeting_tolerance tf_debug_ballistics tf_debug_ballistics_init_vel_scale
syn keyword sourceCheat         tf_debug_ballistics_max_time tf_debug_ballistics_timestep tf_debug_damage tf_debug_flamethrower tf_debug_placement_failure
syn keyword sourceCheat         tf_decoy_lifetime tf_deploying_bomb_delay_time tf_deploying_bomb_time tf_escort_score_rate tf_eyeball_boss_acceleration
syn keyword sourceCheat         tf_eyeball_boss_attack_range tf_eyeball_boss_debug tf_eyeball_boss_debug_orientation tf_eyeball_boss_health_at_level_2 tf_eyeball_boss_health_base
syn keyword sourceCheat         tf_eyeball_boss_health_per_level tf_eyeball_boss_health_per_player tf_eyeball_boss_horiz_damping tf_eyeball_boss_hover_height tf_eyeball_boss_lifetime
syn keyword sourceCheat         tf_eyeball_boss_speed tf_eyeball_boss_vert_damping tf_fastbuild tf_feign_death_damage_scale tf_feign_death_duration
syn keyword sourceCheat         tf_flamethrower_boxsize tf_flamethrower_burst_zvelocity tf_flamethrower_burstammo tf_flamethrower_drag tf_flamethrower_flametime
syn keyword sourceCheat         tf_flamethrower_float tf_flamethrower_maxdamagedist tf_flamethrower_shortrangedamagemultiplier tf_flamethrower_vecrand tf_flamethrower_velocity
syn keyword sourceCheat         tf_flamethrower_velocityfadeend tf_flamethrower_velocityfadestart tf_grenade_force_sleeptime tf_grenade_forcefrom_blast tf_grenade_forcefrom_buckshot
syn keyword sourceCheat         tf_grenade_forcefrom_bullet tf_grenade_show_radius tf_grenade_show_radius_time tf_grenadelauncher_chargescale tf_grenadelauncher_livetime
syn keyword sourceCheat         tf_halloween_boss_spawn_interval tf_halloween_boss_spawn_interval_variation tf_halloween_bot_attack_range tf_halloween_bot_chase_duration tf_halloween_bot_chase_range
syn keyword sourceCheat         tf_halloween_bot_health_base tf_halloween_bot_health_per_player tf_halloween_bot_min_player_count tf_halloween_bot_quit_range tf_halloween_bot_speed
syn keyword sourceCheat         tf_halloween_bot_speed_recovery_rate tf_halloween_bot_terrify_radius tf_halloween_eyeball_boss_spawn_interval tf_halloween_eyeball_boss_spawn_interval_variation tf_highfive_close_range
syn keyword sourceCheat         tf_highfive_height_tolerance tf_highfive_max_range tf_highfive_separation tf_ignite_player tf_impactwatertime
syn keyword sourceCheat         tf_impactwatertimeenable tf_max_charge_speed tf_maxspeed tf_medieval_cam_idealdist tf_medieval_cam_idealdistright
syn keyword sourceCheat         tf_medieval_cam_idealdistup tf_medieval_cam_idealpitch tf_meleeattackforcescale tf_mvm_bot_allow_flag_carrier_to_fight tf_mvm_bot_flag_carrier_health_regen
syn keyword sourceCheat         tf_mvm_bot_flag_carrier_interval_to_1st_upgrade tf_mvm_bot_flag_carrier_interval_to_2nd_upgrade tf_mvm_bot_flag_carrier_interval_to_3rd_upgrade tf_mvm_bot_flag_carrier_movement_penalty tf_mvm_bot_sniper_target_by_dps
syn keyword sourceCheat         tf_mvm_death_penalty tf_mvm_default_sentry_buster_damage_dealt_threshold tf_mvm_default_sentry_buster_kill_threshold tf_mvm_miniboss_scale tf_mvm_notice_sapped_squadmates_delay
syn keyword sourceCheat         tf_mvm_skill tf_nav_combat_build_rate tf_nav_combat_decay_rate tf_nav_in_combat_duration tf_nav_in_combat_range
syn keyword sourceCheat         tf_nav_show_incursion_distance tf_nav_show_turf_ownership tf_obj_build_rotation_speed tf_obj_damage_tank_achievement_amount tf_obj_gib_maxspeed
syn keyword sourceCheat         tf_obj_gib_velocity_max tf_obj_gib_velocity_min tf_obj_ground_clearance tf_obj_max_attach_dist tf_obj_upgrade_per_hit
syn keyword sourceCheat         tf_pipebomb_deflect_reset_time tf_pipebomb_force_to_move tf_playergib_maxspeed tf_playersgib_force tf_playersgib_forceup
syn keyword sourceCheat         tf_playerstatetransitions tf_populator_active_buffer_range tf_populator_damage_multiplier tf_populator_debug tf_populator_health_multiplier
syn keyword sourceCheat         tf_raid_engineer_infinte_metal tf_scout_air_dash_count tf_scout_hype_mod tf_scout_hype_pep_max tf_scout_hype_pep_min_damage
syn keyword sourceCheat         tf_scout_hype_pep_mod tf_select_ambush_areas_close_range tf_select_ambush_areas_max_enemy_exposure_area tf_select_ambush_areas_radius tf_sentrygun_ammocheat
syn keyword sourceCheat         tf_sentrygun_damage tf_sentrygun_kill_after_redeploy_time_achievement tf_sentrygun_max_absorbed_damage_while_controlled_for_achiev tf_sentrygun_metal_per_rocket tf_sentrygun_metal_per_shell
syn keyword sourceCheat         tf_sentrygun_mini_damage tf_sentrygun_newtarget_dist tf_sentrygun_notarget tf_show_actor_potential_visibility tf_show_blocked_areas
syn keyword sourceCheat         tf_show_bomb_drop_areas tf_show_control_points tf_show_enemy_invasion_areas tf_show_gate_defense_areas tf_show_in_combat_areas
syn keyword sourceCheat         tf_show_incursion_flow tf_show_incursion_flow_gradient tf_show_incursion_flow_range tf_show_incursion_range tf_show_incursion_range_max
syn keyword sourceCheat         tf_show_incursion_range_min tf_show_mesh_decoration tf_show_mesh_decoration_manual tf_show_point_defense_areas tf_show_sentry_danger
syn keyword sourceCheat         tf_show_sniper_areas tf_show_sniper_areas_safety_range tf_show_train_path tf_solidobjects tf_tauntcam_dist
syn keyword sourceCheat         tf_tauntcam_pitch tf_tauntcam_speed tf_tauntcam_yaw tf_teammate_max_invis tf_teleporter_fov_start
syn keyword sourceCheat         tf_teleporter_fov_time tf_test_teleport_home_fx tf_training_client_message tf_weapon_ragdoll_maxspeed tf_weapon_ragdoll_velocity_max
syn keyword sourceCheat         tf_weapon_ragdoll_velocity_min thirdperson thirdperson_mayamode thumper_show_radius timerefresh
syn keyword sourceCheat         tir_maxpitch tir_maxroll tir_maxx tir_maxy tir_maxyaw
syn keyword sourceCheat         tir_maxz tongue_allow_voluntary_release tongue_bend_point_deflection tongue_bend_point_needs_LOS tongue_break_from_damage_amount
syn keyword sourceCheat         tongue_choke_damage_amount tongue_choke_damage_interval tongue_cone_start_tolerance tongue_debug tongue_drag_damage_amount
syn keyword sourceCheat         tongue_dropping_to_ground_time tongue_fly_speed tongue_force_break tongue_gravity_force tongue_health
syn keyword sourceCheat         tongue_hit_delay tongue_los_forgiveness_time tongue_miss_delay tongue_no_progress_break_interval tongue_no_progress_choke_early_ambush_delay
syn keyword sourceCheat         tongue_no_progress_choke_early_delay tongue_no_progress_choke_time tongue_no_progress_damage_interval tongue_no_progress_tolerance tongue_player_dropping_to_ground_time
syn keyword sourceCheat         tongue_range tongue_release_fatigue_penalty tongue_start_pull_delay tongue_unbend tongue_vertical_choke_dot
syn keyword sourceCheat         tongue_vertical_choke_height tongue_vertical_choke_time_off_ground tongue_victim_acceleration tongue_victim_accuracy_penalty tongue_victim_max_speed
syn keyword sourceCheat         tongue_vs_cone_start_tolerance tp_schedule_post_think travel_distance ui_posedebug_fade_in_time ui_posedebug_fade_out_time
syn keyword sourceCheat         upgrade_add upgrade_explosive_bullet_force upgrade_explosive_slug_force upgrade_laser_sight_spread_factor upgrade_pack_use_duration
syn keyword sourceCheat         upgrade_remove upgrade_show_explosive_ammo_radius upgradepack_forward_dist upgradepack_max_drop_dist vcollide_wireframe
syn keyword sourceCheat         versus_boss_buffer versus_boss_debug versus_boss_flow_max versus_boss_flow_max_finale versus_boss_flow_max_intro
syn keyword sourceCheat         versus_boss_flow_min versus_boss_flow_min_finale versus_boss_flow_min_intro versus_boss_flow_test versus_boss_padding_max
syn keyword sourceCheat         versus_boss_padding_min versus_level_restart_delay versus_shove_hunter_fov versus_shove_hunter_fov_pouncing versus_shove_jockey_fov_leaping
syn keyword sourceCheat         versus_special_respawn_interval versus_tank_chance versus_tank_chance_finale versus_tank_chance_intro versus_tank_flow_team_variation
syn keyword sourceCheat         versus_wandering_zombie_density versus_winning_team_goes_last versus_witch_chance versus_witch_chance_finale versus_witch_chance_intro
syn keyword sourceCheat         versus_witch_flow_team_variation vgui_drawtree view_offset_down view_offset_forward view_offset_up
syn keyword sourceCheat         viewanim_addkeyframe viewanim_reset viewmodel_fov vis_debug vis_force
syn keyword sourceCheat         vismon_poll_frequency vismon_trace_limit vm_debug vomitjar_duration_infected_bot vomitjar_duration_infected_pz
syn keyword sourceCheat         vomitjar_duration_survivor vomitjar_radius vomitjar_radius_survivors vortex_book_offset vortex_fade_fraction_denom
syn keyword sourceCheat         vortex_float_amp vortex_float_osc_speed vox_reload voxeltree_box voxeltree_playerview
syn keyword sourceCheat         voxeltree_sphere voxeltree_view vs_defib_penalty vs_incap_bonus vs_max_team_switches
syn keyword sourceCheat         vs_survival_bonus vs_survivor_damage_reduction vs_tank_damage vs_threat_initial_distance_first_map_max vs_threat_initial_distance_first_map_min
syn keyword sourceCheat         vs_threat_initial_distance_max vs_threat_initial_distance_min vs_threat_radius vs_tiebreak_bonus warp_all_survivors_here
syn keyword sourceCheat         warp_all_survivors_to_battlefield warp_all_survivors_to_checkpoint warp_all_survivors_to_finale warp_far_survivor_here warp_to_start_area
syn keyword sourceCheat         weapon_medigun_charge_rate weapon_medigun_chargerelease_rate weapon_medigun_construction_rate weapon_medigun_damage_modifier weapon_reparse_client
syn keyword sourceCheat         weapon_reparse_server wipe_attributes wipe_nav_attributes witch_force_wander workshop_filter_items_by_history
syn keyword sourceCheat         z_Infected_debug z_acquire_far_range z_acquire_far_time z_acquire_near_range z_acquire_near_time
syn keyword sourceCheat         z_acquire_time_variance_factor z_add z_added_light_debug z_alert_dot z_alert_range
syn keyword sourceCheat         z_allow_ai_to_use_abilities z_attack_flow_range z_attack_incapacitated_damage z_attack_infected_it_damage z_attack_pz_it_damage
syn keyword sourceCheat         z_attention_range_lying_modifier z_attention_range_sitting_modifier z_avoid_max_range z_avoid_min_range z_avoid_power
syn keyword sourceCheat         z_avoidforce z_avoidteammates z_award_debug z_background_limit z_backspeed
syn keyword sourceCheat         z_boomer_gibs z_boomer_limit z_boomer_near_dist z_boss_crouch z_boundary_clear_type
syn keyword sourceCheat         z_boundary_max_range z_boundary_spread_speed z_brawl_chance z_breakable_damage z_burn_effect_duration
syn keyword sourceCheat         z_burn_effect_strength z_burning_lifetime z_camo_decay_rate z_carry_max_mass z_chance
syn keyword sourceCheat         z_charge_duration z_charge_impact_angle z_charge_impact_radius z_charge_interval z_charge_max_damage
syn keyword sourceCheat         z_charge_max_force z_charge_max_speed z_charge_min_force z_charge_prop_damage z_charge_start_speed
syn keyword sourceCheat         z_charge_tooshort z_charge_warmup z_charger_allow_shove z_charger_health z_charger_impact_epsilon
syn keyword sourceCheat         z_charger_limit z_charger_max_prop_force z_charger_pound_dmg z_charger_probe_alone z_charger_probe_attack
syn keyword sourceCheat         z_claw_hit_pitch_max z_claw_hit_pitch_min z_claw_hit_yaw_max z_claw_hit_yaw_min z_clear_area_range
syn keyword sourceCheat         z_clear_max_time z_clear_min_time z_clear_min_time_range z_clear_range z_close_target_notice_distance
syn keyword sourceCheat         z_common_limit z_cooldown_spawn_safety_range z_cough_cloud_expire z_cough_cloud_initial_cough_delay z_cough_cloud_radius
syn keyword sourceCheat         z_credits_interval z_crouch_speed z_cull_timeout z_deafen_radius_one z_deafen_radius_three
syn keyword sourceCheat         z_deafen_radius_two z_debug z_debug_avoid z_debug_breakables z_debug_climb
syn keyword sourceCheat         z_debug_cull z_debug_escape_route z_debug_escape_scan z_debug_falling_damage z_debug_fog
syn keyword sourceCheat         z_debug_infected_anim_report z_debug_ledges z_debug_mob_spawn z_debug_neighbors z_debug_path_stress_test
syn keyword sourceCheat         z_debug_population z_debug_spawn_ahead z_debug_spawn_set z_debug_spawnable_areas z_debug_tank_spawn
syn keyword sourceCheat         z_decals z_density_region_length z_destroy_on_attack z_director_special_spawn_delay z_discard_min_range
syn keyword sourceCheat         z_discard_range z_do_tracers z_dont_clear z_door_reopen_interval z_door_retry_interval
syn keyword sourceCheat         z_escape_route_alpha z_escape_route_force_visible z_experimental_blast_damage_probability z_exploding_health z_exploding_shove_interval
syn keyword sourceCheat         z_exploding_shove_max z_exploding_shove_min z_exploding_speed z_exploding_splat z_exploding_splat_radius
syn keyword sourceCheat         z_expressions z_fallen_kill_suppress_time z_fallen_max_count z_falling_land_forward_speed z_falling_land_hard_speed
syn keyword sourceCheat         z_falling_land_speed z_female_boomer_spawn_chance z_finale_chance z_finale_spawn_safety_range z_finale_spawn_tank_safety_range
syn keyword sourceCheat         z_fog_spawn z_force_attack_from_sound_range z_forcezombiemodel z_forcezombiemodelname z_forwardspeed
syn keyword sourceCheat         z_friendly_fire_forgiveness z_frustration z_frustration_blink_percent z_frustration_blink_rate z_frustration_lifetime
syn keyword sourceCheat         z_frustration_los_delay z_frustration_spawn_delay z_gas_health z_gas_speed z_ghost_checkpoint_spawn_interval
syn keyword sourceCheat         z_ghost_delay_max z_ghost_delay_min z_ghost_finale_spawn_interval z_ghost_runner_spawn_multiplier z_ghost_runner_spawn_multiplier_dist
syn keyword sourceCheat         z_ghost_spawn_in_start z_ghost_spawn_interval z_ghost_speed z_ghost_travel_distance z_gib_despawn_time
syn keyword sourceCheat         z_gib_explosion_force_factor z_gib_force_factor z_gib_limb_distance z_gib_limb_distance_zoomed z_gibs_per_frame
syn keyword sourceCheat         z_grab_force z_grab_ledges_solo z_gun_damage z_gun_debug_player_index z_gun_debug_spread
syn keyword sourceCheat         z_gun_force z_gun_horiz_punch z_gun_kick z_gun_physics_force z_gun_range
syn keyword sourceCheat         z_gun_stun_duration z_gun_survivor_force z_gun_survivor_friend_push z_gun_survivor_shove_dot z_gun_swing_duration
syn keyword sourceCheat         z_gun_swing_interval z_gun_vertical_punch z_health z_hear_gunfire_range z_hear_runner_far_range
syn keyword sourceCheat         z_hear_runner_near_range z_hit_chainsawer_factor z_hit_from_behind_cosine z_hit_from_behind_factor z_hit_incap_factor_easy
syn keyword sourceCheat         z_hit_incap_factor_expert z_hit_incap_factor_hard z_hit_incap_factor_normal z_holiday_gift_drop_chance z_hunter_ground_normal
syn keyword sourceCheat         z_hunter_health z_hunter_limit z_hunter_lunge_stagger_time z_hunter_max_pounce_bonus_damage z_hunter_speed
syn keyword sourceCheat         z_increment_head z_increment_lower z_increment_skin z_increment_upper z_infected_burn_strength
syn keyword sourceCheat         z_infected_flashlight z_infected_invuln z_infected_move z_jockey_area_current_factor z_jockey_area_hazard_bonus
syn keyword sourceCheat         z_jockey_area_range_factor z_jockey_area_visibility_factor z_jockey_attach_delay z_jockey_blend_rate z_jockey_control_max
syn keyword sourceCheat         z_jockey_control_min z_jockey_control_variance z_jockey_debug z_jockey_health z_jockey_leap_again_timer
syn keyword sourceCheat         z_jockey_leap_range z_jockey_leap_time z_jockey_limit z_jockey_lookahead z_jockey_min_ledge_distance
syn keyword sourceCheat         z_jockey_min_mounted_speed z_jockey_pounced_surv_bark z_jockey_ride_damage z_jockey_ride_damage_delay z_jockey_ride_damage_interval
syn keyword sourceCheat         z_jockey_ride_hazard_scan_distance z_jockey_ride_scan_distance z_jockey_ride_scan_interval z_jockey_speed z_jockey_speed_blend
syn keyword sourceCheat         z_jockey_stagger_amount z_jockey_stagger_speed z_kill z_large_volume_mob_too_far_xy z_large_volume_mob_too_far_z
syn keyword sourceCheat         z_last_area_update_tolerance z_last_man_run_interval z_lean_wall_align_speed z_leap_attach_distance z_leap_far_attach_delay
syn keyword sourceCheat         z_leap_force_attach_distance z_leap_interval z_leap_interval_post_incap z_leap_interval_post_ride z_leap_max_distance
syn keyword sourceCheat         z_leap_power z_look_at_local_player z_lunge_interval z_lunge_power z_lunge_up
syn keyword sourceCheat         z_max_blood_scale z_max_hunter_pounce_stagger_duration z_max_neighbor_range z_max_path_length z_max_stagger_duration
syn keyword sourceCheat         z_mega_mob_size z_mega_mob_spawn_max_interval z_mega_mob_spawn_min_interval z_min_ladder_mount_dot z_minigun_cooldown_time
syn keyword sourceCheat         z_minigun_damage_rate z_minigun_fire_think_interval z_minigun_overheat_time z_minigun_rate_of_fire z_minion_aim_tolerance
syn keyword sourceCheat         z_minion_limit z_mob_min_notify_count z_mob_music_size z_mob_population_density z_mob_recharge_rate
syn keyword sourceCheat         z_mob_sacrifice_timeout z_mob_spawn_finale_size z_mob_spawn_max_interval_easy z_mob_spawn_max_interval_expert z_mob_spawn_max_interval_hard
syn keyword sourceCheat         z_mob_spawn_max_interval_normal z_mob_spawn_max_size z_mob_spawn_min_interval_easy z_mob_spawn_min_interval_expert z_mob_spawn_min_interval_hard
syn keyword sourceCheat         z_mob_spawn_min_interval_normal z_mob_spawn_min_size z_mounted_gun_fire_think_interval z_must_wander z_mute_infected
syn keyword sourceCheat         z_nav_debug z_no_cull z_noise_level_display z_noise_level_fade_rate z_noise_level_footstep
syn keyword sourceCheat         z_noise_level_hold_time z_noise_level_max z_noise_level_vocalize z_non_head_damage_factor_easy z_non_head_damage_factor_expert
syn keyword sourceCheat         z_non_head_damage_factor_hard z_non_head_damage_factor_normal z_notice_it_range z_notice_near_range z_play_activity
syn keyword sourceCheat         z_player_lunge_up z_player_zombie_debug z_player_zombie_land_delay z_player_zombie_min_dead_time z_pounce_allow_partial_hidden
syn keyword sourceCheat         z_pounce_crouch_delay z_pounce_damage z_pounce_damage_delay z_pounce_damage_interrupt z_pounce_damage_interval
syn keyword sourceCheat         z_pounce_delay z_pounce_door_damage z_pounce_silence_range z_pounce_stumble_force z_prevent_burrowing
syn keyword sourceCheat         z_puking_eye_height z_push_force z_push_mass_max z_pushaway_force z_randombodygroups
syn keyword sourceCheat         z_randomskins z_reload_chatter_debug z_reload_chatter_intensity z_reload_chatter_nearby_friend_range z_reload_chatter_recent_enemy
syn keyword sourceCheat         z_reload_chatter_shotgun_ammo_threshold z_reload_chatter_shotgun_interval z_removeitems z_reserved_wanderers z_reset_population_counter
syn keyword sourceCheat         z_respawn_distance z_respawn_interval z_restrict_team_change z_round_start_replacement_time z_run_exertion_interval
syn keyword sourceCheat         z_safe_spawn_range z_scout_mob_spawn_range z_shotgun_bonus_damage_multiplier z_shotgun_bonus_damage_range z_shove_friend_speed
syn keyword sourceCheat         z_show_bottlenecks z_show_clear z_show_completely_visible_to_survivor_team z_show_damaging z_show_escape_route
syn keyword sourceCheat         z_show_flow_delta z_show_flow_distance z_show_infected z_show_last_area z_show_mutually_visible_set
syn keyword sourceCheat         z_show_population_density z_show_potentially_visible z_show_potentially_visible_to_survivor_team z_show_swings z_show_traffic
syn keyword sourceCheat         z_sidespeed z_skirmish_spawn_max_interval z_skirmish_spawn_max_size z_skirmish_spawn_min_interval z_skirmish_spawn_min_size
syn keyword sourceCheat         z_smoker_limit z_spawn z_spawn_const_ang z_spawn_const_distance z_spawn_const_pos
syn keyword sourceCheat         z_spawn_flow_limit z_spawn_health z_spawn_height z_spawn_mobs_behind_chance z_spawn_mobs_from_selected_set
syn keyword sourceCheat         z_spawn_old z_spawn_range z_spawn_safety_range z_spawn_speed z_special_burn_dmg_scale
syn keyword sourceCheat         z_special_spawn_interval z_speed z_spew_areas z_spit_detonate_delay z_spit_interval
syn keyword sourceCheat         z_spit_latency z_spit_range z_spit_spread_delay z_spit_velocity z_spitter_health
syn keyword sourceCheat         z_spitter_high_chance z_spitter_limit z_spitter_max_wait_time z_spitter_range z_spitter_speed
syn keyword sourceCheat         z_splat_survivor_pitch_max z_splat_survivor_pitch_min z_splat_survivor_shake_amplitude z_splat_survivor_shake_duration z_splat_survivor_shake_frequency
syn keyword sourceCheat         z_splat_survivor_shake_radius z_splat_survivor_yaw_max z_splat_survivor_yaw_min z_stand_still z_state_debug
syn keyword sourceCheat         z_stomp_always z_stumble_max_curve_accel z_stumble_max_curve_rate z_tank_attack_interval z_tank_autoshotgun_dmg_scale
syn keyword sourceCheat         z_tank_damage_slow_max_range z_tank_damage_slow_min_range z_tank_grenade_damage z_tank_grenade_launcher_dmg_scale z_tank_grenade_roll
syn keyword sourceCheat         z_tank_grenade_slowdown z_tank_has_special_blood z_tank_health z_tank_incapacitated_decay_rate z_tank_incapacitated_health
syn keyword sourceCheat         z_tank_max_stagger_distance z_tank_max_stagger_duration z_tank_max_stagger_fade_duration z_tank_rock_debug z_tank_rock_radius
syn keyword sourceCheat         z_tank_speed z_tank_speed_vs z_tank_stagger_fade_alpha z_tank_stagger_fade_duration z_tank_throw_fail_interval
syn keyword sourceCheat         z_tank_throw_force z_tank_throw_health z_tank_throw_interval z_tank_walk_speed z_tanks_block_molotovs
syn keyword sourceCheat         z_throttle_hit_interval_easy z_throttle_hit_interval_expert z_throttle_hit_interval_hard z_throttle_hit_interval_normal z_tracer_spacing
syn keyword sourceCheat         z_transitioning_players_remove z_unwound_all z_use_belt_item_tolerance z_use_tolerance z_versus_boomer_limit
syn keyword sourceCheat         z_versus_charger_limit z_versus_hunter_limit z_versus_jockey_limit z_versus_smoker_limit z_versus_spitter_limit
syn keyword sourceCheat         z_view_distance z_vision_range z_vision_range_alert z_vision_range_daylight z_vision_range_obscured
syn keyword sourceCheat         z_vision_range_obscured_alert z_vocalize_burn_max_interval z_vocalize_burn_min_interval z_vocalize_shot_interval z_vomit
syn keyword sourceCheat         z_vomit_boxsize z_vomit_debug z_vomit_drag z_vomit_duration z_vomit_fade_duration
syn keyword sourceCheat         z_vomit_fade_start z_vomit_fatigue z_vomit_float z_vomit_hit_pitch_max z_vomit_hit_pitch_min
syn keyword sourceCheat         z_vomit_hit_yaw_max z_vomit_hit_yaw_min z_vomit_interval z_vomit_lifetime z_vomit_maxdamagedist
syn keyword sourceCheat         z_vomit_range z_vomit_slide_mult z_vomit_slide_rate z_vomit_target_dot z_vomit_target_range
syn keyword sourceCheat         z_vomit_vecrand z_vomit_velocity z_vomit_velocityfadeend z_vomit_velocityfadestart z_walk_speed
syn keyword sourceCheat         z_wandering_density z_witch_allow_change_victim z_witch_anger_rate z_witch_attack_range z_witch_berserk_range
syn keyword sourceCheat         z_witch_burn_time z_witch_damage z_witch_damage_per_kill_hit z_witch_discard_range z_witch_flashlight_range
syn keyword sourceCheat         z_witch_health z_witch_hostile_at_me_anger z_witch_max_retreat_range z_witch_max_threat_time z_witch_min_retreat_range
syn keyword sourceCheat         z_witch_min_threat_time z_witch_personal_space z_witch_relax_rate z_witch_retreat_exit_hidden_duration z_witch_retreat_exit_range
syn keyword sourceCheat         z_witch_retreat_min_duration z_witch_speed z_witch_speed_inured z_witch_threat_hostile_range z_witch_threat_normal_range
syn keyword sourceCheat         z_witch_wander_hear_radius z_witch_wander_music_max_dist z_witch_wander_music_max_interval z_witch_wander_music_min_dist z_witch_wander_music_min_interval
syn keyword sourceCheat         z_witch_wander_personal_space z_witch_wander_personal_time z_wound z_wound_all z_wound_offset_enabled
syn keyword sourceCheat         z_wound_particles z_zombie_knockoff_death z_zombie_lunge_push

" Syntax: Sourcemod {{{1

syn keyword sourceMod           sm sm_addban sm_admin sm_ban sm_banip sm_basepath
syn keyword sourceMod           sm_beacon sm_beacon_radius sm_blind sm_burn sm_burn_duration
syn keyword sourceMod           sm_cancelvote sm_chat sm_chat_mode sm_conhook_start sm_conhook_stop
syn keyword sourceMod           sm_cookies sm_corecfgfile sm_csay sm_cvar sm_cvarlist
syn keyword sourceMod           sm_cvarlist_version sm_datetime_format sm_deadtalk sm_drug sm_dump_admcache
syn keyword sourceMod           sm_dump_classes sm_dump_datamaps sm_dump_handles sm_dump_netprops sm_dump_netprops_xml
syn keyword sourceMod           sm_dump_teprops sm_execcfg sm_firebomb sm_firebomb_mode sm_firebomb_radius
syn keyword sourceMod           sm_firebomb_ticks sm_flood_time sm_freeze sm_freeze_duration sm_freezebomb
syn keyword sourceMod           sm_freezebomb_mode sm_freezebomb_radius sm_freezebomb_ticks sm_gag sm_gravity
syn keyword sourceMod           sm_help sm_hide_slots sm_hsay sm_immunity_mode sm_kick
syn keyword sourceMod           sm_map sm_maphistory sm_menu_sounds sm_msay sm_mute
syn keyword sourceMod           sm_nextmap sm_noclip sm_play sm_print_telist sm_psay
syn keyword sourceMod           sm_rcon sm_reloadadmins sm_rename sm_reserve_kicktype sm_reserve_maxadmins
syn keyword sourceMod           sm_reserve_type sm_reserved_slots sm_resetcvar sm_revote sm_say
syn keyword sourceMod           sm_searchcmd sm_settings sm_show_activity sm_silence sm_slap
syn keyword sourceMod           sm_slay sm_time_adjustment sm_timebomb sm_timebomb_mode sm_timebomb_radius
syn keyword sourceMod           sm_timebomb_ticks sm_timeleft_interval sm_trigger_show sm_tsay sm_unban
syn keyword sourceMod           sm_ungag sm_unmute sm_unsilence sm_vote sm_vote_alltalk
syn keyword sourceMod           sm_vote_ban sm_vote_burn sm_vote_delay sm_vote_ff sm_vote_gravity
syn keyword sourceMod           sm_vote_kick sm_vote_map sm_vote_progress_chat sm_vote_progress_client_console sm_vote_progress_console
syn keyword sourceMod           sm_vote_progress_hintbox sm_vote_slay sm_votealltalk sm_voteban sm_voteburn
syn keyword sourceMod           sm_voteff sm_votegravity sm_votekick sm_votemap sm_voteslay sm_who

" Syntax: Operators {{{1
" syn match sourceOperator        '+\|-' transparent

" Syntax: Delimiter
syn match sourceDelimiter       ';\|"'

" Syntax: Comments {{{1
syn region sourceComment oneline        start="//" end="$"

" Syntax: Strings {{{1
syntax region sourceString transparent  start=+"+  skip=+\\"+  end=+"+
syntax region sourceQuote               start="say_team" end="$"

" Syntax: Fold points (non-standard) {{{1
syn region sourceFold                   start="//>" end="//<" fold transparent keepend extend

" Default highlighting {{{1
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_source_syn_inits")
  if version < 508
    let did_source_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink sourceSteamID          Constant
  HiLink sourceComment          Comment
  HiLink sourceDelimiter        Delimiter
  HiLink sourceNumber           Number
  HiLink sourceOperator         Operator
  HiLink sourceString           String
  HiLink sourceQuote            String
  HiLink sourceCheat            Special
  HiLink sourceSpecialComment   SpecialComment
  HiLink sourceBindableKey      SpecialKey
  HiLink sourceCommand          Statement
  HiLink sourceServerVar        Keyword
  HiLink sourceVar              Identifier
  HiLink sourceMod              StorageClass
  delcommand HiLink
endif

let b:current_syntax = "sourcecfg"

" TERMS AND CONDITIONS {{{1
"
" THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE
" LAW. EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR
" OTHER PARTIES PROVIDE THE PROGRAM “AS IS” WITHOUT WARRANTY OF ANY KIND, EITHER
" EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
" MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE ENTIRE RISK AS TO THE
" QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU. SHOULD THE PROGRAM PROVE
" DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING, REPAIR OR CORRECTION.
"
" IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING WILL ANY
" COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR CONVEYS THE PROGRAM AS
" PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL,
" INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
" THE PROGRAM (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING RENDERED
" INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A FAILURE OF THE
" PROGRAM TO OPERATE WITH ANY OTHER PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY
" HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
"
" If the disclaimer of warranty and limitation of liability provided above cannot
" be given local legal effect according to their terms, reviewing courts shall
" apply local law that most closely approximates an absolute waiver of all civil
" liability in connection with the Program, unless a warranty or assumption of
" liability accompanies a copy of the Program in return for a fee.
"
"    END OF TERMS AND CONDITIONS
"
" }}}

" vim: foldmethod=marker filetype=vim
