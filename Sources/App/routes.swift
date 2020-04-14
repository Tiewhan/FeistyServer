import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
  // Basic "It works" example
  router.get { req in
      return "Feisty Server works!"
  }
  
  // Basic "Hello, world!" example
  router.get("hello") { req in
      return "Hello, world!"
  }

  // Example of configuring a controller
  let todoController = TodoController()
  router.get("todos", use: todoController.index)
  router.post("todos", use: todoController.create)
  router.delete("todos", Todo.parameter, use: todoController.delete)
  
  router.get("/friends") { request -> String in
      
    let friendsController = FriendsController()
      
    return friendsController.getFriends()
      
  }
  
  router.post(LoginCredentials.self, at: "login") { request, data -> String in
    
    let loginController = LoginController()
    
    return loginController.verifyLoginCredentials(data)
    
  }
  
}
