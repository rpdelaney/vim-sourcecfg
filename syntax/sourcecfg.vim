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
syn keyword sourceBindableKey   TAB SEMICOLON SHIFT CTRL ALT CAPSLOCK
syn keyword sourceBindableKey   UPARROW DOWNARROW LEFTARROW RIGHTARROW INS
syn keyword sourceBindableKey   HOME PGUP PGDN DEL END
syn keyword sourceBindableKey   KP_HOME KP_UPARROW KP_PGUP KP_LEFTARROW KP_5
syn keyword sourceBindableKey   KP_RIGHTARROW KP_END KP_ENTER KP_DOWNARROW KP_PGDN
syn keyword sourceBindableKey   KP_INS KP_DEL KP_SLASH KP_MINUS KP_PLUS
syn keyword sourceBindableKey   KP_MULTIPLY MOUSE1 MOUSE2 MOUSE3 MOUSE4
syn keyword sourceBindableKey   MOUSE5 MWHEELUP MWHEELDOWN
syn match sourceBindableKey     "^bind.*(\-\|'\|`\|=\|]\|\\|,\|/)"

" Syntax: Commands {{{1
syn match sourceCommand         '+alt1\|+alt2\|+attack\|+attack2\|+back\|+break\|+camdistance\|+camin\|+cammousemove'
syn match sourceCommand         '+camout\|+campitchdown\|+campitchup\|+camyawleft\|+camyawright\|+commandermousemove'
syn match sourceCommand         '+csm_rot_x_neg\|+csm_rot_x_plus\|+csm_rot_y_neg\|+csm_rot_y_plus\|+demoui2\|+duck'
syn match sourceCommand         '+forward\|+graph\|+grenade1\|+grenade2\|+invaction\|+jlook\|+jump\|+klook\|+left'
syn match sourceCommand         '+lookdown\|+lookspin\|+lookup\|+mat_texture_list\|+menuAccept\|+menuDown\|+menuUp'
syn match sourceCommand         '+mouse_menu\|+movedown\|+moveleft\|+moveright\|+moveup\|+posedebug\|+quickswitch'
syn match sourceCommand         '+reload\|+right\|+score\|+showbudget\|+showbudget_texture'
syn match sourceCommand         '+showbudget_texture_global\|+showscores\|+showstats\|+showvprof'
syn match sourceCommand         '+sixense_left_point_gesture\|+sixense_ratchet\|+sixense_right_point_gesture'
syn match sourceCommand         '+speed\|+strafe\|+use\|+use_action_slot_item\|+vgui_drawtree\|+voicerecord\|+walk'
syn match sourceCommand         '+zoom\|+zoom_in\|+zoom_out\|-alt1\|-alt2\|-attack\|-attack2\|-back\|-break\|-camdistance'
syn match sourceCommand         '-camin\|-cammousemove\|-camout\|-campitchdown\|-campitchup\|-camyawleft\|-camyawright'
syn match sourceCommand         '-commandermousemove\|-csm_rot_x_neg\|-csm_rot_x_plus\|-csm_rot_y_neg'
syn match sourceCommand         '-csm_rot_y_plus\|-demoui2\|-duck\|-forward\|-graph\|-grenade1\|-grenade2\|-invaction'
syn match sourceCommand         '-jlook\|-jump\|-klook\|-left\|-lookdown\|-lookspin\|-lookup\|-mat_texture_list'
syn match sourceCommand         '-menuAccept\|-menuDown\|-menuUp\|-mouse_menu\|-movedown\|-moveleft\|-moveright'
syn match sourceCommand         '-moveup\|-posedebug\|-quickswitch\|-reload\|-right\|-score\|-showbudget'
syn match sourceCommand         '-showbudget_texture\|-showbudget_texture_global\|-showscores\|-showstats'
syn match sourceCommand         '-showvprof\|-sixense_left_point_gesture\|-sixense_ratchet'
syn match sourceCommand         '-sixense_right_point_gesture\|-speed\|-strafe\|-use\|-use_action_slot_item'
syn match sourceCommand         '-vgui_drawtree\|-voicerecord\|-walk\|-zoom\|-zoom_in\|-zoom_out'
syn match sourceCommand         'quit'
syn match sourceCommand         'quit prompt'
syn keyword sourceCommand       BindToggle CreateHairball OpenMatchmakingLobby OpenQuickplayDialog
syn keyword sourceCommand       OpenSteamWorkshopDialog Print_Steam_Stats RefreshMatchmakingLobby
syn keyword sourceCommand       Reset_Steam_Stats ShowSteamStatsSessionID Test_CreateEntity Test_EHandle
syn keyword sourceCommand       Test_InitRandomEntitySpawner Test_Loop Test_LoopCount Test_LoopForNumSeconds
syn keyword sourceCommand       Test_ProxyToggle_EnableProxy Test_ProxyToggle_EnsureValue
syn keyword sourceCommand       Test_ProxyToggle_SetValue Test_RandomChance Test_RandomPlayerPosition
syn keyword sourceCommand       Test_RandomizeInPVS Test_RemoveAllRandomEntities Test_RunFrame Test_SendKey
syn keyword sourceCommand       Test_SpawnRandomEntities Test_StartLoop Test_StartScript Test_Wait
syn keyword sourceCommand       Test_WaitForCheckPoint TrackerAnim TransmitEvents __screenshot_internal
syn keyword sourceCommand       _autosave _autosavedangerous _bugreporter_restart _record _resetgamestats
syn keyword sourceCommand       _restart abuse_report_queue abuse_report_submit achievement_evaluate
syn keyword sourceCommand       achievement_mark_dirty achievement_reset achievement_reset_all
syn keyword sourceCommand       achievement_status achievement_test_clan_count achievement_test_friend_count
syn keyword sourceCommand       achievement_unlock achievement_unlock_all addip adsp_reset_nodes
syn keyword sourceCommand       ai_clear_bad_links ai_debug_node_connect ai_disable ai_drop_hint ai_dump_hints
syn keyword sourceCommand       ai_hull ai_next_hull ai_nodes ai_resume ai_set_move_height_epsilon
syn keyword sourceCommand       ai_setenabled ai_show_connect ai_show_connect_crawl ai_show_connect_fly
syn keyword sourceCommand       ai_show_connect_jump ai_show_graph_connect ai_show_grid ai_show_hints
syn keyword sourceCommand       ai_show_hull ai_show_node ai_show_visibility ai_step ai_test_los
syn keyword sourceCommand       ainet_generate_report ainet_generate_report_only air_density alias
syn keyword sourceCommand       askconnect_accept asw_engine_finished_building_map async_resume async_suspend
syn keyword sourceCommand       audit_save_in_memory autobuy autosave autosavedangerous autosavedangerousissafe
syn keyword sourceCommand       banid banip bench_end bench_showstatsdialog bench_start bench_upload benchframe
syn keyword sourceCommand       bind bind_mac bind_osx blackbox_dump blackbox_record bloodspray bot bot_add_ct
syn keyword sourceCommand       bot_add_t bot_all_weapons bot_changeteams bot_command bot_drop bot_goto_mark
syn keyword sourceCommand       bot_goto_selected bot_hurt bot_kick bot_kill bot_knives_only bot_moveto
syn keyword sourceCommand       bot_pistols_only bot_place bot_refill bot_snipers_only bot_teleport bot_whack
syn keyword sourceCommand       box buddha budget_toggle_group bug bug_swap buildcubemaps buildmodelforworld
syn keyword sourceCommand       buy_stamps buymenu buyrandom cache_print cache_print_lru cache_print_summary
syn keyword sourceCommand       callvote camortho cancelselect cast_hull cast_ray cc_bot_selectweapon cc_emit
syn keyword sourceCommand       cc_findsound cc_flush cc_random cc_showblocks centerview ch_createairboat
syn keyword sourceCommand       ch_createjeep changeclass changelevel changelevel2 changelevel_next changeteam
syn keyword sourceCommand       chooseteam cl_animationinfo cl_benchmark_particle_system cl_buy_favorite
syn keyword sourceCommand       cl_buy_favorite_reset cl_buy_favorite_set cl_clearhinthistory
syn keyword sourceCommand       cl_coach_find_coach cl_coach_toggle cl_consistencycheck cl_create_server
syn keyword sourceCommand       cl_cs_dump_econ_item_stringtable cl_csm_server_status cl_csm_status
syn keyword sourceCommand       cl_decline_first_notification cl_destroy_ragdolls cl_dump_particle_stats
syn keyword sourceCommand       cl_dumpsplithacks cl_engine_reload_rosetta cl_ent_absbox cl_ent_bbox
syn keyword sourceCommand       cl_ent_rbox cl_find_ent cl_find_ent_index cl_fullupdate cl_game_mode_convars
syn keyword sourceCommand       cl_gameserver_create_identity cl_gameserver_list cl_gameserver_reset_identity
syn keyword sourceCommand       cl_modemanager_reload cl_panelanimation cl_particles_dump_effects
syn keyword sourceCommand       cl_particles_dumplist cl_precacheinfo cl_pred_track cl_predictioncopy_describe
syn keyword sourceCommand       cl_print_consistency_list cl_reload_hud cl_remove_all_workshop_maps
syn keyword sourceCommand       cl_removedecals cl_report_soundpatch cl_saveweaponcustomtextures cl_showents
syn keyword sourceCommand       cl_sos_test_get_opvar cl_sos_test_set_opvar cl_soundemitter_flush
syn keyword sourceCommand       cl_soundemitter_reload cl_soundscape_flush cl_soundscape_printdebuginfo
syn keyword sourceCommand       cl_ss_origin cl_trade cl_trade_steamid cl_training_class_unlock_all
syn keyword sourceCommand       cl_tree_sway_dir cl_trigger_first_notification cl_updatevisibility cl_view
syn keyword sourceCommand       clear clear_anim_cache clear_debug_overlays cmd cmd1 cmd2 cmd3 cmd4
syn keyword sourceCommand       collision_test colorcorrectionui commentary_cvarsnotchanging
syn keyword sourceCommand       commentary_finishnode commentary_showmodelviewer commentary_testfirstrun
syn keyword sourceCommand       computer_name con_min_severity condump connect connect_lobby
syn keyword sourceCommand       connect_splitscreen create_flashlight creditsdone cs_make_vip
syn keyword sourceCommand       csgo_download_match currency_give cvarlist dbghist_addline dbghist_dump
syn keyword sourceCommand       debugsystemui demo_gototick demo_listhighlights demo_listimportantticks
syn keyword sourceCommand       demo_pause demo_resume demo_returntolobby demo_setendtick demo_timescale
syn keyword sourceCommand       demo_togglepause demolist demos demoui demoui2 devshots_nextmap
syn keyword sourceCommand       devshots_screenshot differences director_log_scavenge_items
syn keyword sourceCommand       director_print_player_counts disconnect disguise disp_list_all_collideable
syn keyword sourceCommand       dlight_debug dm_reset_spawns dm_togglerandomweapons drawcross drawline
syn keyword sourceCommand       drawoverviewmap drawradar dropitem dropprimary ds_get_newest_subscribed_files
syn keyword sourceCommand       dsp_reload dti_flush dump_avatar_info dump_entity_sizes dump_globals
syn keyword sourceCommand       dump_panels dump_particlemanifest dump_pz_data dump_server_demo dump_x360_cfg
syn keyword sourceCommand       dump_x360_saves dumpentityfactories dumpeventqueue dumpgamestringtable
syn keyword sourceCommand       dumplongticks dumpsavedir dumpstringtables echo
syn keyword sourceCommand       econ_build_pinboard_images_from_collection_name econ_clear_inventory_images
syn keyword sourceCommand       econ_show_items_with_tag editdemo editor_toggle endmatch_votenextmap endmovie
syn keyword sourceCommand       ent_absbox ent_attachments ent_autoaim ent_bbox ent_cancelpendingentfires
syn keyword sourceCommand       ent_create ent_dump ent_fire ent_info ent_keyvalue ent_messages ent_name
syn keyword sourceCommand       ent_orient ent_pause ent_pivot ent_rbox ent_remove ent_remove_all ent_rotate
syn keyword sourceCommand       ent_setname ent_show_response_criteria ent_step ent_teleport ent_text
syn keyword sourceCommand       ent_viewoffset envmap exec execifexists execwithwhitelist exit explode
syn keyword sourceCommand       explodevector fadein fadeout find find_ent find_ent_index findflags firetarget
syn keyword sourceCommand       firstperson flush flush_locked fly_add_keyframe fly_clear_all_keyframes
syn keyword sourceCommand       fly_show_path fly_start fogui force_centerview forcebind forktest
syn keyword sourceCommand       foundry_engine_get_mouse_control foundry_engine_release_mouse_control
syn keyword sourceCommand       foundry_select_entity foundry_sync_hammer_view foundry_update_entity fov
syn keyword sourceCommand       fs_clear_open_duplicate_times fs_dump_open_duplicate_times
syn keyword sourceCommand       fs_fios_cancel_prefetches fs_fios_flush_cache fs_fios_prefetch_file
syn keyword sourceCommand       fs_fios_prefetch_file_in_pack fs_fios_print_prefetches fs_printopenfiles
syn keyword sourceCommand       fs_syncdvddevcache fs_warning_level g15_dumpplayer g15_reload
syn keyword sourceCommand       gameinstructor_reload_lessons gameinstructor_reset_counts gamemenucommand
syn keyword sourceCommand       gamepadslot1 gamepadslot2 gamepadslot3 gamepadslot4 gamepadslot5 gamepadslot6
syn keyword sourceCommand       gameui_activate gameui_allowescape gameui_allowescapetoshow gameui_hide
syn keyword sourceCommand       gameui_hide_dialog gameui_preventescape gameui_preventescapetoshow
syn keyword sourceCommand       gameui_show_dialog getpos getpos_exact ghost_spawn give givecurrentammo
syn keyword sourceCommand       gl_dump_stats gl_persistent_buffer_max_offset gl_shader_compile_time_dump
syn keyword sourceCommand       global_set go_away_from_keyboard god gods grab_window groundlist
syn keyword sourceCommand       hammer_update_entity hammer_update_safe_entities heartbeat help
syn keyword sourceCommand       hide_message_panel hideconsole hideoverviewmap hidepanel hideradar hidescores
syn keyword sourceCommand       hidestatpanel host_filtered_time_report host_reset_config host_runofftime
syn keyword sourceCommand       host_timer_report host_workshop_collection host_workshop_map host_writeconfig
syn keyword sourceCommand       host_writeconfig_ss hud_reloadscheme hud_subtitles hurtme
syn keyword sourceCommand       ifm_basecamera_camerastate impulse incrementvar inspect invnext invnextgrenade
syn keyword sourceCommand       invnextitem invnextnongrenade invprev ipc_console_disable
syn keyword sourceCommand       ipc_console_disable_all ipc_console_show item_show_whitelistable_definitions
syn keyword sourceCommand       itemtest itemtest_botcontrols join_class joyadvancedupdate jpeg kdtree_test
syn keyword sourceCommand       key_findbinding key_listboundkeys key_updatelayout kick kick_transitioning
syn keyword sourceCommand       kickall kickid kickid_ex kill killserver killvector lastdisguise lastinv
syn keyword sourceCommand       light_crosshair lightprobe linefile listRecentNPCSpeech listdeaths listdemo
syn keyword sourceCommand       listid listip listissues listmaps listmodels load load_itempreset
syn keyword sourceCommand       loadcommentary loader_dump_table log log_color log_dumpchannels log_flags
syn keyword sourceCommand       log_level logaddress_add logaddress_del logaddress_delall logaddress_list map
syn keyword sourceCommand       map_background map_commentary map_edit map_setbombradius map_showbombradius
syn keyword sourceCommand       map_showspawnpoints mapgroup maps mat_configcurrent mat_crosshair
syn keyword sourceCommand       mat_crosshair_edit mat_crosshair_explorer mat_crosshair_printmaterial
syn keyword sourceCommand       mat_crosshair_reloadmaterial mat_custommaterialusage mat_debug mat_edit
syn keyword sourceCommand       mat_hdr_enabled mat_info mat_reloadallcustommaterials mat_reloadallmaterials
syn keyword sourceCommand       mat_reloadmaterial mat_reloadtextures mat_rendered_faces_spew
syn keyword sourceCommand       mat_reporthwmorphmemory mat_savechanges mat_setvideomode mat_shadercount
syn keyword sourceCommand       mat_showmaterials mat_showmaterialsverbose mat_showtextures
syn keyword sourceCommand       mat_spewvertexandpixelshaders mat_suppress mat_texture_list_exclude
syn keyword sourceCommand       mat_texture_list_txlod mat_texture_list_txlod_sync mat_texture_save_fonts
syn keyword sourceCommand       mat_updateconvars maxplayers mdlcache_dump_dictionary_state mem_compact
syn keyword sourceCommand       mem_dump mem_dumpvballocs mem_eat mem_incremental_compact mem_test mem_vcollide
syn keyword sourceCommand       mem_verify memory memory_diff memory_list memory_mark memory_status menuselect
syn keyword sourceCommand       messagemode messagemode2 meta minisave mission_debug_print mission_list
syn keyword sourceCommand       mission_reload mission_show mm_add_item mm_add_player mm_datacenter_debugprint
syn keyword sourceCommand       mm_debugprint mm_dlc_debugprint mm_message mm_queue_show_stats
syn keyword sourceCommand       mm_select_session mm_session_info mm_stats mod_DumpWeaponWiewModelCache
syn keyword sourceCommand       mod_DumpWeaponWorldModelCache mod_combiner_info mod_dynamicmodeldebug
syn keyword sourceCommand       model_list motd movie_fixwave mp_backup_restore_list_files
syn keyword sourceCommand       mp_backup_restore_load_file mp_disable_autokick mp_dump_timers
syn keyword sourceCommand       mp_forcerespawnplayers mp_forcewin mp_pause_match mp_scrambleteams
syn keyword sourceCommand       mp_showrespawntimes mp_swapteams mp_switchteams mp_tournament_restart
syn keyword sourceCommand       mp_unpause_match mp_warmup_end mp_warmup_start ms_player_dump_properties
syn keyword sourceCommand       multvar music_dynamic_play music_dynamic_stop_playing music_print
syn keyword sourceCommand       nav_add_to_selected_set nav_add_to_selected_set_by_id nav_analyze nav_avoid
syn keyword sourceCommand       nav_begin_area nav_begin_deselecting nav_begin_drag_deselecting
syn keyword sourceCommand       nav_begin_drag_selecting nav_begin_selecting nav_begin_shift_xy
syn keyword sourceCommand       nav_build_ladder nav_check_connectivity nav_check_file_consistency
syn keyword sourceCommand       nav_check_floor nav_check_stairs nav_chop_selected nav_clear_attribute
syn keyword sourceCommand       nav_clear_selected_set nav_clear_walkable_marks nav_compress_id nav_connect
syn keyword sourceCommand       nav_corner_lower nav_corner_place_on_ground nav_corner_raise nav_corner_select
syn keyword sourceCommand       nav_crouch nav_delete nav_delete_marked nav_disconnect
syn keyword sourceCommand       nav_disconnect_outgoing_oneways nav_dont_hide nav_dump_selected_set_positions
syn keyword sourceCommand       nav_end_area nav_end_deselecting nav_end_drag_deselecting
syn keyword sourceCommand       nav_end_drag_selecting nav_end_selecting nav_end_shift_xy nav_flood_select
syn keyword sourceCommand       nav_gen_cliffs_approx nav_generate nav_generate_incremental nav_jump
syn keyword sourceCommand       nav_ladder_flip nav_load nav_lower_drag_volume_max nav_lower_drag_volume_min
syn keyword sourceCommand       nav_make_sniper_spots nav_mark nav_mark_attribute nav_mark_unnamed
syn keyword sourceCommand       nav_mark_walkable nav_merge nav_merge_mesh nav_no_hostages nav_no_jump
syn keyword sourceCommand       nav_place_floodfill nav_place_list nav_place_pick nav_place_replace
syn keyword sourceCommand       nav_place_set nav_precise nav_raise_drag_volume_max nav_raise_drag_volume_min
syn keyword sourceCommand       nav_recall_selected_set nav_remove_from_selected_set nav_remove_jump_areas
syn keyword sourceCommand       nav_run nav_save nav_save_selected nav_select_blocked_areas
syn keyword sourceCommand       nav_select_damaging_areas nav_select_half_space nav_select_invalid_areas
syn keyword sourceCommand       nav_select_larger_than nav_select_obstructed_areas nav_select_orphans
syn keyword sourceCommand       nav_select_overlapping nav_select_radius nav_select_stairs nav_set_place_mode
syn keyword sourceCommand       nav_shift nav_show_dumped_positions nav_simplify_selected nav_splice nav_split
syn keyword sourceCommand       nav_stand nav_stop nav_store_selected_set nav_strip nav_subdivide
syn keyword sourceCommand       nav_test_stairs nav_toggle_deselecting nav_toggle_in_selected_set
syn keyword sourceCommand       nav_toggle_place_mode nav_toggle_place_painting nav_toggle_selected_set
syn keyword sourceCommand       nav_toggle_selecting nav_transient nav_unmark nav_update_blocked
syn keyword sourceCommand       nav_update_lighting nav_use_place nav_walk nav_warp_to_mark nav_world_center
syn keyword sourceCommand       nb_command nb_debug nb_debug_filter nb_delete_all nb_dump_debug_history
syn keyword sourceCommand       nb_force_look_at nb_move_to_cursor nb_select nb_warp_selected_here net_channels
syn keyword sourceCommand       net_dumpeventstats net_reloadgameevents net_start net_status
syn keyword sourceCommand       net_steamcnx_status nextdemo nextmap noclip notarget npc_ammo_deplete
syn keyword sourceCommand       npc_bipass npc_combat npc_conditions npc_create npc_create_aimed npc_destroy
syn keyword sourceCommand       npc_destroy_unselected npc_enemies npc_focus npc_freeze npc_freeze_unselected
syn keyword sourceCommand       npc_go npc_go_random npc_heal npc_kill npc_nearest npc_relationships npc_reset
syn keyword sourceCommand       npc_route npc_select npc_set_freeze npc_set_freeze_unselected npc_speakall
syn keyword sourceCommand       npc_squads npc_steering npc_steering_all npc_task_text npc_tasks npc_teleport
syn keyword sourceCommand       npc_thinknow npc_viewcone obj_dump_damage observer_use occlusion_stats
syn keyword sourceCommand       occlusion_test_record occlusion_test_run open_charinfo open_charinfo_armory
syn keyword sourceCommand       open_charinfo_backpack open_charinfo_crafting open_charinfo_direct
syn keyword sourceCommand       open_replaybrowser open_replayinputpanel open_store openserverbrowser
syn keyword sourceCommand       opentf2options outtro_stats_done overview_mode overview_zoom
syn keyword sourceCommand       particle_test_start particle_test_stop path perfui perfvisualbenchmark
syn keyword sourceCommand       perfvisualbenchmark_abort personalstats phys_swap physics_budget
syn keyword sourceCommand       physics_constraints physics_debug_entity physics_highlight_active
syn keyword sourceCommand       physics_report_active physics_select picker ping pingserver pixelvis_debug play
syn keyword sourceCommand       playdemo player_ready_toggle playflush playgamesound playsoundscape playvideo
syn keyword sourceCommand       playvideo_end_level_transition playvideo_exitcommand
syn keyword sourceCommand       playvideo_exitcommand_nointerrupt playvideo_nointerrupt playvol plugin_load
syn keyword sourceCommand       plugin_notify_non_valid plugin_pause plugin_pause_all plugin_print
syn keyword sourceCommand       plugin_unload plugin_unpause plugin_unpause_all print_colorcorrection
syn keyword sourceCommand       print_mapgroup print_mapgroup_sv progress_enable prop_crosshair prop_debug
syn keyword sourceCommand       prop_dynamic_create prop_physics_create quit_prompt r_3dnow r_cheapwaterend
syn keyword sourceCommand       r_cheapwaterstart r_cleardecals r_flushlod r_printdecalinfo
syn keyword sourceCommand       r_ropes_holiday_light_color r_screenoverlay r_shadowangles r_shadowblobbycutoff
syn keyword sourceCommand       r_shadowcolor r_shadowdir r_shadowdist r_skyboxfogfactor r_sse2 radialmenu
syn keyword sourceCommand       radio1 radio2 radio3 randommap rbgc rcon rebuy recompute_speed record
syn keyword sourceCommand       refresh_options_dialog refreshplayerstats reload reload_vjobs removeallids
syn keyword sourceCommand       removeid removeip render_blanks replay_add_fake_replays replay_clearqueuedtakes
syn keyword sourceCommand       replay_confirmquit replay_deleteclientreplays replay_docleanup
syn keyword sourceCommand       replay_dopublishtest replay_hidebrowser replay_printclientreplays
syn keyword sourceCommand       replay_printqueuedtakes replay_printsessioninfo replay_record
syn keyword sourceCommand       replay_reloadbrowser replay_removeclientreplay replay_renderpause
syn keyword sourceCommand       replay_renderunpause replay_stoprecord replay_test_take_save_dlg report
syn keyword sourceCommand       report_entities report_simthinklist report_soundpatch report_touchlinks
syn keyword sourceCommand       reset_expo reset_spawnmenu_counts resetplayerstats respawn_entities restart
syn keyword sourceCommand       retry rfgc rpt rpt_client_enable rpt_connect rpt_download_log rpt_end
syn keyword sourceCommand       rpt_password rpt_screenshot rpt_server_enable rpt_start
syn keyword sourceCommand       rr_debugresponseconcept_exclude rr_reloadresponsesystems save save_finish_async
syn keyword sourceCommand       save_replay say say_team sb_add sb_move_to_cursor scandemo
syn keyword sourceCommand       scavenge_set_round_limit scene_flush scene_playvcd screenshot script_client
syn keyword sourceCommand       script_debug_client script_dump_all_client script_execute_client
syn keyword sourceCommand       script_help_client script_reload_entity_code scripted_user_func
syn keyword sourceCommand       server_game_time setang setang_exact setinfo setmaster setmodel setpause setpos
syn keyword sourceCommand       setpos_exact sf4_meshcache_stats shake shake_stop shake_testpunch
syn keyword sourceCommand       showGameSettings show_addon_load_order show_addon_metadata show_loadout_toggle
syn keyword sourceCommand       show_menu showbudget_texture_global_dumpstats showconsole showinfo showmapinfo
syn keyword sourceCommand       showpanel showschemevisualizer showstatsdlg showtriggers_toggle simple_bot_add
syn keyword sourceCommand       sixense_aim_freeaim_spin_disabled sixense_bind sixense_clear_bindings
syn keyword sourceCommand       sixense_create_default_bindings sixense_delete_binding sixense_disable_gestures
syn keyword sourceCommand       sixense_list_bindings sixense_select_grenade sixense_select_machinegun
syn keyword sourceCommand       sixense_select_melee sixense_select_pistol sixense_set_base_offset
syn keyword sourceCommand       sixense_set_filter_params sixense_show_frame sixense_write_bindings
syn keyword sourceCommand       skip_next_map slot0 slot1 slot10 slot11 slot12 slot2 slot3 slot4 slot5 slot6
syn keyword sourceCommand       slot7 slot8 slot9 snapto snd_async_flush snd_async_showmem
syn keyword sourceCommand       snd_async_showmem_music snd_async_showmem_summary
syn keyword sourceCommand       snd_buildsoundcachefordirectory snd_dump_filepaths snd_dumpclientsounds
syn keyword sourceCommand       snd_front_headphone_position snd_front_stereo_speaker_position
syn keyword sourceCommand       snd_front_surround_speaker_position snd_getmixer snd_headphone_pan_exponent
syn keyword sourceCommand       snd_headphone_pan_radial_weight snd_list_mix_groups snd_list_mixers
syn keyword sourceCommand       snd_playsounds snd_print_channel_by_guid snd_print_channel_by_index
syn keyword sourceCommand       snd_print_channels snd_print_dsp_effect snd_rear_headphone_position
syn keyword sourceCommand       snd_rear_stereo_speaker_position snd_rear_surround_speaker_position
syn keyword sourceCommand       snd_rebuildaudiocache snd_rebuildlocalizedaudiocache snd_restart
syn keyword sourceCommand       snd_set_master_volume snd_setmixer snd_setmixlayer snd_setmixlayer_amount
syn keyword sourceCommand       snd_setsoundparam snd_sos_flush_operators snd_sos_print_operators
syn keyword sourceCommand       snd_soundmixer_flush snd_soundmixer_list_mix_groups
syn keyword sourceCommand       snd_soundmixer_list_mix_layers snd_soundmixer_list_mixers
syn keyword sourceCommand       snd_soundmixer_set_trigger_factor snd_stereo_speaker_pan_exponent
syn keyword sourceCommand       snd_stereo_speaker_pan_radial_weight snd_surround_speaker_pan_exponent
syn keyword sourceCommand       snd_surround_speaker_pan_radial_weight snd_updateaudiocache snd_writemanifest
syn keyword sourceCommand       sndplaydelay soundfade soundinfo soundlist soundscape_dumpclient
syn keyword sourceCommand       soundscape_flush spawnboomermenu spawnchargermenu spawnhuntermenu
syn keyword sourceCommand       spawnjockeymenu spawnmodemenu spawnsmokermenu spawnspittermenu speak spec_goto
syn keyword sourceCommand       spec_gui spec_help spec_lerpto spec_menu spec_mode spec_next spec_player
syn keyword sourceCommand       spec_player_by_name spec_pos spec_prev spec_target spec_target_clear spike
syn keyword sourceCommand       spincycle ss_connect ss_disconnect ss_map ss_reloadletterbox star_memory
syn keyword sourceCommand       startdemos startmovie startupmenu stats stats_nexthighlight status stop
syn keyword sourceCommand       stop_transition_videos_fadeout stopdemo stopsound stopsoundscape stopvideos
syn keyword sourceCommand       stopvideos_fadeout stringtabledictionary stuffcmds surfaceprop
syn keyword sourceCommand       sv_benchmark_force_start sv_bonus_map_challenge_update sv_bonus_map_complete
syn keyword sourceCommand       sv_bonus_map_unlock sv_clearhinthistory sv_cs_dump_econ_item_stringtable
syn keyword sourceCommand       sv_debug_stuck_particles sv_dump_entity_pack_stats
syn keyword sourceCommand       sv_dump_serialized_entities_mem sv_findsoundname sv_game_mode_convars
syn keyword sourceCommand       sv_precacheinfo sv_pure sv_pure_checkvpk sv_pure_finduserfiles
syn keyword sourceCommand       sv_pure_listfiles sv_pure_listuserfiles sv_querycache_stats sv_showtags
syn keyword sourceCommand       sv_shutdown sv_soundemitter_filecheck sv_soundemitter_flush
syn keyword sourceCommand       sv_soundemitter_reload sv_soundemitter_spew sv_soundscape_printdebuginfo
syn keyword sourceCommand       sv_status teammenu terror_reload_team_display terror_test_hud_glow
syn keyword sourceCommand       test_dispatcheffect test_entity_blocker test_freezeframe test_giveawayitem
syn keyword sourceCommand       test_point testhudanim teststatpanel tf_bot_add tf_bot_debug_stuck_log
syn keyword sourceCommand       tf_bot_kick tf_bot_kill tf_bot_warp_team_to_me tf_clear_attribute
syn keyword sourceCommand       tf_crashclient tf_debugsentrydamage tf_dumpplayerstats
syn keyword sourceCommand       tf_halloween_force_boss_spawn tf_invite_debug tf_lobby_debug tf_mark
syn keyword sourceCommand       tf_mvm_checkpoint tf_mvm_checkpoint_clear tf_mvm_force_victory
syn keyword sourceCommand       tf_mvm_jump_to_wave tf_mvm_tank_health tf_mvm_tank_kill tf_party_debug
syn keyword sourceCommand       tf_select_ambush_areas tf_select_with_attribute tf_server_lobby_debug tf_testrr
syn keyword sourceCommand       tf_testvcd tf_wipe_attributes thirdperson thirdperson_mayamode
syn keyword sourceCommand       thirdpersonshoulder thread_test_tslist thread_test_tsqueue
syn keyword sourceCommand       threadpool_cycle_reserve threadpool_run_tests timedemo timedemo_vprofrecord
syn keyword sourceCommand       timedemoquit timeleft timerefresh toggle toggleLmapPath toggleShadowPath
syn keyword sourceCommand       toggleUnlitPath toggleVtxLitPath toggle_duck toggle_zoom toggleconsole
syn keyword sourceCommand       togglescores toolload toolunload training_continue training_showdlg tv_clients
syn keyword sourceCommand       tv_msg tv_record tv_relay tv_retry tv_status tv_stop tv_stoprecord
syn keyword sourceCommand       tv_test_retry tv_test_start tv_test_stop tv_time_remaining tweak_ammo_impulses
syn keyword sourceCommand       ui_pump_dlc_mount_content ui_pump_dlc_mount_corrupt ui_pump_dlc_mount_stage
syn keyword sourceCommand       ui_reloadscheme unbind unbind_mac unbindall unbindalljoystick
syn keyword sourceCommand       unbindallmousekeyboard unload_all_addons unpause update_addon_paths use user
syn keyword sourceCommand       user_context user_property users vehicle_flushscript version
syn keyword sourceCommand       vgui_drawtree_clear vgui_dump_panels vgui_spew_fonts vgui_togglepanel
syn keyword sourceCommand       viewanim_addkeyframe viewanim_create viewanim_load viewanim_reset viewanim_save
syn keyword sourceCommand       viewanim_test voice_menu_1 voice_menu_2 voice_menu_3 voice_mute
syn keyword sourceCommand       voice_printtalkers voice_reset_mutelist voice_show_mute voice_unmute voicemenu
syn keyword sourceCommand       voicerecord_toggle vote vox_reload voxeltree_box voxeltree_playerview
syn keyword sourceCommand       voxeltree_sphere voxeltree_view vphys_sleep_timeout vprof vprof_adddebuggroup1
syn keyword sourceCommand       vprof_cachemiss vprof_cachemiss_off vprof_cachemiss_on vprof_child
syn keyword sourceCommand       vprof_collapse_all vprof_dump_counters vprof_dump_groupnames vprof_expand_all
syn keyword sourceCommand       vprof_expand_group vprof_generate_report vprof_generate_report_AI
syn keyword sourceCommand       vprof_generate_report_AI_only vprof_generate_report_budget
syn keyword sourceCommand       vprof_generate_report_hierarchy
syn keyword sourceCommand       vprof_generate_report_hierarchy_per_frame_and_co
syn keyword sourceCommand       vprof_generate_report_hierarchy_per_frame_and_count_only
syn keyword sourceCommand       vprof_generate_report_map_load vprof_nextsibling vprof_off vprof_on
syn keyword sourceCommand       vprof_parent vprof_playback_average vprof_playback_start vprof_playback_step
syn keyword sourceCommand       vprof_playback_stepback vprof_playback_stop vprof_prevsibling
syn keyword sourceCommand       vprof_record_start vprof_record_stop vprof_remote_start vprof_remote_stop
syn keyword sourceCommand       vprof_reset vprof_reset_peaks vprof_to_csv vprof_vtune_group vtune wait
syn keyword sourceCommand       wc_air_edit_further wc_air_edit_nearer wc_air_node_edit wc_create wc_destroy
syn keyword sourceCommand       wc_destroy_undo wc_link_edit weapon_reload_database whitelistcmd
syn keyword sourceCommand       wipe_nav_attributes workshop_publish workshop_start_map workshop_workbench
syn keyword sourceCommand       writeid writeip xload xlook xmove xsave z_wind_dir

