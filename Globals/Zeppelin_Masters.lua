--[[  www.ArcEmu.org
      Zeppelin Masters
      Engine: A.L.E
      Credits: i take the creature texts from Trinity so thanks to them.    
--]]

local NPC_ENTRY = { 3149, 3150, 9564, 9566, 12136, 12137, 26537, 26538, 26539, 26540, 34765, 34766 };

local DATA = {
{ 9564, 164871, "The zeppelin to Undercity has just arrived! All aboard to Tirisfall Glades!" },   -- Frezza, The Thundercaller
{ 9566, 164871, "The zeppelin to Orgrimmar has just arrived! All aboard for Durotar!" },           -- Zappeta, The Thundercaller
{ 12136, 175080, "The zeppelin to Grom'gol has just arrived! All aboard for Stranglethorn!" },     -- Snurk, The Iron Eagle
{ 3149, 175080, "The zeppelin to Orgrimmar has just arrived! All aboard for Durotar!" },           -- Nezraz, The Iron Eagle
{ 12137, 176495, "The zeppelin to Undercity has just arrived! All aboard for Tirisfal Glades!" },  -- Squibby, The Purple Princess
{ 3150, 176495, "The zeppelin to Grom'gol has just arrived! All aboard for Stranglethorn!" },      -- Hin, The Purple Princess
{ 26537, 186238, "The zeppelin to Warsong Hold has just arrived! All aboard for Borean Tundra!" }, -- Greeb, The Mighty Wind
{ 26538, 186238, "The zeppelin to Orgrimmar has just arrived! All aboard for Durotar!" },          -- Nargo, The Mighty Wind
{ 26539, 195459, "The zeppelin to Vengeance Landing has just arrived! All aboard for Howling Fjord!" }, -- Meefi, The Cloudkisser
{ 26540, 195459, "The zeppelin to Undercity has just arrived! All aboard for Tirisfal Glades!" },       -- Drenk, The Cloudkisser
{ 34765, 190549, "The zeppelin to Thunder Bluff has arrived! All aboard for a smooth ride across the Barrens!" },  -- Zelli, The Zephyr
{ 34766, 190549, "Step right up! The zeppelin to Orgrimmar has arrived! All aboard to Durotar!" }                  -- Krendle, The Zephyr
}

ZEPPELIN_MASTERS = {}

function ZEPPELIN_MASTERS.Reset( unit )
    local sUnit = tostring( unit );
    ZEPPELIN_MASTERS[ sUnit ].var = false;
end

function ZEPPELIN_MASTERS.CheckForTransport( unit )
    local sUnit = tostring( unit );
    if( unit:IsAlive() == true and ZEPPELIN_MASTERS[ sUnit ].var == false )
    then
        for i = 1, #DATA do
            if( unit:GetEntry() == DATA[ i ][ 1 ] )
            then
                local zep = unit:GetGameObjectNearestCoords( unit:GetX(), unit:GetY(), unit:GetZ(), DATA[ i ][ 2 ] );
                if( zep ~= nil )
                then
                    unit:SendChatMessage( 14, 0, DATA[ i ][ 3 ] );
                    ZEPPELIN_MASTERS[ sUnit ].var = true;
                    unit:RegisterEvent( ZEPPELIN_MASTERS.Reset, 90000, 1 );
                end
            end
        end
    end
end

function ZEPPELIN_MASTERS.OnSpawn( unit, event )
    local sUnit = tostring( unit );
    ZEPPELIN_MASTERS[ sUnit ] = {}
    ZEPPELIN_MASTERS[ sUnit ].var = false;
    unit:RegisterEvent( ZEPPELIN_MASTERS.CheckForTransport, 1000, 0 );
end

for i = 1, #NPC_ENTRY do
    RegisterUnitEvent( NPC_ENTRY[ i ], 18, ZEPPELIN_MASTERS.OnSpawn );
end
