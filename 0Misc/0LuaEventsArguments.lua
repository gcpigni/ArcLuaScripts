--[[

//Creature Event Arguments:

OnEnterCombat( unit, event, attacker )
OnLeaveCombat( unit, event, target )
OnTargetDied( unit, event, victim )
OnDied( unit, event, killer )
OnTargetParried( unit, event, target )
OnTargetDodged( unit, event, target )
OnTargetBlocked( unit, event, target, ammount )
OnTargetCritHit( unit, event, target, ammount )
OnParry( unit, event, currentTarget )
OnDodged( unit, event, currentTarget )
OnBlocked( unit, event, currentTarget, ammount )
OnCritHit( unit, event, currentTarget, ammount )
OnHit( unit, event, currentTarget, ammount )
OnAssistTargetDied( unit, event, assistTarget )
OnFear( unit, event, targetFeared, spell_id )
OnFlee( unit, event, fearer )
OnCallForHelp( unit, event )
OnLoad( unit, event )
OnReachWaypoint( unit, event, waypointId, foward )
OnLookTaken( unit, event, player, item )
OnAIUpdate( unit, event )
OnEmote( unit, event, player, emoteId )
OnDamageTaken( unit, event, attacker, damage )
OnEnterVehicle( unit, event )
OnExitVehicle( unit, event )
OnFirstPassengerEntered( unit, event, passanger )
OnVehicleFull( unit, event )
OnLastPassengerLeft( unit, event, passanger )

//Gameobjects Events Arguments:

OnCreate( go, event )
OnSpawn( go, event )
OnLootTaken( go, event, player, item )
OnUse( go, event, player )
OnAIUpdate( go, event )
OnDespawn( go, event )
OnDamaged( go, event, damage )
OnDestroyed( go, event )

//Gossips Events Arguments:

OnTalk( object, event, player )
OnSelectOption( object, event, player, id, selection, code )
OnEnd( object, event, player )

//Quest Events:

OnAccept( player, questID )
OnComplete( player, questID )
OnCancel( player )
OnGameObjectActivate( go_entry, player, questID )
OnCreatureKill( creature_entry, player, questID )
OnExploreArea( areaID, player, questID )
OnItemPickup( item_entry, player, questID )

//Instance Hooks:

OnPlayerDeath( instanceId, victim, killer )
OnPlayerEnter( instanceId, player )
OnAreaTrigger( instanceId, player, areaTriggerId )
OnZoneChange(  instanceId, player, newZoneId, oldZoneId )
OnCreatureDeath( instanceId, victim, killer )
OnCreaturePush( instanceId, creature )
OnGOActivate( instanceId, gameobject, player )
OnGOPush( instanceId, gameobject )
OnLoad( instanceId )
OnDestroy( instanceId )

//Server Hooks:

OnNewCharacter( event, race, class, name )
OnkillPlayer( event, player, victim )
OnFirstEnterWolrd( event, player )
OnEnterWorld( event, player )
OnGuildJoin( event, player, guildName )
OnDeath( event, player )
OnRepop( event, player )
OnEmote( event, player, unit, emote_id )
OnEnterCombat( event, player, targetUnit )
OnCastSpell( event, player, spell_id, spellObject )
OnTick( event )
OnLogoutRequest( event, player )
OnLogout( event, player )
OnQuestAccept( event, player, quest_id, questGiver )
OnZone( event, player, NewZoneId, OldZoneId )
OnChat( event, player, msg, type, lang, misc)
OnLoot( event, player, unit_target, money, itemId )
OnGuildCreate( event, leader, guildName )
OnEnterWorld2( event, player )
OnCharacterCreate( event, player )
OnQuestCancelled( event, player, quest_id )
OnQuestComplete( event, player, quest_id, questGiver )
OnHonorableKill( event, player, playerKilled )
OnArenaFinish( event, player, arenaTeamName, victory, rated )
OnObjectLoot( event, player, unit_target, money, itemId )
OnAreaTrigger( event, player, areaTriggerId )
OnPostLevelUp( event, player )
OnPreUnitDied( event, unit_killer, unit_victim )
OnAdvanceSkillLine( event, player, skill_line, current )
OnDuelFinished( event, winner, losser )
OnAuraRemove( event, aura )
OnResurrect( event, player )

--]]
