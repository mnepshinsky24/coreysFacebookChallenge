import UIKit


//Intentions: Create a blueprint for a facebook profile that will input all the user's information everytime that a new account has been created.

class FacebookProfile {
    //Section 1. Class's attributes - every class will have these
    // These are also our initializers
    // These can all be changed each time we create an object from the class!
    
    var profileName : String
    var profileBio : String
    var profileFriendList : [String]
    var profileSchool : String
    var profileBirthday : String
    var profileAge : Int
    var relationshipStatus : String
    
    // Section 1.5 Class's constants - These things can never ever be changed!
    //The let keyword says: this thing can never, ever, be changed
    
    let relationshipStatusOne = "It's Complicated" // represented by 1
    let relationshipStatusTwo = "Single" // represented by 2
    let relationshipStatusThree = "Married" // represented by 3
    let relationshipStatusFour = "Divorced" // represented by 4
    
    
    //create intializer function - EVERYTIME you create a class, you need to run it through an initializer method
    // The defaults will be replaced by what you SET
    
    init() {
        profileName = "New User"
        profileBio = ""
        profileFriendList = [String]()
        profileSchool = ""
        profileBirthday = ""
        profileAge = 0 //do we really want this as 0 - this may be a design flaw..
        relationshipStatus = relationshipStatusOne //do we really want this to default to status? That relationships are complicated?
        
    }

    
    // Section 2 - Functions that support the Facebook Profile
    // Intentions - Create functions that when called upon will create attributes for each object
    
    //we are going to create object variables that will plug into our attribute variables above. That means that the functions will take in an argument that the user sets and then set it as the attribute variable.
    
    // function that lets the user set their profile name
    func setProfileName(usersName : String) {
        profileName = usersName
    }
    
    //function that lets the user set their profile bio
    
    func setProfileBio(usersBio : String) {
        profileBio = usersBio
    }
    
    // set friendslist function! (in the future :) - hint, code challenge!) - What type of data type does this attribute variable store?
    
    
    func setFriendsList(userFriendsList: [String]){
        profileFriendList = userFriendsList
        
    }
    
    //function that lets the user set their school
    func setProfileSchool(usersSchool : String) {
        profileSchool = usersSchool
    }
    
    // function that lets the user update their profile's birthday
    
    func setProfileBirthday(usersBirthday: String){
        profileBirthday = usersBirthday
    }
    
    // function that lets user set their age
    
    func setProfileAge(usersAge : Int) {
        profileAge = usersAge
    }
    
    //update our relationship status
    
    func setProfileRelationshipStatus(userStatus : Int) {
        //not good to set relationshipStatus = userStatus - why do you think so?
        
        if userStatus == 1 {
            relationshipStatus = relationshipStatusOne
        } else if userStatus == 2 {
            relationshipStatus = relationshipStatusTwo
        } else if userStatus == 3 {
            relationshipStatus = relationshipStatusThree
        } else {
            //when they selected 4
            relationshipStatus = relationshipStatusFour
        }
        
    }

    // wrapper section : these functions allow the user to check their profile's info
    
    func checkProfileName() -> String {
        return profileName
    }
    
    //this function will return your profile bio
    func checkProfileBio() -> String {
        return profileBio
    }
    
    //check the Profile's Age
    func checkProfileAge() -> Int {
        return profileAge
    }
    
    //check the Profile's School
    
    func checkProfileSchool() -> String {
        return profileSchool
    }
    
    //check the Profile's Birthday
    
    func checkProfileBirthday() -> String {
        return profileBirthday
    }
    
    // check everything
    
    func checkEverything () {
        print(profileAge)
        print(profileSchool)
        print(profileBirthday)
        print(profileFriendList)
    }
    
    //function that checks the profiles' relationship Status
    
    func checkRelationshipStatus () -> String {
        return relationshipStatus
    }
    

    }
    

var chloesFacebookProfile = FacebookProfile()

chloesFacebookProfile.setProfileAge(usersAge: 18)
chloesFacebookProfile.setProfileName(usersName: "Chloe Xiang")
chloesFacebookProfile.setProfileSchool(usersSchool: "NYU")
chloesFacebookProfile.setProfileBio(usersBio: "I am an awesome IA for KWK Portland!")
chloesFacebookProfile.setProfileBirthday(usersBirthday: "February 17th")

//chloesFacebookProfile.checkEverything()

chloesFacebookProfile.setProfileAge(usersAge: 19)

chloesFacebookProfile.checkEverything()

chloesFacebookProfile.setFriendsList(userFriendsList: ["Maya", "Joan", "Megan"])
chloesFacebookProfile.setFriendsList(userFriendsList: ["Maya", "Joan", "Megan"])

chloesFacebookProfile.checkEverything()

print(chloesFacebookProfile.profileFriendList)
