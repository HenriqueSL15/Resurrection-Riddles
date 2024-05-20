var targetX = endX
var targetY = endY
if(goingToStart){
	targetX = startX
	targetY = startY
}

moveX = sign(targetX - x) * currentSpeed
moveY = sign(targetY - y) * currentSpeed