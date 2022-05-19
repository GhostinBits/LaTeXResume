//
//  ProfileEditor.swift
//  LaTeXResume
//
//  Created by GhostinBits on 2022-05-17.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    @State var selection: Int = 1999
    
    var body: some View {
        VStack {
            
            Form {
                Section(header: Text("Personal Details")) {
                    HStack {
                        Text("Name")
                        Divider()
                        TextField("Name", text: $profile.name)
                    }
                    HStack {
                        Text("Phone")
                        Divider()
                        TextField("Phone", text: $profile.phone)
                    }
                    HStack {
                        Text("Email")
                        Divider()
                        TextField("Email", text: $profile.email)
                    }
                }
                Section(header: Text("Education")) {
                    VStack(alignment: .leading) {
                        Group {
                            Text("School")
                            Divider()
                            TextField("", text: $profile.education.school)
                        }
                        Divider()
                        HStack {
                            TextField("Year Admitted", text: $profile.education.start)
                            Divider()
                            TextField("Year Graduated", text: $profile.education.end)
                        }
                        Divider()
                        HStack {
                            Text("GPA and Scale")
                            Divider()
                            TextField("", text: $profile.education.gpa)
                        }
                    }
                }
                
                Section(header: Text("Experiences")) {
                    VStack(alignment: .leading) {
                        Group {
                            Text("Company")
                            Divider()
                            TextField("", text: $profile.experiences.company_1)
                        }
                        Divider()
                        Group {
                            Text("Position")
                            Divider()
                            TextField("", text: $profile.experiences.role_1)
                        }
                        Divider()
                        HStack {
                            TextField("Year Started", text: $profile.experiences.start_1)
                            Divider()
                            TextField("Year Ended", text: $profile.experiences.end_1)
                        }
                        Divider()
                        Group {
                            Text("Description 1")
                            Divider()
                            TextField("", text: $profile.experiences.description_1)
                        }
                        Divider()
                        Group {
                            Text("Description 2")
                            Divider()
                            TextField("", text: $profile.experiences.description_2)
                        }
                    }
                    VStack(alignment: .leading) {
                        Group {
                            Text("Company")
                            Divider()
                            TextField("", text: $profile.experiences.company_2)
                        }
                        Divider()
                        Group {
                            Text("Position")
                            Divider()
                            TextField("", text: $profile.experiences.role_2)
                        }
                        Divider()
                        HStack {
                            TextField("Year Started", text: $profile.experiences.start_2)
                            Divider()
                            TextField("Year Ended", text: $profile.experiences.end_2)
                        }
                        Divider()
                        Group {
                            Text("Description")
                            Divider()
                            TextField("", text: $profile.experiences.description_3)
                        }
                    }
                }
                Section(header: Text("Skills")) {
                    //
                    VStack(alignment: .leading) {
                        Group {
                            Text("Languages")
                            Divider()
                            TextField("English", text: $profile.skills.langs)
                        }
                        
                        Divider()
                        
                        Group {
                            Text("Software")
                            Divider()
                            TextField("Microsoft Word", text: $profile.skills.software)
                        }
                        
                        Divider()
                        
                        Group {
                            Text("Libraries")
                            Divider()
                            TextField("Weldon", text: $profile.skills.libraries)
                        }
                    }
                }
                
                Section(header: Text("Awards")) {
                    VStack(alignment: .leading) {
                        Group {
                            Text("Award")
                            TextField("", text: $profile.awards.title)
                            Divider()
                            Text("Description")
                            TextField("", text: $profile.awards.description)
                            Divider()
                            Text("Date")
                            TextField("", text: $profile.awards.date_1)
                        }
                        Divider()
                        Group {
                            Text("Award")
                            TextField("", text: $profile.awards.title)
                            Divider()
                            Text("Description")
                            TextField("", text: $profile.awards.description)
                            Divider()
                            Text("Date")
                            TextField("", text: $profile.awards.date_2)
                        }
                    }
                }
                Section(header: Text("Projects")) {
                    VStack(alignment: .leading) {
                        Group {
                            Text("Project Name")
                            TextField("", text: $profile.projects.name_1)
                            Divider()
                            Group {
                                Text("Description 1")
                                TextField("", text: $profile.projects.description_1)
                                Divider()
                                Text("Description 2")
                                TextField("", text: $profile.projects.description_2)
                                Divider()
                                Text("Description 3")
                                TextField("", text: $profile.projects.description_3)
                            }
                        }
                        Group {
                            Text("Project Name")
                            TextField("", text: $profile.projects.name_2)
                            Divider()
                            Text("Description")
                            TextField("", text: $profile.projects.description_4)
                        }
                    }
                }
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(Profile()))
    }
}
