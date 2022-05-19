//
//  Profile.swift
//  LaTeXResume
//
//  Created by GhostinBits on 2022-05-17.
//

import Foundation

struct Profile {
    var name: String = ""
    var phone: String = ""
    var email: String = ""
    var skills = Skills()
    var experiences = Experiences()
    var awards = Awards()
    var education = Education()
    var projects = Projects()
    
    struct Skills {
        var langs: String = ""
        var libraries: String = ""
        var software: String = ""
    }
    
    struct Experiences {
        var company_1 = ""
        var company_2 = ""
        var role_1: String = ""
        var role_2: String = ""
        var start_1 = ""
        var start_2 = ""
        var end_1 = ""
        var end_2 = ""
        var description_1: String = ""
        var description_2: String = ""
        var description_3: String = ""
    }
    
    struct Awards {
        var title: String = ""
        var description: String = ""
        var date_1 = ""
        var date_2 = ""
        var title_2: String = ""
        var description_2: String = ""
    }
    
    struct Education {
        var school: String = ""
        var description: String = ""
        var start = ""
        var end = ""
        var gpa = ""
    }
    
    struct Projects {
        var name_1 = ""
        var name_2 = ""
        var description_1: String = ""
        var description_2: String = ""
        var description_3: String = ""
        var description_4: String = ""
    }
}