" Syntax: Variables {{{1
syn keyword sourceVar           BlendBonesMode IgnoreReflectGlassFrustumCheck PhysPMC _cl_classmenuopen _fov
syn keyword sourceVar           addons_eclipse_content adsp_alley_min adsp_courtyard_min adsp_debug
syn keyword sourceVar           adsp_door_height adsp_duct_min adsp_hall_min adsp_low_ceiling
syn keyword sourceVar           adsp_opencourtyard_min adsp_openspace_min adsp_openstreet_min adsp_openwall_min
syn keyword sourceVar           adsp_room_min adsp_street_min adsp_tunnel_min adsp_wall_height ai_LOS_mode
syn keyword sourceVar           ai_actbusy_search_time ai_ally_manager_debug ai_auto_contact_solver
syn keyword sourceVar           ai_block_damage ai_citizen_debug_commander ai_debug_assault
syn keyword sourceVar           ai_debug_avoidancebounds ai_debug_directnavprobe ai_debug_doors
syn keyword sourceVar           ai_debug_dyninteractions ai_debug_efficiency ai_debug_enemies
syn keyword sourceVar           ai_debug_enemyfinders ai_debug_eventresponses ai_debug_expressions
syn keyword sourceVar           ai_debug_follow ai_debug_loners ai_debug_looktargets ai_debug_nav
syn keyword sourceVar           ai_debug_ragdoll_magnets ai_debug_readiness ai_debug_speech ai_debug_squads
syn keyword sourceVar           ai_debug_think_ticks ai_debugscriptconditions ai_default_efficient
syn keyword sourceVar           ai_ef_hate_npc_duration ai_ef_hate_npc_frequency ai_efficiency_override
syn keyword sourceVar           ai_enable_fear_behavior ai_expression_frametime ai_expression_optimization
syn keyword sourceVar           ai_fear_player_dist ai_find_lateral_cover ai_find_lateral_los
syn keyword sourceVar           ai_follow_move_commands ai_follow_use_points ai_follow_use_points_when_moving
syn keyword sourceVar           ai_force_serverside_ragdoll ai_frametime_limit ai_lead_time ai_moveprobe_debug
syn keyword sourceVar           ai_moveprobe_jump_debug ai_moveprobe_usetracelist ai_navigator_generate_spikes
syn keyword sourceVar           ai_navigator_generate_spikes_strength ai_new_aiming ai_newgroundturret
syn keyword sourceVar           ai_no_local_paths ai_no_node_cache ai_no_select_box ai_no_steer
syn keyword sourceVar           ai_no_talk_delay ai_norebuildgraph ai_path_adjust_speed_on_immediate_turns
syn keyword sourceVar           ai_path_insert_pause_at_est_end ai_path_insert_pause_at_obstruction
syn keyword sourceVar           ai_post_frame_navigation ai_radial_max_link_dist ai_reaction_delay_alert
syn keyword sourceVar           ai_reaction_delay_idle ai_readiness_decay ai_rebalance_thinks
syn keyword sourceVar           ai_report_task_timings_on_limit ai_sequence_debug ai_setupbones_debug
syn keyword sourceVar           ai_shot_bias ai_shot_bias_max ai_shot_bias_min ai_shot_stats ai_shot_stats_term
syn keyword sourceVar           ai_show_hull_attacks ai_show_think_tolerance ai_simulate_task_overtime
syn keyword sourceVar           ai_spread_cone_focus_time ai_spread_defocused_cone_multiplier
syn keyword sourceVar           ai_spread_pattern_focus_time ai_strong_optimizations
syn keyword sourceVar           ai_strong_optimizations_no_checkstand ai_task_pre_script
syn keyword sourceVar           ai_test_moveprobe_ignoresmall ai_think_limit_label ai_use_clipped_paths
syn keyword sourceVar           ai_use_efficiency ai_use_frame_think_limits ai_use_readiness
syn keyword sourceVar           ai_use_think_optimizations ai_use_visibility_cache airboat_fatal_stress
syn keyword sourceVar           airboat_joy_response_move allow_all_bot_survivor_team ammo_338mag_max
syn keyword sourceVar           ammo_357sig_max ammo_357sig_min_max ammo_357sig_p250_max ammo_357sig_small_max
syn keyword sourceVar           ammo_45acp_max ammo_50AE_max ammo_556mm_box_max ammo_556mm_max
syn keyword sourceVar           ammo_556mm_small_max ammo_57mm_max ammo_762mm_max ammo_9mm_max
syn keyword sourceVar           ammo_adrenaline_max ammo_ammo_pack_max ammo_assaultrifle_max
syn keyword sourceVar           ammo_autoshotgun_max ammo_buckshot_max ammo_chainsaw_max ammo_firstaid_max
syn keyword sourceVar           ammo_grenade_limit_default ammo_grenade_limit_flashbang
syn keyword sourceVar           ammo_grenade_limit_total ammo_grenadelauncher_max ammo_huntingrifle_max
syn keyword sourceVar           ammo_m60_max ammo_max ammo_minigun_max ammo_molotov_max ammo_painpills_max
syn keyword sourceVar           ammo_pipebomb_max ammo_pistol_max ammo_shotgun_max ammo_smg_max
syn keyword sourceVar           ammo_sniperrifle_max ammo_turret_infected_damage ammo_turret_max
syn keyword sourceVar           ammo_turret_pz_damage ammo_turret_survivor_damage ammo_turret_tank_damage
syn keyword sourceVar           ammo_turret_witch_damage ammo_vomitjar_max anim_3wayblend antlion_easycrush
syn keyword sourceVar           async_allow_held_files async_mode async_serialize async_simulate_delay
syn keyword sourceVar           autoaim_max_deflect autoaim_max_dist autoaim_unlock_target
syn keyword sourceVar           autoaim_viewing_client binds_per_command birds_debug blackbox blink_duration
syn keyword sourceVar           blob_batchpercent blob_element_speed blob_mindist blob_numelements blob_radius
syn keyword sourceVar           bot_allow_rogues bot_autodifficulty_threshold_high
syn keyword sourceVar           bot_autodifficulty_threshold_low bot_changeclass bot_chatter bot_custom_strat
syn keyword sourceVar           bot_defer_to_human_goals bot_defer_to_human_items bot_forceattack
syn keyword sourceVar           bot_forceattack2 bot_forceattack_down bot_forcefireweapon bot_join_team
syn keyword sourceVar           bot_mimic bot_mimic_inverse bot_mimic_yaw_offset breakable_disable_gib_limit
syn keyword sourceVar           breakable_multiplayer budget_averages_window budget_background_alpha
syn keyword sourceVar           budget_bargraph_background_alpha budget_bargraph_range_ms
syn keyword sourceVar           budget_history_numsamplesvisible budget_history_range_ms
syn keyword sourceVar           budget_panel_bottom_of_history_fraction budget_panel_height budget_panel_width
syn keyword sourceVar           budget_panel_x budget_panel_y budget_peaks_window budget_show_averages
syn keyword sourceVar           budget_show_history budget_show_peaks bugbait_distract_time
syn keyword sourceVar           bugbait_grenade_radius bugbait_hear_radius bugbait_radius
syn keyword sourceVar           bugreporter_console_bytes bugreporter_includebsp bugreporter_snapshot_delay
syn keyword sourceVar           bugreporter_uploadasync bugreporter_username building_cubemaps
syn keyword sourceVar           bullet_ff_through_walls bulletspeed c_maxdistance c_maxpitch c_maxyaw
syn keyword sourceVar           c_mindistance c_minpitch c_minyaw c_orthoheight c_orthowidth
syn keyword sourceVar           c_thirdpersonshoulder c_thirdpersonshoulderaimdist c_thirdpersonshoulderdist
syn keyword sourceVar           c_thirdpersonshoulderheight c_thirdpersonshoulderoffset cam_collision
syn keyword sourceVar           cam_idealdelta cam_idealdist cam_ideallag cam_idealpitch cam_idealyaw
syn keyword sourceVar           cam_snapto car_alarm_chirp_distance car_alarm_chirp_duration
syn keyword sourceVar           car_alarm_chirp_interval car_alarm_distance car_alarm_duration
syn keyword sourceVar           cash_player_bomb_defused cash_player_bomb_planted cash_player_damage_hostage
syn keyword sourceVar           cash_player_get_killed cash_player_interact_with_hostage
syn keyword sourceVar           cash_player_killed_enemy_default cash_player_killed_enemy_factor
syn keyword sourceVar           cash_player_killed_hostage cash_player_killed_teammate
syn keyword sourceVar           cash_player_rescued_hostage cash_player_respawn_amount
syn keyword sourceVar           cash_team_elimination_bomb_map cash_team_elimination_hostage_map_ct
syn keyword sourceVar           cash_team_elimination_hostage_map_t cash_team_hostage_alive
syn keyword sourceVar           cash_team_hostage_interaction cash_team_loser_bonus
syn keyword sourceVar           cash_team_loser_bonus_consecutive_rounds cash_team_planted_bomb_but_defused
syn keyword sourceVar           cash_team_rescued_hostage cash_team_survive_guardian_wave
syn keyword sourceVar           cash_team_terrorist_win_bomb cash_team_win_by_defusing_bomb
syn keyword sourceVar           cash_team_win_by_hostage_rescue cash_team_win_by_time_running_out_bomb
syn keyword sourceVar           cash_team_win_by_time_running_out_hostage cc_captiontrace cc_lang
syn keyword sourceVar           cc_linger_time cc_minvisibleitems cc_norepeat cc_predisplay_time
syn keyword sourceVar           cc_sentencecaptionnorepeat cc_showmissing cc_smallfontlength cc_subtitles
syn keyword sourceVar           cl_SetupAllBones cl_ShowBoneSetupEnts cl_ShowSunVectors
syn keyword sourceVar           cl__ragdoll_max_remove_per_frame cl_addon_debug cl_addon_fade_max
syn keyword sourceVar           cl_addon_fade_min cl_aggregate_particles cl_allowdownload cl_allowupload
syn keyword sourceVar           cl_anglespeedkey cl_ask_bigpicture_controller_opt_out
syn keyword sourceVar           cl_ask_blacklist_for_any_server cl_ask_blacklist_max_session_duration
syn keyword sourceVar           cl_ask_blacklist_opt_out cl_ask_favorite_for_any_server
syn keyword sourceVar           cl_ask_favorite_min_session_duration cl_ask_favorite_opt_out cl_autobuy
syn keyword sourceVar           cl_autohelp cl_autoreload cl_autorezoom cl_autowepswitch cl_blobbyshadows
syn keyword sourceVar           cl_blurClearAlpha cl_blurDebug cl_blurPasses cl_blurTapSize cl_bob
syn keyword sourceVar           cl_bob_lower_amt cl_bobamt_lat cl_bobamt_vert cl_bobcycle cl_bobup
syn keyword sourceVar           cl_boss_show_stun cl_burninggibs cl_buy_favorite_nowarn cl_buy_favorite_quiet
syn keyword sourceVar           cl_c4dynamiclight cl_chat_active cl_chat_wipehistory cl_chatfilter_version
syn keyword sourceVar           cl_chatfilters cl_clanid cl_class cl_clientmenudistancecap
syn keyword sourceVar           cl_clientmenuscalefactor cl_cloud_settings cl_cmdrate cl_color_survivor
syn keyword sourceVar           cl_color_zombie cl_colorblind cl_colorfastpath cl_consistencycheck_interval
syn keyword sourceVar           cl_crosshair_alpha cl_crosshair_blue cl_crosshair_circle_alpha
syn keyword sourceVar           cl_crosshair_circle_mode cl_crosshair_drawoutline cl_crosshair_dynamic
syn keyword sourceVar           cl_crosshair_dynamic_maxdist_splitratio
syn keyword sourceVar           cl_crosshair_dynamic_splitalpha_innermod
syn keyword sourceVar           cl_crosshair_dynamic_splitalpha_outermod cl_crosshair_dynamic_splitdist
syn keyword sourceVar           cl_crosshair_file cl_crosshair_green cl_crosshair_outlinethickness
syn keyword sourceVar           cl_crosshair_red cl_crosshair_scale cl_crosshair_thickness cl_crosshairalpha
syn keyword sourceVar           cl_crosshaircolor cl_crosshaircolor_b cl_crosshaircolor_g cl_crosshaircolor_r
syn keyword sourceVar           cl_crosshairdot cl_crosshairgap cl_crosshairgap_useweaponvalue
syn keyword sourceVar           cl_crosshairscale cl_crosshairsize cl_crosshairstyle cl_crosshairthickness
syn keyword sourceVar           cl_crosshairusealpha cl_customsounds cl_cycle_latch_tolerance cl_debug_entity
syn keyword sourceVar           cl_debug_player_perf cl_debug_player_use cl_debug_ugc_downloads cl_debugrumble
syn keyword sourceVar           cl_decryptdata_key cl_decryptdata_key_pub cl_demoviewoverride
syn keyword sourceVar           cl_detail_avoid_force cl_detail_avoid_radius cl_detail_avoid_recover_speed
syn keyword sourceVar           cl_detail_max_sway cl_detaildist cl_detailfade cl_disablefreezecam
syn keyword sourceVar           cl_disablehtmlmotd cl_dm_buyrandomweapons cl_download_demoplayer
syn keyword sourceVar           cl_downloadfilter cl_drawescaperoute cl_drawmonitors cl_drawprogressbar
syn keyword sourceVar           cl_dynamiccrosshair cl_ejectbrass cl_elevator_physics cl_failremoteconnections
syn keyword sourceVar           cl_fastradial cl_fasttempentcollision cl_fixedcrosshairgap
syn keyword sourceVar           cl_flesh_sound_frequency cl_flipviewmodels cl_footstep_fx cl_forcepreload
syn keyword sourceVar           cl_foundry_ShowEntityHighlights cl_fov cl_freezecameffects_showholiday
syn keyword sourceVar           cl_freezecampanel_position_dynamic cl_glow_ability_b
syn keyword sourceVar           cl_glow_ability_colorblind_b cl_glow_ability_colorblind_g
syn keyword sourceVar           cl_glow_ability_colorblind_r cl_glow_ability_g cl_glow_ability_r cl_glow_debug
syn keyword sourceVar           cl_glow_ghost_infected_b cl_glow_ghost_infected_g cl_glow_ghost_infected_r
syn keyword sourceVar           cl_glow_infected_b cl_glow_infected_g cl_glow_infected_r
syn keyword sourceVar           cl_glow_infected_vomit_b cl_glow_infected_vomit_g cl_glow_infected_vomit_r
syn keyword sourceVar           cl_glow_item_b cl_glow_item_far_b cl_glow_item_far_g cl_glow_item_far_r
syn keyword sourceVar           cl_glow_item_g cl_glow_item_r cl_glow_physics_props cl_glow_range_end
syn keyword sourceVar           cl_glow_range_exp cl_glow_range_start cl_glow_survivor_b cl_glow_survivor_g
syn keyword sourceVar           cl_glow_survivor_health_bleed_pulse cl_glow_survivor_health_bleed_pulse_amount
syn keyword sourceVar           cl_glow_survivor_health_bleed_pulse_speed cl_glow_survivor_health_crit_b
syn keyword sourceVar           cl_glow_survivor_health_crit_colorblind_b
syn keyword sourceVar           cl_glow_survivor_health_crit_colorblind_g
syn keyword sourceVar           cl_glow_survivor_health_crit_colorblind_r cl_glow_survivor_health_crit_g
syn keyword sourceVar           cl_glow_survivor_health_crit_r cl_glow_survivor_health_high_b
syn keyword sourceVar           cl_glow_survivor_health_high_colorblind_b
syn keyword sourceVar           cl_glow_survivor_health_high_colorblind_g
syn keyword sourceVar           cl_glow_survivor_health_high_colorblind_r cl_glow_survivor_health_high_g
syn keyword sourceVar           cl_glow_survivor_health_high_r cl_glow_survivor_health_include_buffer
syn keyword sourceVar           cl_glow_survivor_health_low_b cl_glow_survivor_health_low_colorblind_b
syn keyword sourceVar           cl_glow_survivor_health_low_colorblind_g
syn keyword sourceVar           cl_glow_survivor_health_low_colorblind_r cl_glow_survivor_health_low_g
syn keyword sourceVar           cl_glow_survivor_health_low_r cl_glow_survivor_health_med_b
syn keyword sourceVar           cl_glow_survivor_health_med_colorblind_b
syn keyword sourceVar           cl_glow_survivor_health_med_colorblind_g
syn keyword sourceVar           cl_glow_survivor_health_med_colorblind_r cl_glow_survivor_health_med_g
syn keyword sourceVar           cl_glow_survivor_health_med_r cl_glow_survivor_hurt_b cl_glow_survivor_hurt_g
syn keyword sourceVar           cl_glow_survivor_hurt_r cl_glow_survivor_r cl_glow_survivor_vomit_b
syn keyword sourceVar           cl_glow_survivor_vomit_g cl_glow_survivor_vomit_r cl_glow_thirdstrike_item_b
syn keyword sourceVar           cl_glow_thirdstrike_item_colorblind_b cl_glow_thirdstrike_item_colorblind_g
syn keyword sourceVar           cl_glow_thirdstrike_item_colorblind_r cl_glow_thirdstrike_item_g
syn keyword sourceVar           cl_glow_thirdstrike_item_r cl_hideserverip cl_hud_background_alpha
syn keyword sourceVar           cl_hud_bomb_under_radar cl_hud_color cl_hud_healthammo_style cl_hud_minmode
syn keyword sourceVar           cl_hud_playercount_pos cl_hud_playercount_showcount cl_hud_radar_scale
syn keyword sourceVar           cl_hudhint_sound cl_ideal_spec_mode cl_idealpitchscale cl_ignore_vpk_assocation
syn keyword sourceVar           cl_impacteffects cl_impacteffects_limit_exit cl_impacteffects_limit_general
syn keyword sourceVar           cl_impacteffects_limit_water cl_infected_animinsim cl_interp cl_interp_all
syn keyword sourceVar           cl_interp_npcs cl_interp_ratio cl_interp_threadmodeticks cl_interpolate
syn keyword sourceVar           cl_inv_showdividerline cl_inventory_saved_filter cl_inventory_saved_sort
syn keyword sourceVar           cl_jiggle_bone_framerate_cutoff cl_jiggle_bone_sanity cl_join_advertise
syn keyword sourceVar           cl_lagcomp_errorcheck cl_lagcompensation cl_language cl_left_hand_ik
syn keyword sourceVar           cl_loadout_colorweaponnames cl_localnetworkbackdoor cl_logofile
syn keyword sourceVar           cl_mainmenu_show_datagraph cl_menuduration cl_minimal_rtt_shadows
syn keyword sourceVar           cl_modelfastpath cl_mouseenable cl_mouselook cl_mouselook2 cl_music_debug
syn keyword sourceVar           cl_mute_enemy_team cl_muzzleflash_dlight_1st cl_names_debug
syn keyword sourceVar           cl_new_impact_effects cl_notifications_max_num_visible
syn keyword sourceVar           cl_notifications_move_time cl_notifications_show_ingame cl_npc_speedmod_intime
syn keyword sourceVar           cl_npc_speedmod_outtime cl_obj_fake_alert cl_obs_interp_enable
syn keyword sourceVar           cl_observercrosshair cl_operation_premium_reminder_op06 cl_particle_batch_mode
syn keyword sourceVar           cl_particle_fallback_base cl_particle_fallback_multiplier cl_particle_max_count
syn keyword sourceVar           cl_particle_sim_fallback_base_multiplier cl_particle_sim_fallback_threshold_ms
syn keyword sourceVar           cl_perf_wizard_enable cl_phys_block_dist cl_phys_block_fraction
syn keyword sourceVar           cl_phys_maxticks cl_phys_props_enable cl_phys_props_max
syn keyword sourceVar           cl_phys_props_respawndist cl_phys_props_respawnrate cl_pitchspeed
syn keyword sourceVar           cl_playback_screenshots cl_player_max_decal_count
syn keyword sourceVar           cl_player_max_separation_force cl_player_shadow_dist cl_playerspraydisable
syn keyword sourceVar           cl_pred_checkstuck cl_pred_doresetlatch cl_pred_error_verbose cl_pred_optimize
syn keyword sourceVar           cl_predict cl_predictweapons cl_quick_join_panel_accel
syn keyword sourceVar           cl_quick_join_panel_fakecount cl_quick_join_panel_tall cl_quick_join_scroll_max
syn keyword sourceVar           cl_quick_join_scroll_offset cl_quick_join_scroll_rate
syn keyword sourceVar           cl_quick_join_scroll_start cl_radar_always_centered cl_radar_icon_scale_min
syn keyword sourceVar           cl_radar_rotate cl_radar_scale cl_radar_square_with_scoreboard
syn keyword sourceVar           cl_ragdoll_collide cl_ragdoll_default_scale cl_ragdoll_fade_time
syn keyword sourceVar           cl_ragdoll_force_multiplier cl_ragdoll_forcefade cl_ragdoll_limit
syn keyword sourceVar           cl_ragdoll_maxcount cl_ragdoll_maxcount_boss cl_ragdoll_maxcount_generic
syn keyword sourceVar           cl_ragdoll_maxcount_gib cl_ragdoll_maxcount_special
syn keyword sourceVar           cl_ragdoll_maxcount_survivor cl_ragdoll_physics_enable
syn keyword sourceVar           cl_ragdoll_pronecheck_distance cl_ragdoll_reload cl_ragdoll_version
syn keyword sourceVar           cl_ragdoll_workaround_threshold cl_rebuy cl_rematch_vote_in_progress
syn keyword sourceVar           cl_remove_old_ugc_downloads cl_resend cl_resend_timeout
syn keyword sourceVar           cl_retire_low_priority_lights cl_ricochet_percent cl_ricochet_percent_shotgun
syn keyword sourceVar           cl_righthand cl_rosetta_debug cl_rosetta_line_inner_radius
syn keyword sourceVar           cl_rosetta_line_outer_radius cl_rumblescale cl_savescreenshotstosteam
syn keyword sourceVar           cl_scalecrosshair cl_sceneentity_debug cl_scoreboard_mouse_enable_binding
syn keyword sourceVar           cl_screenshotlocation cl_screenshotname cl_screenshotusertag cl_session
syn keyword sourceVar           cl_show_bounds_errors cl_show_clan_in_death_notice cl_show_market_data_on_items
syn keyword sourceVar           cl_show_num_particle_systems cl_show_path cl_show_splashes cl_show_tickets
syn keyword sourceVar           cl_showbackpackrarities cl_showbattery cl_showcrit cl_showdemooverlay
syn keyword sourceVar           cl_showerror cl_showfps cl_showhelp cl_showloadout cl_showpausedimage
syn keyword sourceVar           cl_showpluginmessages cl_showpos cl_showtextmsg cl_simdbones
syn keyword sourceVar           cl_simulate_no_quicktime cl_smoke_alpha cl_smoke_far cl_smoke_near cl_smooth
syn keyword sourceVar           cl_smoothtime cl_software_cursor cl_soundfile cl_spec_carrieditems
syn keyword sourceVar           cl_spec_follow_grenade_key cl_spec_mode cl_spec_show_bindings cl_spec_stats
syn keyword sourceVar           cl_spewscriptintro cl_spoof_official_ip cl_starfield_diameter
syn keyword sourceVar           cl_starfield_distance cl_steamscreenshots cl_survivor_light_brightness
syn keyword sourceVar           cl_survivor_light_cone cl_survivor_light_debug cl_survivor_light_enable
syn keyword sourceVar           cl_survivor_light_offset_x cl_survivor_light_offset_y
syn keyword sourceVar           cl_survivor_light_offset_z cl_survivor_light_radius cl_survivor_light_rot
syn keyword sourceVar           cl_team cl_teamid_overhead_name_alpha cl_teamid_overhead_name_fadetime
syn keyword sourceVar           cl_teammate_colors_show cl_temp_health_fade cl_temp_health_pulse_incap
syn keyword sourceVar           cl_temp_health_pulse_rate cl_thirdperson cl_threaded_bone_setup
syn keyword sourceVar           cl_threaded_client_leaf_system cl_threaded_init cl_timeout cl_tlucfastpath
syn keyword sourceVar           cl_tracer_whiz_distance cl_tracers cl_trading_show_requests_from
syn keyword sourceVar           cl_training_completed_with_classes cl_transition_blur_fade_time cl_updaterate
syn keyword sourceVar           cl_use_opens_buy_menu cl_use_simd_bones cl_use_tournament_specgui cl_viewbob
syn keyword sourceVar           cl_viewbob_cyclerate_duck cl_viewbob_cyclerate_run cl_viewbob_cyclerate_walk
syn keyword sourceVar           cl_viewbob_scale cl_viewbob_scale_duck cl_viewbob_up
syn keyword sourceVar           cl_viewmodel_shift_left_amt cl_viewmodel_shift_right_amt cl_viewmodelfovboomer
syn keyword sourceVar           cl_viewmodelfovhunter cl_viewmodelfovsmoker cl_viewmodelfovsurvivor
syn keyword sourceVar           cl_viewmodelfovtank cl_viewmodelsclonedasworld cl_viewtarget_clamp
syn keyword sourceVar           cl_voice_filter cl_vote_active cl_vote_ui_active_after_voting
syn keyword sourceVar           cl_vote_ui_show_notification cl_witch_glow_angry_b cl_witch_glow_angry_g
syn keyword sourceVar           cl_witch_glow_angry_r cl_witch_glow_idle_b cl_witch_glow_idle_g
syn keyword sourceVar           cl_witch_glow_idle_r cl_witch_glow_range cl_wpn_sway_interp cl_yawspeed
syn keyword sourceVar           clientport closecaption closedcaption closeonbuy collision_shake_amp
syn keyword sourceVar           collision_shake_freq collision_shake_time combine_guard_spawn_health
syn keyword sourceVar           combine_spawn_health commentary commentary_available commentary_firstrun
syn keyword sourceVar           common_dps_spew common_dps_window con_drawnotify con_enable con_filter_enable
syn keyword sourceVar           con_filter_text con_filter_text_out con_logfile con_notifytime
syn keyword sourceVar           con_nprint_bgalpha con_nprint_bgborder con_timestamp con_trace connect_lobby
syn keyword sourceVar           contimes coop cpu_level crosshair cs_enable_player_physics_box cursortimeout
syn keyword sourceVar           curve_bias custom_bot_difficulty darkness_ignore_LOS_to_sources datacachesize
syn keyword sourceVar           dbg_demofile dbg_spew_connected_players_level deathmatch debug_l4dverbose
syn keyword sourceVar           debug_map_crc debug_materialmodifycontrol debug_materialmodifycontrol_client
syn keyword sourceVar           debug_overlay_fullposition debug_physimpact debug_touchlinks decalfrequency
syn keyword sourceVar           demo_avellimit demo_campaign_name demo_connect_string demo_debug
syn keyword sourceVar           demo_fastforwardfinalspeed demo_fastforwardramptime demo_fastforwardstartspeed
syn keyword sourceVar           demo_fov_override demo_interplimit demo_interpolateview demo_legacy_rollback
syn keyword sourceVar           demo_pauseatservertick demo_quitafterplayback demo_ui_enable developer
syn keyword sourceVar           director_afk_timeout director_allow_infected_bots director_min_start_players
syn keyword sourceVar           director_report_screen_delay director_survival_setup_time
syn keyword sourceVar           director_vs_convert_pills disp_dynamic dispcoll_drawplane displaysoundlist
syn keyword sourceVar           dlc_bypass_ownership_check dog_debug dog_max_wait_time download_debug
syn keyword sourceVar           dsp_automatic dsp_db_min dsp_db_mixdrop dsp_enhance_stereo dsp_facingaway
syn keyword sourceVar           dsp_mix_max dsp_mix_min dsp_player dsp_room dsp_slow_cpu dsp_spatial
syn keyword sourceVar           dsp_speaker dsp_vol_2ch dsp_vol_4ch dsp_vol_5ch dsp_volume dsp_water
syn keyword sourceVar           dt_ShowPartialChangeEnts dt_UsePartialChangeEnts dt_dump_flattened_tables
syn keyword sourceVar           dtwarning dtwatchclass dtwatchent dtwatchvar econ_highest_baseitem_seen
syn keyword sourceVar           econ_never_show_items_in_cart_count elevator_movedelay enable_fast_math
syn keyword sourceVar           engine_no_focus_sleep english ent_debugkeys ent_show_contexts
syn keyword sourceVar           ent_steadystate_batchsize ent_steadystate_cooldown ent_steadystate_delay
syn keyword sourceVar           ent_steadystate_enable ent_steadystate_interval er_colwidth er_graphwidthfrac
syn keyword sourceVar           er_maxname fall_speed_fatal fall_speed_safe fast_fogvolume
syn keyword sourceVar           ff_damage_bullet_penetration ff_damage_reduction_bullets
syn keyword sourceVar           ff_damage_reduction_grenade ff_damage_reduction_grenade_self
syn keyword sourceVar           ff_damage_reduction_other fidget_max_interval fidget_min_interval
syn keyword sourceVar           filesystem_buffer_size filesystem_max_stdio_read filesystem_native
syn keyword sourceVar           filesystem_report_buffered_io filesystem_unbuffered_io
syn keyword sourceVar           filesystem_use_overlapped_io fire_absorbrate fire_dmgbase fire_dmginterval
syn keyword sourceVar           fire_dmgscale fire_extabsorb fire_extscale fire_growthrate fire_heatscale
syn keyword sourceVar           fire_incomingheatscale fire_maxabsorb first_aid_kit_view_duration
syn keyword sourceVar           flex_expression flex_looktime flex_maxawaytime flex_maxplayertime
syn keyword sourceVar           flex_minawaytime flex_minplayertime flex_rules flex_smooth flex_talk fly_speed
syn keyword sourceVar           fog_max_brightness_after_tonemapping force_audio_english fov_desired
syn keyword sourceVar           fov_desired2 fps_max fps_max_menu fps_max_splitscreen free_pass_peek_debug
syn keyword sourceVar           fs_convert fs_monitor_read_from_pack fs_report_sync_opens fs_warning_mode
syn keyword sourceVar           func_break_max_pieces func_break_reduction_factor func_breakdmg_bullet
syn keyword sourceVar           func_breakdmg_club func_breakdmg_explosive fx_drawimpactdebris
syn keyword sourceVar           fx_drawimpactdust fx_drawmetalspark fx_glass_velocity_cap g15_update_msec
syn keyword sourceVar           g_Language g_ai_citizen_show_enemy g_antlion_cascade_push g_antlion_maxgibs
syn keyword sourceVar           g_cv_phys2_freeze_ragdolls g_debug_antlion g_debug_antlion_worker
syn keyword sourceVar           g_debug_antlionguard g_debug_combine_camera g_debug_cscanner g_debug_darkness
syn keyword sourceVar           g_debug_doors g_debug_dropship g_debug_dynamicresupplies
syn keyword sourceVar           g_debug_npc_vehicle_roles g_debug_physcannon g_debug_transitions g_debug_turret
syn keyword sourceVar           g_debug_turret_ceiling g_debug_vortigaunt_aim g_helicopter_bomb_danger_radius
syn keyword sourceVar           g_helicopter_bullrush_bomb_enemy_distance g_helicopter_bullrush_bomb_speed
syn keyword sourceVar           g_helicopter_bullrush_bomb_time g_helicopter_bullrush_distance
syn keyword sourceVar           g_helicopter_bullrush_mega_bomb_health g_helicopter_bullrush_shoot_height
syn keyword sourceVar           g_helicopter_chargetime g_helicopter_idletime g_helicopter_maxfiringdist
syn keyword sourceVar           g_ragdoll_fadespeed g_ragdoll_important_maxcount g_ragdoll_lvfadespeed
syn keyword sourceVar           g_ragdoll_max_fps g_ragdoll_maxcount g_ragdoll_min_fps g_test_new_antlion_jump
syn keyword sourceVar           game_type gameinstructor_enable gameinstructor_start_sound_cooldown
syn keyword sourceVar           gameui_ingame_menu_active gameui_xbox gl_amd_occlusion_workaround gl_clear
syn keyword sourceVar           gl_nvidia_occlusion_workaround glow_outline_effect_enable
syn keyword sourceVar           gotv_theater_container gpu_level gpu_mem_level grenadelauncher_startpos_forward
syn keyword sourceVar           grenadelauncher_startpos_right grenadelauncher_startpos_up
syn keyword sourceVar           grenadelauncher_vel_up grenadelauncher_vel_variance hap_HasDevice
syn keyword sourceVar           hap_airboat_gun_mag hap_damagescale_game hap_jeep_cannon_mag hap_melee_scale
syn keyword sourceVar           hap_noclip_avatar_scale hap_turret_mag hap_ui_vehicles helping_hand_debug
syn keyword sourceVar           hide_server hl2_darkness_flashlight_factor hl2_episodic hl2_normspeed
syn keyword sourceVar           hl2_sprintspeed hl2_walkspeed host_ShowIPCCallCount host_flush_threshold
syn keyword sourceVar           host_framerate host_info_show host_limitlocal host_map host_name_store
syn keyword sourceVar           host_players_show host_profile host_rules_show host_showcachemiss host_speeds
syn keyword sourceVar           host_syncfps host_thread_mode host_threaded_sound host_timer_spin_ms
syn keyword sourceVar           host_timescale host_xbox_e3_restart hostfile hostip hostname hostport
syn keyword sourceVar           hud_achievement_count hud_achievement_count_engineer
syn keyword sourceVar           hud_achievement_description hud_achievement_glowtime hud_achievement_tracker
syn keyword sourceVar           hud_airboathint_numentries hud_autoaim_method hud_autoaim_scale_icon
syn keyword sourceVar           hud_autoreloadscript hud_classautokill hud_combattext hud_combattext_batching
syn keyword sourceVar           hud_combattext_healing hud_deathnotice_bots hud_deathnotice_threats
syn keyword sourceVar           hud_deathnotice_time hud_dmgrecord_persisttime_deaths
syn keyword sourceVar           hud_dmgrecord_persisttime_other hud_draw_active_reticle hud_draw_fixed_reticle
syn keyword sourceVar           hud_drawhistory_time hud_escort_interp hud_escort_test_progress
syn keyword sourceVar           hud_escort_test_speed hud_fastswitch hud_freezecamhide hud_jeephint_numentries
syn keyword sourceVar           hud_lowammowarning_maxposadjust hud_lowammowarning_threshold hud_magnetism
syn keyword sourceVar           hud_medicautocallers hud_medicautocallersthreshold hud_medichealtargetmarker
syn keyword sourceVar           hud_quickinfo hud_reticle_alpha_speed hud_reticle_maxalpha hud_reticle_minalpha
syn keyword sourceVar           hud_reticle_scale hud_saytext_time hud_scaling hud_scavenge_timer_warning_range
syn keyword sourceVar           hud_showemptyweaponslots hud_showtargetid hud_survival_target_time_range
syn keyword sourceVar           hud_takesshots hud_targetid_health hud_targetid_name_height
syn keyword sourceVar           hud_targetid_name_height_boomer hud_targetid_name_height_hunter
syn keyword sourceVar           hud_targetid_name_height_smoker hud_targetid_name_height_tank
syn keyword sourceVar           hud_targetid_player_view_cone hud_targetid_pz_ss_view_cone hud_targetid_skill
syn keyword sourceVar           hud_targetid_upgrades hud_winpanel_scoreanim_chingdelay
syn keyword sourceVar           hud_winpanel_scoreanim_effectdelay hud_winpanel_scoreanim_effectdelay_mult
syn keyword sourceVar           hud_winpanel_scoreanim_scoredelay hud_winpanel_tiebreak_anim
syn keyword sourceVar           hud_winpanel_tiebreak_intro hud_winpanel_tiebreak_outro hud_zombieteam
syn keyword sourceVar           hud_zombieteam_showself ifm_steadycam_2ddragconstant
syn keyword sourceVar           ifm_steadycam_2dspringconstant ifm_steadycam_armspeed ifm_steadycam_mousefactor
syn keyword sourceVar           ifm_steadycam_mousepower ifm_steadycam_noise ifm_steadycam_rotatedamp
syn keyword sourceVar           ifm_steadycam_rotaterate ifm_steadycam_sensitivity ifm_steadycam_zoomdamp
syn keyword sourceVar           ifm_steadycam_zoomspeed in_usekeyboardsampletime inferno_dlights
syn keyword sourceVar           inferno_entity_flame_scale inferno_fire inferno_max_trace_per_tick ip ip_steam
syn keyword sourceVar           ip_tv item_enable_content_streaming item_quality_chance_common
syn keyword sourceVar           item_quality_chance_rare item_quality_chance_unique joy_accel_filter
syn keyword sourceVar           joy_accelmax joy_accelscale joy_accelscalepoly joy_advanced joy_advaxisr
syn keyword sourceVar           joy_advaxisu joy_advaxisv joy_advaxisx joy_advaxisy joy_advaxisz
syn keyword sourceVar           joy_autoAimDampenMethod joy_autoaimdampen joy_autoaimdampenrange joy_autosprint
syn keyword sourceVar           joy_axis_deadzone joy_axisbutton_threshold joy_cfg_preset joy_cfg_preset2
syn keyword sourceVar           joy_circle_correct joy_curvepoint_1 joy_curvepoint_2 joy_curvepoint_3
syn keyword sourceVar           joy_curvepoint_4 joy_curvepoint_end joy_diagonalpov joy_display_input
syn keyword sourceVar           joy_forwardsensitivity joy_forwardthreshold joy_gamecontroller_config joy_gamma
syn keyword sourceVar           joy_inverty joy_inverty2 joy_inverty_default joy_legacy joy_legacy2
syn keyword sourceVar           joy_lookspin_default joy_lowend joy_lowend_linear joy_lowmap joy_movement_stick
syn keyword sourceVar           joy_movement_stick2 joy_movement_stick_default joy_name joy_no_accel_jump
syn keyword sourceVar           joy_pegged joy_pitchsensitivity joy_pitchsensitivity2
syn keyword sourceVar           joy_pitchsensitivity_default joy_pitchthreshold joy_response_look
syn keyword sourceVar           joy_response_look_pitch joy_response_move joy_response_move_vehicle
syn keyword sourceVar           joy_sensitive_step0 joy_sensitive_step1 joy_sensitive_step2 joy_sidesensitivity
syn keyword sourceVar           joy_sidethreshold joy_variable_frametime joy_vehicle_turn_lowend
syn keyword sourceVar           joy_vehicle_turn_lowmap joy_virtual_peg joy_wingmanwarrior_centerhack
syn keyword sourceVar           joy_wingmanwarrior_turnhack joy_xcontroller_cfg_loaded joy_xcontroller_found
syn keyword sourceVar           joy_yawsensitivity joy_yawsensitivity2 joy_yawsensitivity_default
syn keyword sourceVar           joy_yawthreshold joystick joystick_force_disabled joystick_force_disabled_set
syn keyword sourceVar           joystick_force_disabled_set_from_options jpeg_quality l4d1_survivor_give_item
syn keyword sourceVar           l4d_show_incapupdate l4d_show_weaponequip l4d_stats_nogameplaycheck
syn keyword sourceVar           l4d_stats_track ladder_autocenter ladder_console_controls ladder_horizon
syn keyword sourceVar           leaderboard_force_rank_show_interval loader_defer_non_critical_jobs
syn keyword sourceVar           loader_spew_info loader_spew_info_ex loader_throttle_io lobby_default_access
syn keyword sourceVar           lobby_voice_chat_enabled localplayer_visionflags locator_fade_time
syn keyword sourceVar           locator_lerp_rest locator_lerp_speed locator_lerp_time locator_pulse_time
syn keyword sourceVar           lockMoveControllerRet lod_TransitionDist log_verbose_enable
syn keyword sourceVar           log_verbose_interval lookspring lookstrafe lower_body lower_body_hulk_layers
syn keyword sourceVar           lservercfgfile m_customaccel m_customaccel_exponent m_customaccel_max
syn keyword sourceVar           m_customaccel_scale m_filter m_filter2 m_forward m_mouseaccel1 m_mouseaccel2
syn keyword sourceVar           m_mousespeed m_pitch m_pitch2 m_rawinput m_side m_yaw map_noareas
syn keyword sourceVar           mapcycledisabled mapcyclefile mapoverview_allow_client_draw
syn keyword sourceVar           mapoverview_allow_grid_usage mat_360_aa_override mat_aaquality
syn keyword sourceVar           mat_alphacoverage mat_antialias mat_autoexposure_max mat_autoexposure_min
syn keyword sourceVar           mat_bloom_scalefactor_scalar mat_bloomscale mat_bufferprimitives mat_bumpmap
syn keyword sourceVar           mat_clipz mat_colcorrection_disableentities mat_colcorrection_editor
syn keyword sourceVar           mat_color_projection mat_colorcorrection mat_compressedtextures
syn keyword sourceVar           mat_debug_postprocessing_effects mat_debugdepth mat_debugdepthmode
syn keyword sourceVar           mat_debugdepthval mat_debugdepthvalmax mat_depthfeather_enable mat_diffuse
syn keyword sourceVar           mat_disable_bloom mat_disable_d3d9ex mat_disable_fancy_blending
syn keyword sourceVar           mat_disable_lightwarp mat_disable_ps_patch mat_disablehwmorph mat_dof_enabled
syn keyword sourceVar           mat_dof_far_blur_depth mat_dof_far_blur_radius mat_dof_far_focus_depth
syn keyword sourceVar           mat_dof_max_blur_radius mat_dof_near_blur_depth mat_dof_near_blur_radius
syn keyword sourceVar           mat_dof_near_focus_depth mat_dof_override mat_dof_quality mat_drawTexture
syn keyword sourceVar           mat_drawTextureScale mat_drawTitleSafe mat_dump_rts mat_dxlevel mat_envmapsize
syn keyword sourceVar           mat_envmaptgasize mat_excludetextures mat_fastspecular mat_filterlightmaps
syn keyword sourceVar           mat_filtertextures mat_force_ps_patch mat_force_vertexfog mat_forceaniso
syn keyword sourceVar           mat_forcehardwaresync mat_forcemanagedtextureintohardware
syn keyword sourceVar           mat_framebuffercopyoverlaysize mat_grain_enable mat_grain_scale_override
syn keyword sourceVar           mat_hdr_level mat_hdr_manual_tonemap_rate mat_levelflush mat_lightmap_pfms
syn keyword sourceVar           mat_local_contrast_edge_scale_override mat_local_contrast_enable
syn keyword sourceVar           mat_local_contrast_midtone_mask_override mat_local_contrast_scale_override
syn keyword sourceVar           mat_local_contrast_vignette_end_override
syn keyword sourceVar           mat_local_contrast_vignette_start_override mat_managedtextures
syn keyword sourceVar           mat_max_worldmesh_vertices mat_maxframelatency mat_mipmaptextures
syn keyword sourceVar           mat_monitorgamma mat_monitorgamma_tv_enabled mat_monitorgamma_tv_exp
syn keyword sourceVar           mat_monitorgamma_tv_range_max mat_monitorgamma_tv_range_min
syn keyword sourceVar           mat_motion_blur_enabled mat_motion_blur_falling_intensity
syn keyword sourceVar           mat_motion_blur_falling_max mat_motion_blur_falling_min
syn keyword sourceVar           mat_motion_blur_forward_enabled mat_motion_blur_percent_of_screen_max
syn keyword sourceVar           mat_motion_blur_rotation_intensity mat_motion_blur_strength
syn keyword sourceVar           mat_non_hdr_bloom_scalefactor mat_parallaxmap mat_parallaxmapsamplesmax
syn keyword sourceVar           mat_parallaxmapsamplesmin mat_phong mat_picmip mat_postprocess_x
syn keyword sourceVar           mat_postprocess_y mat_postprocessing_combine mat_powersavingsmode
syn keyword sourceVar           mat_queue_mode mat_queue_priority mat_queue_report mat_reducefillrate
syn keyword sourceVar           mat_reduceparticles mat_report_queue_status mat_shadowstate mat_show_ab_hdr
syn keyword sourceVar           mat_show_ab_hdr_hudelement mat_show_histogram mat_showenvmapmask
syn keyword sourceVar           mat_showlightmappage mat_skybox_reflection_clip mat_skybox_water_reflection
syn keyword sourceVar           mat_software_aa_blur_one_pixel_lines mat_software_aa_debug
syn keyword sourceVar           mat_software_aa_edge_threshold mat_software_aa_quality mat_software_aa_strength
syn keyword sourceVar           mat_software_aa_strength_vgui mat_software_aa_tap_offset mat_softwarelighting
syn keyword sourceVar           mat_specular mat_spew_long_frames mat_spewalloc mat_supportflashlight
syn keyword sourceVar           mat_supports_d3d9ex mat_texture_limit mat_texture_list mat_texture_list_all
syn keyword sourceVar           mat_texture_list_all_frames mat_texture_list_content_path
syn keyword sourceVar           mat_texture_list_exclude_editing mat_texture_list_view
syn keyword sourceVar           mat_tonemapping_occlusion_use_stencil mat_treesway mat_trilinear
syn keyword sourceVar           mat_triplebuffered mat_use_compressed_hdr_textures mat_vignette_enable
syn keyword sourceVar           mat_vsync mat_wateroverlaysize matchmakingport mc_accel_band_size
syn keyword sourceVar           mc_dead_zone_radius mc_max_pitchrate mc_max_yawrate mem_dumpstats
syn keyword sourceVar           mem_force_flush mem_force_flush_section mem_level mem_max_heapsize
syn keyword sourceVar           mem_max_heapsize_dedicated mem_min_heapsize mem_periodicdumps
syn keyword sourceVar           mem_test_each_frame mem_test_every_n_seconds mem_test_quiet metamod_version
syn keyword sourceVar           metropolice_charge metropolice_chase_use_follow metropolice_move_and_melee
syn keyword sourceVar           miniprofiler_dump mm_basedir mm_csgo_community_search_players_min
syn keyword sourceVar           mm_datacenter_delay_mount_frames mm_datacenter_query_delay
syn keyword sourceVar           mm_datacenter_report_version mm_datacenter_retry_infochunks_attempts
syn keyword sourceVar           mm_datacenter_retry_interval mm_datacenter_update_interval mm_dedicated_allow
syn keyword sourceVar           mm_dedicated_fake mm_dedicated_force_servers mm_dedicated_ip
syn keyword sourceVar           mm_dedicated_min_request_time mm_dedicated_search_maxping
syn keyword sourceVar           mm_dedicated_search_maxresults mm_dedicated_timeout_request mm_dlcs_mask_extras
syn keyword sourceVar           mm_dlcs_mask_fake mm_events_listeners_validation mm_heartbeat_seconds
syn keyword sourceVar           mm_heartbeat_seconds_xlsp mm_heartbeat_timeout mm_heartbeat_timeout_legacy
syn keyword sourceVar           mm_ignored_sessions_forget_pass mm_ignored_sessions_forget_time
syn keyword sourceVar           mm_match_search_update_interval mm_matchmaking_dlcsquery mm_matchmaking_version
syn keyword sourceVar           mm_max_spectators mm_minplayers mm_player_search_count
syn keyword sourceVar           mm_player_search_lan_ping_duration mm_player_search_lan_ping_interval
syn keyword sourceVar           mm_player_search_update_interval mm_pluginsfile
syn keyword sourceVar           mm_server_search_inet_ping_interval mm_server_search_inet_ping_refresh
syn keyword sourceVar           mm_server_search_inet_ping_timeout mm_server_search_inet_ping_window
syn keyword sourceVar           mm_server_search_lan_ping_duration mm_server_search_lan_ping_interval
syn keyword sourceVar           mm_server_search_lan_ports mm_server_search_server_lifetime
syn keyword sourceVar           mm_server_search_update_interval mm_session_search_num_results
syn keyword sourceVar           mm_session_search_ping_buckets mm_session_search_ping_limit
syn keyword sourceVar           mm_session_search_qos_timeout mm_session_sys_delay_create
syn keyword sourceVar           mm_session_sys_timeout mm_teamsearch_errortime mm_teamsearch_nostart
syn keyword sourceVar           mm_tu_string mod_check_vcollide mod_dont_load_vertices mod_dynamicloadspew
syn keyword sourceVar           mod_dynamicunloadtex mod_dynamicunloadtime mod_forcedata mod_forcetouchdata
syn keyword sourceVar           mod_load_anims_async mod_load_fakestall mod_load_mesh_async mod_load_showstall
syn keyword sourceVar           mod_load_vcollide_async mod_lock_mdls_on_load mod_lock_meshes_on_load
syn keyword sourceVar           mod_test_mesh_not_available mod_test_not_available mod_test_verts_not_available
syn keyword sourceVar           mod_touchalldata mod_trace_load monk_headshot_freq morph_debug morph_path
syn keyword sourceVar           mortar_visualize motd_enabled motd_intros motdfile motdfile_text
syn keyword sourceVar           mp_afterroundmoney mp_allowNPCs mp_allowspectators mp_autocrosshair mp_autokick
syn keyword sourceVar           mp_autoteambalance mp_backup_restore_load_autopause mp_backup_round_auto
syn keyword sourceVar           mp_backup_round_file mp_backup_round_file_last mp_backup_round_file_pattern
syn keyword sourceVar           mp_blockstyle mp_bonusroundtime mp_buy_allow_grenades mp_buy_anywhere
syn keyword sourceVar           mp_buy_during_immunity mp_buytime mp_c4timer mp_capdeteriorate_time mp_capstyle
syn keyword sourceVar           mp_chattime mp_clan_ready_signal mp_clan_readyrestart
syn keyword sourceVar           mp_competitive_endofmatch_extra_time mp_ct_default_grenades mp_ct_default_melee
syn keyword sourceVar           mp_ct_default_primary mp_ct_default_secondary mp_death_drop_c4
syn keyword sourceVar           mp_death_drop_defuser mp_death_drop_grenade mp_death_drop_gun
syn keyword sourceVar           mp_deathcam_skippable mp_decals mp_default_team_winner_no_objective
syn keyword sourceVar           mp_defaultteam mp_defuser_allocation mp_disable_respawn_times
syn keyword sourceVar           mp_display_kill_assists mp_dm_bonus_length_max mp_dm_bonus_length_min
syn keyword sourceVar           mp_dm_bonus_percent mp_dm_time_between_bonus_max mp_dm_time_between_bonus_min
syn keyword sourceVar           mp_do_warmup_offine mp_do_warmup_period mp_drop_knife_enable
syn keyword sourceVar           mp_enableroundwaittime mp_endmatch_votenextleveltime mp_endmatch_votenextmap
syn keyword sourceVar           mp_endmatch_votenextmap_keepcurrent mp_facefronttime mp_fadetoblack
syn keyword sourceVar           mp_falldamage mp_feetyawrate mp_feetyawrate_max mp_flashlight mp_footsteps
syn keyword sourceVar           mp_force_assign_teams mp_force_pick_time mp_forceautoteam mp_forcecamera
syn keyword sourceVar           mp_forcerespawn mp_fraglimit mp_free_armor mp_freezetime mp_friendlyfire
syn keyword sourceVar           mp_gamemode mp_ggprogressive_random_weapon_kills_needed
syn keyword sourceVar           mp_ggprogressive_round_restart_delay mp_ggprogressive_use_random_weapons
syn keyword sourceVar           mp_ggtr_bomb_defuse_bonus mp_ggtr_bomb_detonation_bonus
syn keyword sourceVar           mp_ggtr_bomb_pts_for_flash mp_ggtr_bomb_pts_for_he mp_ggtr_bomb_pts_for_molotov
syn keyword sourceVar           mp_ggtr_bomb_pts_for_upgrade mp_ggtr_bomb_respawn_delay
syn keyword sourceVar           mp_ggtr_end_round_kill_bonus mp_ggtr_halftime_delay
syn keyword sourceVar           mp_ggtr_last_weapon_kill_ends_half mp_ggtr_num_rounds_autoprogress
syn keyword sourceVar           mp_give_player_c4 mp_guardian_bot_money_per_wave mp_guardian_player_dist_max
syn keyword sourceVar           mp_guardian_player_dist_min mp_guardian_special_kills_needed
syn keyword sourceVar           mp_guardian_special_weapon_needed mp_halftime mp_halftime_duration
syn keyword sourceVar           mp_halftime_pausetimer mp_highlander mp_holiday_nogifts mp_hostages_max
syn keyword sourceVar           mp_hostages_rescuetime mp_hostages_run_speed_modifier
syn keyword sourceVar           mp_hostages_spawn_farthest mp_hostages_spawn_force_positions
syn keyword sourceVar           mp_hostages_spawn_same_every_round mp_hostages_takedamage
syn keyword sourceVar           mp_humans_must_join_team mp_humanteam mp_idledealmethod mp_idlemaxtime
syn keyword sourceVar           mp_ignore_round_win_conditions mp_ik mp_join_grace_time mp_limitteams
syn keyword sourceVar           mp_logdetail mp_match_can_clinch mp_match_end_at_timelimit
syn keyword sourceVar           mp_match_end_changelevel mp_match_end_restart mp_match_restart_delay
syn keyword sourceVar           mp_maxmoney mp_maxrounds mp_molotovusedelay mp_overtime_enable
syn keyword sourceVar           mp_overtime_halftime_pausetimer mp_overtime_maxrounds mp_overtime_startmoney
syn keyword sourceVar           mp_playercashawards mp_playerid mp_playerid_delay mp_playerid_hold
syn keyword sourceVar           mp_radar_showall mp_randomspawn mp_randomspawn_in_bombsite mp_randomspawn_los
syn keyword sourceVar           mp_respawn_immunitytime mp_respawn_on_death_ct mp_respawn_on_death_t
syn keyword sourceVar           mp_respawnwavetime mp_respawnwavetime_ct mp_respawnwavetime_t mp_restartgame
syn keyword sourceVar           mp_restartgame_immediate mp_restartround mp_round_restart_delay mp_roundlimit
syn keyword sourceVar           mp_roundtime mp_roundtime_defuse mp_roundtime_hostage mp_scrambleteams_auto
syn keyword sourceVar           mp_scrambleteams_auto_windifference mp_show_voice_icons mp_slammoveyaw
syn keyword sourceVar           mp_solid_teammates mp_spawnprotectiontime mp_spec_swapplayersides
syn keyword sourceVar           mp_spectators_max mp_stalemate_at_timelimit mp_stalemate_enable
syn keyword sourceVar           mp_stalemate_meleeonly mp_stalemate_timelimit mp_startmoney
syn keyword sourceVar           mp_t_default_grenades mp_t_default_melee mp_t_default_primary
syn keyword sourceVar           mp_t_default_secondary mp_td_dmgtokick mp_td_dmgtowarn mp_td_spawndmgthreshold
syn keyword sourceVar           mp_teamcashawards mp_teamflag_1 mp_teamflag_2 mp_teamlist mp_teamlogo_1
syn keyword sourceVar           mp_teamlogo_2 mp_teammatchstat_1 mp_teammatchstat_2 mp_teammatchstat_cycletime
syn keyword sourceVar           mp_teammatchstat_holdtime mp_teammatchstat_txt mp_teammates_are_enemies
syn keyword sourceVar           mp_teamname_1 mp_teamname_2 mp_teamoverride mp_teamplay mp_teamprediction_pct
syn keyword sourceVar           mp_teamprediction_txt mp_teams_unbalance_limit mp_time_between_capscoring
syn keyword sourceVar           mp_timelimit mp_tkpunish mp_tournament mp_tournament_allow_non_admin_restart
syn keyword sourceVar           mp_tournament_blueteamname mp_tournament_redteamname mp_tournament_stopwatch
syn keyword sourceVar           mp_tournament_whitelist mp_use_respawn_waves mp_usehwmmodels mp_usehwmvcds
syn keyword sourceVar           mp_verbose_changelevel_spew mp_waitingforplayers_cancel
syn keyword sourceVar           mp_waitingforplayers_restart mp_waitingforplayers_time mp_warmup_pausetimer
syn keyword sourceVar           mp_warmuptime mp_warmuptime_all_players_connected mp_weapon_ak47_price
syn keyword sourceVar           mp_weapon_aug_price mp_weapon_awp_price mp_weapon_deagle_price
syn keyword sourceVar           mp_weapon_elite_price mp_weapon_famas_price mp_weapon_fiveseven_price
syn keyword sourceVar           mp_weapon_g3sg1_price mp_weapon_galil_price mp_weapon_glock_price
syn keyword sourceVar           mp_weapon_m249_price mp_weapon_m3_price mp_weapon_m4a1_price
syn keyword sourceVar           mp_weapon_mac10_price mp_weapon_mp5navy_price mp_weapon_p228_price
syn keyword sourceVar           mp_weapon_p90_price mp_weapon_scout_price mp_weapon_sg550_price
syn keyword sourceVar           mp_weapon_sg552_price mp_weapon_tmp_price mp_weapon_ump45_price
syn keyword sourceVar           mp_weapon_usp_price mp_weapon_xm1014_price mp_weapons_allow_map_placed
syn keyword sourceVar           mp_weapons_allow_randomize mp_weapons_allow_zeus mp_weapons_glow_on_ground
syn keyword sourceVar           mp_weaponstay mp_win_panel_display_time mp_windifference mp_windifference_min
syn keyword sourceVar           mp_winlimit music_bank_max_duration music_bank_min_duration
syn keyword sourceVar           music_master_latency_report music_master_spew muzzleflash_light name name2
syn keyword sourceVar           nav_drag_selection_volume_zmax_offset nav_drag_selection_volume_zmin_offset
syn keyword sourceVar           nav_save_history nb_avoid nb_avoid_interval nb_debug_history
syn keyword sourceVar           nb_player_move_direct nb_shadow_blobby_dist nb_shadow_cull_dist nb_shadow_dist
syn keyword sourceVar           nb_stuck_dump_threshold net_allow_multicast net_allow_syslink net_chokeloop
syn keyword sourceVar           net_compresspackets net_compresspackets_minsize net_compressvoice
syn keyword sourceVar           net_drawslider net_droponsendoverflow net_dumptest net_graph net_graphheight
syn keyword sourceVar           net_graphholdsvframerate net_graphmsecs net_graphpos net_graphproportionalfont
syn keyword sourceVar           net_graphshowinterp net_graphshowlatency net_graphshowsvframerate
syn keyword sourceVar           net_graphsolid net_graphtext net_maxcleartime net_maxfilesize net_maxfragments
syn keyword sourceVar           net_maxpacketdrop net_maxroutable net_megasnapshot net_minroutable net_paranoid
syn keyword sourceVar           net_public_adr net_queue_trace net_queued_packet_thread net_scale net_showdrop
syn keyword sourceVar           net_showeventlisteners net_showevents net_showfragments net_showmsg
syn keyword sourceVar           net_showpeaks net_showsplits net_showtcp net_showudp net_showudp_oob
syn keyword sourceVar           net_showudp_remoteonly net_showudp_wire net_showusercmd net_splitpacket_maxrate
syn keyword sourceVar           net_splitrate net_steamcnx_allowrelay net_steamcnx_debug net_steamcnx_enabled
syn keyword sourceVar           net_threaded_socket_burst_cap net_threaded_socket_recovery_rate
syn keyword sourceVar           net_threaded_socket_recovery_time net_udp_rcvbuf net_usesocketsforloopback
syn keyword sourceVar           netgraph_pos next_weapon_timer nextlevel nextmap_print_enabled
syn keyword sourceVar           npc_barnacle_swallow npc_blob_idle_speed_factor npc_blob_show_centroid
syn keyword sourceVar           npc_blob_sin_amplitude npc_blob_straggler_dist npc_blob_think_interval
syn keyword sourceVar           npc_blob_use_model npc_blob_use_orientation npc_blob_use_threading
syn keyword sourceVar           npc_citizen_auto_player_squad npc_citizen_auto_player_squad_allow_use
syn keyword sourceVar           npc_citizen_dont_precache_all npc_citizen_explosive_resist npc_citizen_insignia
syn keyword sourceVar           npc_citizen_medic_emit_sound npc_citizen_squad_marker npc_create_equipment
syn keyword sourceVar           npc_go_do_run npc_height_adjust npc_sentences npc_strider_height_adj
syn keyword sourceVar           npc_strider_shake_ropes_magnitude npc_strider_shake_ropes_radius npc_vphysics
syn keyword sourceVar           obj_capture_damage obj_sapper_amount obj_show_damage object_deterioration_time
syn keyword sourceVar           occlusion_test_camera_margins occlusion_test_jump_margin occlusion_test_margins
syn keyword sourceVar           occlusion_test_shadow_length occlusion_test_shadow_max_distance
syn keyword sourceVar           old_radiusdamage opt_EnumerateLeavesFastAlgorithm option_duck_method
syn keyword sourceVar           option_duck_method_default option_speed_method overview_alpha overview_health
syn keyword sourceVar           overview_locked overview_names overview_tracks particle_sim_alt_cores password
syn keyword sourceVar           perf_fire_bullet_firstpredictedonly perf_fire_bullet_single peril_notice_timer
syn keyword sourceVar           phonemedelay phonemefilter phonemesnap phys2_air_density phys2_angular_damping
syn keyword sourceVar           phys2_angular_damping_in_water phys2_artificial_acceleration phys2_async
syn keyword sourceVar           phys2_async_server phys2_buoyancy_damping phys2_buoyancy_factor
syn keyword sourceVar           phys2_buoyancy_version phys2_buoyant_damping_multiplier
syn keyword sourceVar           phys2_buoyant_sleep_energy_threshold phys2_ccd_epsilon phys2_clamp_velocity
syn keyword sourceVar           phys2_cmodels phys2_contact_report_threshold phys2_continuous_cd
syn keyword sourceVar           phys2_debug_draw phys2_debug_draw_scale phys2_debug_dump_entities
syn keyword sourceVar           phys2_debug_traceray phys2_debug_wakeup phys2_dedicated_thread_pool
syn keyword sourceVar           phys2_default_friction phys2_default_wakeup_counter phys2_dump_exclude_list
syn keyword sourceVar           phys2_dump_ray_counts phys2_enable phys2_enable_breakable_constraints
syn keyword sourceVar           phys2_enable_buoyancy phys2_enable_deferred_calls phys2_enable_drives
syn keyword sourceVar           phys2_enable_energy_sleep_test phys2_enable_sap_multi
syn keyword sourceVar           phys2_enable_variable_timestep phys2_expensive_sync_warning
syn keyword sourceVar           phys2_force_apply_magnitude phys2_global_ccd_motion_threshold_multiplier
syn keyword sourceVar           phys2_global_skin_width_multiplier phys2_hack_ignore_level_collision
syn keyword sourceVar           phys2_hack_ignore_models phys2_hack_ignore_rays phys2_hack_print_rays
syn keyword sourceVar           phys2_hack_replace_bboxes phys2_level_prefer_polytopes phys2_linear_damping
syn keyword sourceVar           phys2_linear_damping_in_water phys2_mass_exponent phys2_max_angular_velocity
syn keyword sourceVar           phys2_max_substeps phys2_max_timestep phys2_merge_static_props
syn keyword sourceVar           phys2_num_threads phys2_ragdoll_ccd phys2_ragdoll_clamp_angular_velocity
syn keyword sourceVar           phys2_ragdoll_clamp_linear_velocity phys2_ragdoll_convert_to_capsules
syn keyword sourceVar           phys2_ragdoll_create_constraints phys2_ragdoll_default_friction
syn keyword sourceVar           phys2_ragdoll_drive_damping phys2_ragdoll_drive_spring
syn keyword sourceVar           phys2_ragdoll_force_magnitude phys2_ragdoll_iterations
syn keyword sourceVar           phys2_ragdoll_joint_damping phys2_ragdoll_joint_or phys2_ragdoll_log
syn keyword sourceVar           phys2_ragdoll_projection_angle phys2_ragdoll_projection_distance
syn keyword sourceVar           phys2_ragdoll_projection_mode phys2_ragdoll_self_collision
syn keyword sourceVar           phys2_ragdoll_torque_magnitude phys2_ragdoll_use_boxes
syn keyword sourceVar           phys2_ragdoll_use_d6_joints phys2_ragdoll_velocity phys2_report_asserts
syn keyword sourceVar           phys2_report_errors phys2_report_messages phys2_report_warnings
syn keyword sourceVar           phys2_res_mgr_break phys2_scheduler_enable phys2_scheduler_stats
syn keyword sourceVar           phys2_scheduler_yield phys2_shoot_speed phys2_sim_hw
syn keyword sourceVar           phys2_sim_thread_mask_client phys2_sim_thread_mask_server
syn keyword sourceVar           phys2_sim_thread_stack phys2_sleep_angular_velocity phys2_sleep_damping
syn keyword sourceVar           phys2_sleep_energy_threshold phys2_sleep_linear_velocity
syn keyword sourceVar           phys2_solver_batch_size phys2_support_level phys2_thread_mask_client
syn keyword sourceVar           phys2_thread_mask_server phys2_thread_stack phys2_version phys2_visualize
syn keyword sourceVar           phys2_water_density_multiplier phys2_water_single_actor
syn keyword sourceVar           phys2_water_wakeup_counter phys2_xbox_scheduler
syn keyword sourceVar           phys2_xbox_scheduler_thread_mask phys2_xbox_sim_thread_priority
syn keyword sourceVar           phys2ui_mouse_wheel_scale phys_debug_check_contacts
syn keyword sourceVar           phys_enable_experimental_optimizations phys_enable_query_cache
syn keyword sourceVar           phys_enable_simd_optimizations phys_impactforcescale
syn keyword sourceVar           phys_penetration_error_time phys_pushscale phys_ragdoll_force_magnitude
syn keyword sourceVar           phys_shoot_torque phys_speeds phys_stressbodyweights phys_timescale
syn keyword sourceVar           phys_upimpactforcescale physcannon_ball_cone physcannon_chargetime
syn keyword sourceVar           physcannon_cone physcannon_dmg_glass physcannon_maxforce physcannon_maxmass
syn keyword sourceVar           physcannon_mega_pullforce physcannon_mega_tracelength physcannon_minforce
syn keyword sourceVar           physcannon_pullforce physcannon_punt_cone physcannon_right_turrets
syn keyword sourceVar           physcannon_tracelength physics2_polytope_radius_factor
syn keyword sourceVar           physicsshadowupdate_render physx_subdir ping_max_green ping_max_red
syn keyword sourceVar           ping_max_yellow pipe_bomb_beep_interval_delta pipe_bomb_beep_min_interval
syn keyword sourceVar           pipe_bomb_initial_beep_interval pipe_bomb_shake_amplitude
syn keyword sourceVar           pipe_bomb_shake_radius pipe_bomb_timer_duration pipeline_static_props
syn keyword sourceVar           pistol_use_new_accuracy play_distance play_with_friends_enabled
syn keyword sourceVar           player_botdifflast_s player_competitive_maplist_8_5_1_FE007AD3
syn keyword sourceVar           player_gamemodelast_m player_gamemodelast_s player_gametypelast_m
syn keyword sourceVar           player_gametypelast_s player_last_leaderboards_filter
syn keyword sourceVar           player_last_leaderboards_mode player_last_leaderboards_panel
syn keyword sourceVar           player_last_medalstats_category player_last_medalstats_panel
syn keyword sourceVar           player_limit_jump_speed player_maplast_m player_maplast_s
syn keyword sourceVar           player_medalstats_most_recent_time player_medalstats_recent_range
syn keyword sourceVar           player_nevershow_communityservermessage player_old_armor
syn keyword sourceVar           player_showpredictedposition player_showpredictedposition_timestep
syn keyword sourceVar           player_squad_autosummon_debug player_squad_autosummon_move_tolerance
syn keyword sourceVar           player_squad_autosummon_player_tolerance player_squad_autosummon_time
syn keyword sourceVar           player_squad_autosummon_time_after_combat player_squad_double_tap_time
syn keyword sourceVar           player_squad_transient_commands player_teamplayedlast player_throwforce
syn keyword sourceVar           prop_active_gib_limit prop_active_gib_max_fade_time prop_use
syn keyword sourceVar           props_break_max_pieces props_break_max_pieces_perframe publish_file_last_dir
syn keyword sourceVar           punch_angle_decay_rate pvs_min_player_distance pyro_dof pyro_max_intensity
syn keyword sourceVar           pyro_max_rate pyro_max_side_length pyro_max_side_width pyro_min_intensity
syn keyword sourceVar           pyro_min_rate pyro_min_side_length pyro_min_side_width pyro_vignette
syn keyword sourceVar           pyro_vignette_distortion r_3dsky r_DispDrawAxes r_DrawDetailProps
syn keyword sourceVar           r_DrawSpecificStaticProp r_FlashlightDetailProps r_ForceRestore
syn keyword sourceVar           r_ForceWaterLeaf r_PhysPropStaticLighting r_RainAllowInSplitScreen
syn keyword sourceVar           r_RainParticleDensity r_ShowViewerArea r_WaterDrawReflection
syn keyword sourceVar           r_WaterDrawRefraction r_ambientboost r_ambientfactor r_ambientmin r_aspectratio
syn keyword sourceVar           r_bloomtintb r_bloomtintexponent r_bloomtintexponent_ghost r_bloomtintg
syn keyword sourceVar           r_bloomtintr r_debug_sequencesets r_decal_cover_count r_decal_cullsize
syn keyword sourceVar           r_decal_overlap_area r_decal_overlap_count r_decals r_decalstaticprops
syn keyword sourceVar           r_dopixelvisibility r_draw_flashlight_3rd_person r_draw_lasersight_1st_person
syn keyword sourceVar           r_draw_lasersight_3rd_person r_drawbatchdecals r_drawdetailprops r_drawflecks
syn keyword sourceVar           r_drawmodeldecals r_drawmodelstatsoverlaymax r_drawmodelstatsoverlaymin
syn keyword sourceVar           r_drawopaquestaticpropslast r_drawpixelvisibility r_drawtracers_firstperson
syn keyword sourceVar           r_drawunderwaterfogblocker r_drawviewmodel r_dynamic r_emulategl r_entityclips
syn keyword sourceVar           r_eyeglintlodpixels r_eyegloss r_eyemove r_eyes r_eyeshift_x r_eyeshift_y
syn keyword sourceVar           r_eyeshift_z r_eyesize r_fade360style r_fastzreject r_fastzrejectdisp
syn keyword sourceVar           r_flashlight_3rd_person_range r_flashlight_topdown r_flashlight_version2
syn keyword sourceVar           r_flashlightculldepth r_flashlightdepthres r_flashlightdepthtexture
syn keyword sourceVar           r_flashlightdrawdepth r_flashlightdrawfrustum r_flashlightdrawfrustumbbox
syn keyword sourceVar           r_flashlightdrawsweptbbox r_flashlightinfectedfar r_flashlightinfectedfov
syn keyword sourceVar           r_flashlightinfectedlinear r_flashlightinfectedshadows r_flashlightmodels
syn keyword sourceVar           r_flashlightmuzzleflash r_flashlightnodraw r_flashlightrender
syn keyword sourceVar           r_flashlightrendermodels r_flashlightrenderworld r_flashlightscissor
syn keyword sourceVar           r_flashlightupdatedepth r_flashlightvolumetrics
syn keyword sourceVar           r_flashlightvolumetricsdrawnatend r_flex r_frustumcullworld r_glint_alwaysdraw
syn keyword sourceVar           r_glint_procedural r_hunkalloclightmaps r_impactparticles r_jiggle_bones
syn keyword sourceVar           r_lightaverage r_lightcache_zbuffercache r_lod r_maxdlights r_maxmodeldecal
syn keyword sourceVar           r_maxnewsamples r_maxsampledist r_minlightmap r_minnewsamples r_norefresh
syn keyword sourceVar           r_occludeemaxarea r_occluderminarea r_occludermincount r_occlusion
syn keyword sourceVar           r_overlayfadeenable r_overlayfademax r_overlayfademin r_overlaywireframe
syn keyword sourceVar           r_particle_sim_spike_threshold_ms r_particle_timescale r_pix_recordframes
syn keyword sourceVar           r_pix_start r_pixelfog r_pixelvisibility_partial r_pixelvisibility_spew
syn keyword sourceVar           r_portalscloseall r_proplightingfromdisk r_propsmaxdist r_queued_decals
syn keyword sourceVar           r_queued_post_processing r_queued_ropes r_renderoverlayfragment r_rootlod
syn keyword sourceVar           r_rope_holiday_light_scale r_ropes_holiday_lights_allowed r_ropetranslucent
syn keyword sourceVar           r_screenfademaxsize r_screenfademinsize r_sequence_debug r_shader_srgb
syn keyword sourceVar           r_shadow_half_update_rate r_shadow_lightpos_lerptime r_shadow_shortenfactor
syn keyword sourceVar           r_shadowfromworldlights r_shadowlod r_shadowlodbias r_shadowmaxrendered
syn keyword sourceVar           r_shadowrendertotexture r_shadows r_shadows_on_renderables_enable r_snapportal
syn keyword sourceVar           r_spewleaf r_spray_lifetime r_sse_s r_staticlight_streams r_staticprop_lod
syn keyword sourceVar           r_staticpropinfo r_teeth r_threaded_client_shadow_manager r_threaded_particles
syn keyword sourceVar           r_threaded_renderables r_threaded_shadow_clip r_threadeddetailprops
syn keyword sourceVar           r_unlimitedrefract r_unloadlightmaps r_visambient r_visualizeproplightcaching
syn keyword sourceVar           r_waterforceexpensive r_waterforcereflectentities r_worldlightmin r_worldlights
syn keyword sourceVar           r_worldlistcache ragdoll_collide ragdoll_door_uncollide_time
syn keyword sourceVar           ragdoll_force_to_sleep_time ragdoll_self_collision ragdoll_sleepaftertime
syn keyword sourceVar           ragdoll_slowdown ragdoll_slowdown_time rate rcon_address rcon_password
syn keyword sourceVar           reload_materials replay_block_dump_interval replay_buffersize
syn keyword sourceVar           replay_cache_client_ragdolls replay_data_lifespan
syn keyword sourceVar           replay_deathcammaxverticaloffset replay_debug replay_dodiskcleanup
syn keyword sourceVar           replay_dofileserver_cleanup_on_start replay_editor_camera_length
syn keyword sourceVar           replay_editor_fov_mousewheel_invert replay_editor_fov_mousewheel_multiplier
syn keyword sourceVar           replay_enable replay_enableeventbasedscreenshots replay_enablerenderpreview
syn keyword sourceVar           replay_fileserver_autocleanup replay_fileserver_host
syn keyword sourceVar           replay_fileserver_offload_aborttime replay_fileserver_offload_enable
syn keyword sourceVar           replay_fileserver_offload_hostname replay_fileserver_offload_login
syn keyword sourceVar           replay_fileserver_offload_maxuploads replay_fileserver_offload_password
syn keyword sourceVar           replay_fileserver_offload_port replay_fileserver_offload_protocol
syn keyword sourceVar           replay_fileserver_offload_proxy_host replay_fileserver_offload_proxy_port
syn keyword sourceVar           replay_fileserver_offload_remotepath replay_fileserver_offload_useproxy
syn keyword sourceVar           replay_fileserver_path replay_fileserver_port replay_fileserver_protocol
syn keyword sourceVar           replay_flushinterval replay_forcereconstruct replay_ignorereplayticks
syn keyword sourceVar           replay_local_fileserver_path replay_max_publish_threads
syn keyword sourceVar           replay_maxconcurrentdownloads replay_maxscreenshotsperreplay
syn keyword sourceVar           replay_mintimebetweenscreenshots replay_movie_export_last_dir
syn keyword sourceVar           replay_movie_reveal_warning replay_msgduration_connectrecording
syn keyword sourceVar           replay_msgduration_error replay_msgduration_misc
syn keyword sourceVar           replay_msgduration_replaysavailable replay_msgduration_startrecord
syn keyword sourceVar           replay_msgduration_stoprecord replay_name replay_perftip_count_enter
syn keyword sourceVar           replay_perftip_count_exit replay_perftip_count_freecam_enter
syn keyword sourceVar           replay_perftip_count_freecam_exit replay_perftip_count_freecam_exit2
syn keyword sourceVar           replay_playerdeathscreenshotdelay replay_postdeathrecordtime
syn keyword sourceVar           replay_postwinreminderduration replay_publish_simulate_delay_ftp
syn keyword sourceVar           replay_publish_simulate_delay_local_http replay_publish_simulate_rename_fail
syn keyword sourceVar           replay_quitmsg_dontaskagain replay_ragdoll_blending replay_ragdoll_dbg
syn keyword sourceVar           replay_ragdoll_tickoffset replay_record_voice replay_recording
syn keyword sourceVar           replay_renderqueue_first_add replay_rendersetting_encodingquality
syn keyword sourceVar           replay_rendersetting_exportraw replay_rendersetting_motionblur_can_toggle
syn keyword sourceVar           replay_rendersetting_motionblurenabled replay_rendersetting_motionblurquality
syn keyword sourceVar           replay_rendersetting_quitwhendone replay_rendersetting_renderglow
syn keyword sourceVar           replay_replayeditor_rewindmsgcounter replay_replaywelcomedlgcount
syn keyword sourceVar           replay_screenshotkilldelay replay_screenshotresolution
syn keyword sourceVar           replay_screenshotsentrykilldelay replay_sentrycammaxverticaloffset
syn keyword sourceVar           replay_sentrycamoffset_frontback replay_sentrycamoffset_leftright
syn keyword sourceVar           replay_sentrycamoffset_updown replay_sessioninfo_updatefrequency
syn keyword sourceVar           replay_voice_during_playback res_restrict_access room_type rope_averagelight
syn keyword sourceVar           rope_collide rope_rendersolid rope_shake rope_smooth rope_smooth_enlarge
syn keyword sourceVar           rope_smooth_maxalpha rope_smooth_maxalphawidth rope_smooth_minalpha
syn keyword sourceVar           rope_smooth_minwidth rope_solid_maxalpha rope_solid_maxwidth
syn keyword sourceVar           rope_solid_minalpha rope_solid_minwidth rope_subdiv rope_wind_dist
syn keyword sourceVar           rpg_missle_use_custom_detonators rpt_vprof_time rr_debug_qa rr_debugplayer
syn keyword sourceVar           rr_debugresponseconcept rr_debugresponses rr_debugrule rr_dumpresponses
syn keyword sourceVar           safezonex safezoney save_async save_asyncdelay save_console save_disable
syn keyword sourceVar           save_history_count save_huddelayframes save_in_memory save_noxsave
syn keyword sourceVar           save_screenshot save_spew sb_allow_leading sb_close_browser_on_connect
syn keyword sourceVar           sb_dontshow_maxplayer_warning sb_firstopentime sb_melee_approach_victim
syn keyword sourceVar           sb_mod_suggested_maxplayers sb_numtimesopened sb_perf_collect sb_perf_dump_low
syn keyword sourceVar           sb_perf_dump_low_dist sb_quick_list_bit_field sb_reachable_cache_paranoia
syn keyword sourceVar           sb_showblacklists sb_skill sb_temp_health_consider_factor sb_toughness_buffer
syn keyword sourceVar           sb_transition scavenge_scoreboard_round_sound_effect_interval
syn keyword sourceVar           scavenge_scoreboard_round_time_effect_delay
syn keyword sourceVar           scavenge_scoreboard_round_time_effect_duration
syn keyword sourceVar           scavenge_scoreboard_survivor_score_effect_delay scene_async_prefetch_spew
syn keyword sourceVar           scene_clamplookat scene_clientflex scene_clientplayback scene_flatturn
syn keyword sourceVar           scene_forcecombined scene_maxcaptionradius scene_print scene_showfaceto
syn keyword sourceVar           scene_showlook scene_showmoveto scene_showunlock scene_vcdautosave
syn keyword sourceVar           scr_centertime script_attach_debugger_at_startup
syn keyword sourceVar           script_break_in_native_debugger_on_error sdl_speaker_channels sensitivity
syn keyword sourceVar           servercfgfile sf_ui_tint sfm_record_hz shake_show shotgun_reload_cancel_delay
syn keyword sourceVar           showbudget_texture_global_sum showhitlocation showparticlecounts showsniperdist
syn keyword sourceVar           showsniperlines sixense_aim_1to1_heading_multiplier
syn keyword sourceVar           sixense_aim_1to1_pitch_multiplier sixense_aim_1to1_ratchet_vertical
syn keyword sourceVar           sixense_aim_freeaim_accel_band_exponent sixense_aim_freeaim_accel_band_size
syn keyword sourceVar           sixense_aim_freeaim_auto_level_rate sixense_aim_freeaim_dead_zone_radius
syn keyword sourceVar           sixense_aim_freeaim_heading_multiplier sixense_aim_freeaim_max_speed
syn keyword sourceVar           sixense_aim_freeaim_pitch_multiplier sixense_aim_freeaim_switch_blend_time_exit
syn keyword sourceVar           sixense_aim_scope_heading_multiplier sixense_aim_scope_pitch_multiplier
syn keyword sourceVar           sixense_always_draw_crosshair sixense_base_offset_x sixense_base_offset_y
syn keyword sourceVar           sixense_base_offset_z sixense_controller_angle_mode
syn keyword sourceVar           sixense_crosshair_horiz_multiplier sixense_crosshair_vert_multiplier
syn keyword sourceVar           sixense_crouch_sensitivity sixense_enabled sixense_exit_metroid_blend
syn keyword sourceVar           sixense_exit_one_to_one_dot sixense_features_enabled
syn keyword sourceVar           sixense_feet_angles_offset_stick_spin_exponent
syn keyword sourceVar           sixense_feet_angles_offset_stick_spin_horiz_multiplier
syn keyword sourceVar           sixense_feet_angles_offset_stick_spin_invert_pitch
syn keyword sourceVar           sixense_feet_angles_offset_stick_spin_vert_multiplier sixense_filter_level
syn keyword sourceVar           sixense_jump_sensitivity sixense_left_handed sixense_max_charge_spin
syn keyword sourceVar           sixense_melee_pitch_blend_val sixense_mode sixense_mouse_enabled
syn keyword sourceVar           sixense_mouse_sensitivity sixense_point_gesture_angle_threshold
syn keyword sourceVar           sixense_reload_sensitivity sixense_roll_correct_blend sixense_sensitivity_level
syn keyword sourceVar           sixense_spring_view_enabled sixense_spring_view_max_angle
syn keyword sourceVar           sixense_spring_view_max_spring sixense_spring_view_min_angle
syn keyword sourceVar           sixense_spring_view_min_spring sixense_tilt_gesture_angle_threshold
syn keyword sourceVar           sixense_trigger_threshold sixense_walking_dead_zone_percent
syn keyword sourceVar           sixense_walking_exponent sixense_weapon_select_sensitivity
syn keyword sourceVar           sixense_zoom_momentary_time sk_airboat_drain_rate sk_airboat_max_ammo
syn keyword sourceVar           sk_airboat_recharge_rate sk_allow_autoaim sk_ally_regen_time sk_ammo_qty_scale1
syn keyword sourceVar           sk_ammo_qty_scale2 sk_ammo_qty_scale3 sk_antlion_air_attack_dmg
syn keyword sourceVar           sk_antlion_health sk_antlion_jump_damage sk_antlion_swipe_damage
syn keyword sourceVar           sk_antlionguard_dmg_charge sk_antlionguard_dmg_shove sk_antlionguard_health
syn keyword sourceVar           sk_apc_health sk_apc_missile_damage sk_auto_reload_time sk_autoaim_mode
syn keyword sourceVar           sk_autoaim_scale1 sk_autoaim_scale2 sk_barnacle_health sk_barney_health
syn keyword sourceVar           sk_battery sk_bullseye_health sk_citizen_giveammo_player_delay
syn keyword sourceVar           sk_citizen_heal_ally sk_citizen_heal_ally_delay sk_citizen_heal_ally_min_pct
syn keyword sourceVar           sk_citizen_heal_player sk_citizen_heal_player_delay
syn keyword sourceVar           sk_citizen_heal_player_min_forced sk_citizen_heal_player_min_pct
syn keyword sourceVar           sk_citizen_health sk_citizen_player_stare_dist sk_citizen_player_stare_time
syn keyword sourceVar           sk_citizen_stare_heal_time sk_combine_ball_search_radius
syn keyword sourceVar           sk_combine_guard_health sk_combine_guard_kick sk_combine_s_health
syn keyword sourceVar           sk_combine_s_kick sk_combineball_guidefactor sk_combineball_seek_angle
syn keyword sourceVar           sk_combineball_seek_kill sk_crow_health sk_crow_melee_dmg sk_crowbar_lead_time
syn keyword sourceVar           sk_dmg_homer_grenade sk_dmg_inflict_scale1 sk_dmg_inflict_scale2
syn keyword sourceVar           sk_dmg_inflict_scale3 sk_dmg_pathfollower_grenade sk_dmg_sniper_penetrate_npc
syn keyword sourceVar           sk_dmg_sniper_penetrate_plr sk_dmg_take_scale1 sk_dmg_take_scale2
syn keyword sourceVar           sk_dmg_take_scale3 sk_dropship_container_health sk_dynamic_resupply_modifier
syn keyword sourceVar           sk_env_headcrabcanister_shake_amplitude sk_env_headcrabcanister_shake_radius
syn keyword sourceVar           sk_env_headcrabcanister_shake_radius_vehicle sk_fraggrenade_radius
syn keyword sourceVar           sk_gunship_burst_dist sk_gunship_burst_min sk_gunship_burst_size
syn keyword sourceVar           sk_gunship_health_increments sk_headcrab_fast_health sk_headcrab_health
syn keyword sourceVar           sk_headcrab_melee_dmg sk_headcrab_poison_health sk_headcrab_poison_npc_damage
syn keyword sourceVar           sk_healthcharger sk_healthkit sk_healthvial sk_helicopter_burstcount
syn keyword sourceVar           sk_helicopter_drone_speed sk_helicopter_firingcone
syn keyword sourceVar           sk_helicopter_grenade_puntscale sk_helicopter_grenadedamage
syn keyword sourceVar           sk_helicopter_grenadeforce sk_helicopter_grenaderadius sk_helicopter_health
syn keyword sourceVar           sk_helicopter_num_bombs1 sk_helicopter_num_bombs2 sk_helicopter_num_bombs3
syn keyword sourceVar           sk_helicopter_roundsperburst sk_homer_grenade_radius sk_ichthyosaur_health
syn keyword sourceVar           sk_ichthyosaur_melee_dmg sk_jeep_gauss_damage sk_manhack_health
syn keyword sourceVar           sk_manhack_melee_dmg sk_manhack_v2 sk_max_357 sk_max_alyxgun sk_max_ar2
syn keyword sourceVar           sk_max_ar2_altfire sk_max_buckshot sk_max_crossbow sk_max_gauss_round
syn keyword sourceVar           sk_max_grenade sk_max_pistol sk_max_rpg_round sk_max_smg1 sk_max_smg1_grenade
syn keyword sourceVar           sk_max_sniper_round sk_metropolice_health sk_metropolice_simple_health
syn keyword sourceVar           sk_metropolice_stitch_along_hitcount sk_metropolice_stitch_at_hitcount
syn keyword sourceVar           sk_metropolice_stitch_behind_hitcount sk_metropolice_stitch_distance
syn keyword sourceVar           sk_metropolice_stitch_reaction sk_metropolice_stitch_tight_hitcount sk_npc_arm
syn keyword sourceVar           sk_npc_chest sk_npc_dmg_357 sk_npc_dmg_airboat sk_npc_dmg_alyxgun
syn keyword sourceVar           sk_npc_dmg_ar2 sk_npc_dmg_buckshot sk_npc_dmg_combineball sk_npc_dmg_crossbow
syn keyword sourceVar           sk_npc_dmg_crowbar sk_npc_dmg_dropship sk_npc_dmg_fraggrenade
syn keyword sourceVar           sk_npc_dmg_grenade sk_npc_dmg_gunship sk_npc_dmg_gunship_to_plr
syn keyword sourceVar           sk_npc_dmg_helicopter sk_npc_dmg_helicopter_to_plr sk_npc_dmg_pistol
syn keyword sourceVar           sk_npc_dmg_rpg_round sk_npc_dmg_smg1 sk_npc_dmg_smg1_grenade
syn keyword sourceVar           sk_npc_dmg_sniper_round sk_npc_dmg_stunstick sk_npc_head sk_npc_leg
syn keyword sourceVar           sk_npc_stomach sk_pathfollower_grenade_radius sk_player_arm sk_player_chest
syn keyword sourceVar           sk_player_head sk_player_leg sk_player_stomach sk_plr_dmg_357
syn keyword sourceVar           sk_plr_dmg_airboat sk_plr_dmg_alyxgun sk_plr_dmg_ar2 sk_plr_dmg_buckshot
syn keyword sourceVar           sk_plr_dmg_crossbow sk_plr_dmg_crowbar sk_plr_dmg_fraggrenade
syn keyword sourceVar           sk_plr_dmg_grenade sk_plr_dmg_pistol sk_plr_dmg_rpg_round sk_plr_dmg_smg1
syn keyword sourceVar           sk_plr_dmg_smg1_grenade sk_plr_dmg_sniper_round sk_plr_dmg_stunstick
syn keyword sourceVar           sk_plr_grenade_drop_time sk_plr_health_drop_time sk_plr_num_shotgun_pellets
syn keyword sourceVar           sk_rollermine_shock sk_rollermine_stun_delay sk_rollermine_vehicle_intercept
syn keyword sourceVar           sk_scanner_dmg_dive sk_scanner_health sk_smg1_grenade_radius sk_stalker_health
syn keyword sourceVar           sk_stalker_melee_dmg sk_strider_health sk_strider_num_missiles1
syn keyword sourceVar           sk_strider_num_missiles2 sk_strider_num_missiles3 sk_suitcharger
syn keyword sourceVar           sk_suitcharger_citadel sk_suitcharger_citadel_maxarmor
syn keyword sourceVar           sk_vortigaunt_armor_charge sk_vortigaunt_armor_charge_per_token
syn keyword sourceVar           sk_vortigaunt_dmg_claw sk_vortigaunt_dmg_rake sk_vortigaunt_dmg_zap
syn keyword sourceVar           sk_vortigaunt_health sk_vortigaunt_vital_antlion_worker_dmg
syn keyword sourceVar           sk_vortigaunt_zap_range sk_weapon_ar2_alt_fire_duration
syn keyword sourceVar           sk_weapon_ar2_alt_fire_mass sk_weapon_ar2_alt_fire_radius
syn keyword sourceVar           sk_zombie_dmg_both_slash sk_zombie_dmg_one_slash sk_zombie_health
syn keyword sourceVar           sk_zombie_poison_dmg_spit sk_zombie_poison_health skill smoke_trail
syn keyword sourceVar           smoothstairs snd_ShowThreadFrameTime snd_async_fullyasync snd_async_minsize
syn keyword sourceVar           snd_async_spew_blocking snd_async_stream_fail snd_async_stream_spew
syn keyword sourceVar           snd_cull_duplicates snd_deathcamera_volume snd_debug_gaincurve
syn keyword sourceVar           snd_debug_gaincurvevol snd_defer_trace snd_delay_sound_shift
syn keyword sourceVar           snd_disable_mixer_duck snd_disable_mixer_solo snd_duckerattacktime
syn keyword sourceVar           snd_duckerreleasetime snd_duckerthreshold snd_ducking_off snd_ducktovolume
syn keyword sourceVar           snd_legacy_surround snd_list snd_lockpartial snd_mapobjective_volume
syn keyword sourceVar           snd_max_same_sounds snd_max_same_weapon_sounds snd_menumusic_volume
syn keyword sourceVar           snd_mergemethod snd_mix_async snd_mix_minframetime snd_mixahead
syn keyword sourceVar           snd_mixer_master_dsp snd_mixer_master_level snd_moviefix snd_music_selection
syn keyword sourceVar           snd_musicvolume snd_musicvolume_multiplier_inoverlay snd_mute_losefocus
syn keyword sourceVar           snd_noextraupdate snd_pitchquality snd_prefetch_common snd_profile
syn keyword sourceVar           snd_roundend_volume snd_roundstart_volume snd_show snd_show_maxchannels_errors
syn keyword sourceVar           snd_showclassname snd_showmixer snd_soundmixer snd_soundmixer_parse_debug
syn keyword sourceVar           snd_soundmixer_version snd_spatialize_roundrobin snd_store_filepaths
syn keyword sourceVar           snd_surround_speakers snd_tensecondwarning_volume snd_vox_captiontrace
syn keyword sourceVar           snd_vox_globaltimeout snd_vox_sectimetout snd_vox_seqtimetout sniper_xbox_delay
syn keyword sourceVar           sniperspeak sniperviewdist soundpatch_captionlength soundscape_message
syn keyword sourceVar           sourcemod_version spec_allowroaming spec_autodirector spec_centerchasecam
syn keyword sourceVar           spec_chasedistance spec_chasedistancestep spec_cinematic spec_closeup_range
syn keyword sourceVar           spec_filter spec_filter_infected spec_filter_survivors
syn keyword sourceVar           spec_freeze_deathanim_time spec_freeze_panel_extended_time
syn keyword sourceVar           spec_freeze_time_lock spec_hide_players spec_lockedchasecam
syn keyword sourceVar           spec_lockedchasecam_center_speed spec_lockedchasecam_delay
syn keyword sourceVar           spec_lockedchasecam_pitch spec_lockedchasecam_yaw spec_longshot_range
syn keyword sourceVar           spec_max_tracking_error spec_scoreboard spec_show_xray spec_track
syn keyword sourceVar           spec_tracking_power spec_usenumberkeys_nobinds spew_consolelog_to_debugstring
syn keyword sourceVar           spit_scaling_min_scale ss_splitmode ss_verticalsplit ss_voice_hearpartner
syn keyword sourceVar           stats_highlight_interval steam_stats_write_to_keyvalue
syn keyword sourceVar           steamworks_client_sessionid steamworks_immediate_upload
syn keyword sourceVar           steamworks_server_sessionid steamworks_sessionid_client
syn keyword sourceVar           steamworks_sessionid_server steamworks_show_uploads steamworks_stats_disable
syn keyword sourceVar           step_spline still_vel_limit still_view_accel_limit store_version
syn keyword sourceVar           strider_always_use_procedural_height strider_ar2_altfire_dmg
syn keyword sourceVar           strider_distributed_fire strider_eyepositions strider_free_knowledge
syn keyword sourceVar           strider_free_pass_after_escorts_dead strider_free_pass_cover_dist
syn keyword sourceVar           strider_free_pass_duration strider_free_pass_move_tolerance
syn keyword sourceVar           strider_free_pass_refill_rate strider_free_pass_start_time
syn keyword sourceVar           strider_free_pass_tolerance_after_escorts_dead strider_idle_test
syn keyword sourceVar           strider_immolate strider_missile_suppress_dist strider_missile_suppress_time
syn keyword sourceVar           strider_pct_height_no_crouch_move strider_peek_eye_dist strider_peek_eye_dist_z
syn keyword sourceVar           strider_peek_time strider_peek_time_after_damage strider_show_cannonlos
syn keyword sourceVar           strider_show_focus strider_show_weapon_los_condition strider_show_weapon_los_z
syn keyword sourceVar           strider_test_height stringtable_alwaysrebuilddictionaries
syn keyword sourceVar           stringtable_usedictionaries studio_queue_mode suitvolume
syn keyword sourceVar           survivor_allow_crawling survivor_death_anims survivor_drag_continuous_fire
syn keyword sourceVar           survivor_expressions survivor_expressions_anger survivor_expressions_fear
syn keyword sourceVar           survivor_incap_decay_rate survivor_incap_health
syn keyword sourceVar           survivor_incap_hopeless_decay_rate survivor_incap_max_fall_damage
syn keyword sourceVar           survivor_incap_tongued_decay_rate survivor_it_fade_in_interval
syn keyword sourceVar           survivor_it_fade_out_interval survivor_lean survivor_ledge_grab_health
syn keyword sourceVar           survivor_limit survivor_model_selection survivor_respawn_with_guns
syn keyword sourceVar           survivor_revive_after_drag survivor_revive_continuous_fire
syn keyword sourceVar           survivor_teammatefocus_enabled survivor_teammatefocus_speed
syn keyword sourceVar           survivor_teammatefocus_stickyness survivor_upgrade_reload_duration
syn keyword sourceVar           sv__ragdoll_max_remove_per_frame sv_accelerate sv_accelerate_debug_speed
syn keyword sourceVar           sv_accelerate_use_weapon_speed sv_airaccelerate sv_allow_color_correction
syn keyword sourceVar           sv_allow_lobby_connect_only sv_allow_thirdperson sv_allow_voice_from_file
syn keyword sourceVar           sv_allow_votes sv_allow_wait_command sv_allowdownload sv_allowupload sv_alltalk
syn keyword sourceVar           sv_alternateticks sv_arms_race_vote_to_restart_disallowed_after
syn keyword sourceVar           sv_auto_adjust_bot_difficulty sv_auto_full_alltalk_during_warmup_half_end
syn keyword sourceVar           sv_autobuyammo sv_autojump sv_autoladderdismount sv_autosave sv_backspeed
syn keyword sourceVar           sv_banid_dev_enabled sv_banid_enabled sv_benchmark_autovprofrecord
syn keyword sourceVar           sv_benchmark_freeroam sv_benchmark_numticks sv_bonus_challenge
syn keyword sourceVar           sv_bots_force_rebuy_every_round sv_bots_get_easier_each_win
syn keyword sourceVar           sv_bots_get_harder_after_each_wave sv_bounce
syn keyword sourceVar           sv_broadcast_ugc_download_progress_interval sv_broadcast_ugc_downloads
syn keyword sourceVar           sv_buy_status_override sv_cacheencodedents sv_cheats
syn keyword sourceVar           sv_client_cmdrate_difference sv_client_max_interp_ratio
syn keyword sourceVar           sv_client_min_interp_ratio sv_client_predict sv_clockcorrection_msecs
syn keyword sourceVar           sv_coaching_enabled sv_competitive_minspec sv_competitive_official_5v5
syn keyword sourceVar           sv_consistency sv_contact sv_ct_spawn_on_bombsite sv_damage_print_enable
syn keyword sourceVar           sv_dc_friends_reqd sv_deadtalk sv_debug_entity sv_debug_player_use
syn keyword sourceVar           sv_debug_ugc_downloads sv_debugmanualmode sv_debugtempentities sv_deltaprint
syn keyword sourceVar           sv_deltatime sv_disable_glow_faritems sv_disable_glow_survivors
syn keyword sourceVar           sv_disable_immunity_alpha sv_disable_observer_interpolation
syn keyword sourceVar           sv_disable_show_team_select_menu sv_downloadurl sv_enable_delta_packing
syn keyword sourceVar           sv_enableoldqueries sv_extra_client_connect_time sv_filterban sv_footsteps
syn keyword sourceVar           sv_force_transmit_players sv_forcepreload sv_friction sv_full_alltalk
syn keyword sourceVar           sv_gameinstructor_disable sv_gametypes sv_glowenable sv_gravity
syn keyword sourceVar           sv_grenade_trajectory_dash sv_grenade_trajectory_thickness
syn keyword sourceVar           sv_grenade_trajectory_time sv_grenade_trajectory_time_spectator sv_hibernate_ms
syn keyword sourceVar           sv_hibernate_ms_vgui sv_hibernate_postgame_delay sv_hibernate_punt_tv_clients
syn keyword sourceVar           sv_hibernate_when_empty sv_holiday_mode sv_hosting_lobby sv_hudhint_sound
syn keyword sourceVar           sv_ignore_hitboxes sv_ignoregrenaderadio sv_infected_scale_max
syn keyword sourceVar           sv_infected_scale_min sv_instancebaselines sv_kick_ban_duration
syn keyword sourceVar           sv_kick_players_with_cooldown sv_ladder_useonly sv_ladderautomountdot
syn keyword sourceVar           sv_lagflushbonecache sv_lagpushticks sv_lan sv_log_onefile sv_logbans
syn keyword sourceVar           sv_logblocks sv_logdownloadlist sv_logecho sv_logfile sv_logflush sv_logsdir
syn keyword sourceVar           sv_logsecret sv_lowedict_action sv_lowedict_threshold sv_massreport
syn keyword sourceVar           sv_master_legacy_mode sv_master_share_game_socket sv_matchend_drops_enabled
syn keyword sourceVar           sv_matchpause_auto_5v5 sv_max_allowed_net_graph sv_max_connects_sec
syn keyword sourceVar           sv_max_connects_sec_global sv_max_connects_window sv_max_queries_sec
syn keyword sourceVar           sv_max_queries_sec_global sv_max_queries_tracked_ips_max
syn keyword sourceVar           sv_max_queries_tracked_ips_prune sv_max_queries_window
syn keyword sourceVar           sv_max_usercmd_future_ticks sv_maxclientframes sv_maxcmdrate sv_maxplayers
syn keyword sourceVar           sv_maxrate sv_maxreplay sv_maxroutable sv_maxspeed sv_maxunlag sv_maxupdaterate
syn keyword sourceVar           sv_maxuptimelimit sv_maxusrcmdprocessticks sv_maxusrcmdprocessticks_holdaim
syn keyword sourceVar           sv_maxusrcmdprocessticks_warning sv_maxvelocity sv_mincmdrate sv_minrate
syn keyword sourceVar           sv_minupdaterate sv_minuptimelimit sv_multiplayer_maxtempentities
syn keyword sourceVar           sv_multiplayer_sounds sv_music_debug sv_namechange_cooldown_seconds
syn keyword sourceVar           sv_netspike_on_reliable_snapshot_overflow sv_new_delta_bits sv_noclipaccelerate
syn keyword sourceVar           sv_noclipfriction sv_noclipspeed sv_npc_talker_maxdist sv_occlude_players
syn keyword sourceVar           sv_optimizedmovement sv_parallel_packentities sv_parallel_sendsnapshot
syn keyword sourceVar           sv_party_mode sv_password sv_pausable sv_pausable_dev sv_pausable_dev_ds
syn keyword sourceVar           sv_player_max_separation_force sv_playerperfhistorycount
syn keyword sourceVar           sv_proj_stunball_damage sv_pure_consensus sv_pure_kick_clients
syn keyword sourceVar           sv_pure_retiretime sv_pure_trace sv_pushaway_clientside
syn keyword sourceVar           sv_pushaway_clientside_size sv_pushaway_force sv_pushaway_max_force
syn keyword sourceVar           sv_pushaway_min_force sv_pushaway_min_player_speed sv_pvsskipanimation
syn keyword sourceVar           sv_pz_endgame_vote_period sv_pz_endgame_vote_post_period
syn keyword sourceVar           sv_quota_stringcmdspersecond sv_ragdoll_maxcount sv_ragdoll_maxcount_boss
syn keyword sourceVar           sv_ragdoll_maxcount_generic sv_ragdoll_maxcount_gib sv_ragdoll_maxcount_special
syn keyword sourceVar           sv_ragdoll_maxcount_survivor sv_ragdoll_version sv_rcon_banpenalty sv_rcon_log
syn keyword sourceVar           sv_rcon_maxfailures sv_rcon_maxpacketbans sv_rcon_maxpacketsize
syn keyword sourceVar           sv_rcon_minfailures sv_rcon_minfailuretime sv_rcon_whitelist_address
syn keyword sourceVar           sv_regeneration_wait_time sv_region sv_registration_message
syn keyword sourceVar           sv_registration_successful sv_reliableavatardata sv_remove_old_ugc_downloads
syn keyword sourceVar           sv_rescue_disabled sv_reservation_grace sv_reservation_tickrate_adjustment
syn keyword sourceVar           sv_reservation_timeout sv_restrict_aspect_ratio_fov sv_robust_explosions
syn keyword sourceVar           sv_rollangle sv_rollspeed sv_runcmds sv_script_think_interval sv_search_key
syn keyword sourceVar           sv_search_team_key sv_sendtables sv_server_graphic1 sv_server_graphic2
syn keyword sourceVar           sv_show_assassination_target_to_everyone sv_show_crosshair_target
syn keyword sourceVar           sv_show_cull_props sv_show_whitelist_msg sv_showdamage sv_showdebugtracers
syn keyword sourceVar           sv_showimpacts sv_showimpacts_penetration sv_showimpacts_time sv_showladders
syn keyword sourceVar           sv_showplayerhitboxes sv_showprecachedsounds sv_skyname
syn keyword sourceVar           sv_sound_discardextraunreliable sv_soundemitter_trace
syn keyword sourceVar           sv_spawn_afk_bomb_drop_time sv_spec_hear sv_specaccelerate sv_specnoclip
syn keyword sourceVar           sv_specspeed sv_staminajumpcost sv_staminalandcost sv_staminamax
syn keyword sourceVar           sv_staminarecoveryrate sv_stats sv_steamblockingcheck sv_steamgroup
syn keyword sourceVar           sv_steamgroup_exclusive sv_stepsize sv_stickysprint sv_stickysprint_default
syn keyword sourceVar           sv_stopspeed sv_stressbots sv_strict_notarget sv_sync_client_updates sv_tags
syn keyword sourceVar           sv_test_scripted_sequences sv_teststepsimulation sv_thinktimecheck
syn keyword sourceVar           sv_threaded_init sv_timeout sv_tracereffects_limit_general sv_turbophysics
syn keyword sourceVar           sv_ugc_manager_max_new_file_check_interval_secs sv_unlag sv_unlag_debug
syn keyword sourceVar           sv_unlag_fixstuck sv_unlockedchapters sv_use_steam_voice sv_useexplicitdelete
syn keyword sourceVar           sv_usercmd_custom_random_seed sv_validate_edict_change_infos
syn keyword sourceVar           sv_vehicle_autoaim_scale sv_visiblemaxplayers sv_voicecodec sv_voiceenable
syn keyword sourceVar           sv_vote_allow_in_warmup sv_vote_allow_spectators sv_vote_command_delay
syn keyword sourceVar           sv_vote_creation_timer sv_vote_disallow_kick_on_match_point
syn keyword sourceVar           sv_vote_failure_timer sv_vote_failure_timer_mvm
syn keyword sourceVar           sv_vote_issue_change_difficulty_allowed sv_vote_issue_change_map_later_allowed
syn keyword sourceVar           sv_vote_issue_change_map_now_allowed sv_vote_issue_change_mission_allowed
syn keyword sourceVar           sv_vote_issue_changelevel_allowed sv_vote_issue_changelevel_allowed_mvm
syn keyword sourceVar           sv_vote_issue_kick_allowed sv_vote_issue_kick_allowed_mvm
syn keyword sourceVar           sv_vote_issue_kick_spectators_mvm sv_vote_issue_loadbackup_allowed
syn keyword sourceVar           sv_vote_issue_mvm_challenge_allowed sv_vote_issue_nextlevel_allowed
syn keyword sourceVar           sv_vote_issue_nextlevel_allowextend sv_vote_issue_nextlevel_choicesmode
syn keyword sourceVar           sv_vote_issue_nextlevel_prevent_change sv_vote_issue_restart_game_allowed
syn keyword sourceVar           sv_vote_issue_scramble_teams_allowed sv_vote_kick_ban_duration
syn keyword sourceVar           sv_vote_quorum_ratio sv_vote_timer_duration
syn keyword sourceVar           sv_vote_to_changelevel_before_match_point sv_vote_ui_hide_disabled_issues
syn keyword sourceVar           sv_wateraccelerate sv_waterdist sv_waterfriction sv_workshop_allow_other_maps
syn keyword sourceVar           sv_zoo_model_filter sv_zoo_spacing sv_zoo_spacing_rows sv_zoo_spacing_wrap
syn keyword sourceVar           sv_zoo_tint_clr sv_zoo_tint_loop sv_zoo_wrap_skin sys_antialiasing
syn keyword sourceVar           sys_aspectratio sys_attract_mode_timeout sys_minidumpexpandedspew
syn keyword sourceVar           sys_minidumpspewlines sys_refldetail systemlinkport tank_pz_forward
syn keyword sourceVar           tank_rock_overhead_percent target_scan_use_query_cache tauntfrequency
syn keyword sourceVar           teamwork_event_display_time teamwork_event_fade_in_time
syn keyword sourceVar           teamwork_event_fade_out_time teamwork_event_min_interval telemetry_demoend
syn keyword sourceVar           telemetry_demostart telemetry_filtervalue telemetry_framecount telemetry_level
syn keyword sourceVar           telemetry_pause telemetry_resume telemetry_server template_debug
syn keyword sourceVar           test_massive_dmg test_massive_dmg_clip testscript_debug
syn keyword sourceVar           texture_budget_background_alpha texture_budget_panel_bottom_of_history_fraction
syn keyword sourceVar           texture_budget_panel_global texture_budget_panel_height
syn keyword sourceVar           texture_budget_panel_width texture_budget_panel_x texture_budget_panel_y
syn keyword sourceVar           tf_allow_player_use tf_allow_taunt_switch tf_arena_first_blood
syn keyword sourceVar           tf_arena_max_streak tf_arena_override_cap_enable_time
syn keyword sourceVar           tf_arena_override_team_size tf_arena_preround_time tf_arena_round_time
syn keyword sourceVar           tf_arena_use_queue tf_avoidteammates_pushaway tf_backstab_detection_method
syn keyword sourceVar           tf_birthday tf_birthday_ball_chance tf_boost_drain_time tf_bot_auto_vacate
syn keyword sourceVar           tf_bot_count tf_bot_difficulty tf_bot_force_class tf_bot_join_after_player
syn keyword sourceVar           tf_bot_keep_class_after_death tf_bot_melee_only tf_bot_notice_gunfire_range
syn keyword sourceVar           tf_bot_notice_quiet_gunfire_range tf_bot_offline_practice
syn keyword sourceVar           tf_bot_path_lookahead_range tf_bot_prefix_name_with_difficulty tf_bot_quota
syn keyword sourceVar           tf_bot_quota_mode tf_bot_sniper_allow_opportunistic tf_bot_taunt_victim_chance
syn keyword sourceVar           tf_build_menu_controller_mode tf_caplinear tf_chargedfriends tf_clamp_airducks
syn keyword sourceVar           tf_clamp_back_speed tf_clamp_back_speed_min tf_clientsideeye_lookats
syn keyword sourceVar           tf_coach_min_time_played tf_coach_request_nevershowagain tf_colorblindassist
syn keyword sourceVar           tf_ctf_bonus_time tf_damage_disablespread tf_damage_events_track_for
syn keyword sourceVar           tf_damage_lineardist tf_damage_range tf_demoman_charge_drain_time
syn keyword sourceVar           tf_demoman_charge_regen_rate tf_dev_health_on_damage_recover_percentage
syn keyword sourceVar           tf_dev_marked_for_death_lifetime tf_dingaling tf_dingaling_pitchmaxdmg
syn keyword sourceVar           tf_dingaling_pitchmindmg tf_dingaling_volume tf_dingalingaling
syn keyword sourceVar           tf_dingalingaling_repeat_delay tf_disguise_menu_controller_mode
syn keyword sourceVar           tf_escort_recede_time tf_escort_recede_time_overtime
syn keyword sourceVar           tf_explanations_backpackpanel tf_explanations_charinfo_armory_panel
syn keyword sourceVar           tf_explanations_charinfopanel tf_explanations_craftingpanel
syn keyword sourceVar           tf_explanations_discardpanel tf_explanations_store tf_explanations_tradingpanel
syn keyword sourceVar           tf_flag_caps_per_round tf_force_holidays_off tf_forced_holiday
syn keyword sourceVar           tf_gamemode_arena tf_gamemode_cp tf_gamemode_ctf tf_gamemode_mvm
syn keyword sourceVar           tf_gamemode_payload tf_gamemode_sd tf_grenadelauncher_min_contact_speed
syn keyword sourceVar           tf_highfive_debug tf_highfive_hintcount tf_hud_no_crosshair_on_scope_zoom
syn keyword sourceVar           tf_hud_notification_duration tf_hud_num_building_alert_beeps tf_invuln_time
syn keyword sourceVar           tf_last_store_pricesheet_version tf_matchgroups
syn keyword sourceVar           tf_matchmaking_goodenough_count_end tf_matchmaking_goodenough_count_start
syn keyword sourceVar           tf_matchmaking_goodenough_score_end tf_matchmaking_goodenough_score_start
syn keyword sourceVar           tf_matchmaking_join_in_progress tf_matchmaking_max_search_time
syn keyword sourceVar           tf_matchmaking_noob_hours_played tf_matchmaking_noob_map_score_boost
syn keyword sourceVar           tf_matchmaking_numbers_increase_maxplayers_penalty
syn keyword sourceVar           tf_matchmaking_numbers_serverfull_headroom
syn keyword sourceVar           tf_matchmaking_numbers_valve_bonus_hrs_a
syn keyword sourceVar           tf_matchmaking_numbers_valve_bonus_hrs_b
syn keyword sourceVar           tf_matchmaking_numbers_valve_bonus_pts_a
syn keyword sourceVar           tf_matchmaking_numbers_valve_bonus_pts_b tf_matchmaking_ogs_odds
syn keyword sourceVar           tf_matchmaking_ping_a tf_matchmaking_ping_a_score tf_matchmaking_ping_b
syn keyword sourceVar           tf_matchmaking_ping_b_score tf_matchmaking_ping_c tf_matchmaking_ping_c_score
syn keyword sourceVar           tf_matchmaking_retry_cooldown_seconds tf_matchmaking_retry_max_penalty
syn keyword sourceVar           tf_matchmaking_spew_level tf_matchmaking_ticket_help tf_max_health_boost
syn keyword sourceVar           tf_max_separation_force tf_max_voice_speak_delay tf_medieval tf_medieval_autorp
syn keyword sourceVar           tf_medieval_thirdperson tf_medigun_autoheal tf_medigun_lagcomp
syn keyword sourceVar           tf_mm_mannup_disabled tf_mm_player_reservation_timeout_seconds tf_mm_servermode
syn keyword sourceVar           tf_mm_strict tf_mm_trusted tf_mvm_classupgradehelpcount
syn keyword sourceVar           tf_mvm_disconnect_on_victory tf_mvm_min_players_to_start
syn keyword sourceVar           tf_mvm_missioncyclefile tf_mvm_popfile tf_mvm_tabs_discovered tf_overtime_nag
syn keyword sourceVar           tf_particles_disable_weather tf_player_movement_stun_time tf_playergib
syn keyword sourceVar           tf_pressandhold_minduration tf_quickplay_beta_ask_percentage
syn keyword sourceVar           tf_quickplay_beta_preference tf_quickplay_lastviewedmode tf_recent_achievements
syn keyword sourceVar           tf_remember_activeweapon tf_remember_lastswitched tf_replay_pyrovision
syn keyword sourceVar           tf_resolve_stuck_players tf_respawn_on_loadoutchanges tf_roundinfo_pause
syn keyword sourceVar           tf_scout_bat_launch_delay tf_scout_energydrink_activation
syn keyword sourceVar           tf_scout_energydrink_consume_rate tf_scout_energydrink_regen_rate
syn keyword sourceVar           tf_scout_stunball_base_duration tf_scout_stunball_base_speed
syn keyword sourceVar           tf_server_identity_account_id tf_server_identity_disable_quickplay
syn keyword sourceVar           tf_server_identity_token tf_show_preset_explanation_in_class_loadout
syn keyword sourceVar           tf_showspeed tf_simple_disguise_menu tf_sniper_fullcharge_bell
syn keyword sourceVar           tf_soldier_buff_pulses tf_spectate_pyrovision tf_spectator_target_location
syn keyword sourceVar           tf_spy_cloak_consume_rate tf_spy_cloak_no_attack_time tf_spy_cloak_regen_rate
syn keyword sourceVar           tf_spy_invis_time tf_spy_invis_unstealth_time tf_spy_max_cloaked_speed
syn keyword sourceVar           tf_stalematechangeclasstime tf_stats_nogameplaycheck tf_stats_track
syn keyword sourceVar           tf_steam_workshop_query_timeout tf_store_stamp_donation_add_timestamp
syn keyword sourceVar           tf_teamtalk tf_test_hat_bodygroup tf_testitem_recent
syn keyword sourceVar           tf_tournament_classlimit_demoman tf_tournament_classlimit_engineer
syn keyword sourceVar           tf_tournament_classlimit_heavy tf_tournament_classlimit_medic
syn keyword sourceVar           tf_tournament_classlimit_pyro tf_tournament_classlimit_scout
syn keyword sourceVar           tf_tournament_classlimit_sniper tf_tournament_classlimit_soldier
syn keyword sourceVar           tf_tournament_classlimit_spy tf_tournament_hide_domination_icons
syn keyword sourceVar           tf_training_has_prompted_for_forums tf_training_has_prompted_for_loadout
syn keyword sourceVar           tf_training_has_prompted_for_offline_practice
syn keyword sourceVar           tf_training_has_prompted_for_options tf_training_has_prompted_for_training
syn keyword sourceVar           tf_use_fixed_weaponspreads tf_useparticletracers tf_weapon_criticals
syn keyword sourceVar           tf_weapon_select_demo_start_delay tf_weapon_select_demo_time
syn keyword sourceVar           tf_whip_speed_increase think_limit thirdperson_platformer
syn keyword sourceVar           thirdperson_screenspace threadpool_affinity threadpool_reserve
syn keyword sourceVar           timedemo_runcount tir_start tir_stop tongue_bullet_radius trace_report
syn keyword sourceVar           tracer_extra training_can_build_dispenser training_can_build_sentry
syn keyword sourceVar           training_can_build_tele_entrance training_can_build_tele_exit
syn keyword sourceVar           training_can_destroy_buildings training_can_pickup_dispenser
syn keyword sourceVar           training_can_pickup_sentry training_can_pickup_tele_entrance
syn keyword sourceVar           training_can_pickup_tele_exit training_can_select_weapon_building
syn keyword sourceVar           training_can_select_weapon_item1 training_can_select_weapon_item2
syn keyword sourceVar           training_can_select_weapon_melee training_can_select_weapon_pda
syn keyword sourceVar           training_can_select_weapon_primary training_can_select_weapon_secondary
syn keyword sourceVar           training_class training_map_video tutor tv_advertise_watchable
syn keyword sourceVar           tv_allow_camera_man tv_allow_camera_man_steamid tv_allow_static_shots
syn keyword sourceVar           tv_autorecord tv_autoretry tv_chatgroupsize tv_chattimelimit tv_debug tv_delay
syn keyword sourceVar           tv_delaymapchange tv_deltacache tv_dispatchmode tv_dispatchweight tv_enable
syn keyword sourceVar           tv_encryptdata_key tv_encryptdata_key_pub tv_maxclients
syn keyword sourceVar           tv_maxclients_relayreserved tv_maxrate tv_name tv_nochat tv_overridemaster
syn keyword sourceVar           tv_password tv_port tv_relaypassword tv_relayradio tv_relaytextchat
syn keyword sourceVar           tv_relayvoice tv_snapshotrate tv_timeout tv_title tv_transmitall
syn keyword sourceVar           ui_blogpost_scroll_speed ui_blogpost_upload_retry_time
syn keyword sourceVar           ui_blogpost_upload_version ui_blogpost_vote_test ui_foundgames_fake_content
syn keyword sourceVar           ui_foundgames_fake_count ui_foundgames_spinner_time ui_foundgames_update_time
syn keyword sourceVar           ui_game_allow_create_public ui_game_allow_create_random ui_l4d_debug
syn keyword sourceVar           ui_loading_tip_f1 ui_loading_tip_f2 ui_loading_tip_refresh ui_lobby_idle_time
syn keyword sourceVar           ui_lobby_noresults_create_msg_time ui_lobby_start_enabled
syn keyword sourceVar           ui_lobby_stat_switch_time ui_lobby_stat_team_search_max
syn keyword sourceVar           ui_mainmenu_blogpost_animation ui_mainmenu_challenge ui_modes_filter_modetype
syn keyword sourceVar           ui_modes_filter_players ui_old_options_menu ui_play_online_browser
syn keyword sourceVar           ui_public_lobby_filter_campaign ui_public_lobby_filter_difficulty2
syn keyword sourceVar           ui_public_lobby_filter_status ui_start_dlc_time_corrupt
syn keyword sourceVar           ui_start_dlc_time_loaded ui_start_dlc_time_pump
syn keyword sourceVar           ui_steam_overlay_notification_position ui_volume_max
syn keyword sourceVar           ui_workshop_games_expire_minutes v_centermove v_centerspeed v_ipitch_cycle
syn keyword sourceVar           v_ipitch_level v_iroll_cycle v_iroll_level v_iyaw_cycle v_iyaw_level
syn keyword sourceVar           vcr_verbose verbose_tank_music versus_force_start_time versus_marker_num
syn keyword sourceVar           versus_round_restarttimer versus_round_restarttimer_finale
syn keyword sourceVar           versus_stats_highlight_interval vgui_drawfocus vgui_drawkeyfocus
syn keyword sourceVar           vgui_drawtree_bounds vgui_drawtree_draw_selected vgui_drawtree_freeze
syn keyword sourceVar           vgui_drawtree_hidden vgui_drawtree_panelalpha vgui_drawtree_panelptr
syn keyword sourceVar           vgui_drawtree_popupsonly vgui_drawtree_render_order vgui_drawtree_scheme
syn keyword sourceVar           vgui_drawtree_visible vgui_message_dialog_modal vgui_show_glyph_miss
syn keyword sourceVar           video_quicktime_decode_gamma video_quicktime_encode_gamma view_offset
syn keyword sourceVar           viewmodel_fov viewmodel_fov_demo viewmodel_offset_x viewmodel_offset_y
syn keyword sourceVar           viewmodel_offset_z viewmodel_presetpos violence_ablood violence_agibs
syn keyword sourceVar           violence_hblood violence_hgibs vm_camera vm_camera_interp_speed
syn keyword sourceVar           vm_camera_no_roll vm_camera_scale vm_draw_addon vm_draw_always vm_fade
syn keyword sourceVar           voice_all_icons voice_avggain voice_caster_enable voice_caster_scale
syn keyword sourceVar           voice_clientdebug voice_debugfeedback voice_debugfeedbackfrom voice_dsound
syn keyword sourceVar           voice_enable voice_fadeouttime voice_forcemicrecord voice_head_icon_height
syn keyword sourceVar           voice_head_icon_size voice_inputfromfile voice_local_icon voice_loopback
syn keyword sourceVar           voice_maxgain voice_minimum_gain voice_modenable voice_overdrive
syn keyword sourceVar           voice_overdrivefadetime voice_profile voice_recordtofile voice_scale
syn keyword sourceVar           voice_serverdebug voice_showchannels voice_showincoming voice_spatialize
syn keyword sourceVar           voice_steal voice_system_enable voice_threshold voice_vox voice_writevoices
syn keyword sourceVar           voice_xsend_debug volume vphysics_client_threaded
syn keyword sourceVar           vphysics_client_threaded_min_cpus vprof_counters vprof_counters_show_minmax
syn keyword sourceVar           vprof_dump_oninterval vprof_dump_spikes vprof_dump_spikes_budget_group
syn keyword sourceVar           vprof_dump_spikes_hiearchy vprof_dump_spikes_node vprof_dump_spikes_terse
syn keyword sourceVar           vprof_graph vprof_graphheight vprof_graphwidth vprof_scope
syn keyword sourceVar           vprof_scope_entity_gamephys vprof_scope_entity_thinks
syn keyword sourceVar           vprof_server_spike_threshold vprof_server_thread vprof_think_limit
syn keyword sourceVar           vprof_unaccounted_limit vprof_verbose vprof_warningmsec vs_score_pp_health
syn keyword sourceVar           vs_score_pp_healthbuffer weapon_reticle_knife_show weapon_showproficiency
syn keyword sourceVar           weapon_spawn_fade_distance windows_speaker_config witch_rage_ramp_duration
syn keyword sourceVar           x360_audio_english x360_resolution_height x360_resolution_interlaced
syn keyword sourceVar           x360_resolution_widescreen_mode x360_resolution_width xbox_autothrottle
syn keyword sourceVar           xbox_steering_deadzone xbox_throttlebias xbox_throttlespoof xc_crouch_debounce
syn keyword sourceVar           xc_crouch_range xc_uncrouch_on_jump xc_use_crouch_limiter youtube_http_proxy
syn keyword sourceVar           youtube_username z_added_light_max z_added_light_min z_added_light_scale
syn keyword sourceVar           z_anim_idle_speed_max z_anim_idle_speed_min z_atomize_gibbed_limbs_probability
syn keyword sourceVar           z_attack_change_target_range z_attack_interval z_attack_max_range
syn keyword sourceVar           z_attack_min_range z_attack_movement_penalty z_attack_on_the_run_range
syn keyword sourceVar           z_bbq_min z_bbq_rate z_burn_decay_rate z_burn_max z_burn_rate
syn keyword sourceVar           z_checkpoint_debug z_damage_screen_fade_alpha z_damage_screen_fade_duration
syn keyword sourceVar           z_debug_infected_anim z_debug_infected_server_anim z_debug_shared_random
syn keyword sourceVar           z_debug_stuck z_difficulty z_door_pound_damage z_escape_route_far
syn keyword sourceVar           z_escape_route_near z_escape_route_segment_fade_in_rate
syn keyword sourceVar           z_escape_route_segment_fade_out_rate z_exploding_force z_exploding_inner_radius
syn keyword sourceVar           z_exploding_outer_radius z_fatal_blast_incineration_probability
syn keyword sourceVar           z_fatal_blast_max_ragdolls z_fatal_blast_min_ragdolls
syn keyword sourceVar           z_finale_spawn_safety_range_override z_ghost_ahead_flow z_ghost_cooldown
syn keyword sourceVar           z_ghost_delay_minspawn z_ghost_duration z_ghost_friction z_ghost_group_spawn
syn keyword sourceVar           z_ghost_line_of_scrimmage_far z_ghost_line_of_scrimmage_near
syn keyword sourceVar           z_ghost_line_of_scrimmage_safety z_ghost_line_of_scrimmage_threat_bonus
syn keyword sourceVar           z_ghost_los_expected_progress z_ghost_offer_acceptance_time
syn keyword sourceVar           z_ghost_offer_spawn_safety_time z_ghost_spawn_distance z_gib_spread_force
syn keyword sourceVar           z_gib_spread_randomize z_gib_spread_torque z_gun_swing_coop_max_penalty
syn keyword sourceVar           z_gun_swing_coop_min_penalty z_gun_swing_vs_amt_penalty z_gun_swing_vs_cooldown
syn keyword sourceVar           z_gun_swing_vs_max_penalty z_gun_swing_vs_min_penalty
syn keyword sourceVar           z_gun_swing_vs_restore_time z_head_damage_causes_wounds z_hunter_lunge_distance
syn keyword sourceVar           z_hunter_lunge_pitch z_infected_damage_cutouts z_infected_decals
syn keyword sourceVar           z_infected_gib_count z_infected_gib_max_speed z_infected_gib_min_speed
syn keyword sourceVar           z_infected_shadows z_infected_tinting z_it_decay_rate z_leap_cooldown
syn keyword sourceVar           z_lunge_cooldown z_lunge_reflect z_max_player_zombies z_max_survivor_damage
syn keyword sourceVar           z_minigun_atomize z_minigun_debug z_minigun_fire_anim_speed
syn keyword sourceVar           z_minigun_firing_speed z_minigun_particles z_minigun_spin_down_speed
syn keyword sourceVar           z_minigun_spin_up_speed z_minigun_spread z_minigun_stand_distance
syn keyword sourceVar           z_mob_simple_shadows z_network_compression z_nightvision_b z_nightvision_g
syn keyword sourceVar           z_nightvision_r z_non_head_damage_factor_multiplier z_population
syn keyword sourceVar           z_pounce_shake_amplitude z_pounce_shake_duration z_pounce_shake_radius
syn keyword sourceVar           z_pounce_stumble_radius z_ragdoll_discard_range z_ragdoll_impact_strength
syn keyword sourceVar           z_round_start_attack_prevention z_scrimmage_a_far z_scrimmage_a_near
syn keyword sourceVar           z_scrimmage_b z_scrimmage_creep_delay z_scrimmage_creep_rate z_scrimmage_debug
syn keyword sourceVar           z_scrimmage_far z_scrimmage_g z_scrimmage_height z_scrimmage_r
syn keyword sourceVar           z_scrimmage_reset z_scrimmage_sphere z_scrimmage_yardline_a_far
syn keyword sourceVar           z_scrimmage_yardline_a_near z_scrimmage_yardline_b z_scrimmage_yardline_far
syn keyword sourceVar           z_scrimmage_yardline_g z_scrimmage_yardline_height z_scrimmage_yardline_r
syn keyword sourceVar           z_scrimmage_yardline_width z_skip_wounds z_spec_nightvision z_splatter_delay
syn keyword sourceVar           z_splatter_delay_melee z_splatterdistance z_survivor_respawn_health
syn keyword sourceVar           z_tank_footstep_shake_amplitude z_tank_footstep_shake_duration
syn keyword sourceVar           z_tank_footstep_shake_interval z_tank_footstep_shake_radius z_tracer_particles
syn keyword sourceVar           z_transitioning_player_addon_rebuild z_use_next_difficulty_damage_factor
syn keyword sourceVar           z_witch_always_kills z_witch_rage_smoothing z_witch_tongue_range
syn keyword sourceVar           z_wound_client_disabled zombie_ambushdist zombie_basemax zombie_basemin
syn keyword sourceVar           zombie_changemax zombie_changemin zombie_decaymax zombie_decaymin
syn keyword sourceVar           zombie_moanfreq zombie_stepfreq zoom_sensitivity_ratio
syn keyword sourceVar           zoom_sensitivity_ratio_joystick zoom_sensitivity_ratio_mouse

