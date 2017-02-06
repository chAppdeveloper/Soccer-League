//: Playground - noun: a place where people can play

import UIKit





/*
 Created a code to manage soccer league data.  The code is divided into three sections:
 
 SECTION #1: CREATE PLAYER DICTIONARY
 1) Declared empty variable named "players"
 2) Declared a function name createNewPlayerDict()
 3) Called the function createNewPlayerDict() to manually create a dictionary for each player
 4) Printed return value "players" which now contains all 18 player dictionaries
 
 SECTION #2: CREATE TEAMS
 1) Declared a function named createTeams().
 2) Called the function createTeams() and passed in "player" collection from Section #1.
 3) Printed return value "teamDragons", "teamSharks", and "teamRaptors"
 4) Additonal Information:
 a) Printed return values for: "teamDragonRoster", "teamSharkRoster", and "teamRaptorRoster".
 b) Printed return values for: "aveHeightDragons", "aveHeightSharks", "aveHeightRaptors".=
 
 SECTION #3: CREATE LETTERS
 1) Declared a variable named "letters".
 2) Declared a function createLetterForFirstPractice().
 3) Called the function createLetterForFirstPractice() three times and passed in a different team dictionary from the team dictionaries ("teamDragons", "teamSharks", and "teamRaptors") created in Section #2.
 4) Printed return value "letters".
 
 
 */


//SECTION #1 - CREATE PLAYER DICTIONARY

// Declare an empty  array named players.
var players = [[String:String]]()

// Declare function createNewPlayerDict().
func createNewPlayerDict(name: String, height: String, hasSoccerExperience: String, guardianName: String, team: String = "TBD") -> ( [[String:String]]) {
    
    
    let dict = ["name": name, "height": height, "hasSoccerExperience": hasSoccerExperience, "guardianName": guardianName]
    
    players.append(dict)
    
    return (players)
}

// Call the function createNewPlayerDict().
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

// Print variable named "players"
for player in players{
    print(players)
}





//  SECTION #2: CREATE TEAMS



// Declare a function createTeams()
func createTeams(from dict: [[String:String]]) -> ( teamDragons: [[String:String]], teamSharks: [[String:String]], teamRaptors: [[String:String]], teamDragonRoster: [String], teamSharkRoster: [String], teamRaptorRoster:[String], aveHeightDragons: Double, aveHeightSharks: Double, aveHeightRaptors: Double) {
    
    
    // Team Variables:
    var teamDragons = [[String:String]]()
    var teamSharks = [[String:String]]()
    var teamRaptors = [[String: String]]()
    
    // Team Roster Variables:
    var teamDragonRoster = [String]()
    var teamSharkRoster = [String]()
    var teamRaptorRoster = [String]()
    
    // Team Height Variables:
    var sumOfHeightsTeamDragon = 0.0
    var sumOfHeightsTeamSharks = 0.0
    var sumOfHeightsTeamRaptors = 0.0
    
    var heightsTeamDragon:[Int]
    var heightsTeamSharks: [Int]
    var heightTeamRaptors: [Int]
    
    //var aveHeightTeamDragon: Double = sumOfHeightsTeamDragon/Double(heightsTeamDragon.count)
    // var aveHeightTeamSharks: Double = sumOfHeightsTeamSharks/Double(heightsTeamSharks.count)
    //var aveHeightTeamRaptors: Double = sumOfHeightsTeamRaptors/Double(heightTeamRaptors.count)
    
    var aveHeightSharks = 0.0
    var aveHeightRaptors = 0.0
    var aveHeightDragons = 0.0
    
    
    for player in dict {
        
        
        // Unwrap dictionary keys.
        guard let hasSoccerExperience  = player["hasSoccerExperience"], let name  = player["name"], let height = Double(player["height"]!) else {
            
            break
        }
        
        // Assign players to a team with experience
        if (hasSoccerExperience == "YES") && (teamDragons.count - teamSharks.count == 0) && (teamDragons.count - teamRaptors.count == 0) && height > 1.5 {
            
            teamDragons.append(player)
            teamDragonRoster.append(name)
            //heightsTeamDragon.append(doubleHeight)
            //sumOfHeightsTeamDragon += Int(heights)
            aveHeightSharks += height
        }else if hasSoccerExperience == "YES" && teamSharks.count - teamRaptors.count == 0 {
            teamSharks.append(player)
            teamSharkRoster.append(name)
            
            
        }else if hasSoccerExperience == "YES"  {
            teamRaptors.append(player)
            teamRaptorRoster.append(name)
            
        }
        
        
        // Assign players to a team with no experience
        if hasSoccerExperience == "NO" && teamDragons.count - teamSharks.count == 0 && teamDragons.count - teamRaptors.count == 0 {
            teamDragons.append(player)
            teamDragonRoster.append(name)
        }else if hasSoccerExperience == "NO" && teamSharks.count - teamRaptors.count == 0 {
            teamSharks.append(player)
            teamSharkRoster.append(name)
            
        }else if hasSoccerExperience == "NO" {
            teamRaptors.append(player)
            teamRaptorRoster.append(name)
        }
        
    }
    
    return (teamDragons, teamSharks, teamRaptors, teamDragonRoster, teamSharkRoster, teamRaptorRoster, aveHeightDragons, aveHeightRaptors, aveHeightSharks)
    
}



