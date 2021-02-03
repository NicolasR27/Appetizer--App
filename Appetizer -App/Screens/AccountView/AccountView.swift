
import SwiftUI

struct AccountView: View {
    @State private var firstName = ""
    @State private var LastName = ""
    @State private var email = ""
    @State private var birthDate = Date()
    @State private var extraNapkins = false
    @State private var frequentRefills = false
    
    
    var body: some View {
        NavigationView {
            Form{
                Section(header: Text("Personal info")) {
                    TextField("First Name",text: $firstName)
                    TextField("Last Name",text: $LastName)
                    TextField("Email",text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday",selection: $birthDate,
                               displayedComponents: .date)
                    Button {
                        print("Save")
                    } label:{
                        Text("Save Changes")
                   }
                }
                
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins" , isOn: $extraNapkins)
                       
                    Toggle("Frequent Refills" , isOn: $frequentRefills)
                    
                    
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                
                
            }
            .navigationTitle("😀Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
