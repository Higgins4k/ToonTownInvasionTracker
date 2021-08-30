//
//  ViewController.swift
//  DicTest
//
//  Created by Christian Higgins on 6/19/21.
//

import UIKit

struct InvasionWrapper: Decodable {
    let lastUpdated : Int
    let invasions : [String:Invasion]
}

struct Invasion: Decodable {
    let type: String
    let asOf: Int?
    let progress: String
}


class ViewController: UIViewController {
    
    
    @IBOutlet weak var OngoingInvasions: UILabel!
    @IBOutlet weak var CogName1: UILabel!
    @IBOutlet weak var District1: UILabel!
    @IBOutlet weak var Progress1: UILabel!
    @IBOutlet weak var CogName2: UILabel!
    @IBOutlet weak var District2: UILabel!
    @IBOutlet weak var Progress2: UILabel!
    @IBOutlet weak var CogName3: UILabel!
    @IBOutlet weak var District3: UILabel!
    @IBOutlet weak var Progress3: UILabel!
    @IBOutlet weak var CogName4: UILabel!
    @IBOutlet weak var District4: UILabel!
    @IBOutlet weak var Progress4: UILabel!
    @IBOutlet weak var CogName5: UILabel!
    @IBOutlet weak var District5: UILabel!
    @IBOutlet weak var Progress5: UILabel!
    @IBOutlet weak var CogName6: UILabel!
    @IBOutlet weak var District6: UILabel!
    @IBOutlet weak var Progress6: UILabel!
    @IBOutlet weak var CogName7: UILabel!
    @IBOutlet weak var District7: UILabel!
    @IBOutlet weak var Progress7: UILabel!
    
    @IBOutlet weak var Box1: UIImageView!
    @IBOutlet weak var Box2: UIImageView!
    @IBOutlet weak var Box3: UIImageView!
    @IBOutlet weak var Box4: UIImageView!
    @IBOutlet weak var Box5: UIImageView!
    @IBOutlet weak var Box6: UIImageView!
    @IBOutlet weak var Box7: UIImageView!
    
    
    @IBOutlet weak var Bossbot1: UIImageView!
    @IBOutlet weak var Bossbot2: UIImageView!
    @IBOutlet weak var Bossbot3: UIImageView!
    @IBOutlet weak var Bossbot4: UIImageView!
    @IBOutlet weak var Bossbot5: UIImageView!
    @IBOutlet weak var Bossbot6: UIImageView!
    @IBOutlet weak var Bossbot7: UIImageView!
    
    @IBOutlet weak var Lawbot1: UIImageView!
    @IBOutlet weak var Lawbot2: UIImageView!
    @IBOutlet weak var Lawbot3: UIImageView!
    @IBOutlet weak var Lawbot4: UIImageView!
    @IBOutlet weak var Lawbot5: UIImageView!
    @IBOutlet weak var Lawbot6: UIImageView!
    @IBOutlet weak var Lawbot7: UIImageView!
    
    @IBOutlet weak var Sellbot1: UIImageView!
    @IBOutlet weak var Sellbot2: UIImageView!
    @IBOutlet weak var Sellbot3: UIImageView!
    @IBOutlet weak var Sellbot4: UIImageView!
    @IBOutlet weak var Sellbot5: UIImageView!
    @IBOutlet weak var Sellbot6: UIImageView!
    @IBOutlet weak var Sellbot7: UIImageView!
    
    @IBOutlet weak var Cashbot1: UIImageView!
    @IBOutlet weak var Cashbot2: UIImageView!
    @IBOutlet weak var Cashbot3: UIImageView!
    @IBOutlet weak var Cashbot4: UIImageView!
    @IBOutlet weak var Cashbot5: UIImageView!
    @IBOutlet weak var Cashbot6: UIImageView!
    @IBOutlet weak var Cashbot7: UIImageView!
    
    

    

    var currentInvasions = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let jsonUrlString = "https://www.toontownrewritten.com/api/invasions"
        guard let url = URL(string: jsonUrlString) else { return }
        
        
        Box1.alpha = 0
        Box2.alpha = 0
        Box3.alpha = 0
        Box4.alpha = 0
        Box5.alpha = 0
        Box6.alpha = 0
        Box7.alpha = 0
        
        Bossbot1.alpha = 0
        Bossbot2.alpha = 0
        Bossbot3.alpha = 0
        Bossbot4.alpha = 0
        Bossbot5.alpha = 0
        Bossbot6.alpha = 0
        Bossbot7.alpha = 0
        
        Lawbot1.alpha = 0
        Lawbot2.alpha = 0
        Lawbot3.alpha = 0
        Lawbot4.alpha = 0
        Lawbot5.alpha = 0
        Lawbot6.alpha = 0
        Lawbot7.alpha = 0
        
        Cashbot1.alpha = 0
        Cashbot2.alpha = 0
        Cashbot3.alpha = 0
        Cashbot4.alpha = 0
        Cashbot5.alpha = 0
        Cashbot6.alpha = 0
        Cashbot7.alpha = 0
        
        Sellbot1.alpha = 0
        Sellbot2.alpha = 0
        Sellbot3.alpha = 0
        Sellbot4.alpha = 0
        Sellbot5.alpha = 0
        Sellbot6.alpha = 0
        Sellbot7.alpha = 0


