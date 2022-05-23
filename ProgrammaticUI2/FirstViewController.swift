//
//  FirstViewController.swift
//  ProgrammaticUI2
//
//  Created by Kwan Ho Leung on 23/5/2022.
//

import UIKit

class FirstViewController: UIViewController {

    var contentView:UIView = UIView()
    var backgroundImage:UIImageView = UIImageView()
    var buttonHolderView:UIView = UIView()
    var biggerLabel:UILabel = UILabel()
    var smallerLabel:UILabel = UILabel()
    var emailButton:UIButton = UIButton()
    var fbButton:UIButton = UIButton()
    var twitterButton:UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewDidAppear(_ animated: Bool) {
        setUpContentView()
        setUpbackgroundImage()
        setUpbuttonHolderView()
        setUpBiggerLabel()
        setUpSmallerLabel()
        setUpEmailButton()
        setUpFbButton()
        setUpTwitterButton()
        
        emailButton.addTarget(self, action: #selector(self.emailButtonPress), for: .touchUpInside)
    }
    
    @objc func emailButtonPress(){
        print("Email Button Pressed")
        let controller = SecondViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    
    func setUpContentView(){
        self.view.addSubview(contentView)
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.leftAnchor.constraint(
            equalTo: self.view.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(
            equalTo: self.view.rightAnchor).isActive = true
        contentView.topAnchor.constraint(
            equalTo: self.view.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(
            equalTo: self.view.bottomAnchor).isActive = true
        
        contentView.backgroundColor = UIColor.init(
            red: 255/255, green: 182/255, blue: 47/255, alpha: 1)
        
        contentView.addSubview(backgroundImage)
        contentView.addSubview(buttonHolderView)
    }
    func setUpbackgroundImage(){
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        
        backgroundImage.image = UIImage(named: "standingTwo")
        backgroundImage.contentMode = .scaleAspectFill
        
        backgroundImage.widthAnchor.constraint(
            equalToConstant: 375).isActive = true
        backgroundImage.heightAnchor.constraint(
            equalToConstant: 597).isActive = true
        
        backgroundImage.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        backgroundImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: -150).isActive = true

    }
    func setUpbuttonHolderView(){
        buttonHolderView.addSubview(twitterButton)
        buttonHolderView.addSubview(fbButton)
        buttonHolderView.addSubview(emailButton)
        buttonHolderView.addSubview(smallerLabel)
        buttonHolderView.addSubview(biggerLabel)
        
        buttonHolderView.translatesAutoresizingMaskIntoConstraints = false
        
        buttonHolderView.widthAnchor.constraint(
            equalToConstant: 320).isActive = true
        buttonHolderView.heightAnchor.constraint(
            equalToConstant: 400).isActive = true
        buttonHolderView.centerXAnchor.constraint(
            equalTo: contentView.centerXAnchor).isActive = true
        buttonHolderView.centerYAnchor.constraint(
            equalTo: contentView.centerYAnchor, constant: 150).isActive = true
        
        buttonHolderView.layer.cornerRadius = 15
        buttonHolderView.layer.backgroundColor = UIColor.white.cgColor
        buttonHolderView.layer.borderColor = UIColor.black.cgColor
        buttonHolderView.layer.borderWidth = 5
    }
    func setUpBiggerLabel(){
        biggerLabel.translatesAutoresizingMaskIntoConstraints = false
        biggerLabel.text = "Login"
        biggerLabel.font = UIFont(name: "GillSans-Bold", size: 40)
        biggerLabel.textAlignment = .center
        
        biggerLabel.centerXAnchor.constraint(
            equalTo: buttonHolderView.centerXAnchor).isActive = true
        biggerLabel.bottomAnchor.constraint(
            equalTo: smallerLabel.topAnchor, constant: -13).isActive = true
    }
    func setUpSmallerLabel(){
        smallerLabel.translatesAutoresizingMaskIntoConstraints = false

        smallerLabel.text = "You don’t think you should \nlogin first and behave like \nhuman not robot."
        smallerLabel.numberOfLines = 0
        smallerLabel.font = UIFont(name: "GillSans-Light", size: 20)
        smallerLabel.textAlignment = .center
        
        smallerLabel.centerXAnchor.constraint(
            equalTo: buttonHolderView.centerXAnchor).isActive = true
        smallerLabel.bottomAnchor.constraint(
            equalTo: emailButton.topAnchor, constant: -16).isActive = true
        
    }
    func setUpEmailButton(){
        emailButton.setBackgroundImage(UIImage(named: "emailB"), for: .normal)
        
        emailButton.translatesAutoresizingMaskIntoConstraints = false
        
        emailButton.widthAnchor.constraint(
            equalToConstant: 279).isActive = true
        emailButton.heightAnchor.constraint(
            equalToConstant: 60).isActive = true
        
        emailButton.centerXAnchor.constraint(
            equalTo: buttonHolderView.centerXAnchor).isActive = true
        emailButton.bottomAnchor.constraint(
            equalTo: fbButton.topAnchor, constant: -16).isActive = true
    }
    func setUpFbButton(){
        fbButton.setBackgroundImage(UIImage(named: "fbB"), for: .normal)
        
        fbButton.translatesAutoresizingMaskIntoConstraints = false
        
        fbButton.widthAnchor.constraint(
            equalToConstant: 279).isActive = true
        fbButton.heightAnchor.constraint(
            equalToConstant: 60).isActive = true
        
        fbButton.centerXAnchor.constraint(
            equalTo: buttonHolderView.centerXAnchor).isActive = true
        fbButton.bottomAnchor.constraint(
            equalTo: twitterButton.topAnchor, constant: -16).isActive = true
    }
    func setUpTwitterButton(){
        twitterButton.setBackgroundImage(UIImage(named: "twitterB"), for: .normal)
        
        twitterButton.translatesAutoresizingMaskIntoConstraints = false
        
        twitterButton.widthAnchor.constraint(
            equalToConstant: 279).isActive = true
        twitterButton.heightAnchor.constraint(
            equalToConstant: 60).isActive = true
        
        twitterButton.centerXAnchor.constraint(
            equalTo: buttonHolderView.centerXAnchor).isActive = true
        twitterButton.bottomAnchor.constraint(
            equalTo: buttonHolderView.bottomAnchor, constant: -24).isActive = true
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
