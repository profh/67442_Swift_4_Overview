class Wall {
  var bottles: Int
  
  init(bottles: Int) {
    
  }
  
  func isEmpty() -> Bool {

  }
  
  func singOneVerse() -> Void {
    let line1 = sing(" on the wall, ") + sing(".\n")
    let line2 = takeOneDown() + sing(" on the wall.\n")
    let verse = line1 + line2
    
    print(verse)
  }
  
  private func sing(            ) ->       {

    
    
    
  }
  
  private func takeOneDown() ->        {

    
    
    
  }
}


// Create a new wall and sing the song...
let wall = Wall(bottles: 10)

while !wall.isEmpty() {
  wall.singOneVerse()
}
