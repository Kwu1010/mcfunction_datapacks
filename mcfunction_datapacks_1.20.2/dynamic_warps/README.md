This datapack allows for the dynamic creation and destruction of warp points VIA custom names through the use of macro selectors.\
Command blocks are placed at each warp point at y=-64 to y=-61 to continously reenable warp point triggers, removed at the destruction of a warp point.

Commands:\
Create a warp at your location: /function dynamic_warps:warp_set {Name:<warp_name>}\
Destroy a warp with a specific name: /function dynamic_warps:warp_destroy {Name:<warp_name>}\
Enable warps for the executing player: /function dynamic_warps:warp_enable\
Go to a warp point: /trigger Warp-<warp_name>

Examples:\
/function dynamic_warps:warp_set {Name:test}\
/function dynamic_warps:warp_destroy {Name:test}\
/function dynamic_warps:warp_enable\
/trigger Warp-test