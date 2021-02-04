
import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    
    
    
    var body: some View {
        NavigationView {
            Form{
                Section(header: Text("Personal info")) {
                    TextField("First Name",text: $viewModel.firstName)
                    TextField("Last Name",text: $viewModel.LastName)
                    TextField("Email",text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday",selection: $viewModel.birthDate,
                               displayedComponents: .date)
                    Button {
                        print("Save")
                    } label:{
                        Text("Save Changes")
                   }
                }
                
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins" , isOn: $viewModel.extraNapkins)
                       
                    Toggle("Frequent Refills" , isOn: $viewModel.frequentRefills)
                    
                    
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
