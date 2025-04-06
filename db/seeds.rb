
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