        URLSession.shared.dataTask(with: url) { [self] (data, response, err) in
            
            guard let data = data else {return }
            
            do {
                let list = try JSONDecoder().decode(InvasionWrapper.self, from: data)
                let District01 = list.invasions["Blam Canyon"]
                let District02 = list.invasions["Boringbury"]
                let District03 = list.invasions["Bounceboro"]
                let District04 = list.invasions["Fizzlefield"]
                let District05 = list.invasions["Gulp Gulch"]
                let District06 = list.invasions["Hiccup Hills"]
                let District07 = list.invasions["Kaboom Cliffs"]
                let District08 = list.invasions["Splashport"]
                let District09 = list.invasions["Splat Summit"]
                let District10 = list.invasions["Thwackville"]
                let District11 = list.invasions["Whoosh Rapids"]
                let District12 = list.invasions["Zoink Falls"]
                
                
                
                

                
                DispatchQueue.main.async {
                    
                    if list.invasions["Blam Canyon"]?.type == nil{
                    //Do Nothing
                }else if currentInvasions == 0{
                    Box1.alpha = 0.9
                    CogName1.text = "\(District01!.type)"
                    District1.text = "Blam Canyon"
                    Progress1.text = "\(District01!.progress)"
                    currentInvasions = 1
                    
                }else if currentInvasions == 1{
                    Box2.alpha = 0.9
                    CogName2.text = "\(District01!.type)"
                    District2.text = "Blam Canyon"
                    Progress2.text = "\(District01!.progress)"
                    currentInvasions = 2
                    
                }else if currentInvasions == 2{
                    Box3.alpha = 0.9
                    CogName3.text = "\(District01!.type)"
                    District3.text = "Blam Canyon"
                    Progress3.text = "\(District01!.progress)"
                    currentInvasions = 3
                    
                }else if currentInvasions == 3{
                    Box4.alpha = 0.9
                    CogName4.text = "\(District01!.type)"
                    District4.text = "Blam Canyon"
                    Progress4.text = "\(District01!.progress)"
                    currentInvasions = 4
                    
                }else if currentInvasions == 4{
                    Box5.alpha = 0.9
                    CogName5.text = "\(District01!.type)"
                    District5.text = "Blam Canyon"
                    Progress5.text = "\(District01!.progress)"
                    currentInvasions = 5
                    
                }else if currentInvasions == 5{
                    Box6.alpha = 0.9
                    CogName6.text = "\(District01!.type)"
                    District6.text = "Blam Canyon"
                    Progress6.text = "\(District01!.progress)"
                    currentInvasions = 6
                    
                }else if currentInvasions == 6{
                    Box7.alpha = 0.9
                    CogName7.text = "\(District01!.type)"
                    District7.text = "Blam Canyon"
                    Progress7.text = "\(District01!.progress)"
                    currentInvasions = 7
                    
                }else if currentInvasions == 7 {
                    //Need to add support for scrolling for more invasions
                }
                
                
                //This is the
                //start of District 2
                //Boringbury
    
                if list.invasions["Boringbury"]?.type == nil{
                    //Do Nothing
                }else if currentInvasions == 0{
                    Box1.alpha = 0.9
                    CogName1.text = "\(District02!.type)"
                    District1.text = "Boringbury"
                    Progress1.text = "\(District02!.progress)"
                    currentInvasions = 1
                    
                }else if currentInvasions == 1{
                    Box2.alpha = 0.9
                    CogName2.text = "\(District02!.type)"
                    District2.text = "Boringbury"
                    Progress2.text = "\(District02!.progress)"
                    currentInvasions = 2
                    
                }else if currentInvasions == 2{
                    Box3.alpha = 0.9
                    CogName3.text = "\(District02!.type)"
                    District3.text = "Boringbury"
                    Progress3.text = "\(District02!.progress)"
                    currentInvasions = 3
                    
                }else if currentInvasions == 3{
                    Box4.alpha = 0.9
                    CogName4.text = "\(District02!.type)"
                    District4.text = "Boringbury"
                    Progress4.text = "\(District02!.progress)"
                    currentInvasions = 4
                    
                }else if currentInvasions == 4{
                    Box5.alpha = 0.9
                    CogName5.text = "\(District02!.type)"
                    District5.text = "Boringbury"
                    Progress5.text = "\(District02!.progress)"
                    currentInvasions = 5
                    
                }else if currentInvasions == 5{
                    Box6.alpha = 0.9
                    CogName6.text = "\(District02!.type)"
                    District6.text = "Boringbury"
                    Progress6.text = "\(District02!.progress)"
                    currentInvasions = 6
                    
                }else if currentInvasions == 6{
                    Box7.alpha = 0.9
                    CogName7.text = "\(District02!.type)"
                    District7.text = "Boringbury"
                    Progress7.text = "\(District02!.progress)"
                    currentInvasions = 7
                    
                }else if currentInvasions == 7 {
                    //Need to add support for scrolling for more invasions
                }

                
                //This is the start of District 3
                
                
                
                if list.invasions["Bounceboro"]?.type == nil{
                    //Do Nothing
                }else if currentInvasions == 0{
                    Box1.alpha = 0.9
                    CogName1.text = "\(District03!.type)"
                    District1.text = "Bounceboro"
                    Progress1.text = "\(District03!.progress)"
                    currentInvasions = 1
                    
                }else if currentInvasions == 1{
                    Box2.alpha = 0.9
                    CogName2.text = "\(District03!.type)"
                    District2.text = "Bounceboro"
                    Progress2.text = "\(District03!.progress)"
                    currentInvasions = 2
                    
                }else if currentInvasions == 2{
                    Box3.alpha = 0.9
                    CogName3.text = "\(District03!.type)"
                    District3.text = "Bounceboro"
                    Progress3.text = "\(District03!.progress)"
                    currentInvasions = 3
                    
                }else if currentInvasions == 3{
                    Box4.alpha = 0.9
                    CogName4.text = "\(District03!.type)"
                    District4.text = "Bounceboro"
                    Progress4.text = "\(District03!.progress)"
                    currentInvasions = 4
                    
                }else if currentInvasions == 4{
                    Box5.alpha = 0.9
                    CogName5.text = "\(District03!.type)"
                    District5.text = "Bounceboro"
                    Progress5.text = "\(District03!.progress)"
                    currentInvasions = 5
                    
                }else if currentInvasions == 5{
                    Box6.alpha = 0.9
                    CogName6.text = "\(District03!.type)"
                    District6.text = "Bounceboro"
                    Progress6.text = "\(District03!.progress)"
                    currentInvasions = 6
                    
                }else if currentInvasions == 6{
                    Box7.alpha = 0.9
                    CogName7.text = "\(District03!.type)"
                    District7.text = "Bounceboro"
                    Progress7.text = "\(District03!.progress)"
                    currentInvasions = 7
                    
                }else if currentInvasions == 7 {
                    //Need to add support for scrolling for more invasions
                }

                
                
                
                if list.invasions["Fizzlefield"]?.type == nil{
                    //Do Nothing
                }else if currentInvasions == 0{
                    Box1.alpha = 0.9
                    CogName1.text = "\(District04!.type)"
                    District1.text = "Fizzlefield"
                    Progress1.text = "\(District04!.progress)"
                    currentInvasions = 1
                    
                }else if currentInvasions == 1{
                    Box2.alpha = 0.9
                    CogName2.text = "\(District04!.type)"
                    District2.text = "Fizzlefield"
                    Progress2.text = "\(District04!.progress)"
                    currentInvasions = 2
                    
                }else if currentInvasions == 2{
                    Box3.alpha = 0.9
                    CogName3.text = "\(District04!.type)"
                    District3.text = "Fizzlefield"
                    Progress3.text = "\(District04!.progress)"
                    currentInvasions = 3
                    
                }else if currentInvasions == 3{
                    Box4.alpha = 0.9
                    CogName4.text = "\(District04!.type)"
                    District4.text = "Fizzlefield"
                    Progress4.text = "\(District04!.progress)"
                    currentInvasions = 4
                    
                }else if currentInvasions == 4{
                    Box5.alpha = 0.9
                    CogName5.text = "\(District04!.type)"
                    District5.text = "Fizzlefield"
                    Progress5.text = "\(District04!.progress)"
                    currentInvasions = 5
                    
                }else if currentInvasions == 5{
                    Box6.alpha = 0.9
                    CogName6.text = "\(District04!.type)"
                    District6.text = "Fizzlefield"
                    Progress6.text = "\(District04!.progress)"
                    currentInvasions = 6
                    
                }else if currentInvasions == 6{
                    Box7.alpha = 0.9
                    CogName7.text = "\(District04!.type)"
                    District7.text = "Fizzlefield"
                    Progress7.text = "\(District04!.progress)"
                    currentInvasions = 7
                    
                }else if currentInvasions == 7 {
                    //Need to add support for scrolling for more invasions
                }

                
                
                
                
                if list.invasions["Gulp Gulch"]?.type == nil{
                    //Do Nothing
                }else if currentInvasions == 0{
                    Box1.alpha = 0.9
                    CogName1.text = "\(District05!.type)"
                    District1.text = "Gulp Gulch"
                    Progress1.text = "\(District05!.progress)"
                    currentInvasions = 1
                }else if currentInvasions == 1{
                    Box2.alpha = 0.9
                    CogName2.text = "\(District05!.type)"
                    District2.text = "Gulp Gulch"
                    Progress2.text = "\(District05!.progress)"
                    currentInvasions = 2
                    
                }else if currentInvasions == 2{
                    Box3.alpha = 0.9
                    CogName3.text = "\(District05!.type)"
                    District3.text = "Gulp Gulch"
                    Progress3.text = "\(District05!.progress)"
                    currentInvasions = 3
                    
                }else if currentInvasions == 3{
                    Box4.alpha = 0.9
                    CogName4.text = "\(District05!.type)"
                    District4.text = "Gulp Gulch"
                    Progress4.text = "\(District05!.progress)"
                    currentInvasions = 4
                    
                }else if currentInvasions == 4{
                    Box5.alpha = 0.9
                    CogName5.text = "\(District05!.type)"
                    District5.text = "Gulp Gulch"
                    Progress5.text = "\(District05!.progress)"
                    currentInvasions = 5
                    
                }else if currentInvasions == 5{
                    Box6.alpha = 0.9
                    CogName6.text = "\(District05!.type)"
                    District6.text = "Gulp Gulch"
                    Progress6.text = "\(District05!.progress)"
                    currentInvasions = 6
                    
                }else if currentInvasions == 6{
                    Box7.alpha = 0.9
                    CogName7.text = "\(District05!.type)"
                    District7.text = "Gulp Gulch"
                    Progress7.text = "\(District05!.progress)"
                    currentInvasions = 7
                    
                }else if currentInvasions == 7 {
                    //Need to add support for scrolling for more invasions
                }

                
                if list.invasions["Hiccup Hills"]?.type == nil{
                    //Do Nothing
                }else if currentInvasions == 0{
                    Box1.alpha = 0.9
                    CogName1.text = "\(District06!.type)"
                    District1.text = "Hiccup Hills"
                    Progress1.text = "\(District06!.progress)"
                    currentInvasions = 1
                    
                }else if currentInvasions == 1{
                    Box2.alpha = 0.9
                    CogName2.text = "\(District06!.type)"
                    District2.text = "Hiccup Hills"
                    Progress2.text = "\(District06!.progress)"
                    currentInvasions = 2
                    
                }else if currentInvasions == 2{
                    Box3.alpha = 0.9
                    CogName3.text = "\(District06!.type)"
                    District3.text = "Hiccup Hills"
                    Progress3.text = "\(District06!.progress)"
                    currentInvasions = 3
                    
                }else if currentInvasions == 3{
                    Box4.alpha = 0.9
                    CogName4.text = "\(District06!.type)"
                    District4.text = "Hiccup Hills"
                    Progress4.text = "\(District06!.progress)"
                    currentInvasions = 4
                    
                }else if currentInvasions == 4{
                    Box5.alpha = 0.9
                    CogName5.text = "\(District06!.type)"
                    District5.text = "Hiccup Hills"
                    Progress5.text = "\(District06!.progress)"
                    currentInvasions = 5
                    
                }else if currentInvasions == 5{
                    Box6.alpha = 0.9
                    CogName6.text = "\(District06!.type)"
                    District6.text = "Hiccup Hills"
                    Progress6.text = "\(District06!.progress)"
                    currentInvasions = 6
                    
                }else if currentInvasions == 6{
                    Box7.alpha = 0.9
                    CogName7.text = "\(District06!.type)"
                    District7.text = "Hiccup Hills"
                    Progress7.text = "\(District06!.progress)"
                    currentInvasions = 7
                    
                }else if currentInvasions == 7 {
                    //Need to add support for scrolling for more invasions
                }

                
                
                
                
                if list.invasions["Kaboom Cliffs"]?.type == nil{
                    //Do Nothing
                }else if currentInvasions == 0{
                    Box1.alpha = 0.9
                    CogName1.text = "\(District07!.type)"
                    District1.text = "Kaboom Cliffs"
                    Progress1.text = "\(District07!.progress)"
                    currentInvasions = 1
                    
                }else if currentInvasions == 1{
                    Box2.alpha = 0.9
                    CogName2.text = "\(District07!.type)"
                    District2.text = "Kaboom Cliffs"
                    Progress2.text = "\(District07!.progress)"
                    currentInvasions = 2
                    
                }else if currentInvasions == 2{
                    Box3.alpha = 0.9
                    CogName3.text = "\(District07!.type)"
                    District3.text = "Kaboom Cliffs"
                    Progress3.text = "\(District07!.progress)"
                    currentInvasions = 3
                    
                }else if currentInvasions == 3{
                    Box4.alpha = 0.9
                    CogName4.text = "\(District07!.type)"
                    District4.text = "Kaboom Cliffs"
                    Progress4.text = "\(District07!.progress)"
                    currentInvasions = 4
                    
                }else if currentInvasions == 4{
                    Box5.alpha = 0.9
                    CogName5.text = "\(District07!.type)"
                    District5.text = "Kaboom Cliffs"
                    Progress5.text = "\(District07!.progress)"
                    currentInvasions = 5
                    
                }else if currentInvasions == 5{
                    Box6.alpha = 0.9
                    CogName6.text = "\(District07!.type)"
                    District6.text = "Kaboom Cliffs"
                    Progress6.text = "\(District07!.progress)"
                    currentInvasions = 6
                    
                }else if currentInvasions == 6{
                    Box7.alpha = 0.9
                    CogName7.text = "\(District07!.type)"
                    District7.text = "Kaboom Cliffs"
                    Progress7.text = "\(District07!.progress)"
                    currentInvasions = 7
                    
                }else if currentInvasions == 7 {
                    //Need to add support for scrolling for more invasions
                }

                
                
                if list.invasions["Splashport"]?.type == nil{
                    //Do Nothing
                }else if currentInvasions == 0{
                    Box1.alpha = 0.9
                    CogName1.text = "\(District08!.type)"
                    District1.text = "Splashport"
                    Progress1.text = "\(District08!.progress)"
                    currentInvasions = 1
                    
                }else if currentInvasions == 1{
                    Box2.alpha = 0.9
                    CogName2.text = "\(District08!.type)"
                    District2.text = "Splashport"
                    Progress2.text = "\(District08!.progress)"
                    currentInvasions = 2
                    
                }else if currentInvasions == 2{
                    Box3.alpha = 0.9
                    CogName3.text = "\(District08!.type)"
                    District3.text = "Splashport"
                    Progress3.text = "\(District08!.progress)"
                    currentInvasions = 3
                    
                }else if currentInvasions == 3{
                    Box4.alpha = 0.9
                    CogName4.text = "\(District08!.type)"
                    District4.text = "Splashport"
                    Progress4.text = "\(District08!.progress)"
                    currentInvasions = 4
                    
                }else if currentInvasions == 4{
                    Box5.alpha = 0.9
                    CogName5.text = "\(District08!.type)"
                    District5.text = "Splashport"
                    Progress5.text = "\(District08!.progress)"
                    currentInvasions = 5
                    
                }else if currentInvasions == 5{
                    Box6.alpha = 0.9
                    CogName6.text = "\(District08!.type)"
                    District6.text = "Splashport"
                    Progress6.text = "\(District08!.progress)"
                    currentInvasions = 6
                    
                }else if currentInvasions == 6{
                    Box7.alpha = 0.9
                    CogName7.text = "\(District08!.type)"
                    District7.text = "Splashport"
                    Progress7.text = "\(District08!.progress)"
                    currentInvasions = 7
                    
                }else if currentInvasions == 7 {
                    //Need to add support for scrolling for more invasions
                }

                
                
                if list.invasions["Splat Summit"]?.type == nil{
                    //Do Nothing
                }else if currentInvasions == 0{
                    Box1.alpha = 0.9
                    CogName1.text = "\(District09!.type)"
                    District1.text = "Splat Summit"
                    Progress1.text = "\(District09!.progress)"
                    currentInvasions = 1
                    
                }else if currentInvasions == 1{
                    Box2.alpha = 0.9
                    CogName2.text = "\(District09!.type)"
                    District2.text = "Splatsummit"
                    Progress2.text = "\(District09!.progress)"
                    currentInvasions = 2
                    
                }else if currentInvasions == 2{
                    Box3.alpha = 0.9
                    CogName3.text = "\(District09!.type)"
                    District3.text = "Splatsummit"
                    Progress3.text = "\(District09!.progress)"
                    currentInvasions = 3
                    
                }else if currentInvasions == 3{
                    Box4.alpha = 0.9
                    CogName4.text = "\(District09!.type)"
                    District4.text = "Splatsummit"
                    Progress4.text = "\(District09!.progress)"
                    currentInvasions = 4
                    
                }else if currentInvasions == 4{
                    Box5.alpha = 0.9
                    CogName5.text = "\(District09!.type)"
                    District5.text = "Splatsummit"
                    Progress5.text = "\(District09!.progress)"
                    currentInvasions = 5
                    
                }else if currentInvasions == 5{
                    Box6.alpha = 0.9
                    CogName6.text = "\(District09!.type)"
                    District6.text = "Splatsummit"
                    Progress6.text = "\(District09!.progress)"
                    currentInvasions = 6
                    
                }else if currentInvasions == 6{
                    Box7.alpha = 0.9
                    CogName7.text = "\(District09!.type)"
                    District7.text = "Splatsummit"
                    Progress7.text = "\(District09!.progress)"
                    currentInvasions = 7
                    
                }else if currentInvasions == 7 {
                    //Need to add support for scrolling for more invasions
                }

                
                if list.invasions["Thwackville"]?.type == nil{
                    //Do Nothing
                }else if currentInvasions == 0{
                    Box1.alpha = 0.9
                    CogName1.text = "\(District10!.type)"
                    District1.text = "Thwackville"
                    Progress1.text = "\(District10!.progress)"
                    currentInvasions = 1
                    
                }else if currentInvasions == 1{
                    Box2.alpha = 0.9
                    CogName2.text = "\(District10!.type)"
                    District2.text = "Thwackville"
                    Progress2.text = "\(District10!.progress)"
                    currentInvasions = 2
                    
                }else if currentInvasions == 2{
                    Box3.alpha = 0.9
                    CogName3.text = "\(District10!.type)"
                    District3.text = "Thwackville"
                    Progress3.text = "\(District10!.progress)"
                    currentInvasions = 3
                    
                }else if currentInvasions == 3{
                    Box4.alpha = 0.9
                    CogName4.text = "\(District10!.type)"
                    District4.text = "Thwackville"
                    Progress4.text = "\(District10!.progress)"
                    currentInvasions = 4
                    
                }else if currentInvasions == 4{
                    Box5.alpha = 0.9
                    CogName5.text = "\(District10!.type)"
                    District5.text = "Thwackville"
                    Progress5.text = "\(District10!.progress)"
                    currentInvasions = 5
                    
                }else if currentInvasions == 5{
                    Box6.alpha = 0.9
                    CogName6.text = "\(District10!.type)"
                    District6.text = "Thwackville"
                    Progress6.text = "\(District10!.progress)"
                    currentInvasions = 6
                    
                }else if currentInvasions == 6{
                    Box7.alpha = 0.9
                    CogName7.text = "\(District10!.type)"
                    District7.text = "Thwackville"
                    Progress7.text = "\(District10!.progress)"
                    currentInvasions = 7
                    
                }else if currentInvasions == 7 {
                    //Need to add support for scrolling for more invasions
                }

                
                
                
                
                if list.invasions["Whoosh Rapids"]?.type == nil{
                    print("This needs fixing")
                }else if currentInvasions == 0{
                    Box1.alpha = 0.9
                    CogName1.text = "\(District11!.type)"
                    District1.text = "Whoosh Rapids"
                    Progress1.text = "\(District11!.progress)"
                    currentInvasions = 1
                    if District11!.type == "Corporate Raider" {
                        Bossbot1.alpha = 1
                        
                    }
                    
                }else if currentInvasions == 1{
                    Box2.alpha = 0.9
                    CogName2.text = "\(District11!.type)"
                    District2.text = "Woosh Rapids"
                    Progress2.text = "\(District11!.progress)"
                    currentInvasions = 2
                    
                }else if currentInvasions == 2{
                    Box3.alpha = 0.9
                    CogName3.text = "\(District11!.type)"
                    District3.text = "Woosh Rapids"
                    Progress3.text = "\(District11!.progress)"
                    currentInvasions = 3
                    
                }else if currentInvasions == 3{
                    Box4.alpha = 0.9
                    CogName4.text = "\(District11!.type)"
                    District4.text = "Woosh Rapids"
                    Progress4.text = "\(District11!.progress)"
                    currentInvasions = 4
                    
                }else if currentInvasions == 4{
                    Box5.alpha = 0.9
                    CogName5.text = "\(District11!.type)"
                    District5.text = "Woosh Rapids"
                    Progress5.text = "\(District11!.progress)"
                    currentInvasions = 5
                    
                }else if currentInvasions == 5{
                    Box6.alpha = 0.9
                    CogName6.text = "\(District11!.type)"
                    District6.text = "Woosh Rapids"
                    Progress6.text = "\(District11!.progress)"
                    currentInvasions = 6
                    
                }else if currentInvasions == 6{
                    Box7.alpha = 0.9
                    CogName7.text = "\(District11!.type)"
                    District7.text = "Woosh Rapids"
                    Progress7.text = "\(District11!.progress)"
                    currentInvasions = 7
                    
                }else if currentInvasions == 7 {
                    //Need to add support for scrolling for more invasions
                }

                
                
                
                if list.invasions["Zoink Falls"]?.type == nil{
                    //Do Nothing
                }else if currentInvasions == 0{
                    Box1.alpha = 0.9
                    CogName1.text = "\(District12!.type)"
                    District1.text = "Zoink Falls"
                    Progress1.text = "\(District12!.progress)"
                    currentInvasions = 1
                    
                }else if currentInvasions == 1{
                    Box2.alpha = 0.9
                    CogName2.text = "\(District12!.type)"
                    District2.text = "Zoink Falls"
                    Progress2.text = "\(District12!.progress)"
                    currentInvasions = 2
                    
                }else if currentInvasions == 2{
                    Box3.alpha = 0.9
                    CogName3.text = "\(District12!.type)"
                    District3.text = "Zoink Falls"
                    Progress3.text = "\(District12!.progress)"
                    currentInvasions = 3
                    
                }else if currentInvasions == 3{
                    Box4.alpha = 0.9
                    CogName4.text = "\(District12!.type)"
                    District4.text = "Zoink Falls"
                    Progress4.text = "\(District12!.progress)"
                    currentInvasions = 4
                    
                }else if currentInvasions == 4{
                    Box5.alpha = 0.9
                    CogName5.text = "\(District12!.type)"
                    District5.text = "Zoink Falls"
                    Progress5.text = "\(District12!.progress)"
                    currentInvasions = 5
                    
                }else if currentInvasions == 5{
                    Box6.alpha = 0.9
                    CogName6.text = "\(District12!.type)"
                    District6.text = "Zoink Falls"
                    Progress6.text = "\(District12!.progress)"
                    currentInvasions = 6
                    
                }else if currentInvasions == 6{
                    Box7.alpha = 0.9
                    CogName7.text = "\(District12!.type)"
                    District7.text = "Zoink Falls"
                    Progress7.text = "\(District12!.progress)"
                    currentInvasions = 7
                    
                }else if currentInvasions == 7 {
                    //Need to add support for scrolling for more invasions
                }
                    
                

                
                if CogName1.text == "Robber Baron" || CogName1.text == "Short Change" || CogName1.text == " Penny Pincher" || CogName1.text == "Tightwad" || CogName1.text == "Bean Counter" || CogName1.text == "Number Cruncher" || CogName1.text == "Money Bags" || CogName1.text == "Loan Shark" {
                    Cashbot1.alpha = 1
                }else if CogName1.text == "Big Wig" || CogName1.text == "Bottom Feeder" || CogName1.text == "Bloodsucker" || CogName1.text == "Double Talker" || CogName1.text == "Ambulance Chaser" || CogName1.text == "Back Stabber" || CogName1.text == "Spin Doctor" || CogName1.text == "Legal Eagle" {
                    Lawbot1.alpha = 1
                }else if CogName1.text == "Mr. Hollywood" || CogName1.text == "Cold Caller" || CogName1.text == "Telemarketer" || CogName1.text == "Name Dropper" || CogName1.text == "Glad Hander" || CogName1.text == "Mover & Shaker" || CogName1.text == "Two-Face" || CogName1.text == "The Mingler" {
                    Sellbot1.alpha = 1
                }else if CogName1.text == "The Big Cheese" || CogName1.text == "Corporate Raider" || CogName1.text == "Flunky" || CogName1.text == "Pencil Pusher" || CogName1.text == "Yesman" || CogName1.text == "Micromanager" || CogName1.text == "Downsizer" || CogName1.text == "Head Hunter" {
                    Bossbot1.alpha = 1
                }else{
                    //Do nothing
                }
                
                if CogName2.text == "Robber Baron" || CogName2.text == "Short Change" || CogName2.text == " Penny Pincher" || CogName2.text == "Tightwad" || CogName2.text == "Bean Counter" || CogName2.text == "Number Cruncher" || CogName2.text == "Money Bags" || CogName2.text == "Loan Shark" {
                    Cashbot2.alpha = 1
                }else if CogName2.text == "Big Wig" || CogName2.text == "Bottom Feeder" || CogName2.text == "Bloodsucker" || CogName2.text == "Double Talker" || CogName2.text == "Ambulance Chaser" || CogName2.text == "Back Stabber" || CogName2.text == "Spin Doctor" || CogName2.text == "Legal Eagle" {
                    Lawbot2.alpha = 1
                }else if CogName2.text == "Mr. Hollywood" || CogName2.text == "Cold Caller" || CogName2.text == "Telemarketer" || CogName2.text == "Name Dropper" || CogName2.text == "Glad Hander" || CogName2.text == "Mover & Shaker" || CogName2.text == "Two-Face" || CogName2.text == "The Mingler" {
                    Sellbot2.alpha = 1
                }else if CogName2.text == "The Big Cheese" || CogName2.text == "Corporate Raider" || CogName2.text == "Flunky" || CogName2.text == "Pencil Pusher" || CogName2.text == "Yesman" || CogName2.text == "Micromanager" || CogName2.text == "Downsizer" || CogName2.text == "Head Hunter" {
                    Bossbot2.alpha = 1
                }else{
                    //Do nothing
                }

                
                if CogName3.text == "Robber Baron" || CogName3.text == "Short Change" || CogName3.text == " Penny Pincher" || CogName3.text == "Tightwad" || CogName3.text == "Bean Counter" || CogName3.text == "Number Cruncher" || CogName3.text == "Money Bags" || CogName3.text == "Loan Shark" {
                    Cashbot3.alpha = 1
                }else if CogName3.text == "Big Wig" || CogName3.text == "Bottom Feeder" || CogName3.text == "Bloodsucker" || CogName3.text == "Double Talker" || CogName3.text == "Ambulance Chaser" || CogName3.text == "Back Stabber" || CogName3.text == "Spin Doctor" || CogName3.text == "Legal Eagle" {
                    Lawbot3.alpha = 1
                }else if CogName3.text == "Mr. Hollywood" || CogName3.text == "Cold Caller" || CogName3.text == "Telemarketer" || CogName3.text == "Name Dropper" || CogName3.text == "Glad Hander" || CogName3.text == "Mover & Shaker" || CogName3.text == "Two-Face" || CogName3.text == "The Mingler" {
                    Sellbot3.alpha = 1
                }else if CogName3.text == "The Big Cheese" || CogName3.text == "Corporate Raider" || CogName3.text == "Flunky" || CogName3.text == "Pencil Pusher" || CogName3.text == "Yesman" || CogName3.text == "Micromanager" || CogName3.text == "Downsizer" || CogName3.text == "Head Hunter" {
                    Bossbot3.alpha = 1
                }else{
                    //Do nothing
                }

                
                if CogName4.text == "Robber Baron" || CogName4.text == "Short Change" || CogName4.text == " Penny Pincher" || CogName4.text == "Tightwad" || CogName4.text == "Bean Counter" || CogName4.text == "Number Cruncher" || CogName4.text == "Money Bags" || CogName4.text == "Loan Shark" {
                    Cashbot4.alpha = 1
                }else if CogName4.text == "Big Wig" || CogName4.text == "Bottom Feeder" || CogName4.text == "Bloodsucker" || CogName4.text == "Double Talker" || CogName4.text == "Ambulance Chaser" || CogName4.text == "Back Stabber" || CogName4.text == "Spin Doctor" || CogName4.text == "Legal Eagle" {
                    Lawbot4.alpha = 1
                }else if CogName4.text == "Mr. Hollywood" || CogName4.text == "Cold Caller" || CogName4.text == "Telemarketer" || CogName4.text == "Name Dropper" || CogName4.text == "Glad Hander" || CogName4.text == "Mover & Shaker" || CogName4.text == "Two-Face" || CogName4.text == "The Mingler" {
                    Sellbot4.alpha = 1
                }else if CogName4.text == "The Big Cheese" || CogName4.text == "Corporate Raider" || CogName4.text == "Flunky" || CogName4.text == "Pencil Pusher" || CogName4.text == "Yesman" || CogName4.text == "Micromanager" || CogName4.text == "Downsizer" || CogName4.text == "Head Hunter" {
                    Bossbot4.alpha = 1
                }else{
                    //Do nothing
                }

                
                if CogName5.text == "Robber Baron" || CogName5.text == "Short Change" || CogName5.text == " Penny Pincher" || CogName5.text == "Tightwad" || CogName5.text == "Bean Counter" || CogName5.text == "Number Cruncher" || CogName5.text == "Money Bags" || CogName5.text == "Loan Shark" {
                    Cashbot5.alpha = 1
                }else if CogName5.text == "Big Wig" || CogName5.text == "Bottom Feeder" || CogName5.text == "Bloodsucker" || CogName5.text == "Double Talker" || CogName5.text == "Ambulance Chaser" || CogName5.text == "Back Stabber" || CogName5.text == "Spin Doctor" || CogName5.text == "Legal Eagle" {
                    Lawbot5.alpha = 1
                }else if CogName5.text == "Mr. Hollywood" || CogName5.text == "Cold Caller" || CogName5.text == "Telemarketer" || CogName5.text == "Name Dropper" || CogName5.text == "Glad Hander" || CogName5.text == "Mover & Shaker" || CogName5.text == "Two-Face" || CogName5.text == "The Mingler" {
                    Sellbot5.alpha = 1
                }else if CogName5.text == "The Big Cheese" || CogName5.text == "Corporate Raider" || CogName5.text == "Flunky" || CogName5.text == "Pencil Pusher" || CogName5.text == "Yesman" || CogName5.text == "Micromanager" || CogName5.text == "Downsizer" || CogName5.text == "Head Hunter" {
                    Bossbot5.alpha = 1
                }else{
                    //Do nothing
                }

                
                if CogName6.text == "Robber Baron" || CogName6.text == "Short Change" || CogName6.text == " Penny Pincher" || CogName6.text == "Tightwad" || CogName6.text == "Bean Counter" || CogName6.text == "Number Cruncher" || CogName6.text == "Money Bags" || CogName6.text == "Loan Shark" {
                    Cashbot6.alpha = 1
                }else if CogName6.text == "Big Wig" || CogName6.text == "Bottom Feeder" || CogName6.text == "Bloodsucker" || CogName6.text == "Double Talker" || CogName6.text == "Ambulance Chaser" || CogName6.text == "Back Stabber" || CogName6.text == "Spin Doctor" || CogName6.text == "Legal Eagle" {
                    Lawbot6.alpha = 1
                }else if CogName6.text == "Mr. Hollywood" || CogName6.text == "Cold Caller" || CogName6.text == "Telemarketer" || CogName6.text == "Name Dropper" || CogName6.text == "Glad Hander" || CogName6.text == "Mover & Shaker" || CogName6.text == "Two-Face" || CogName6.text == "The Mingler" {
                    Sellbot6.alpha = 1
                }else if CogName6.text == "The Big Cheese" || CogName6.text == "Corporate Raider" || CogName6.text == "Flunky" || CogName6.text == "Pencil Pusher" || CogName6.text == "Yesman" || CogName6.text == "Micromanager" || CogName6.text == "Downsizer" || CogName6.text == "Head Hunter" {
                    Bossbot6.alpha = 1
                }else{
                    //Do nothing
                }

                
                if CogName7.text == "Robber Baron" || CogName7.text == "Short Change" || CogName7.text == " Penny Pincher" || CogName7.text == "Tightwad" || CogName7.text == "Bean Counter" || CogName7.text == "Number Cruncher" || CogName7.text == "Money Bags" || CogName7.text == "Loan Shark" {
                    Cashbot7.alpha = 1
                }else if CogName7.text == "Big Wig" || CogName7.text == "Bottom Feeder" || CogName7.text == "Bloodsucker" || CogName7.text == "Double Talker" || CogName7.text == "Ambulance Chaser" || CogName7.text == "Back Stabber" || CogName7.text == "Spin Doctor" || CogName7.text == "Legal Eagle" {
                    Lawbot7.alpha = 1
                }else if CogName7.text == "Mr. Hollywood" || CogName7.text == "Cold Caller" || CogName7.text == "Telemarketer" || CogName7.text == "Name Dropper" || CogName7.text == "Glad Hander" || CogName7.text == "Mover & Shaker" || CogName7.text == "Two-Face" || CogName7.text == "The Mingler" {
                    Sellbot7.alpha = 1
                }else if CogName7.text == "The Big Cheese" || CogName7.text == "Corporate Raider" || CogName7.text == "Flunky" || CogName7.text == "Pencil Pusher" || CogName7.text == "Yesman" || CogName7.text == "Micromanager" || CogName7.text == "Downsizer" || CogName7.text == "Head Hunter" {
                    Bossbot7.alpha = 1
                }else{
                    //Do nothing
                }
                    OngoingInvasions.text = "\(currentInvasions) Invasions"

                }
                
                
                
//                print(list.invasions["Hiccup Hills"]?.type)
//                print(list.invasions["Bounceboro"]?.type)
//                print(list.invasions["Zoink Falls"]?.type)
//
            
            } catch let err {
                print(err)
            }
            
            
            }.resume()
        
    }


}

