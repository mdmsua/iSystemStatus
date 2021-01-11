import SwiftUI

struct AboutView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        VStack {
            Section {
                Image("Logo").resizable().scaledToFit().frame(width: 128, height: 128)
                Text("Apple System Status")
                    .font(.largeTitle)
                Text("1.0")
                    .font(.title)
            }
            Spacer()
            Section {
                Text("Dmytro Morozov")
                HStack {
                    Spacer()
                    Link(destination: URL(string: "https://twitter.com/mdmsua")!, label: {
                        let image = Image("Twitter").resizable().frame(width: 25, height: 25)
                        if colorScheme == .dark {
                            image.colorInvert()
                        } else {
                            image
                        }
                        Text("@mdmsua")
                    })
                    Spacer()
                    Link(destination: URL(string: "https://github.com/mdmsua")!, label: {
                        let image = Image("GitHub").resizable().frame(width: 25, height: 25)
                        if colorScheme == .dark {
                            image.colorInvert()
                        } else {
                            image
                        }
                        Text("mdmsua")
                    })
                    Spacer()
                }.padding()
                HStack {
                    Link("Sources", destination: URL(string: "https://github.com/mdmsua/AppleSystemStatus.iOS")!)
                    Spacer()
                    Link("Issues", destination: URL(string: "https://github.com/mdmsua/AppleSystemStatus.iOS/issues")!)
                    Spacer()
                    Link("Discussion", destination: URL(string: "https://github.com/mdmsua/AppleSystemStatus.iOS/discussions/2")!)
                    Spacer()
                    Link("Ideas", destination: URL(string: "https://github.com/mdmsua/AppleSystemStatus.iOS/discussions/5")!)
                    Spacer()
                    Link("Q&A", destination: URL(string: "https://github.com/mdmsua/AppleSystemStatus.iOS/discussions/6")!)
                }
            }
            Spacer()
            Section {
                Link(destination: URL(string: "https://icons8.com")!, label: {
                    let image = Image("Icons8").resizable().frame(width: 25, height: 25)
                    if colorScheme == .dark {
                        image.colorInvert()
                    } else {
                        image
                    }
                    Text("icons_by")
                })
                Link(destination: URL(string: "https://azure.microsoft.com")!, label: {
                    Image("Azure").resizable().frame(width: 25, height: 25)
                    Text("powered_by")
                })
            }
        }.padding()
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
            
            
    }
}
