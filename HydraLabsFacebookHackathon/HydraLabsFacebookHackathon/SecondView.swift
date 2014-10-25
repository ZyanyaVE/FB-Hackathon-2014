//
//  SecondView.swift
//  HydraLabsFacebookHackathon
//
//  Created by Leonardo Gutiérrez on 10/24/14.
//  Copyright (c) 2014 HydraLabs. All rights reserved.
//

import UIKit

class SecondView: UIViewController, FBLoginViewDelegate {
    
    @IBOutlet var fbLoginView : FBLoginView!
    
    @IBOutlet var botonFb: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.fbLoginView.delegate = self
        self.fbLoginView.readPermissions = ["public_profile", "email", "user_friends"]
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Facebook Delegate Methods
    
    func loginViewShowingLoggedInUser(loginView : FBLoginView!) {
        println("User Logged In")
        println("This is where you perform a segue.")
        
        if(FBSession.activeSession().isOpen){
            println("Session is Active")
            
            //let HomeView = self.storyboard?.instantiateViewControllerWithIdentifier("HomeView") as ViewController
            //self.navigationController?.pushViewController(HomeView, animated: true)
        }
        
    }
    
    func loginViewFetchedUserInfo(loginView : FBLoginView!, user: FBGraphUser){
        println("User Name: \(user.name)")
    }
    
    func loginViewShowingLoggedOutUser(loginView : FBLoginView!) {
        println("User Logged Out")
    }
    
    func loginView(loginView : FBLoginView!, handleError:NSError) {
        println("Error: \(handleError.localizedDescription)")
    }
    
}

