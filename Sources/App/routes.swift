import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
 
  router.get("/friends") { request -> String in
      
    let friendsController = FriendsController()
      
    return friendsController.getFriends()
      
  }
  
  router.post(LoginCredentials.self, at: "login") { request, data -> String in
    
    let loginController = LoginController()
    
    return loginController.verifyLoginCredentials(data)
    
  }
  
  router.post(FriendImage.self, at:"friendImage") { request, data -> String in

    let friendsController = FriendsController()
    
    return friendsController.getFriendProfileImage(of: data.userID)

  }
  
}