// Call the function createTeams() and pass in "player" collection from Section #1.
let team = createTeams(from: players)

// Store return values from function createTeams() to create a team dictionary for each team.
let teamDragons = team.teamDragons
let teamRaptors = team.teamRaptors
let teamSharks = team.teamSharks


// Store return values from function createTeams() to create a roster for each team.
let teamDragonRosters = team.teamDragonRoster
let teamRaptorRosters = team.teamRaptorRoster
let teamSharkRosters = team.teamSharkRoster





// SECTION #3: CREATE LETTERS


// Declare a variable named "letters".
var letters = [String]()

// Store each team name in a separate variable to pass into the function createLetterForFirstPractice().
let teamShark = "Sharks"
let teamDragon = "Dragons"
let teamRaptor = "Raptors"


// Store practice time in separate variable to pass into the function createLetterForFirstPractice().
let teamDragonsStartDate = "March 17 at 1:00 PM"
let teamRaptorsStartDate = "March 17 at 3:00 PM"
let teamSharksStartDate = "March 18 at 1:00 PM"



// Declare a function createLetterForFirstPractice()
func createLetterForFirstPractice(on practiceTime: String, with teamName: String , for team: [[String:String]]) -> (sharksLetters: [String], raptorsLetters: [String], dragonsLetters: [String]){
    var firstLetter = String()
    var teamDragonLetters = [String]()
    var teamRaptorLetters = [String]()
    var teamSharkLetters = [String]()
    
    let teamName = teamName
    
    for player in team {
        
        // Used guard statement to unwrap dictionary keys.
        guard let name  = player["name"], let guardian = player["guardianName"] else  {
            
            break
        }
        
        
        firstLetter = "Welcome \(guardian),  we are so excited that \(name) is becoming a part of the \"\(teamName)\".  Please join us on \(practiceTime) for the first practice of the season!"
        
        letters.append(firstLetter)
        
        // Store letters separately for each team:
        if teamName == teamShark {
            teamSharkLetters.append(firstLetter)
            
        }else if teamName == teamDragon{
            teamDragonLetters.append(firstLetter)
        }else if teamName == teamRaptor{
            teamRaptorLetters.append(firstLetter)
            
        }
        
    }
    return (teamSharkLetters, teamRaptorLetters, teamDragonLetters)
}



//Call function createLetterForFirstPractice() and pass in practice time variable "teamDragonsStartDate", team name variable "teamDragon" and team dictionary "teamDragons". Repeat function call for each team.
let teamDragonLetterForFirstPractice = createLetterForFirstPractice(on: teamDragonsStartDate , with: teamDragon, for: teamDragons)


let teamRaptorLetterForFirstPractice = createLetterForFirstPractice(on: teamRaptorsStartDate, with: teamRaptor, for: teamRaptors)


let teamSharkLetterForFirstPractice = createLetterForFirstPractice(on: teamSharksStartDate, with: teamShark, for: teamSharks)

// Print "letters"
for letter in letters{
    print(letter)
}
letters.count


 
