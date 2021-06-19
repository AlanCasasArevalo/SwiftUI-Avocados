import SwiftUI

@main
struct AvocadosApp: App {

    init () {
        #if DEBUG
        var injectionBundlePath = "/Applications/InjectionIII.app/Contents/Resources"
        #if targetEnvironment(macCatalyst)
        injectionBundlePath = "\(injectionBundlePath)/macOSInjection.bundle"
        #elseif os(iOS)
        injectionBundlePath = "\(injectionBundlePath)/iOSInjection.bundle"
        #endif
        Bundle(path: injectionBundlePath)?.load()
        #endif
    }

    var body: some Scene {
        
        let headers = headersData
        let recipes = recipesData
        let facts = factsData
        let ripenings = ripeningsData

        WindowGroup {
            ContentView(headers: headers, recipes: recipes, facts: facts, ripenings: ripenings)
        }
    }
}
