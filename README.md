#  💎 PitchFormation
**[NOTE]**  
If you'd like to see `PitchFormation` in action, check out this demo of `PitchFormation` (see link below).  
Clone `PitchFormation Demo`: [`📲 Available here](https://github.com/sageseid/PitchFormationDemo))  


<p align="center">
 <img width="471" alt="Screenshot 2023-08-02 at 17 20 34" src="https://github.com/sageseid/PitchFormation/assets/20171941/8363a2d3-7fdb-4881-a78f-014d5981987c">

</p>

`PitchFormation` is an IOS Software Development Kit (SDK) that empowers app developers to effortlessly integrate custom soccer/football formations views into their applications. 
This innovative SDK offers a comprehensive set of tools and components, enabling users to create, customize, and visualize soccer formations with ease.


## 💎 Requirements

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;✅ macOS 10.15+  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;✅ Xcode 11.0  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;✅ Swift 5+  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;✅ iOS 13+  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;✅ tvOS 13+

## 💎 Installation

`PitchFormation` is available via [Swift Package Manager](https://swift.org/package-manager).

Using Xcode 11, go to `File -> Swift Packages -> Add Package Dependency` and enter [https://github.com/sageseid/PitchFormation.git](https://github.com/sageseid/PitchFormation.git)  

## 💎 Usage

#### ✴️ Basic scenario:  

To get started with the SDK, you can follow this basic scenario to create and display a default pitch formation:

```
// this formation is for a 4-3-3
let defaultFormation: [[String]] = [
    ["DefaultGK"],
    ["DefaultDF", "DefaultDF", "DefaultDF", "DefaultDF"],
    ["DefaultMF", "DefaultMF", "DefaultMF"],
    ["DefaultST", "DefaultST", "DefaultST"]
]

let numbers: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"]

let formationView = Formation(
    formation: defaultFormation,
    numbers: numbers
)
```

or 

```
// this formation is for a 3-4-3
let defaultFormation: [[String]] = [
    ["DefaultGK"],
    ["DefaultDF", "DefaultDF", "DefaultDF"],
    ["DefaultMF", "DefaultMF", "DefaultMF", "DefaultMF"],
    ["DefaultST", "DefaultST", "DefaultST"]
]

let numbers: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"]

let formationView = Formation(
    formation: defaultFormation,
    numbers: numbers
)
```



#### ✴️ Customize the default layout configuration:

You can also customize the layout and appearance of the pitch formation using various configuration options. Here's an example of how you can create a customized pitch formation:


```
 Formation(
                formation: [["CustomGK"], ["CustomDF", "CustomDF"], ["CustomMF", "CustomMF", "CustomMF"], ["CustomST"]],
                numbers: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
                jerseyNumberColor: .white,
                jerseyColor: .blue,
                side: .away,
                vSpacing: 30,
                hSpacing: 15,
                width: 60,
                height: 60
            )
        }
        .padding()
        
 ```       

## 💎 Roadmap 

Version `1.0.0` of `PitchFormation ` contains a very limited set of features. It could be extended by implementing the following tasks:

- Addition of different Pitch Layouts
- Player Icon Customisation 
- Tactics Annotations & Animation Preview
- Zoom and Pan feature
- Localization Support


## 💎 Contributing

👨🏻‍🔧 Feel free to contribute to `PitchFormation` by creating a pull request, following these guidelines:

1. Fork `PitchFormation`
2. Create your feature branch
3. Commit your changes, along with unit tests
4. Push to the branch
5. Create pull request


## 💎 Author

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;👨‍💻 [Noel Obaseki](https://github.com/karolkulesza) 


## 💎 License

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;📄 PitchFormation is available under the MIT license. See the LICENSE file for more info.
