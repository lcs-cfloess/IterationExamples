//: [Previous](@previous)
//: # Challenge
//: Extend the code you wrote on the following page to generate this image:
//:
//: ![challenge](challenge.png "Challenge")
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

//: ## Add your code below

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// Below this line, try combining a loop and four statements that draw lines to generate the goal
for i in stride(from: 0, through: 300, by: 20){
    canvas.lineColor = Color.blue
    canvas.drawLine(fromX: i, fromY: 0, toX: 300, toY: i)
    canvas.drawLine(fromX: i, fromY: 300, toX: 0, toY: i)
    canvas.lineColor = Color.orange
    canvas.drawLine(fromX: i, fromY: 0, toX: 0, toY: 300-i)
    canvas.drawLine(fromX: i, fromY: 300, toX: 300, toY: 300-i)
    
    canvas.lineColor = Color.green
    canvas.drawLine(fromX: i, fromY: 50, toX: 250, toY: i)
    canvas.drawLine(fromX: i, fromY: 250, toX: 50, toY: i)
    canvas.lineColor = Color.yellow
    canvas.drawLine(fromX: i, fromY: 50, toX: 50, toY: 300-i)
    canvas.drawLine(fromX: i, fromY: 250, toX: 250, toY: 300-i)
    
    canvas.lineColor = Color.purple
    canvas.drawLine(fromX: i, fromY: 100, toX: 200, toY: i)
    canvas.drawLine(fromX: i, fromY: 200, toX: 100, toY: i)
    canvas.lineColor = Color.red
    canvas.drawLine(fromX: i, fromY: 100, toX: 100, toY: 300-i)
    canvas.drawLine(fromX: i, fromY: 200, toX: 200, toY: 300-i)
}



/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