" Syntax: Cheats {{{1
" syn keyword sourceCheat
"
syn keyword sourceCheat         CS_WarnFriendlyDamageInterval CreateHairball CreatePredictionError
syn keyword sourceCheat         Smoker_escape_range Test_CreateEntity Test_EHandle Test_InitRandomEntitySpawner
syn keyword sourceCheat         Test_ProxyToggle_EnableProxy Test_ProxyToggle_EnsureValue
syn keyword sourceCheat         Test_ProxyToggle_SetValue Test_RandomPlayerPosition Test_RandomizeInPVS
syn keyword sourceCheat         Test_RemoveAllRandomEntities Test_SpawnRandomEntities achievement_debug
syn keyword sourceCheat         achievement_disable achievement_notification_test
syn keyword sourceCheat         action_progress_reset_interval adrenaline_backpack_speedup adrenaline_duration
syn keyword sourceCheat         adrenaline_health_buffer adrenaline_revive_speedup adrenaline_run_speed
syn keyword sourceCheat         ai_debug_actbusy ai_debug_los ai_debug_shoot_positions ai_drawbattlelines
syn keyword sourceCheat         ai_inhibit_spawners ai_talk_idle_enabled ai_vehicle_avoidance air_density
syn keyword sourceCheat         allow_weapon_fire_to_use ammo_pack_use_duration anim_dumpstate
syn keyword sourceCheat         anim_showmainactivity anim_showstate anim_showstatelog bench_end bench_start
syn keyword sourceCheat         bench_upload boomer_exposed_time_tolerance boomer_leaker_chance
syn keyword sourceCheat         boomer_pz_claw_dmg boomer_vomit_delay bot_com_meleerange bot_com_viewrange
syn keyword sourceCheat         bot_com_wpnrange bot_crouch bot_debug bot_debug_target bot_dont_shoot
syn keyword sourceCheat         bot_dontmove bot_freeze bot_ignore_players bot_jump bot_loadout
syn keyword sourceCheat         bot_max_vision_distance_override bot_mimic bot_mimic_spec_buttons
syn keyword sourceCheat         bot_mimic_yaw_offset bot_nav_offsetpathinset bot_nav_recomputetime
syn keyword sourceCheat         bot_nav_simplifypaths bot_nav_turnspeed bot_nav_usefeelers
syn keyword sourceCheat         bot_nav_useoffsetpaths bot_nav_wpdeceldistance bot_nav_wpdistance bot_randombuy
syn keyword sourceCheat         bot_randomnames bot_saveme bot_selectweaponslot bot_show_battlefront
syn keyword sourceCheat         bot_show_nav bot_show_occupy_time bot_stop bot_traceview bot_zombie box buddha
syn keyword sourceCheat         bug_swap c_maxdistance c_maxpitch c_maxyaw c_mindistance c_minpitch c_minyaw
syn keyword sourceCheat         c_orthoheight c_orthowidth cam_collision cam_command cam_idealdelta
syn keyword sourceCheat         cam_idealdist cam_idealdistright cam_idealdistup cam_ideallag cam_idealpitch
syn keyword sourceCheat         cam_idealyaw cam_showangles cam_snapto camortho cast_hull cast_ray
syn keyword sourceCheat         ccs_write_convars ch_createairboat ch_createjeep chainsaw_attack_cone
syn keyword sourceCheat         chainsaw_attack_distance chainsaw_attack_force chainsaw_attract_distance
syn keyword sourceCheat         chainsaw_damage chainsaw_debug chainsaw_hit_interval
syn keyword sourceCheat         chainsaw_startup_fadeout_time changelevel_inhibit changelevel_pause_interval
syn keyword sourceCheat         chet_debug_idle cl_backspeed cl_bob cl_bob_version cl_bobcycle cl_bobup
syn keyword sourceCheat         cl_brushfastpath cl_camera_follow_bone_index cl_cinematiclight_b
syn keyword sourceCheat         cl_cinematiclight_g cl_cinematiclight_r cl_cinematiclight_scale
syn keyword sourceCheat         cl_cinematiclight_tonemap cl_clock_correction
syn keyword sourceCheat         cl_clock_correction_adjustment_max_amount
syn keyword sourceCheat         cl_clock_correction_adjustment_max_offset
syn keyword sourceCheat         cl_clock_correction_adjustment_min_offset cl_clock_correction_force_server_tick
syn keyword sourceCheat         cl_clock_showdebuginfo cl_clockdrift_max_ms cl_clockdrift_max_ms_threadmode
syn keyword sourceCheat         cl_crash cl_custommaterial_debug_graph cl_detail_multiplier cl_disable_ragdolls
syn keyword sourceCheat         cl_draw_airboat_wake cl_draw_only_deathnotices cl_drawhud cl_drawleaf
syn keyword sourceCheat         cl_drawmaterial cl_drawshadowtexture cl_dumpplayer cl_ent_absbox cl_ent_bbox
syn keyword sourceCheat         cl_ent_rbox cl_entityreport cl_entityreport_sorted cl_extrapolate
syn keyword sourceCheat         cl_extrapolate_amount cl_eyeball_boss_debug cl_fastdetailsprites cl_find_ent
syn keyword sourceCheat         cl_find_ent_index cl_flag_return_height cl_flag_return_size
syn keyword sourceCheat         cl_flushentitypacket cl_force_3rd_strike cl_forwardspeed cl_fullupdate
syn keyword sourceCheat         cl_glow_blur_scale cl_glow_brightness cl_glow_force
syn keyword sourceCheat         cl_glow_it_timer_ratio_reduction cl_glow_los_delay cl_glow_los_fade_in_time
syn keyword sourceCheat         cl_glow_los_fade_out_time cl_gunlowerangle cl_gunlowerspeed cl_ignorepackets
syn keyword sourceCheat         cl_jiggle_bone_debug cl_jiggle_bone_debug_pitch_constraints
syn keyword sourceCheat         cl_jiggle_bone_debug_yaw_constraints cl_jiggle_bone_invert cl_leafsystemvis
syn keyword sourceCheat         cl_leveloverview cl_leveloverviewmarker cl_max_shadow_renderable_dist
syn keyword sourceCheat         cl_maxrenderable_dist cl_obj_test_building_damage cl_overdraw_test
syn keyword sourceCheat         cl_particle_retire_cost cl_particleeffect_aabb_buffer cl_particles_show_bbox
syn keyword sourceCheat         cl_particles_show_controlpoints cl_pclass cl_pdump cl_phys2_stats
syn keyword sourceCheat         cl_phys_show_active cl_phys_timescale cl_pitchdown cl_pitchup
syn keyword sourceCheat         cl_portal_use_new_dissolve cl_predict cl_predictionlist cl_querycache_stats
syn keyword sourceCheat         cl_ragdoll_gravity cl_reloadpostprocessparams cl_removedecals
syn keyword sourceCheat         cl_shadowtextureoverlaysize cl_showanimstate cl_showanimstate_activities
syn keyword sourceCheat         cl_showanimstate_log cl_showents cl_showevents cl_sidespeed cl_skipfastpath
syn keyword sourceCheat         cl_skipslowpath cl_smoke_color_percent cl_smoke_fog_percent cl_soundscape_flush
syn keyword sourceCheat         cl_sporeclipdistance cl_sun_decay_rate cl_sunlight_ortho_size
syn keyword sourceCheat         cl_teamid_overhead cl_teamid_overhead_maxdist cl_teamid_overhead_maxdist_spec
syn keyword sourceCheat         cl_upspeed cl_use_new_headbob cl_use_update_interval cl_view
syn keyword sourceCheat         cl_viewtarget_debug cl_viewtarget_offset cl_viewtarget_player
syn keyword sourceCheat         cl_weapon_debug_print_accuracy cl_winddir cl_windspeed
syn keyword sourceCheat         cl_witch_light_brightness cl_witch_light_color_b cl_witch_light_color_g
syn keyword sourceCheat         cl_witch_light_color_r cl_witch_light_cone cl_witch_light_debug
syn keyword sourceCheat         cl_witch_light_enable cl_witch_light_offset_x cl_witch_light_offset_y
syn keyword sourceCheat         cl_witch_light_offset_z cl_witch_light_offset_z_max cl_witch_light_radius
syn keyword sourceCheat         cl_wpn_sway_interp cl_wpn_sway_scale claw_force claw_range claw_range_down
syn keyword sourceCheat         claw_swing_duration claw_swing_interval claw_swing_miss_interval
syn keyword sourceCheat         clear_attribute cloth_windage_multiplier cola_bottles_use_duration
syn keyword sourceCheat         cola_bottles_use_range cola_bottles_use_tolerance collect_entity_model_name
syn keyword sourceCheat         collision_test colorcorrectionui crash create_flashlight
syn keyword sourceCheat         cs_ShowStateTransitions cs_hostage_near_rescue_music_distance
syn keyword sourceCheat         current_flow_distance debug_visibility_monitor debug_zombie_panel debugsystemui
syn keyword sourceCheat         default_fov defibrillator_return_to_life_time defibrillator_use_duration
syn keyword sourceCheat         demo_recordcommands director_adrenaline_density director_ai_tanks
syn keyword sourceCheat         director_always_allow_wanderers director_ammo_density director_begin_script
syn keyword sourceCheat         director_build_up_min_interval director_clear_count director_clear_timeout
syn keyword sourceCheat         director_configurable_weapon_spawn_density director_convert_pills
syn keyword sourceCheat         director_convert_pills_critical_health director_convert_pills_to_defib_health
syn keyword sourceCheat         director_custom_finale_tank_spacing director_debug director_debug_revisit
syn keyword sourceCheat         director_debug_scavenge_items director_debug_threat_placement
syn keyword sourceCheat         director_defibrillator_density director_end_script
syn keyword sourceCheat         director_finale_item_cluster_count director_finale_panic_waves
syn keyword sourceCheat         director_finale_stage_delay director_force_background
syn keyword sourceCheat         director_force_panic_event director_force_scripted_panic_event
syn keyword sourceCheat         director_force_tank director_force_versus_start director_force_witch
syn keyword sourceCheat         director_gas_can_density director_gauntlet_movement_bonus
syn keyword sourceCheat         director_gauntlet_movement_bonus_max director_gauntlet_movement_threshold
syn keyword sourceCheat         director_gauntlet_movement_timer_length director_gauntlet_tank_kite_distance
syn keyword sourceCheat         director_ingress_range director_intensity_relax_allow_wanderers_threshold
syn keyword sourceCheat         director_intensity_relax_allow_wanderers_threshold_expert
syn keyword sourceCheat         director_intensity_relax_allow_wanderers_threshold_hard
syn keyword sourceCheat         director_intensity_relax_threshold director_intensity_threshold
syn keyword sourceCheat         director_item_cluster_range director_item_placement_method
syn keyword sourceCheat         director_item_placement_spew director_magnum_spawn_density
syn keyword sourceCheat         director_max_threat_areas director_melee_weapon_density
syn keyword sourceCheat         director_molotov_density director_music_dynamic_mob_size
syn keyword sourceCheat         director_music_dynamic_mobstop_size director_music_dynamic_scanmobstop_size
syn keyword sourceCheat         director_must_create_all_scavenge_items director_no_bosses
syn keyword sourceCheat         director_no_death_check director_no_mobs director_no_specials
syn keyword sourceCheat         director_no_survivor_bots director_num_reserved_wanderers
syn keyword sourceCheat         director_output_population_visit director_oxygen_tank_density
syn keyword sourceCheat         director_pain_pill_density director_panic_forever director_panic_wave_pause_max
syn keyword sourceCheat         director_panic_wave_pause_min director_per_map_weapon_upgrade_chance
syn keyword sourceCheat         director_pipe_bomb_density director_pistol_density
syn keyword sourceCheat         director_propane_tank_density director_ready_duration director_ready_radius
syn keyword sourceCheat         director_relax_max_flow_travel director_relax_max_interval
syn keyword sourceCheat         director_relax_min_interval director_report director_report_scavenge_items
syn keyword sourceCheat         director_scavenge_item_override director_short_finale director_show_intensity
syn keyword sourceCheat         director_solve_item_density director_special_battlefield_respawn_interval
syn keyword sourceCheat         director_special_finale_offer_length director_special_initial_spawn_delay_max
syn keyword sourceCheat         director_special_initial_spawn_delay_max_extra
syn keyword sourceCheat         director_special_initial_spawn_delay_min director_special_original_offer_length
syn keyword sourceCheat         director_special_respawn_interval director_spectate_specials director_start
syn keyword sourceCheat         director_stop director_super_weapon_density director_survivor_movement_window
syn keyword sourceCheat         director_sustain_peak_max_time director_sustain_peak_min_time
syn keyword sourceCheat         director_tank_bypass_max_flow_travel director_tank_checkpoint_interval
syn keyword sourceCheat         director_tank_force_offer director_tank_lottery_entry_time
syn keyword sourceCheat         director_tank_lottery_selection_time director_tank_max_interval
syn keyword sourceCheat         director_tank_min_interval director_tank_offer_debug director_test_loop
syn keyword sourceCheat         director_test_loop_restarts_before_rotate director_test_loop_rotate_maps
syn keyword sourceCheat         director_test_loop_time director_threat_clear_radius
syn keyword sourceCheat         director_threat_max_separation director_threat_min_separation
syn keyword sourceCheat         director_threat_radius director_transition_timeout director_unfreeze_time
syn keyword sourceCheat         director_upgradepack_density director_vomitjar_density
syn keyword sourceCheat         director_weapon_cluster_range disable_dynamic_prop_loading
syn keyword sourceCheat         disable_static_prop_loading dismount display_elapsedtime display_game_events
syn keyword sourceCheat         dlight_debug drawcross drawline dsp_dist_max dsp_dist_min dsp_off
syn keyword sourceCheat         dumpgamestringtable editor_toggle enable_debug_overlays enable_skeleton_draw
syn keyword sourceCheat         endround ent_absbox ent_attachments ent_autoaim ent_bbox ent_call ent_create
syn keyword sourceCheat         ent_dump ent_fire ent_info ent_keyvalue ent_messages ent_messages_draw ent_name
syn keyword sourceCheat         ent_orient ent_pause ent_pivot ent_rbox ent_remove ent_remove_all ent_rotate
syn keyword sourceCheat         ent_script_dump ent_setang ent_setname ent_setpos ent_show_response_criteria
syn keyword sourceCheat         ent_step ent_teleport ent_text ent_text_allow_script ent_viewoffset explode
syn keyword sourceCheat         explodevector fade_crosshair fade_immediately fadein fadeout find_ent
syn keyword sourceCheat         find_ent_index firetarget first_aid_heal_percent first_aid_kit_max_heal
syn keyword sourceCheat         first_aid_kit_use_duration fish_debug fish_dormant flush flush_locked
syn keyword sourceCheat         fog_2dskyboxfogfactor fog_color fog_colorskybox fog_enable fog_enable_water_fog
syn keyword sourceCheat         fog_enableskybox fog_end fog_endskybox fog_hdrcolorscale
syn keyword sourceCheat         fog_hdrcolorscaleskybox fog_maxdensity fog_maxdensityskybox fog_override
syn keyword sourceCheat         fog_start fog_startskybox force_disablex360 fov_cs_debug
syn keyword sourceCheat         fps_screenshot_frequency fps_screenshot_threshold fuel_barrel_damage_amount
syn keyword sourceCheat         fuel_barrel_damage_radius fuel_barrel_debug fuel_barrel_flame_instances
syn keyword sourceCheat         fuel_barrel_health fuel_barrel_screen_shake_amplitude
syn keyword sourceCheat         fuel_barrel_screen_shake_duration fuel_barrel_screen_shake_frequency
syn keyword sourceCheat         fuel_barrel_screen_shake_radius fx_new_sparks g_cannon_damageandradius
syn keyword sourceCheat         g_cannon_debug g_cannon_max_traveltime g_cannon_reloadtime
syn keyword sourceCheat         g_debug_angularsensor g_debug_antlionmaker g_debug_basehelicopter
syn keyword sourceCheat         g_debug_basescanner g_debug_constraint_sounds g_debug_gunship g_debug_headcrab
syn keyword sourceCheat         g_debug_physcannon g_debug_ragdoll_removal g_debug_ragdoll_visualize
syn keyword sourceCheat         g_debug_trackpather g_debug_vehiclebase g_debug_vehicledriver
syn keyword sourceCheat         g_debug_vehicleexit g_debug_vehiclesound g_jeepexitspeed
syn keyword sourceCheat         gameinstructor_dump_open_lessons gameinstructor_find_errors
syn keyword sourceCheat         gameinstructor_save_restore_lessons gameinstructor_verbose
syn keyword sourceCheat         gameinstructor_verbose_lesson gas_can_use_duration gascan_spit_time
syn keyword sourceCheat         gascan_throw_force gascan_use_range gascan_use_tolerance give givecurrentammo
syn keyword sourceCheat         gl_clear_gray gl_clear_randomcolor global_event_log_enabled global_set
syn keyword sourceCheat         glow_outline_width glow_use_tolerance god grenadelauncher_damage
syn keyword sourceCheat         grenadelauncher_ff_scale grenadelauncher_ff_scale_self
syn keyword sourceCheat         grenadelauncher_force_kill grenadelauncher_radius_kill
syn keyword sourceCheat         grenadelauncher_radius_stumble grenadelauncher_show_radius
syn keyword sourceCheat         grenadelauncher_velocity hack_elevator_z_offset hidehud host_sleep
syn keyword sourceCheat         host_timescale hostage_debug hud_targetid_rangefinder hunk_print_allocations
syn keyword sourceCheat         hunk_track_allocation_types hunter_committed_attack_range
syn keyword sourceCheat         hunter_leap_away_give_up_range hunter_pounce_air_speed hunter_pounce_loft_rate
syn keyword sourceCheat         hunter_pounce_max_loft_angle hunter_pounce_ready_range hunter_pz_claw_dmg
syn keyword sourceCheat         hurtme in_forceuser incendiary_ammo_burn_time inferno_acid_spawn_angle
syn keyword sourceCheat         inferno_child_spawn_interval_multiplier inferno_child_spawn_max_depth
syn keyword sourceCheat         inferno_damage inferno_debug inferno_dlight_spacing inferno_flame_lifetime
syn keyword sourceCheat         inferno_flame_spacing inferno_forward_reduction_factor
syn keyword sourceCheat         inferno_friendly_fire_duration inferno_initial_spawn_interval
syn keyword sourceCheat         inferno_max_child_spawn_interval inferno_max_flames inferno_max_range
syn keyword sourceCheat         inferno_per_flame_spawn_duration inferno_scorch_decals inferno_spawn_angle
syn keyword sourceCheat         inferno_surface_offset inferno_velocity_decay_factor inferno_velocity_factor
syn keyword sourceCheat         inferno_velocity_normal_factor intensity_averaged_following_decay
syn keyword sourceCheat         intensity_decay_time intensity_enemy_death_far_range
syn keyword sourceCheat         intensity_enemy_death_near_range intensity_factor intensity_lock
syn keyword sourceCheat         ipc_console_enable jockey jockey_pounce_air_speed jockey_pounce_loft_rate
syn keyword sourceCheat         jockey_pounce_max_loft_angle jockey_pz_claw_dmg jockeyme kdtree_test kill
syn keyword sourceCheat         killvector l4d2_snd_adrenaline leaderboard_duplicate_entries light_crosshair
syn keyword sourceCheat         lightcache_maxmiss linefile locator_split_len locator_split_maxwide_percent
syn keyword sourceCheat         loopsingleplayermaps lower_body_debug mark mat_accelerate_adjust_exposure_down
syn keyword sourceCheat         mat_ambient_light_b mat_ambient_light_g mat_ambient_light_r mat_aniso_disable
syn keyword sourceCheat         mat_autoexposure_max_multiplier mat_bloomamount_rate mat_bumpbasis
syn keyword sourceCheat         mat_camerarendertargetoverlaysize mat_colcorrection_forceentitiesclientside
syn keyword sourceCheat         mat_crosshair mat_crosshair_edit mat_crosshair_explorer
syn keyword sourceCheat         mat_crosshair_printmaterial mat_crosshair_reloadmaterial mat_debug
syn keyword sourceCheat         mat_debug_autoexposure mat_debug_bloom mat_debug_process_halfscreen
syn keyword sourceCheat         mat_debugalttab mat_depthbias_decal mat_depthbias_normal
syn keyword sourceCheat         mat_depthbias_shadowmap mat_diffuse mat_displacementmap mat_drawflat
syn keyword sourceCheat         mat_drawgray mat_drawwater mat_dynamicPaintmaps mat_dynamic_tonemapping
syn keyword sourceCheat         mat_dynamiclightmaps mat_edit mat_exposure_center_region_x
syn keyword sourceCheat         mat_exposure_center_region_x_flashlight mat_exposure_center_region_y
syn keyword sourceCheat         mat_exposure_center_region_y_flashlight mat_fastclip mat_fastnobump
syn keyword sourceCheat         mat_fillrate mat_force_bloom mat_force_tonemap_min_avglum
syn keyword sourceCheat         mat_force_tonemap_percent_bright_pixels mat_force_tonemap_percent_target
syn keyword sourceCheat         mat_force_tonemap_scale mat_forcedynamic mat_forcemanagedtextureintohardware
syn keyword sourceCheat         mat_frame_sync_enable mat_frame_sync_force_texture mat_fullbright
syn keyword sourceCheat         mat_hdr_tonemapscale mat_hdr_uncapexposure mat_hsv mat_leafvis
syn keyword sourceCheat         mat_leafvisforceleaf mat_loadtextures mat_lpreview_mode mat_luxels
syn keyword sourceCheat         mat_measurefillrate mat_morphstats mat_norendering mat_normalmaps mat_normals
syn keyword sourceCheat         mat_postprocess_enable mat_proxy mat_reloadallmaterials mat_reloadmaterial
syn keyword sourceCheat         mat_reloadtextures mat_remoteshadercompile mat_rendered_faces_count
syn keyword sourceCheat         mat_reporthwmorphmemory mat_reversedepth mat_show_texture_memory_usage
syn keyword sourceCheat         mat_showcamerarendertarget mat_showframebuffertexture mat_showlowresimage
syn keyword sourceCheat         mat_showmiplevels mat_showwatertextures mat_slopescaledepthbias_decal
syn keyword sourceCheat         mat_slopescaledepthbias_normal mat_slopescaledepthbias_shadowmap
syn keyword sourceCheat         mat_softwareskin mat_stub mat_supportflashlight mat_suppress mat_surfaceid
syn keyword sourceCheat         mat_surfacemat mat_tessellation_accgeometrytangents
syn keyword sourceCheat         mat_tessellation_cornertangents mat_tessellation_update_buffers
syn keyword sourceCheat         mat_tessellationlevel mat_tessellationmode mat_tonemap_algorithm
syn keyword sourceCheat         mat_tonemap_min_avglum mat_tonemap_percent_bright_pixels
syn keyword sourceCheat         mat_tonemap_percent_target mat_viewportscale mat_viewportupscale
syn keyword sourceCheat         mat_visualize_dof mat_wireframe mat_yuv melee_collateral_shove_count
syn keyword sourceCheat         melee_combo_reset_time melee_dump_weapons melee_dump_weapons_server
syn keyword sourceCheat         melee_force_scalar melee_force_scalar_combat_character melee_range
syn keyword sourceCheat         melee_reload_info melee_reload_info_server melee_show_swing mem_dumpvballocs
syn keyword sourceCheat         mem_force_flush mem_incremental_compact_rate memory_diff memory_list
syn keyword sourceCheat         memory_mark memory_status mix_dynamic_cull_max_CI_emitters mix_dynamic_debug_CI
syn keyword sourceCheat         mix_dynamic_max_CI_emitters mix_dynamic_num_attack_vox_CI mod_dynamicloadpause
syn keyword sourceCheat         mod_dynamicloadthrottle molotov_throw_detonate_time mounted_gun_cooldown_time
syn keyword sourceCheat         mounted_gun_mount_cooldown_time mounted_gun_overheat_penalty_time
syn keyword sourceCheat         mounted_gun_overheat_time mounted_gun_rate_of_fire mp_feetmaxyawrate
syn keyword sourceCheat         mp_forceactivityset mp_forcerespawnplayers mp_forcewin mp_showcleanedupents
syn keyword sourceCheat         mp_showgestureslots mp_showroundtransitions mp_simulatemultiplecappers
syn keyword sourceCheat         multiplayerendgame music_calm_min_interval music_dynamic_CI_sight_decay
syn keyword sourceCheat         music_dynamic_PZ_BPM music_dynamic_PZ_interval_randmultmax
syn keyword sourceCheat         music_dynamic_SI_close_distmax music_dynamic_SI_far_distmin
syn keyword sourceCheat         music_dynamic_SI_inrange_distmax music_dynamic_action_decay
syn keyword sourceCheat         music_dynamic_ambient_decay music_dynamic_ambient_in_max
syn keyword sourceCheat         music_dynamic_ambient_in_min music_dynamic_ambient_out_max
syn keyword sourceCheat         music_dynamic_ambient_out_min music_dynamic_ambient_vol_min_alert
syn keyword sourceCheat         music_dynamic_attack_CI_close_decay music_dynamic_attack_CI_close_distmax
syn keyword sourceCheat         music_dynamic_attack_CI_distmax music_dynamic_attack_CI_near_decay
syn keyword sourceCheat         music_dynamic_attack_CI_near_distmax music_dynamic_attack_CI_num
syn keyword sourceCheat         music_dynamic_attack_CI_veryclose_decay
syn keyword sourceCheat         music_dynamic_attack_CI_veryclose_distmax music_dynamic_calm_decay
syn keyword sourceCheat         music_dynamic_damage_decay music_dynamic_damage_duck_damage_max
syn keyword sourceCheat         music_dynamic_damage_duck_damage_min music_dynamic_damage_duck_max
syn keyword sourceCheat         music_dynamic_damage_duck_min music_dynamic_damage_increment
syn keyword sourceCheat         music_dynamic_debug music_dynamic_dodamage_decay
syn keyword sourceCheat         music_dynamic_dodamage_increment music_dynamic_gunfire_decay
syn keyword sourceCheat         music_dynamic_gunfire_increment music_dynamic_gunfireslow_decay
syn keyword sourceCheat         music_dynamic_gunfireslow_increment music_dynamic_mob_action_close_max
syn keyword sourceCheat         music_dynamic_mob_action_close_min music_dynamic_mob_action_decay
syn keyword sourceCheat         music_dynamic_mob_action_increment music_dynamic_mob_action_max
syn keyword sourceCheat         music_dynamic_mob_action_min music_dynamic_mob_choir_BPM
syn keyword sourceCheat         music_dynamic_mob_choir_interval_beats
syn keyword sourceCheat         music_dynamic_mob_choir_interval_randmultmax music_dynamic_mob_damage_max
syn keyword sourceCheat         music_dynamic_mob_damage_min music_dynamic_mob_decay
syn keyword sourceCheat         music_dynamic_mob_increment music_dynamic_mob_large music_dynamic_mob_max
syn keyword sourceCheat         music_dynamic_mob_med music_dynamic_mob_min music_dynamic_mob_small
syn keyword sourceCheat         music_dynamic_on music_dynamic_scavenge_beat
syn keyword sourceCheat         music_dynamic_solosuccess_damagemin music_dynamic_solosuccess_decay
syn keyword sourceCheat         music_dynamic_solosuccess_increment music_dynamic_specials_interval_beats
syn keyword sourceCheat         music_dynamic_threat_decay music_dynamic_update_interval
syn keyword sourceCheat         music_dynamic_witch_alert_interval music_dynamic_witch_near_max
syn keyword sourceCheat         music_dynamic_witch_near_min music_intensity_override music_intensity_threshold
syn keyword sourceCheat         music_large_area_reveal_repeat_threshold music_large_area_reveal_threshold
syn keyword sourceCheat         music_manager music_master_debug music_master_tag_threshold
syn keyword sourceCheat         music_min_pending_threat_time music_min_safe_time
syn keyword sourceCheat         music_moment_of_silence_repeat_interval music_moment_of_silence_start_delay
syn keyword sourceCheat         nav_add_to_selected_set nav_add_to_selected_set_by_id nav_analyze
syn keyword sourceCheat         nav_analyze_scripted nav_area_bgcolor nav_area_max_size nav_auto_build_area
syn keyword sourceCheat         nav_avoid nav_begin_area nav_begin_deselecting nav_begin_drag_deselecting
syn keyword sourceCheat         nav_begin_drag_selecting nav_begin_selecting nav_begin_shift_xy
syn keyword sourceCheat         nav_blockers_can_affect_flow nav_build_ladder nav_check_file_consistency
syn keyword sourceCheat         nav_chop_selected nav_clear_attribute nav_clear_selected_set
syn keyword sourceCheat         nav_clear_walkable_marks nav_compress_id nav_connect nav_coplanar_slope_limit
syn keyword sourceCheat         nav_coplanar_slope_limit_displacement nav_corner_adjust_adjacent
syn keyword sourceCheat         nav_corner_lower nav_corner_place_on_ground nav_corner_raise nav_corner_select
syn keyword sourceCheat         nav_create_area_at_feet nav_create_place_on_ground nav_crouch nav_debug_blocked
syn keyword sourceCheat         nav_debug_finale_area nav_delete nav_delete_marked nav_disconnect
syn keyword sourceCheat         nav_displacement_test nav_dont_hide nav_draw_limit nav_edit nav_end_area
syn keyword sourceCheat         nav_end_deselecting nav_end_drag_deselecting nav_end_drag_selecting
syn keyword sourceCheat         nav_end_selecting nav_end_shift_xy nav_fix_playerclips nav_flood_select
syn keyword sourceCheat         nav_flood_select_tolerance nav_flow_max_survivor_climb_height
syn keyword sourceCheat         nav_flow_max_survivor_drop_height nav_fog_edit nav_fog_mark nav_fog_pick
syn keyword sourceCheat         nav_fog_print_used nav_fog_replace nav_fog_select_place nav_fog_set
syn keyword sourceCheat         nav_gen_cliffs_approx nav_generate nav_generate_fencetops
syn keyword sourceCheat         nav_generate_fixup_jump_areas nav_generate_incremental
syn keyword sourceCheat         nav_generate_incremental_range nav_generate_incremental_tolerance nav_gui
syn keyword sourceCheat         nav_gui_rebuild nav_jump nav_ladder_flip nav_load nav_lower_drag_volume_max
syn keyword sourceCheat         nav_lower_drag_volume_min nav_lying_down_percent nav_make_sniper_spots nav_mark
syn keyword sourceCheat         nav_mark_attribute nav_mark_unnamed nav_mark_walkable nav_max_auto_area_size
syn keyword sourceCheat         nav_max_view_distance nav_max_vis_delta_list_length nav_merge nav_merge_mesh
syn keyword sourceCheat         nav_no_hostages nav_no_jump nav_obscure_range nav_place_floodfill
syn keyword sourceCheat         nav_place_list nav_place_pick nav_place_replace nav_place_set
syn keyword sourceCheat         nav_potentially_visible_dot_tolerance nav_precise nav_print_visibility_info
syn keyword sourceCheat         nav_print_visible_set_counts nav_quicksave nav_raise_drag_volume_max
syn keyword sourceCheat         nav_raise_drag_volume_min nav_recall_selected_set nav_recompute_flow
syn keyword sourceCheat         nav_recompute_flow_optimization nav_remove_from_selected_set
syn keyword sourceCheat         nav_remove_jump_areas nav_run nav_save nav_save_selected
syn keyword sourceCheat         nav_select_blocked_areas nav_select_completely_visible
syn keyword sourceCheat         nav_select_damaging_areas nav_select_half_space nav_select_invalid_areas
syn keyword sourceCheat         nav_select_obstructed_areas nav_select_partially_visible nav_select_radius
syn keyword sourceCheat         nav_select_stairs nav_select_threat nav_select_view_distance
syn keyword sourceCheat         nav_select_visible_set_size nav_selected_set_border_color
syn keyword sourceCheat         nav_selected_set_color nav_set_place_mode nav_shift nav_show_approach_points
syn keyword sourceCheat         nav_show_area_info nav_show_compass nav_show_connectionblockers
syn keyword sourceCheat         nav_show_continguous nav_show_danger nav_show_func_nav_avoid
syn keyword sourceCheat         nav_show_func_nav_prefer nav_show_ladder_bounds nav_show_light_intensity
syn keyword sourceCheat         nav_show_node_grid nav_show_node_id nav_show_nodes nav_show_player_area
syn keyword sourceCheat         nav_show_player_counts nav_show_potentially_visible nav_simplify_selected
syn keyword sourceCheat         nav_slope_limit nav_slope_tolerance nav_snap_to_grid nav_solid_props nav_splice
syn keyword sourceCheat         nav_split nav_split_place_on_ground nav_stand nav_stop nav_store_selected_set
syn keyword sourceCheat         nav_strip nav_subdivide nav_test_node nav_test_node_crouch
syn keyword sourceCheat         nav_test_node_crouch_dir nav_test_stairs nav_test_visibility
syn keyword sourceCheat         nav_toggle_deselecting nav_toggle_in_selected_set nav_toggle_place_mode
syn keyword sourceCheat         nav_toggle_place_painting nav_toggle_selected_set nav_toggle_selecting
syn keyword sourceCheat         nav_transient nav_trouble_report nav_trouble_report_corner_to_corner
syn keyword sourceCheat         nav_trouble_report_invalid nav_trouble_report_suggestions nav_trouble_test_area
syn keyword sourceCheat         nav_trouble_test_debug_duration nav_trouble_walkable_backtrace nav_unmark
syn keyword sourceCheat         nav_update_lighting nav_update_visibility_on_edit nav_use_place nav_walk
syn keyword sourceCheat         nav_warp_to_mark nav_world_center nb_acceleration nb_allow_avoiding
syn keyword sourceCheat         nb_allow_climbing nb_allow_gap_jumping nb_assault nb_blind nb_chase_lead_time
syn keyword sourceCheat         nb_command nb_debug nb_debug_climbing nb_debug_filter nb_debug_history
syn keyword sourceCheat         nb_debug_known_entities nb_delete_all nb_direct_chase_nav_check
syn keyword sourceCheat         nb_force_look_at nb_friction_forward nb_friction_sideways
syn keyword sourceCheat         nb_goal_look_ahead_range nb_gravity nb_head_aim_resettle_angle
syn keyword sourceCheat         nb_head_aim_resettle_time nb_head_aim_settle_duration
syn keyword sourceCheat         nb_head_aim_steady_max_rate nb_ladder_align_range nb_last_area_update_tolerance
syn keyword sourceCheat         nb_lean_forward_accel nb_lean_max_angle nb_lean_rate nb_move_to_cursor
syn keyword sourceCheat         nb_move_to_position nb_path_draw_inc nb_path_draw_segment_count
syn keyword sourceCheat         nb_path_segment_influence_radius nb_player_crouch nb_player_move nb_player_stop
syn keyword sourceCheat         nb_player_walk nb_rush nb_saccade_speed nb_saccade_time nb_select
syn keyword sourceCheat         nb_speed_look_ahead_range nb_stop nb_stuck_dump_display
syn keyword sourceCheat         nb_stuck_dump_filter_entindex nb_stuck_dump_filter_identifier
syn keyword sourceCheat         nb_stuck_dump_filter_min_duration nb_stuck_dump_filter_time_end
syn keyword sourceCheat         nb_stuck_dump_filter_time_start nb_stuck_dump_show_details nb_update_debug
syn keyword sourceCheat         nb_update_framelimit nb_update_frequency nb_update_maxslide
syn keyword sourceCheat         nb_vision_ignore_survivors nb_vision_notice_hidden_range nb_warp_selected_here
syn keyword sourceCheat         nb_yaw_rate net_blockmsg net_droppackets net_earliertempents net_fakejitter
syn keyword sourceCheat         net_fakelag net_fakeloss net_showevents net_showreliablesounds
syn keyword sourceCheat         net_showusermessages next next_scavenge_cluster noclip noclip_fixup notarget
syn keyword sourceCheat         npc_ally_deathmessage obj_child_damage_factor obj_damage_factor object_verbose
syn keyword sourceCheat         occlusion_test_async_jitter occlusion_test_async_move_tolerance
syn keyword sourceCheat         pain_pills_decay_rate pain_pills_health_threshold pain_pills_health_value
syn keyword sourceCheat         paintsplat_bias paintsplat_max_alpha_noise paintsplat_noise_enabled
syn keyword sourceCheat         panel_test_title_safe particle_simulateoverflow particle_test_attach_attachment
syn keyword sourceCheat         particle_test_attach_mode particle_test_file particle_test_start
syn keyword sourceCheat         particle_test_stop perfui phys2_debug_wireframe phys2_default_max_velocity
syn keyword sourceCheat         phys2_dump_runtime_sizes phys2_load phys2_max_length_constraint_anchor
syn keyword sourceCheat         phys2_mem_debug phys2_preload_models phys2_ragdoll_drive_type phys2_save
syn keyword sourceCheat         phys2_save_client phys2_save_server phys2_scheduler_manual_pools
syn keyword sourceCheat         phys2_shadow_port phys2_shoot phys2_stats phys2_vdb phys2_vdb_host phys2ui
syn keyword sourceCheat         phys_enable_PIX_counters phys_explosion_force phys_shoot phys_show_active
syn keyword sourceCheat         physcannon_mega_enabled physx_debug_dll physx_valve_dll picker
syn keyword sourceCheat         player_debug_print_damage player_incap_use_radius player_throwforce
syn keyword sourceCheat         player_use_radius playsoundscape posedebug post_jump_crouch
syn keyword sourceCheat         precache_all_survivors print_colorcorrection prop_crosshair prop_debug
syn keyword sourceCheat         prop_dynamic_create prop_physics_create pwatchent pwatchvar pz_damages
syn keyword sourceCheat         r_3dskyonly r_AirboatPitchCurveLinear r_AirboatPitchCurveZero
syn keyword sourceCheat         r_AirboatRollCurveLinear r_AirboatRollCurveZero r_AirboatViewBlendTo
syn keyword sourceCheat         r_AirboatViewBlendToScale r_AirboatViewBlendToTime r_AirboatViewDampenDamp
syn keyword sourceCheat         r_AirboatViewDampenFreq r_AirboatViewZHeight r_ClipAreaFrustums
syn keyword sourceCheat         r_ClipAreaPortals r_DispBuildable r_DispWalkable r_DrawBeams r_DrawDisp
syn keyword sourceCheat         r_DrawModelLightOrigin r_DrawPortals r_DrawRain r_JeepFOV r_JeepViewBlendTo
syn keyword sourceCheat         r_JeepViewBlendToScale r_JeepViewBlendToTime r_JeepViewDampenDamp
syn keyword sourceCheat         r_JeepViewDampenFreq r_JeepViewZHeight r_PortalTestEnts r_RainCheck
syn keyword sourceCheat         r_RainDebugDuration r_RainHack r_RainProfile r_RainRadius r_RainSideVel
syn keyword sourceCheat         r_RainSimulate r_RainSplashPercentage r_SnowColorBlue r_SnowColorGreen
syn keyword sourceCheat         r_SnowColorRed r_SnowDebugBox r_SnowEnable r_SnowEndAlpha r_SnowEndSize
syn keyword sourceCheat         r_SnowFallSpeed r_SnowInsideRadius r_SnowOutsideRadius r_SnowParticles
syn keyword sourceCheat         r_SnowPosScale r_SnowRayEnable r_SnowRayLength r_SnowRayRadius r_SnowSpeedScale
syn keyword sourceCheat         r_SnowStartAlpha r_SnowStartSize r_SnowWindScale r_SnowZoomOffset
syn keyword sourceCheat         r_SnowZoomRadius r_VehicleViewClamp r_VehicleViewDampen r_alphafade_usefov
syn keyword sourceCheat         r_ambientfraction r_ambientlightingonly r_aspectratio r_avglight r_avglightmap
syn keyword sourceCheat         r_brush_queue_mode r_clip3Dskyboxneartoworldfar
syn keyword sourceCheat         r_clip3Dskyboxneartoworldfarfudge r_colorstaticprops r_debugcheapwater
syn keyword sourceCheat         r_debugrandomstaticlighting r_depthoverlay r_disable_distance_fade_on_big_props
syn keyword sourceCheat         r_disable_distance_fade_on_big_props_thresh r_disable_update_shadow
syn keyword sourceCheat         r_dlightsenable r_drawallrenderables r_drawbrushmodels r_drawclipbrushes
syn keyword sourceCheat         r_drawdecals r_drawentities r_drawfuncdetail r_drawleaf r_drawlightcache
syn keyword sourceCheat         r_drawlightinfo r_drawlights r_drawmodelstatsoverlay
syn keyword sourceCheat         r_drawmodelstatsoverlaydistance r_drawmodelstatsoverlayfilter
syn keyword sourceCheat         r_drawopaquerenderables r_drawopaqueworld r_drawothermodels r_drawparticles
syn keyword sourceCheat         r_drawrenderboxes r_drawropes r_drawscreenoverlay r_drawskybox r_drawsprites
syn keyword sourceCheat         r_drawstaticprops r_drawtracers r_drawtracers_movetonotintersect
syn keyword sourceCheat         r_drawtranslucentrenderables r_drawtranslucentworld r_drawunderwateroverlay
syn keyword sourceCheat         r_drawvgui r_drawviewmodel r_drawworld r_dscale_basefov r_dscale_fardist
syn keyword sourceCheat         r_dscale_farscale r_dscale_neardist r_dscale_nearscale r_dynamiclighting
syn keyword sourceCheat         r_entity r_eyeglintlodpixels r_eyewaterepsilon r_farz
syn keyword sourceCheat         r_flashlight_attach_to_viewmodel r_flashlight_version2 r_flashlightambient
syn keyword sourceCheat         r_flashlightbacktraceoffset r_flashlightbrightness r_flashlightclip
syn keyword sourceCheat         r_flashlightconstant r_flashlightdrawclip r_flashlightfar r_flashlightfov
syn keyword sourceCheat         r_flashlightinfectedtexture r_flashlightladderdist r_flashlightlinear
syn keyword sourceCheat         r_flashlightlockposition r_flashlightmuzzleflashfov r_flashlightnear
syn keyword sourceCheat         r_flashlightnearoffsetscale r_flashlightoffsetforward
syn keyword sourceCheat         r_flashlightoffsetforward_low r_flashlightoffsetright
syn keyword sourceCheat         r_flashlightoffsetright_low r_flashlightoffsetup r_flashlightoffsetup_low
syn keyword sourceCheat         r_flashlightoffsetx r_flashlightoffsety r_flashlightoffsetz
syn keyword sourceCheat         r_flashlightquadratic r_flashlightscissor r_flashlightshadowatten
syn keyword sourceCheat         r_flashlighttracedistcutoff r_flashlighttracedistwatercutoff
syn keyword sourceCheat         r_flashlightvisualizetrace r_hwmorph r_itemblinkmax r_itemblinkrate
syn keyword sourceCheat         r_lightcache_invalidate r_lightcache_numambientsamples
syn keyword sourceCheat         r_lightcache_radiusfactor r_lightcachecenter r_lightcachemodel r_lightinterp
syn keyword sourceCheat         r_lightmap r_lightstyle r_lightwarpidentity r_lockpvs r_mapextents
syn keyword sourceCheat         r_modelAmbientMin r_modelwireframedecal r_newflashlight r_nohw r_nosw r_novis
syn keyword sourceCheat         r_occlusionspew r_oldlightselection r_particle_demo r_particle_timescale
syn keyword sourceCheat         r_partition_level r_portalscloseall r_portalsopenall r_proplightingpooling
syn keyword sourceCheat         r_radiosity r_rainalpha r_rainalphapow r_raindensity r_rainlength r_rainspeed
syn keyword sourceCheat         r_rainwidth r_randomflex r_rimlight r_screenfademaxsize r_screenfademinsize
syn keyword sourceCheat         r_screenoverlay r_shadow_debug_spew r_shadow_deferred r_shadowangles
syn keyword sourceCheat         r_shadowblobbycutoff r_shadowcolor r_shadowdir r_shadowdist
syn keyword sourceCheat         r_shadowfromanyworldlight r_shadowfromworldlights_debug r_shadowids
syn keyword sourceCheat         r_shadows_gamecontrol r_shadowwireframe r_showenvcubemap r_showz_power r_skin
syn keyword sourceCheat         r_skybox r_slowpathwireframe r_studio_stats r_studio_stats_lock
syn keyword sourceCheat         r_studio_stats_mode r_swingflashlight r_unloadlightmaps r_updaterefracttexture
syn keyword sourceCheat         r_vehicleBrakeRate r_visocclusion r_visualizelighttraces
syn keyword sourceCheat         r_visualizelighttracesshowfulltrace r_visualizetraces radarvisdistance
syn keyword sourceCheat         radarvismaxdot radarvismethod radarvispow radius_damage_show_hits
syn keyword sourceCheat         ragdoll_velocity_multiplier rangefinder recompute_speed report_cliententitysim
syn keyword sourceCheat         report_clientthinklist rescue_distance rescue_finale_ignore_distance
syn keyword sourceCheat         rescue_finale_spawn_range rescue_ignore_distance rescue_interval
syn keyword sourceCheat         rescue_min_dead_time rescue_range rescue_show rescue_show_blocked
syn keyword sourceCheat         rescue_spawn_flow rescue_spawn_range rescue_update_nav rescue_yell_delay
syn keyword sourceCheat         rescue_yell_interval reset_gameconvars respawn_entities rope_min_pixel_diameter
syn keyword sourceCheat         rr_followup_maxdist rr_forceconcept rr_remarkable_max_distance
syn keyword sourceCheat         rr_remarkable_maxdist rr_remarkable_world_entities_replay_limit
syn keyword sourceCheat         rr_remarkables_enabled rr_thenany_score_slop sb_all_bot_game
syn keyword sourceCheat         sb_allow_shoot_through_survivors sb_battlestation_give_up_range_from_human
syn keyword sourceCheat         sb_battlestation_human_hold_time sb_close_checkpoint_door_interval
syn keyword sourceCheat         sb_close_threat_range sb_combat_saccade_speed sb_crouch
syn keyword sourceCheat         sb_debug_apoproach_wait_time sb_debug_buddy sb_debug_locomotion
syn keyword sourceCheat         sb_debug_retreat sb_debug_team_avoidance sb_dont_bash sb_dont_shoot
syn keyword sourceCheat         sb_enforce_proximity_lookat_timeout sb_enforce_proximity_range sb_escort
syn keyword sourceCheat         sb_far_hearing_range sb_flashlight sb_follow_stress_factor
syn keyword sourceCheat         sb_force_max_intensity sb_friend_immobilized_reaction_time_expert
syn keyword sourceCheat         sb_friend_immobilized_reaction_time_hard
syn keyword sourceCheat         sb_friend_immobilized_reaction_time_normal
syn keyword sourceCheat         sb_friend_immobilized_reaction_time_vs sb_friendlyfire sb_give
syn keyword sourceCheat         sb_give_random_weapon sb_hindrance_range sb_hold_position
syn keyword sourceCheat         sb_l4d1_survivor_behavior sb_locomotion_wait_threshold
syn keyword sourceCheat         sb_max_battlestation_range_from_human sb_max_scavenge_separation
syn keyword sourceCheat         sb_max_team_melee_weapons sb_min_attention_notice_time
syn keyword sourceCheat         sb_min_orphan_time_to_cover sb_minigun_distance sb_move
syn keyword sourceCheat         sb_narrow_corridor_width sb_near_hearing_range sb_neighbor_range
syn keyword sourceCheat         sb_normal_saccade_speed sb_open_fire sb_path_lookahead_range sb_perf_crawl
syn keyword sourceCheat         sb_perf_crawl_ang sb_perf_crawl_dist sb_perf_crawl_time sb_perf_dump
syn keyword sourceCheat         sb_perf_dump_bots sb_pushscale sb_reachability_cache_lifetime
syn keyword sourceCheat         sb_replacement_interval sb_rescue_vehicle_loading_range
syn keyword sourceCheat         sb_revive_friend_distance sb_separation_danger_max_range
syn keyword sourceCheat         sb_separation_danger_min_range sb_separation_range sb_show_threat_areas
syn keyword sourceCheat         sb_sidestep_for_horde sb_stop sb_takecontrol sb_threat_close_range
syn keyword sourceCheat         sb_threat_exposure_stop sb_threat_exposure_walk sb_threat_far_range
syn keyword sourceCheat         sb_threat_medium_range sb_threat_very_close_range sb_threat_very_far_range
syn keyword sourceCheat         sb_unstick sb_use_button_range sb_use_upgrades sb_vomit_blind_time
syn keyword sourceCheat         scavenge_cluster_bonus_time scavenge_cluster_range_squared
syn keyword sourceCheat         scavenge_cluster_remove_on_pour scavenge_increment_score
syn keyword sourceCheat         scavenge_item_respawn_delay scavenge_match_finished_delay
syn keyword sourceCheat         scavenge_overtime_grace_time scavenge_round_initial_time
syn keyword sourceCheat         scavenge_round_restart_delay scavenge_round_restart_delay_tied
syn keyword sourceCheat         scavenge_round_setup_time scavenge_score_bonus_time scavenge_start
syn keyword sourceCheat         scavenge_wanderer_respawn_chance scenario_end screenfademaxsize
syn keyword sourceCheat         screenfademinsize script script_add_debug_filter script_add_watch
syn keyword sourceCheat         script_add_watch_pattern script_attach_debugger script_clear_watches
syn keyword sourceCheat         script_debug script_dump_all script_execute script_find script_help
syn keyword sourceCheat         script_reload_code script_reload_enity_code script_reload_think
syn keyword sourceCheat         script_remove_debug_filter script_remove_watch script_remove_watch_pattern
syn keyword sourceCheat         script_resurrect_unreachable script_trace_disable script_trace_disable_all
syn keyword sourceCheat         script_trace_disable_key script_trace_enable script_trace_enable_all
syn keyword sourceCheat         script_trace_enable_key scripted_mode_activate scripted_mode_increment_stage
syn keyword sourceCheat         scripted_mode_shutdown scriptedmode_journal select_cliff
syn keyword sourceCheat         select_invalid_finale_nospawn select_with_attribute setang setang_exact
syn keyword sourceCheat         setmodel setpos setpos_exact setpos_player shake shake_stop
syn keyword sourceCheat         shout_going_to_die_interval shout_make_way_interval shout_max_warn_range
syn keyword sourceCheat         shout_min_special_warn_interval shout_min_use_range shout_min_warn_interval
syn keyword sourceCheat         shout_threat_range shout_view_motion_threshold shout_view_target_threahold
syn keyword sourceCheat         showbudget showbudget_texture showbudget_texture_global showtriggers
syn keyword sourceCheat         showtriggers_toggle singlestep sixense_aim_freeaim_switch_blend_time_enter
syn keyword sourceCheat         sixense_teleport_metroid_blend_time sixense_teleport_wait_to_blend_time
syn keyword sourceCheat         smoker_pz_claw_dmg smoker_tongue_delay snd_debug_panlaw snd_dvar_dist_max
syn keyword sourceCheat         snd_dvar_dist_min snd_filter snd_foliage_db_loss snd_gain snd_gain_max
syn keyword sourceCheat         snd_gain_min snd_obscured_gain_dB snd_op_test_convar snd_pause_all
syn keyword sourceCheat         snd_play_in_out snd_pre_gain_dist_falloff snd_rear_speaker_scale snd_refdb
syn keyword sourceCheat         snd_refdist snd_report_format_sound snd_report_loop_sound
syn keyword sourceCheat         snd_report_start_sound snd_report_stop_sound snd_report_verbose_error
syn keyword sourceCheat         snd_set_custom_zombat_suffix snd_show snd_show_filter snd_show_print
syn keyword sourceCheat         snd_showstart snd_sos_list_operator_updates snd_sos_show_block_debug
syn keyword sourceCheat         snd_sos_show_client_rcv snd_sos_show_client_xmit
syn keyword sourceCheat         snd_sos_show_operator_entry_filter snd_sos_show_operator_init
syn keyword sourceCheat         snd_sos_show_operator_parse snd_sos_show_operator_prestart
syn keyword sourceCheat         snd_sos_show_operator_shutdown snd_sos_show_operator_start
syn keyword sourceCheat         snd_sos_show_operator_stop_entry snd_sos_show_operator_updates
syn keyword sourceCheat         snd_sos_show_queuetotrack snd_sos_show_server_xmit snd_sos_show_startqueue
syn keyword sourceCheat         snd_visualize soundscape_debug soundscape_dumpclient soundscape_fadetime
syn keyword sourceCheat         soundscape_radius_debug spawn_behind_survivors_distance spec_allow_roaming
syn keyword sourceCheat         spec_freeze_cinematiclight_b spec_freeze_cinematiclight_g
syn keyword sourceCheat         spec_freeze_cinematiclight_r spec_freeze_cinematiclight_scale
syn keyword sourceCheat         spec_freeze_distance_max spec_freeze_distance_min spec_freeze_target_fov
syn keyword sourceCheat         spec_freeze_target_fov_long spec_freeze_time spec_freeze_traveltime
syn keyword sourceCheat         spec_freeze_traveltime_long spec_keep_team_cc spec_keep_team_glows spike
syn keyword sourceCheat         spitter_pz_claw_dmg ss_debug_draw_player ss_mimic ss_teleport stats_show_empty
syn keyword sourceCheat         stopsound stopsoundscape surfaceprop survival_boomer_limit_increase
syn keyword sourceCheat         survival_charger_limit_increase survival_generate_fake_times
syn keyword sourceCheat         survival_horde_stage_interval survival_horde_stage_interval_decay
syn keyword sourceCheat         survival_hunter_limit_increase survival_jockey_limit_increase
syn keyword sourceCheat         survival_lull_time survival_lull_time_increment survival_lull_time_max
syn keyword sourceCheat         survival_max_boomers survival_max_chargers survival_max_hunters
syn keyword sourceCheat         survival_max_jockeys survival_max_smokers survival_max_specials
syn keyword sourceCheat         survival_max_spitters survival_round_restart_delay
syn keyword sourceCheat         survival_smoker_limit_increase survival_special_limit_increase
syn keyword sourceCheat         survival_special_spawn_interval survival_special_spawn_interval_decay
syn keyword sourceCheat         survival_special_stage_interval survival_spitter_limit_increase survival_start
syn keyword sourceCheat         survival_tank_multiple_spawn_delay survival_tank_stage_interval
syn keyword sourceCheat         survival_tank_stage_interval_decay survivor_accuracy_upgrade_factor
syn keyword sourceCheat         survivor_autolook_voc_delay survivor_burn_factor_easy
syn keyword sourceCheat         survivor_burn_factor_expert survivor_burn_factor_hard
syn keyword sourceCheat         survivor_burn_factor_normal survivor_calm_damage_delay
syn keyword sourceCheat         survivor_calm_deploy_delay survivor_calm_intensity survivor_calm_no_flashlight
syn keyword sourceCheat         survivor_calm_recent_enemy_delay survivor_calm_weapon_delay
syn keyword sourceCheat         survivor_crawl_speed survivor_crouch_speed survivor_damage_speed_factor
syn keyword sourceCheat         survivor_debug_active_area_set survivor_debug_in_combat
syn keyword sourceCheat         survivor_debug_visibility survivor_drag_speed_multiplier survivor_drag_type
syn keyword sourceCheat         survivor_ff_avoidance survivor_ff_avoidance_pitch survivor_ff_avoidance_yaw
syn keyword sourceCheat         survivor_ff_tolerance survivor_fog_vocalize_percent
syn keyword sourceCheat         survivor_friendly_fire_factor_easy survivor_friendly_fire_factor_expert
syn keyword sourceCheat         survivor_friendly_fire_factor_hard survivor_friendly_fire_factor_normal
syn keyword sourceCheat         survivor_fumes_walk_speed survivor_give_attract_timeout
syn keyword sourceCheat         survivor_hanging_eye_height survivor_hanging_from_tongue_eye_height
syn keyword sourceCheat         survivor_helping_hand_inhibit_duration survivor_hitsound_interval_timer
syn keyword sourceCheat         survivor_incapacitated_accuracy_penalty survivor_incapacitated_cycle_time
syn keyword sourceCheat         survivor_incapacitated_dizzy_severity survivor_incapacitated_dizzy_timer
syn keyword sourceCheat         survivor_incapacitated_eye_height survivor_incapacitated_reload_multiplier
syn keyword sourceCheat         survivor_incapacitated_roll survivor_intensity_decay_threat_range
syn keyword sourceCheat         survivor_intensity_recent_enemy_duration survivor_it_duration
syn keyword sourceCheat         survivor_knockdown_roll survivor_lazy_active_set
syn keyword sourceCheat         survivor_ledge_grab_ground_check_time survivor_ledge_scales_health
syn keyword sourceCheat         survivor_limp_health survivor_limp_walk_speed survivor_max_incapacitated_count
syn keyword sourceCheat         survivor_max_lunge_stagger_distance survivor_max_lunge_stagger_speed
syn keyword sourceCheat         survivor_max_tongue_stagger_distance survivor_max_tongue_stagger_duration
syn keyword sourceCheat         survivor_max_tug_distance survivor_max_tug_duration
syn keyword sourceCheat         survivor_min_lunge_stagger_speed survivor_no_pounce_or_hang
syn keyword sourceCheat         survivor_pounce_victim_eye_height survivor_push survivor_revive_duration
syn keyword sourceCheat         survivor_revive_health survivor_shove_teammates survivor_speed
syn keyword sourceCheat         survivor_speed_boost_factor survivor_sprint_multiplier
syn keyword sourceCheat         survivor_stun_immunity_duration survivor_team_hit_pitch_max
syn keyword sourceCheat         survivor_team_hit_pitch_min survivor_team_hit_yaw_max survivor_team_hit_yaw_min
syn keyword sourceCheat         survivor_unstoppable_speed survivor_vision_range survivor_vision_range_obscured
syn keyword sourceCheat         sv_always_full_flush sv_anim_dumpstate sv_crash sv_creationtickcheck
syn keyword sourceCheat         sv_cycle_latch_timer sv_demo_entity_record_rate sv_disable_querycache
syn keyword sourceCheat         sv_doors_push_players sv_dumpstringtables sv_fallen_survivor_health_multiplier
syn keyword sourceCheat         sv_footstep_sound_frequency sv_footstepinterval sv_force_time_of_day
syn keyword sourceCheat         sv_force_transmit_ents sv_grenade_trajectory sv_healing_gnome_replenish_rate
syn keyword sourceCheat         sv_infected_ceda_vomitjar_probability
syn keyword sourceCheat         sv_infected_riot_control_tonfa_probability sv_infinite_ammo
syn keyword sourceCheat         sv_infinite_aux_power sv_infinite_primary_ammo sv_lagcompensateself
syn keyword sourceCheat         sv_lagcompensation_teleport_dist sv_lagcompensationforcerestore sv_memlimit
syn keyword sourceCheat         sv_netvisdist sv_no_navmesh sv_noclipduringpause sv_permawipe sv_phys2_stats
syn keyword sourceCheat         sv_play_music sv_player_stuck_tolerance sv_prop_door_max_close_attempts
syn keyword sourceCheat         sv_pushaway_hostage_force sv_pushaway_max_hostage_force
syn keyword sourceCheat         sv_pushaway_max_player_force sv_pushaway_player_force sv_regeneration_force_on
syn keyword sourceCheat         sv_server_verify_blood_on_player sv_showanimstate sv_showanimstate_activities
syn keyword sourceCheat         sv_showanimstate_log sv_showfootsteps sv_showhitboxes sv_showhitboxes_cursor
syn keyword sourceCheat         sv_showlagcompensation sv_showonlyhitbox sv_shutdown
syn keyword sourceCheat         sv_soundscape_printdebuginfo sv_spectatoridletime sv_stop_music
syn keyword sourceCheat         sv_suppress_viewpunch sv_sync_anims_spawn sv_tankpropfade
syn keyword sourceCheat         sv_turbophysics_shadow sv_vote_creation_timer sv_vote_plr_map_limit
syn keyword sourceCheat         sv_vote_show_caller sv_zombie_touch_trigger_delay sys_sound_quality
syn keyword sourceCheat         tank_attack_range tank_auto_swing tank_burn_duration tank_burn_duration_expert
syn keyword sourceCheat         tank_burn_duration_hard tank_fist_radius tank_ground_pound_duration
syn keyword sourceCheat         tank_ground_pound_reveal_distance tank_raffle_debug tank_run_spawn_delay
syn keyword sourceCheat         tank_stasis_time_suicide tank_stuck_failsafe tank_stuck_time_choose_new_target
syn keyword sourceCheat         tank_stuck_time_suicide tank_stuck_visibility_tolerance_choose_new_target
syn keyword sourceCheat         tank_stuck_visibility_tolerance_suicide tank_swing_arc tank_swing_duration
syn keyword sourceCheat         tank_swing_fast_interval tank_swing_interval tank_swing_miss_interval
syn keyword sourceCheat         tank_swing_physics_prop_force tank_swing_range tank_swing_yaw
syn keyword sourceCheat         tank_throw_aim_error tank_throw_allow_range tank_throw_lead_time_factor
syn keyword sourceCheat         tank_throw_loft_rate tank_throw_max_loft_angle tank_throw_min_interval
syn keyword sourceCheat         tank_visibility_tolerance_suicide tank_windup_time terror_ammo_multiplier
syn keyword sourceCheat         test_dispatcheffect test_entity_blocker test_freezeframe test_outtro_pzendgame
syn keyword sourceCheat         test_outtro_stats testhudanim tf_always_deathanim tf_always_loser
syn keyword sourceCheat         tf_archer_proxy_fire_rate tf_arena_change_limit tf_arena_force_class
syn keyword sourceCheat         tf_arena_round_time tf_avoidteammates tf_base_boss_max_turn_rate
syn keyword sourceCheat         tf_base_boss_speed tf_bot_always_full_reload tf_bot_ammo_search_range
syn keyword sourceCheat         tf_bot_arrow_elevation_rate tf_bot_ballistic_elevation_rate
syn keyword sourceCheat         tf_bot_capture_seek_and_destroy_max_duration
syn keyword sourceCheat         tf_bot_capture_seek_and_destroy_min_duration tf_bot_cart_push_radius
syn keyword sourceCheat         tf_bot_choose_target_interval tf_bot_debug_ammo_scavenging
syn keyword sourceCheat         tf_bot_debug_destroy_enemy_sentry tf_bot_debug_payload_guard_vantage_points
syn keyword sourceCheat         tf_bot_debug_retreat_to_cover tf_bot_debug_seek_and_destroy
syn keyword sourceCheat         tf_bot_debug_sentry_placement tf_bot_debug_sniper tf_bot_debug_spy
syn keyword sourceCheat         tf_bot_defend_owned_point_percent tf_bot_defense_debug
syn keyword sourceCheat         tf_bot_defense_must_defend_time tf_bot_engineer_exit_near_sentry_range
syn keyword sourceCheat         tf_bot_engineer_max_sentry_travel_distance_to_point
syn keyword sourceCheat         tf_bot_engineer_retaliate_range tf_bot_escort_range tf_bot_fetch_lost_flag_time
syn keyword sourceCheat         tf_bot_fire_weapon_allowed tf_bot_fire_weapon_min_time
syn keyword sourceCheat         tf_bot_flag_escort_give_up_range tf_bot_flag_escort_max_count
syn keyword sourceCheat         tf_bot_flag_escort_range tf_bot_flag_kill_on_touch tf_bot_force_jump
syn keyword sourceCheat         tf_bot_formation_debug tf_bot_health_critical_ratio tf_bot_health_ok_ratio
syn keyword sourceCheat         tf_bot_health_search_far_range tf_bot_health_search_near_range
syn keyword sourceCheat         tf_bot_hitscan_range_limit tf_bot_max_grenade_launch_at_sentry_range
syn keyword sourceCheat         tf_bot_max_point_defend_range tf_bot_max_setup_gate_defend_range
syn keyword sourceCheat         tf_bot_max_sticky_launch_at_sentry_range tf_bot_max_teleport_entrance_travel
syn keyword sourceCheat         tf_bot_max_teleport_exit_travel_to_point tf_bot_medic_cover_test_resolution
syn keyword sourceCheat         tf_bot_medic_debug tf_bot_medic_max_call_response_range
syn keyword sourceCheat         tf_bot_medic_max_heal_range tf_bot_medic_start_follow_range
syn keyword sourceCheat         tf_bot_medic_stop_follow_range tf_bot_melee_attack_abandon_range
syn keyword sourceCheat         tf_bot_min_setup_gate_defend_range tf_bot_min_setup_gate_sniper_defend_range
syn keyword sourceCheat         tf_bot_min_teleport_travel tf_bot_near_point_travel_distance
syn keyword sourceCheat         tf_bot_notice_backstab_chance tf_bot_notice_backstab_max_range
syn keyword sourceCheat         tf_bot_notice_backstab_min_range tf_bot_npc_archer_arrow_damage
syn keyword sourceCheat         tf_bot_npc_archer_health tf_bot_npc_archer_shoot_interval
syn keyword sourceCheat         tf_bot_npc_archer_speed tf_bot_offense_must_push_time
syn keyword sourceCheat         tf_bot_payload_guard_range tf_bot_pyro_always_reflect
syn keyword sourceCheat         tf_bot_pyro_deflect_tolerance tf_bot_pyro_shove_away_range
syn keyword sourceCheat         tf_bot_retreat_to_cover_range tf_bot_sniper_aim_error
syn keyword sourceCheat         tf_bot_sniper_aim_steady_rate tf_bot_sniper_choose_target_interval
syn keyword sourceCheat         tf_bot_sniper_flee_range tf_bot_sniper_goal_entity_move_tolerance
syn keyword sourceCheat         tf_bot_sniper_linger_time tf_bot_sniper_melee_range
syn keyword sourceCheat         tf_bot_sniper_patience_duration tf_bot_sniper_personal_space_range
syn keyword sourceCheat         tf_bot_sniper_spot_epsilon tf_bot_sniper_spot_max_count
syn keyword sourceCheat         tf_bot_sniper_spot_min_range tf_bot_sniper_spot_point_tolerance
syn keyword sourceCheat         tf_bot_sniper_spot_search_count tf_bot_sniper_target_linger_duration
syn keyword sourceCheat         tf_bot_spy_change_target_range_threshold tf_bot_spy_knife_range
syn keyword sourceCheat         tf_bot_squad_escort_range tf_bot_sticky_base_range tf_bot_sticky_charge_rate
syn keyword sourceCheat         tf_bot_stickybomb_density tf_bot_suicide_bomb_range
syn keyword sourceCheat         tf_bot_teleport_build_surface_normal_limit tf_bot_wait_in_cover_max_time
syn keyword sourceCheat         tf_bot_wait_in_cover_min_time tf_cheapobjects tf_damage_multiplier_blue
syn keyword sourceCheat         tf_damage_multiplier_red tf_damageforcescale_other
syn keyword sourceCheat         tf_damageforcescale_self_soldier_badrj tf_damageforcescale_self_soldier_rj
syn keyword sourceCheat         tf_damagescale_self_soldier tf_debug_ballistic_targeting
syn keyword sourceCheat         tf_debug_ballistic_targeting_tolerance tf_debug_ballistics
syn keyword sourceCheat         tf_debug_ballistics_init_vel_scale tf_debug_ballistics_max_time
syn keyword sourceCheat         tf_debug_ballistics_timestep tf_debug_damage tf_debug_flamethrower
syn keyword sourceCheat         tf_debug_placement_failure tf_decoy_lifetime tf_deploying_bomb_delay_time
syn keyword sourceCheat         tf_deploying_bomb_time tf_escort_score_rate tf_eyeball_boss_acceleration
syn keyword sourceCheat         tf_eyeball_boss_attack_range tf_eyeball_boss_debug
syn keyword sourceCheat         tf_eyeball_boss_debug_orientation tf_eyeball_boss_health_at_level_2
syn keyword sourceCheat         tf_eyeball_boss_health_base tf_eyeball_boss_health_per_level
syn keyword sourceCheat         tf_eyeball_boss_health_per_player tf_eyeball_boss_horiz_damping
syn keyword sourceCheat         tf_eyeball_boss_hover_height tf_eyeball_boss_lifetime tf_eyeball_boss_speed
syn keyword sourceCheat         tf_eyeball_boss_vert_damping tf_fastbuild tf_feign_death_damage_scale
syn keyword sourceCheat         tf_feign_death_duration tf_flamethrower_boxsize tf_flamethrower_burst_zvelocity
syn keyword sourceCheat         tf_flamethrower_burstammo tf_flamethrower_drag tf_flamethrower_flametime
syn keyword sourceCheat         tf_flamethrower_float tf_flamethrower_maxdamagedist
syn keyword sourceCheat         tf_flamethrower_shortrangedamagemultiplier tf_flamethrower_vecrand
syn keyword sourceCheat         tf_flamethrower_velocity tf_flamethrower_velocityfadeend
syn keyword sourceCheat         tf_flamethrower_velocityfadestart tf_grenade_force_sleeptime
syn keyword sourceCheat         tf_grenade_forcefrom_blast tf_grenade_forcefrom_buckshot
syn keyword sourceCheat         tf_grenade_forcefrom_bullet tf_grenade_show_radius tf_grenade_show_radius_time
syn keyword sourceCheat         tf_grenadelauncher_chargescale tf_grenadelauncher_livetime
syn keyword sourceCheat         tf_halloween_boss_spawn_interval tf_halloween_boss_spawn_interval_variation
syn keyword sourceCheat         tf_halloween_bot_attack_range tf_halloween_bot_chase_duration
syn keyword sourceCheat         tf_halloween_bot_chase_range tf_halloween_bot_health_base
syn keyword sourceCheat         tf_halloween_bot_health_per_player tf_halloween_bot_min_player_count
syn keyword sourceCheat         tf_halloween_bot_quit_range tf_halloween_bot_speed
syn keyword sourceCheat         tf_halloween_bot_speed_recovery_rate tf_halloween_bot_terrify_radius
syn keyword sourceCheat         tf_halloween_eyeball_boss_spawn_interval
syn keyword sourceCheat         tf_halloween_eyeball_boss_spawn_interval_variation tf_highfive_close_range
syn keyword sourceCheat         tf_highfive_height_tolerance tf_highfive_max_range tf_highfive_separation
syn keyword sourceCheat         tf_ignite_player tf_impactwatertime tf_impactwatertimeenable
syn keyword sourceCheat         tf_max_charge_speed tf_maxspeed tf_medieval_cam_idealdist
syn keyword sourceCheat         tf_medieval_cam_idealdistright tf_medieval_cam_idealdistup
syn keyword sourceCheat         tf_medieval_cam_idealpitch tf_meleeattackforcescale
syn keyword sourceCheat         tf_mvm_bot_allow_flag_carrier_to_fight tf_mvm_bot_flag_carrier_health_regen
syn keyword sourceCheat         tf_mvm_bot_flag_carrier_interval_to_1st_upgrade
syn keyword sourceCheat         tf_mvm_bot_flag_carrier_interval_to_2nd_upgrade
syn keyword sourceCheat         tf_mvm_bot_flag_carrier_interval_to_3rd_upgrade
syn keyword sourceCheat         tf_mvm_bot_flag_carrier_movement_penalty tf_mvm_bot_sniper_target_by_dps
syn keyword sourceCheat         tf_mvm_death_penalty tf_mvm_default_sentry_buster_damage_dealt_threshold
syn keyword sourceCheat         tf_mvm_default_sentry_buster_kill_threshold tf_mvm_miniboss_scale
syn keyword sourceCheat         tf_mvm_notice_sapped_squadmates_delay tf_mvm_skill tf_nav_combat_build_rate
syn keyword sourceCheat         tf_nav_combat_decay_rate tf_nav_in_combat_duration tf_nav_in_combat_range
syn keyword sourceCheat         tf_nav_show_incursion_distance tf_nav_show_turf_ownership
syn keyword sourceCheat         tf_obj_build_rotation_speed tf_obj_damage_tank_achievement_amount
syn keyword sourceCheat         tf_obj_gib_maxspeed tf_obj_gib_velocity_max tf_obj_gib_velocity_min
syn keyword sourceCheat         tf_obj_ground_clearance tf_obj_max_attach_dist tf_obj_upgrade_per_hit
syn keyword sourceCheat         tf_pipebomb_deflect_reset_time tf_pipebomb_force_to_move tf_playergib_maxspeed
syn keyword sourceCheat         tf_playersgib_force tf_playersgib_forceup tf_playerstatetransitions
syn keyword sourceCheat         tf_populator_active_buffer_range tf_populator_damage_multiplier
syn keyword sourceCheat         tf_populator_debug tf_populator_health_multiplier
syn keyword sourceCheat         tf_raid_engineer_infinte_metal tf_scout_air_dash_count tf_scout_hype_mod
syn keyword sourceCheat         tf_scout_hype_pep_max tf_scout_hype_pep_min_damage tf_scout_hype_pep_mod
syn keyword sourceCheat         tf_select_ambush_areas_close_range
syn keyword sourceCheat         tf_select_ambush_areas_max_enemy_exposure_area tf_select_ambush_areas_radius
syn keyword sourceCheat         tf_sentrygun_ammocheat tf_sentrygun_damage
syn keyword sourceCheat         tf_sentrygun_kill_after_redeploy_time_achievement
syn keyword sourceCheat         tf_sentrygun_max_absorbed_damage_while_controlled_for_achiev
syn keyword sourceCheat         tf_sentrygun_metal_per_rocket tf_sentrygun_metal_per_shell
syn keyword sourceCheat         tf_sentrygun_mini_damage tf_sentrygun_newtarget_dist tf_sentrygun_notarget
syn keyword sourceCheat         tf_show_actor_potential_visibility tf_show_blocked_areas
syn keyword sourceCheat         tf_show_bomb_drop_areas tf_show_control_points tf_show_enemy_invasion_areas
syn keyword sourceCheat         tf_show_gate_defense_areas tf_show_in_combat_areas tf_show_incursion_flow
syn keyword sourceCheat         tf_show_incursion_flow_gradient tf_show_incursion_flow_range
syn keyword sourceCheat         tf_show_incursion_range tf_show_incursion_range_max tf_show_incursion_range_min
syn keyword sourceCheat         tf_show_mesh_decoration tf_show_mesh_decoration_manual
syn keyword sourceCheat         tf_show_point_defense_areas tf_show_sentry_danger tf_show_sniper_areas
syn keyword sourceCheat         tf_show_sniper_areas_safety_range tf_show_train_path tf_solidobjects
syn keyword sourceCheat         tf_tauntcam_dist tf_tauntcam_pitch tf_tauntcam_speed tf_tauntcam_yaw
syn keyword sourceCheat         tf_teammate_max_invis tf_teleporter_fov_start tf_teleporter_fov_time
syn keyword sourceCheat         tf_test_teleport_home_fx tf_training_client_message tf_weapon_ragdoll_maxspeed
syn keyword sourceCheat         tf_weapon_ragdoll_velocity_max tf_weapon_ragdoll_velocity_min thirdperson
syn keyword sourceCheat         thirdperson_mayamode thumper_show_radius timerefresh tir_maxpitch tir_maxroll
syn keyword sourceCheat         tir_maxx tir_maxy tir_maxyaw tir_maxz tongue_allow_voluntary_release
syn keyword sourceCheat         tongue_bend_point_deflection tongue_bend_point_needs_LOS
syn keyword sourceCheat         tongue_break_from_damage_amount tongue_choke_damage_amount
syn keyword sourceCheat         tongue_choke_damage_interval tongue_cone_start_tolerance tongue_debug
syn keyword sourceCheat         tongue_drag_damage_amount tongue_dropping_to_ground_time tongue_fly_speed
syn keyword sourceCheat         tongue_force_break tongue_gravity_force tongue_health tongue_hit_delay
syn keyword sourceCheat         tongue_los_forgiveness_time tongue_miss_delay tongue_no_progress_break_interval
syn keyword sourceCheat         tongue_no_progress_choke_early_ambush_delay
syn keyword sourceCheat         tongue_no_progress_choke_early_delay tongue_no_progress_choke_time
syn keyword sourceCheat         tongue_no_progress_damage_interval tongue_no_progress_tolerance
syn keyword sourceCheat         tongue_player_dropping_to_ground_time tongue_range
syn keyword sourceCheat         tongue_release_fatigue_penalty tongue_start_pull_delay tongue_unbend
syn keyword sourceCheat         tongue_vertical_choke_dot tongue_vertical_choke_height
syn keyword sourceCheat         tongue_vertical_choke_time_off_ground tongue_victim_acceleration
syn keyword sourceCheat         tongue_victim_accuracy_penalty tongue_victim_max_speed
syn keyword sourceCheat         tongue_vs_cone_start_tolerance tp_schedule_post_think travel_distance
syn keyword sourceCheat         ui_posedebug_fade_in_time ui_posedebug_fade_out_time upgrade_add
syn keyword sourceCheat         upgrade_explosive_bullet_force upgrade_explosive_slug_force
syn keyword sourceCheat         upgrade_laser_sight_spread_factor upgrade_pack_use_duration upgrade_remove
syn keyword sourceCheat         upgrade_show_explosive_ammo_radius upgradepack_forward_dist
syn keyword sourceCheat         upgradepack_max_drop_dist vcollide_wireframe versus_boss_buffer
syn keyword sourceCheat         versus_boss_debug versus_boss_flow_max versus_boss_flow_max_finale
syn keyword sourceCheat         versus_boss_flow_max_intro versus_boss_flow_min versus_boss_flow_min_finale
syn keyword sourceCheat         versus_boss_flow_min_intro versus_boss_flow_test versus_boss_padding_max
syn keyword sourceCheat         versus_boss_padding_min versus_level_restart_delay versus_shove_hunter_fov
syn keyword sourceCheat         versus_shove_hunter_fov_pouncing versus_shove_jockey_fov_leaping
syn keyword sourceCheat         versus_special_respawn_interval versus_tank_chance versus_tank_chance_finale
syn keyword sourceCheat         versus_tank_chance_intro versus_tank_flow_team_variation
syn keyword sourceCheat         versus_wandering_zombie_density versus_winning_team_goes_last
syn keyword sourceCheat         versus_witch_chance versus_witch_chance_finale versus_witch_chance_intro
syn keyword sourceCheat         versus_witch_flow_team_variation vgui_drawtree view_offset_down
syn keyword sourceCheat         view_offset_forward view_offset_up view_punch_decay view_recoil_tracking
syn keyword sourceCheat         viewanim_addkeyframe viewanim_reset viewmodel_fov vis_debug vis_force
syn keyword sourceCheat         vismon_poll_frequency vismon_trace_limit vm_debug
syn keyword sourceCheat         voice_player_speaking_delay_threshold vomitjar_duration_infected_bot
syn keyword sourceCheat         vomitjar_duration_infected_pz vomitjar_duration_survivor vomitjar_radius
syn keyword sourceCheat         vomitjar_radius_survivors vortex_book_offset vortex_fade_fraction_denom
syn keyword sourceCheat         vortex_float_amp vortex_float_osc_speed vox_reload voxeltree_box
syn keyword sourceCheat         voxeltree_playerview voxeltree_sphere voxeltree_view vs_defib_penalty
syn keyword sourceCheat         vs_incap_bonus vs_max_team_switches vs_survival_bonus
syn keyword sourceCheat         vs_survivor_damage_reduction vs_tank_damage
syn keyword sourceCheat         vs_threat_initial_distance_first_map_max
syn keyword sourceCheat         vs_threat_initial_distance_first_map_min vs_threat_initial_distance_max
syn keyword sourceCheat         vs_threat_initial_distance_min vs_threat_radius vs_tiebreak_bonus
syn keyword sourceCheat         warp_all_survivors_here warp_all_survivors_to_battlefield
syn keyword sourceCheat         warp_all_survivors_to_checkpoint warp_all_survivors_to_finale
syn keyword sourceCheat         warp_far_survivor_here warp_to_start_area weapon_accuracy_nospread
syn keyword sourceCheat         weapon_debug_spread_gap weapon_debug_spread_show weapon_medigun_charge_rate
syn keyword sourceCheat         weapon_medigun_chargerelease_rate weapon_medigun_construction_rate
syn keyword sourceCheat         weapon_medigun_damage_modifier weapon_recoil_cooldown weapon_recoil_decay1_exp
syn keyword sourceCheat         weapon_recoil_decay2_exp weapon_recoil_decay2_lin weapon_recoil_scale
syn keyword sourceCheat         weapon_recoil_scale_motion_controller weapon_recoil_suppression_factor
syn keyword sourceCheat         weapon_recoil_suppression_shots weapon_recoil_variance weapon_recoil_vel_decay
syn keyword sourceCheat         weapon_recoil_view_punch_extra weapon_reparse_client weapon_reparse_server
syn keyword sourceCheat         wipe_attributes wipe_nav_attributes witch_force_wander
syn keyword sourceCheat         workshop_filter_items_by_history z_Infected_debug z_acquire_far_range
syn keyword sourceCheat         z_acquire_far_time z_acquire_near_range z_acquire_near_time
syn keyword sourceCheat         z_acquire_time_variance_factor z_add z_added_light_debug z_alert_dot
syn keyword sourceCheat         z_alert_range z_allow_ai_to_use_abilities z_attack_flow_range
syn keyword sourceCheat         z_attack_incapacitated_damage z_attack_infected_it_damage z_attack_pz_it_damage
syn keyword sourceCheat         z_attention_range_lying_modifier z_attention_range_sitting_modifier
syn keyword sourceCheat         z_avoid_max_range z_avoid_min_range z_avoid_power z_avoidforce z_avoidteammates
syn keyword sourceCheat         z_award_debug z_background_limit z_backspeed z_boomer_gibs z_boomer_limit
syn keyword sourceCheat         z_boomer_near_dist z_boss_crouch z_boundary_clear_type z_boundary_max_range
syn keyword sourceCheat         z_boundary_spread_speed z_brawl_chance z_breakable_damage
syn keyword sourceCheat         z_burn_effect_duration z_burn_effect_strength z_burning_lifetime
syn keyword sourceCheat         z_camo_decay_rate z_carry_max_mass z_chance z_charge_duration
syn keyword sourceCheat         z_charge_impact_angle z_charge_impact_radius z_charge_interval
syn keyword sourceCheat         z_charge_max_damage z_charge_max_force z_charge_max_speed z_charge_min_force
syn keyword sourceCheat         z_charge_prop_damage z_charge_start_speed z_charge_tooshort z_charge_warmup
syn keyword sourceCheat         z_charger_allow_shove z_charger_health z_charger_impact_epsilon z_charger_limit
syn keyword sourceCheat         z_charger_max_prop_force z_charger_pound_dmg z_charger_probe_alone
syn keyword sourceCheat         z_charger_probe_attack z_claw_hit_pitch_max z_claw_hit_pitch_min
syn keyword sourceCheat         z_claw_hit_yaw_max z_claw_hit_yaw_min z_clear_area_range z_clear_max_time
syn keyword sourceCheat         z_clear_min_time z_clear_min_time_range z_clear_range
syn keyword sourceCheat         z_close_target_notice_distance z_common_limit z_cooldown_spawn_safety_range
syn keyword sourceCheat         z_cough_cloud_expire z_cough_cloud_initial_cough_delay z_cough_cloud_radius
syn keyword sourceCheat         z_credits_interval z_crouch_speed z_cull_timeout z_deafen_radius_one
syn keyword sourceCheat         z_deafen_radius_three z_deafen_radius_two z_debug z_debug_avoid
syn keyword sourceCheat         z_debug_breakables z_debug_climb z_debug_cull z_debug_escape_route
syn keyword sourceCheat         z_debug_escape_scan z_debug_falling_damage z_debug_fog
syn keyword sourceCheat         z_debug_infected_anim_report z_debug_ledges z_debug_mob_spawn z_debug_neighbors
syn keyword sourceCheat         z_debug_path_stress_test z_debug_population z_debug_spawn_ahead
syn keyword sourceCheat         z_debug_spawn_set z_debug_spawnable_areas z_debug_tank_spawn z_decals
syn keyword sourceCheat         z_density_region_length z_destroy_on_attack z_director_special_spawn_delay
syn keyword sourceCheat         z_discard_min_range z_discard_range z_do_tracers z_dont_clear
syn keyword sourceCheat         z_door_reopen_interval z_door_retry_interval z_escape_route_alpha
syn keyword sourceCheat         z_escape_route_force_visible z_experimental_blast_damage_probability
syn keyword sourceCheat         z_exploding_health z_exploding_shove_interval z_exploding_shove_max
syn keyword sourceCheat         z_exploding_shove_min z_exploding_speed z_exploding_splat
syn keyword sourceCheat         z_exploding_splat_radius z_expressions z_fallen_kill_suppress_time
syn keyword sourceCheat         z_fallen_max_count z_falling_land_forward_speed z_falling_land_hard_speed
syn keyword sourceCheat         z_falling_land_speed z_female_boomer_spawn_chance z_finale_chance
syn keyword sourceCheat         z_finale_spawn_safety_range z_finale_spawn_tank_safety_range z_fog_spawn
syn keyword sourceCheat         z_force_attack_from_sound_range z_forcezombiemodel z_forcezombiemodelname
syn keyword sourceCheat         z_forwardspeed z_friendly_fire_forgiveness z_frustration
syn keyword sourceCheat         z_frustration_blink_percent z_frustration_blink_rate z_frustration_lifetime
syn keyword sourceCheat         z_frustration_los_delay z_frustration_spawn_delay z_gas_health z_gas_speed
syn keyword sourceCheat         z_ghost_checkpoint_spawn_interval z_ghost_delay_max z_ghost_delay_min
syn keyword sourceCheat         z_ghost_finale_spawn_interval z_ghost_runner_spawn_multiplier
syn keyword sourceCheat         z_ghost_runner_spawn_multiplier_dist z_ghost_spawn_in_start
syn keyword sourceCheat         z_ghost_spawn_interval z_ghost_speed z_ghost_travel_distance z_gib_despawn_time
syn keyword sourceCheat         z_gib_explosion_force_factor z_gib_force_factor z_gib_limb_distance
syn keyword sourceCheat         z_gib_limb_distance_zoomed z_gibs_per_frame z_grab_force z_grab_ledges_solo
syn keyword sourceCheat         z_gun_damage z_gun_debug_player_index z_gun_debug_spread z_gun_force
syn keyword sourceCheat         z_gun_horiz_punch z_gun_kick z_gun_physics_force z_gun_range
syn keyword sourceCheat         z_gun_stun_duration z_gun_survivor_force z_gun_survivor_friend_push
syn keyword sourceCheat         z_gun_survivor_shove_dot z_gun_swing_duration z_gun_swing_interval
syn keyword sourceCheat         z_gun_vertical_punch z_health z_hear_gunfire_range z_hear_runner_far_range
syn keyword sourceCheat         z_hear_runner_near_range z_hit_chainsawer_factor z_hit_from_behind_cosine
syn keyword sourceCheat         z_hit_from_behind_factor z_hit_incap_factor_easy z_hit_incap_factor_expert
syn keyword sourceCheat         z_hit_incap_factor_hard z_hit_incap_factor_normal z_holiday_gift_drop_chance
syn keyword sourceCheat         z_hunter_ground_normal z_hunter_health z_hunter_limit
syn keyword sourceCheat         z_hunter_lunge_stagger_time z_hunter_max_pounce_bonus_damage z_hunter_speed
syn keyword sourceCheat         z_increment_head z_increment_lower z_increment_skin z_increment_upper
syn keyword sourceCheat         z_infected_burn_strength z_infected_flashlight z_infected_invuln
syn keyword sourceCheat         z_infected_move z_jockey_area_current_factor z_jockey_area_hazard_bonus
syn keyword sourceCheat         z_jockey_area_range_factor z_jockey_area_visibility_factor
syn keyword sourceCheat         z_jockey_attach_delay z_jockey_blend_rate z_jockey_control_max
syn keyword sourceCheat         z_jockey_control_min z_jockey_control_variance z_jockey_debug z_jockey_health
syn keyword sourceCheat         z_jockey_leap_again_timer z_jockey_leap_range z_jockey_leap_time z_jockey_limit
syn keyword sourceCheat         z_jockey_lookahead z_jockey_min_ledge_distance z_jockey_min_mounted_speed
syn keyword sourceCheat         z_jockey_pounced_surv_bark z_jockey_ride_damage z_jockey_ride_damage_delay
syn keyword sourceCheat         z_jockey_ride_damage_interval z_jockey_ride_hazard_scan_distance
syn keyword sourceCheat         z_jockey_ride_scan_distance z_jockey_ride_scan_interval z_jockey_speed
syn keyword sourceCheat         z_jockey_speed_blend z_jockey_stagger_amount z_jockey_stagger_speed z_kill
syn keyword sourceCheat         z_large_volume_mob_too_far_xy z_large_volume_mob_too_far_z
syn keyword sourceCheat         z_last_area_update_tolerance z_last_man_run_interval z_lean_wall_align_speed
syn keyword sourceCheat         z_leap_attach_distance z_leap_far_attach_delay z_leap_force_attach_distance
syn keyword sourceCheat         z_leap_interval z_leap_interval_post_incap z_leap_interval_post_ride
syn keyword sourceCheat         z_leap_max_distance z_leap_power z_look_at_local_player z_lunge_interval
syn keyword sourceCheat         z_lunge_power z_lunge_up z_max_blood_scale z_max_hunter_pounce_stagger_duration
syn keyword sourceCheat         z_max_neighbor_range z_max_path_length z_max_stagger_duration z_mega_mob_size
syn keyword sourceCheat         z_mega_mob_spawn_max_interval z_mega_mob_spawn_min_interval
syn keyword sourceCheat         z_min_ladder_mount_dot z_minigun_cooldown_time z_minigun_damage_rate
syn keyword sourceCheat         z_minigun_fire_think_interval z_minigun_overheat_time z_minigun_rate_of_fire
syn keyword sourceCheat         z_minion_aim_tolerance z_minion_limit z_mob_min_notify_count z_mob_music_size
syn keyword sourceCheat         z_mob_population_density z_mob_recharge_rate z_mob_sacrifice_timeout
syn keyword sourceCheat         z_mob_spawn_finale_size z_mob_spawn_max_interval_easy
syn keyword sourceCheat         z_mob_spawn_max_interval_expert z_mob_spawn_max_interval_hard
syn keyword sourceCheat         z_mob_spawn_max_interval_normal z_mob_spawn_max_size
syn keyword sourceCheat         z_mob_spawn_min_interval_easy z_mob_spawn_min_interval_expert
syn keyword sourceCheat         z_mob_spawn_min_interval_hard z_mob_spawn_min_interval_normal
syn keyword sourceCheat         z_mob_spawn_min_size z_mounted_gun_fire_think_interval z_must_wander
syn keyword sourceCheat         z_mute_infected z_nav_debug z_no_cull z_noise_level_display
syn keyword sourceCheat         z_noise_level_fade_rate z_noise_level_footstep z_noise_level_hold_time
syn keyword sourceCheat         z_noise_level_max z_noise_level_vocalize z_non_head_damage_factor_easy
syn keyword sourceCheat         z_non_head_damage_factor_expert z_non_head_damage_factor_hard
syn keyword sourceCheat         z_non_head_damage_factor_normal z_notice_it_range z_notice_near_range
syn keyword sourceCheat         z_play_activity z_player_lunge_up z_player_zombie_debug
syn keyword sourceCheat         z_player_zombie_land_delay z_player_zombie_min_dead_time
syn keyword sourceCheat         z_pounce_allow_partial_hidden z_pounce_crouch_delay z_pounce_damage
syn keyword sourceCheat         z_pounce_damage_delay z_pounce_damage_interrupt z_pounce_damage_interval
syn keyword sourceCheat         z_pounce_delay z_pounce_door_damage z_pounce_silence_range
syn keyword sourceCheat         z_pounce_stumble_force z_prevent_burrowing z_puking_eye_height z_push_force
syn keyword sourceCheat         z_push_mass_max z_pushaway_force z_randombodygroups z_randomskins
syn keyword sourceCheat         z_reload_chatter_debug z_reload_chatter_intensity
syn keyword sourceCheat         z_reload_chatter_nearby_friend_range z_reload_chatter_recent_enemy
syn keyword sourceCheat         z_reload_chatter_shotgun_ammo_threshold z_reload_chatter_shotgun_interval
syn keyword sourceCheat         z_removeitems z_reserved_wanderers z_reset_population_counter
syn keyword sourceCheat         z_respawn_distance z_respawn_interval z_restrict_team_change
syn keyword sourceCheat         z_round_start_replacement_time z_run_exertion_interval z_safe_spawn_range
syn keyword sourceCheat         z_scout_mob_spawn_range z_shotgun_bonus_damage_multiplier
syn keyword sourceCheat         z_shotgun_bonus_damage_range z_shove_friend_speed z_show_bottlenecks
syn keyword sourceCheat         z_show_clear z_show_completely_visible_to_survivor_team z_show_damaging
syn keyword sourceCheat         z_show_escape_route z_show_flow_delta z_show_flow_distance z_show_infected
syn keyword sourceCheat         z_show_last_area z_show_mutually_visible_set z_show_population_density
syn keyword sourceCheat         z_show_potentially_visible z_show_potentially_visible_to_survivor_team
syn keyword sourceCheat         z_show_swings z_show_traffic z_sidespeed z_skirmish_spawn_max_interval
syn keyword sourceCheat         z_skirmish_spawn_max_size z_skirmish_spawn_min_interval
syn keyword sourceCheat         z_skirmish_spawn_min_size z_smoker_limit z_spawn z_spawn_const_ang
syn keyword sourceCheat         z_spawn_const_distance z_spawn_const_pos z_spawn_flow_limit z_spawn_health
syn keyword sourceCheat         z_spawn_height z_spawn_mobs_behind_chance z_spawn_mobs_from_selected_set
syn keyword sourceCheat         z_spawn_old z_spawn_range z_spawn_safety_range z_spawn_speed
syn keyword sourceCheat         z_special_burn_dmg_scale z_special_spawn_interval z_speed z_spew_areas
syn keyword sourceCheat         z_spit_detonate_delay z_spit_interval z_spit_latency z_spit_range
syn keyword sourceCheat         z_spit_spread_delay z_spit_velocity z_spitter_health z_spitter_high_chance
syn keyword sourceCheat         z_spitter_limit z_spitter_max_wait_time z_spitter_range z_spitter_speed
syn keyword sourceCheat         z_splat_survivor_pitch_max z_splat_survivor_pitch_min
syn keyword sourceCheat         z_splat_survivor_shake_amplitude z_splat_survivor_shake_duration
syn keyword sourceCheat         z_splat_survivor_shake_frequency z_splat_survivor_shake_radius
syn keyword sourceCheat         z_splat_survivor_yaw_max z_splat_survivor_yaw_min z_stand_still z_state_debug
syn keyword sourceCheat         z_stomp_always z_stumble_max_curve_accel z_stumble_max_curve_rate
syn keyword sourceCheat         z_tank_attack_interval z_tank_autoshotgun_dmg_scale
syn keyword sourceCheat         z_tank_damage_slow_max_range z_tank_damage_slow_min_range z_tank_grenade_damage
syn keyword sourceCheat         z_tank_grenade_launcher_dmg_scale z_tank_grenade_roll z_tank_grenade_slowdown
syn keyword sourceCheat         z_tank_has_special_blood z_tank_health z_tank_incapacitated_decay_rate
syn keyword sourceCheat         z_tank_incapacitated_health z_tank_max_stagger_distance
syn keyword sourceCheat         z_tank_max_stagger_duration z_tank_max_stagger_fade_duration z_tank_rock_debug
syn keyword sourceCheat         z_tank_rock_radius z_tank_speed z_tank_speed_vs z_tank_stagger_fade_alpha
syn keyword sourceCheat         z_tank_stagger_fade_duration z_tank_throw_fail_interval z_tank_throw_force
syn keyword sourceCheat         z_tank_throw_health z_tank_throw_interval z_tank_walk_speed
syn keyword sourceCheat         z_tanks_block_molotovs z_throttle_hit_interval_easy
syn keyword sourceCheat         z_throttle_hit_interval_expert z_throttle_hit_interval_hard
syn keyword sourceCheat         z_throttle_hit_interval_normal z_tracer_spacing z_transitioning_players_remove
syn keyword sourceCheat         z_unwound_all z_use_belt_item_tolerance z_use_tolerance z_versus_boomer_limit
syn keyword sourceCheat         z_versus_charger_limit z_versus_hunter_limit z_versus_jockey_limit
syn keyword sourceCheat         z_versus_smoker_limit z_versus_spitter_limit z_view_distance z_vision_range
syn keyword sourceCheat         z_vision_range_alert z_vision_range_daylight z_vision_range_obscured
syn keyword sourceCheat         z_vision_range_obscured_alert z_vocalize_burn_max_interval
syn keyword sourceCheat         z_vocalize_burn_min_interval z_vocalize_shot_interval z_vomit z_vomit_boxsize
syn keyword sourceCheat         z_vomit_debug z_vomit_drag z_vomit_duration z_vomit_fade_duration
syn keyword sourceCheat         z_vomit_fade_start z_vomit_fatigue z_vomit_float z_vomit_hit_pitch_max
syn keyword sourceCheat         z_vomit_hit_pitch_min z_vomit_hit_yaw_max z_vomit_hit_yaw_min z_vomit_interval
syn keyword sourceCheat         z_vomit_lifetime z_vomit_maxdamagedist z_vomit_range z_vomit_slide_mult
syn keyword sourceCheat         z_vomit_slide_rate z_vomit_target_dot z_vomit_target_range z_vomit_vecrand
syn keyword sourceCheat         z_vomit_velocity z_vomit_velocityfadeend z_vomit_velocityfadestart z_walk_speed
syn keyword sourceCheat         z_wandering_density z_witch_allow_change_victim z_witch_anger_rate
syn keyword sourceCheat         z_witch_attack_range z_witch_berserk_range z_witch_burn_time z_witch_damage
syn keyword sourceCheat         z_witch_damage_per_kill_hit z_witch_discard_range z_witch_flashlight_range
syn keyword sourceCheat         z_witch_health z_witch_hostile_at_me_anger z_witch_max_retreat_range
syn keyword sourceCheat         z_witch_max_threat_time z_witch_min_retreat_range z_witch_min_threat_time
syn keyword sourceCheat         z_witch_personal_space z_witch_relax_rate z_witch_retreat_exit_hidden_duration
syn keyword sourceCheat         z_witch_retreat_exit_range z_witch_retreat_min_duration z_witch_speed
syn keyword sourceCheat         z_witch_speed_inured z_witch_threat_hostile_range z_witch_threat_normal_range
syn keyword sourceCheat         z_witch_wander_hear_radius z_witch_wander_music_max_dist
syn keyword sourceCheat         z_witch_wander_music_max_interval z_witch_wander_music_min_dist
syn keyword sourceCheat         z_witch_wander_music_min_interval z_witch_wander_personal_space
syn keyword sourceCheat         z_witch_wander_personal_time z_wound z_wound_all z_wound_offset_enabled
syn keyword sourceCheat         z_wound_particles z_zombie_knockoff_death z_zombie_lunge_push

