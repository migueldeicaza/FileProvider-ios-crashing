//
//  DemoApp.swift
//  Demo
//
//  Created by Miguel de Icaza on 7/11/22.
//

import SwiftUI
import FileProvider

@main
struct DemoApp: App {
    init  () {
        let domainId = NSFileProviderDomainIdentifier("miguel-nsfileproviderdomainidentifier")
        
        let domain = NSFileProviderDomain (identifier: domainId, displayName: "miguel-nsfileprovider-domain-display-name", pathRelativeToDocumentStorage: "path-relative-to-document-storage")
        
        NSFileProviderManager.add(domain){ err in
            print ("\(err)")
            guard let newManager = NSFileProviderManager(for: domain) else {
                    NSLog("Could not create file provider manager.")
                    return
                }

        }
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
