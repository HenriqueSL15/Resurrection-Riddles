// Move
if(canMove){
	currentSpeed = 4
	x += moveX
	y += moveY	
}else{
	currentSpeed = 0	
}

// Check if it's at start position
if (goingToStart && point_distance(x, y, startX, startY) < currentSpeed) {
	currentSpeed = 0
	canMove = false
	alarm[0] = waitTime
}
// Check if it's at ending position
else if (!goingToStart && point_distance(x, y, endX, endY) < currentSpeed) {
	runs = 1
	goingToStart = true
	currentSpeed = 0
	canMove = false
	alarm[0] = waitTime
}