" Syntax: Sourcemod {{{1
syn keyword sourceMod           sm sm_addban sm_admin sm_ban sm_banip sm_basepath sm_beacon sm_beacon_radius
syn keyword sourceMod           sm_blind sm_burn sm_burn_duration sm_cancelvote sm_chat sm_chat_mode
syn keyword sourceMod           sm_conhook_start sm_conhook_stop sm_cookies sm_corecfgfile sm_csay sm_cvar
syn keyword sourceMod           sm_cvarlist sm_cvarlist_version sm_datetime_format sm_deadtalk sm_drug
syn keyword sourceMod           sm_dump_admcache sm_dump_classes sm_dump_datamaps sm_dump_handles
syn keyword sourceMod           sm_dump_netprops sm_dump_netprops_xml sm_dump_teprops sm_execcfg sm_firebomb
syn keyword sourceMod           sm_firebomb_mode sm_firebomb_radius sm_firebomb_ticks sm_flood_time sm_freeze
syn keyword sourceMod           sm_freeze_duration sm_freezebomb sm_freezebomb_mode sm_freezebomb_radius
syn keyword sourceMod           sm_freezebomb_ticks sm_gag sm_gravity sm_help sm_hide_slots sm_hsay
syn keyword sourceMod           sm_immunity_mode sm_kick sm_map sm_maphistory sm_menu_sounds sm_msay sm_mute
syn keyword sourceMod           sm_nextmap sm_noclip sm_play sm_print_telist sm_psay sm_rcon sm_reloadadmins
syn keyword sourceMod           sm_rename sm_reserve_kicktype sm_reserve_maxadmins sm_reserve_type
syn keyword sourceMod           sm_reserved_slots sm_resetcvar sm_revote sm_say sm_searchcmd sm_settings
syn keyword sourceMod           sm_show_activity sm_silence sm_slap sm_slay sm_time_adjustment sm_timebomb
syn keyword sourceMod           sm_timebomb_mode sm_timebomb_radius sm_timebomb_ticks sm_timeleft_interval
syn keyword sourceMod           sm_trigger_show sm_tsay sm_unban sm_ungag sm_unmute sm_unsilence sm_vote
syn keyword sourceMod           sm_vote_alltalk sm_vote_ban sm_vote_burn sm_vote_delay sm_vote_ff
syn keyword sourceMod           sm_vote_gravity sm_vote_kick sm_vote_map sm_vote_progress_chat
syn keyword sourceMod           sm_vote_progress_client_console sm_vote_progress_console
syn keyword sourceMod           sm_vote_progress_hintbox sm_vote_slay sm_votealltalk sm_voteban sm_voteburn
syn keyword sourceMod           sm_voteff sm_votegravity sm_votekick sm_votemap sm_voteslay sm_who

" Syntax: Operators {{{1
" syn match sourceOperator        '+\|-'

" Syntax: Delimiter
syn match sourceDelimiter       ';\|"'

" Syntax: Comments {{{1
syn region sourceComment oneline        start="//" end="$"

" Syntax: Strings {{{1
syntax region sourceString transparent  start=+"+  skip=+\\"+  end=+"+
syntax region sourceQuote               start="say_team" end='$\|;\"'

" Syntax: Fold points (non-standard) {{{1
syn region sourceFold                   start="//>" end="//<" fold transparent keepend extend
syn region sourceFold                   start="//\[" end="//\]" fold transparent keepend extend

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
" HiLink sourceServerVar        Keyword
  HiLink sourceVar              Identifier
  HiLink sourceMod              StorageClass
  delcommand HiLink
endif

let b:current_syntax = "sourcecfg"
" 1}}}

" vim: foldmethod=marker filetype=vim
