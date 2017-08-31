//
//  LoginViewController.swift
//  Assignment1
//
//  Created by Sakshi Shrivastava on 8/30/17.
//  Copyright © 2017 Sakshi Shrivastava. All rights reserved.
//

import UIKit



class LoginViewController: UIViewController {

    override func viewDidLoad() {
        
        self.setBackground()
        
        let navBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 60))
        self.view.addSubview(navBar);
        let navItem = UINavigationItem(title: "Login");
        let doneItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: nil, action: #selector(getter: UIAccessibilityCustomAction.selector));
        navItem.rightBarButtonItem = doneItem;
        navBar.setItems([navItem], animated: false);
        
        let backButton = UIButton(type: .custom)
        backButton.setImage(UIImage(named: "BackButton.png"), for: .normal)    // Image can be downloaded from here below link
        backButton.setTitle("Back", for: .normal)
        backButton.setTitleColor(backButton.tintColor, for: .normal) // You can change the TitleColor
        backButton.addTarget(self, action: Selector("backAction"), for: .touchUpInside)
        
        navItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func registerButtonTouched(_ sender: UIButton) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "Register") as! RegisterViewController
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    func setBackground() {
        let background = UIImage(named: "AppBackground.png")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: self.view.bounds)
        imageView.contentMode = UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = self.view.center
        self.view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
    }
    
    func back(_ sender: UIBarButtonItem) {
        // Perform your custom actions
        // ...
        // Go back to the previous ViewController
      //  self.navigationController?.popViewControllerAnimated(true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
