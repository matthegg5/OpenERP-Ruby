
Company.create(
    {
        CompanyId: "TEST",
        Name: "TEST",
        Active: true
    })

user = User.new
user.username = "manager"
user.firstname = "System"
user.lastname = "Manager"
user.email = 'manager@openerp.com'
user.password = 'P455@w0rd!'
user.password_confirmation = 'P455@w0rd!'
user.save!

# User.create({
#     username: "admin",
#     firstname: "administrator",
#     lastname: "administrator",
#     email: "admin@openerp.com",
#     password: "Adm1n15tr4t0r",
#     password_confirmation: "Adm1n15tr4t0r"
# })

Part.create(
    {
        CompanyId: "TEST",
        PartNum: "MATT-NEW-PART",
        PartDescription: "MATT NEW TRACKED PART",
        SerialTracked: true,
        DefaultUom: "EA"
    })
