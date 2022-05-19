//
//  ContentView.swift
//  LaTeXResume
//
//  Created by GhostinBits on 2022-05-17.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var modelData: ModelData
    @State private var draftProfile = Profile()
    @State private var showingExporter = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button("Export") {
                    showingExporter.toggle()
                    modelData.profile = draftProfile
                }
            }
            .padding()
            .font(.headline)
            .frame(height: 20)
            
            ProfileEditor(profile: $draftProfile)
        }
        .fileExporter(isPresented: $showingExporter,
                                           document: LaTeXFile(
                                             initialText: String(
                                                 format: modelData.template,
                                                 modelData.profile.name,
                                                 modelData.profile.email,
                                                 modelData.profile.phone,
                                                 modelData.profile.skills.langs,
                                                 modelData.profile.skills.software,
                                                 modelData.profile.skills.libraries,
                                                 modelData.profile.education.school,
                                                 modelData.profile.education.start,
                                                 modelData.profile.education.end,
                                                 modelData.profile.education.gpa,
                                                 modelData.profile.experiences.company_1,
                                                 modelData.profile.experiences.role_1,
                                                 modelData.profile.experiences.start_1,
                                                 modelData.profile.experiences.end_1,
                                                 modelData.profile.experiences.description_1,
                                                 modelData.profile.experiences.description_2,
                                                 modelData.profile.experiences.company_2,
                                                 modelData.profile.experiences.role_2,
                                                 modelData.profile.experiences.start_2,
                                                 modelData.profile.experiences.end_2,
                                                 modelData.profile.experiences.description_3,
                                                 modelData.profile.awards.title,
                                                 modelData.profile.awards.description,
                                                 modelData.profile.awards.date_1,
                                                 modelData.profile.awards.title_2,
                                                 modelData.profile.awards.description_2,
                                                 modelData.profile.awards.date_2,
                                                 modelData.profile.projects.name_1,
                                                 modelData.profile.projects.description_1,
                                                 modelData.profile.projects.description_2,
                                                 modelData.profile.projects.description_3,
                                                 modelData.profile.projects.name_2,
                                                 modelData.profile.projects.description_4
                                             )), contentType: .plainText) { result in
                                 switch result {
                                 case .success(let url):
                                     print("Saved to \(url)")
                                 case .failure(let error):
                                     print(error.localizedDescription)
                                 }
                             }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
