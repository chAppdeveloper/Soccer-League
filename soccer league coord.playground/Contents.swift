//: Playground - noun: a place where people can play

import UIKit







/////////////////////////////////////////////
/////CREATE PLAYER DICTIONARY////////////////
/////////////////////////////////////////////

// Create an empty  array named players to store all of the members of the soccer team.

var players = [[String:String]]()






// Declare a function named createNewPlayerDict() to create an individual dictionary for each player and then append the newly created dictionary to the array named players.  The players array will then contain a dictionary for each player which was added by using the function createNewPlayerDict()

func createNewPlayerDict(name: String, height: String, hasSoccerExperience: String, guardianName: String, team: String = "TBD") -> (name: String, height: String, soccerExperience: String, guardianName: String) {
    
    let dict = ["name": name, "height": height, "hasSoccerExperience": hasSoccerExperience, "guardianName": guardianName, "team":"TBD"]
    
    players.append(dict)
    
    return (name, height, hasSoccerExperience, guardianName)
}









// Call the function createNewPlayerDict() in order to create an individual dictionary for each player.  The function createNewPlayerDict() will also assign the newly created dictionary to the array named players.

let player1 = createNewPlayerDict(name: "Joe Smith", height: "42", hasSoccerExperience: "YES", guardianName: "Jim and Jan Smith")
let player2 = createNewPlayerDict(name: "Jill Tanner", height: "36", hasSoccerExperience: "YES", guardianName: "Clara Tanner")
let player3 = createNewPlayerDict(name: "Bill Bon", height: "43", hasSoccerExperience: "YES", guardianName: "Sara and Jenny Bon")
let player4 = createNewPlayerDict(name: "Eva Gordon", height: "45", hasSoccerExperience: "NO", guardianName: "Wendy and Mike Gordon")
let player5 = createNewPlayerDict(name: "Matt Gill", height: "40", hasSoccerExperience: "NO", guardianName: "Charles and Sylvia Gill")
let player6 = createNewPlayerDict(name: "Kimmy Stein", height: "41", hasSoccerExperience: "NO", guardianName: "Bill and Hillary Stein")
let player7 = createNewPlayerDict(name: "Sammy Adams", height: "45", hasSoccerExperience: "NO", guardianName: "Jeff Adams")
let player8 = createNewPlayerDict(name: "Karl Saygan", height: "42", hasSoccerExperience: "YES", guardianName: "Heather Bledsoe")
let player9 = createNewPlayerDict(name: "Suzanne Greenberg", height: "44", hasSoccerExperience: "YES", guardianName: "Henrietta Dumas")
let player10 = createNewPlayerDict(name: "Sal Dali", height: "41", hasSoccerExperience: "NO", guardianName: "Gala Dali")
let player11 = createNewPlayerDict(name: "Joe Kavalier", height: "39", hasSoccerExperience: "NO", guardianName: "Elaine Kavalier")
let player12 = createNewPlayerDict(name: "Ben Finkelstein", height: "44", hasSoccerExperience: "NO", guardianName: "Aaron and Jill Finkelstein")
let player13 = createNewPlayerDict(name: "Diego Sota", height: "41", hasSoccerExperience: "YES", guardianName: "Sarika Soto")
let player14 = createNewPlayerDict(name: "Chloe Alaska", height: "47", hasSoccerExperience: "NO", guardianName: "David and Jamie Alaska")
let player15 = createNewPlayerDict(name: "Arnold Willis", height: "43", hasSoccerExperience: "NO", guardianName: "Claire Willis")
let player16 = createNewPlayerDict(name: "Phillip Helm", height: "44", hasSoccerExperience: "YES", guardianName: "Thomas Helm and Eva Jones")
let player17 = createNewPlayerDict(name: "Les Clay", height: "42", hasSoccerExperience: "YES", guardianName: "Wynonna Brown")
let player18 = createNewPlayerDict(name: "Herschel Krustofski", height: "45", hasSoccerExperience: "YES", guardianName: "Hyman and Rachel Krustofski")






