-module(gtracker_db_pub).

-export(
   [
      new_device/1
      ,select_device/2
      ,select_all_devices/2
      ,select_device_tracks/2
      ,start_new_track/2
   ]).

new_device(ServerRef) ->
   gen_server:call(ServerRef, new_device).

select_device(ServerRef, DevName) ->
   gen_server:call(ServerRef, {get_device, DevName}).

select_all_devices(ServerRef, OnlyActive)->
   gen_server:call(ServerRef, {get_all_devices, OnlyActive}).

select_device_tracks(ServerRef, DevName) ->
   not_impl_yet.
%   gen_server:call(ServerRef, {select_device_tracks, DevName}).

start_new_track(ServerRef, DevName) ->
   not_impl_yet.