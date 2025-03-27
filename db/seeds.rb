
companies = Company.create(
    {
        CompanyId: "TEST",
        Name: "TEST",
        Active: true
    })

user = User.new
user.username = "manager"
user.email = 'manager@openerp.com'
user.password = 'P455@w0rd!'
user.password_confirmation = 'P455@w0rd!'
user.save!

Part.create(
    {
        CompanyId: "TEST",
        PartNum: "MATT-NEW-PART",
        PartDescription: "MATT NEW TRACKED PART",
        SerialTracked: true,
        DefaultUom: "EA"
    })