//Check to ensure there are 18 players in the players array.
players.count

//Single collection named players.  Print the array named players.
print(players)









/////////////////////////
////CREATE TEAMS/////////
/////////////////////////



//Divide the 18 players into 3 teams. Use for in loop to iterate over the players array and assign each player to a team.
func createTeams(from dict: [[String:String]]) -> ( teamDragons: [String], teamSharks: [String], teamRaptors: [String]) {
    
    
    // Create an empty array to store player data for the three teams.
    var teamDragons = [String]()
    var teamSharks = [String]()
    var teamRaptors = [String]()
    
    
    
    // Declare for in loop to access each player dictionary in order to assign each player to a team.
    for player in dict {
        
        
        // Unwrap all dictionary keys to make sure the word "Optional" does not print in front of the name.
        guard let hasSoccerExperience  = player["hasSoccerExperience"], let name  = player["name"], let height = player["height"], let guardian = player["guardianName"] else  {
            
            break
        }
        
        // Create the three teams using an If Statement.  Used comparison operator for control flow to distribute players to each team.  If a player was picked for teamDragons, the teamDragons.count would increase by 1 but the teamSharks and teamRaptors would be 0.  On the next loop, the first if condition is checked and it fails which kicks in the second if statement because teamSharks.count and teamRaptors.count are both 0.  Then the third loop, the first condition fails, the second condition fails so the third is implemented.  This logic is repeated until all the players are assigned to a team or until the end of the players array because the original for loop is for player in players.  There are 18 players so there are 18 dictionaries; therefore, each team will have 6 players: 3 with experience and 3 with no experience.
        if (hasSoccerExperience == "YES") && (teamDragons.count - teamSharks.count == 0) && (teamDragons.count - teamRaptors.count == 0){
            
            teamDragons.append(name)
            
        }else if hasSoccerExperience == "YES" && teamSharks.count - teamRaptors.count == 0{
            teamSharks.append(name)
            
            
        }else if hasSoccerExperience == "YES"  {
            teamRaptors.append(name)
            
        }else {
            // Add players with no experience to the team
            if hasSoccerExperience == "NO" && teamDragons.count - teamSharks.count == 0 && teamDragons.count - teamRaptors.count == 0 {
                teamDragons.append(name)
            }else if hasSoccerExperience == "NO" && teamSharks.count - teamRaptors.count == 0 {
                teamSharks.append(name)
            }else if hasSoccerExperience == "NO" {
                teamRaptors.append(name)
                
            }
        }
        
    }
    
    
    return (teamDragons, teamSharks, teamRaptors)
    
}




// Call function to create the three teams.  Called the function createTeams() and passed in the players array. The function returns the three team values.
let team = createTeams(from: players)




// List of "teamDragons" players.  The list was created by using dot notation to access the teamDragons return value from the call to function createTeams() stored in constant named team.
let teamDragons = team.teamDragons
// List of "teamSharks" players.  The list was created by using dot notation to access the teamSharks return value from the call to function createTeams() stored in constant named team.
let teamSharks = team.teamSharks
// List of "teamRaptors" players.  The list was created by using dot notation to access the teamRaptors return value from the call to function createTeams() stored in constant named team.
let teamRaptors = team.teamRaptors






////////////////////////////////
//////LETTERS///////////////////
///////////////////////////////


for player in players {
    guard let hasSoccerExperience  = player["hasSoccerExperience"], let name  = player["name"], let height = player["height"], let guardian = player["guardianName"] else  {
        
        break
    }
    
    print("Add \(name) to team")
}

let teams = [teamDragons, teamSharks, teamRaptors]
func createGuardianLetter(for: [[String]]) -> String {
    var letter = ""
    for player in team.teamDragons{
        print(player)
        letter = " Dear ,  Our first practice is "
        
    }
    return letter
    
}

for player in team.teamSharks {
    print(player)
}

for player in team.teamRaptors {
    print(player)
}

let letters = createGuardianLetter(for: teams)


