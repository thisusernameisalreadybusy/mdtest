import SwiftUI

fileprivate struct Application: App {
    fileprivate var body: some Scene {
        WindowGroup() {
            Text(Bundle.main.object(forInfoDictionaryKey: "version") as? String ?? "It is impossible to get version of the application.")
        }
    }
}
