// the 2 paramaters are where to track (player.x, player.y)
// N is how many positions to track (the bigger, the more lag)
function LagMove(tx, ty, spd, N) {
    // Setup array of positions
    static Positions = {
        x: [],
        y: []
    };
    // initlzie the array with all 0's
    Positions.x[N] = 0;
    Positions.y[N] = 0;
   
    // Shift all positions over by 1
    for(var i=N; i>0; i--) {
        Positions.x[i] = Positions.x[i-1];
        Positions.y[i] = Positions.y[i-1];
    }
    // Add new location to start of list
    Positions.x[0] = tx;
    Positions.y[0] = ty;
   
    // Set Target Positions
    static Target = {x: 0, y: 0};
    Target.x = Positions.x[N-1];
    Target.y = Positions.y[N-1];
   
   
    // Actual Movement
    var dis = point_distance(x, y, Target.x, Target.y);
    if(dis > spd) {
        // the angle from us to the target position
        var dir = point_direction(x, y, Target.x, Target.y);
        // deltaX and deltaY we need to move to get to the Target position
        var dx = lengthdir_x(spd, dir);
        var dy = lengthdir_y(spd, dir);
        x += dx;
        y += dy;
    } else {
        // Snap to last position if close enough to Target
        x = Target.x;
        y = Target.y;
    }
}