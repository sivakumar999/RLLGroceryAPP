//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Testing
{
    using System;
    using System.Collections.Generic;
    
    public partial class UserLogin
    {
        public int UserLoginId { get; set; }
        public string UserId { get; set; }
        public string Password { get; set; }
        public string UserName { get; set; }
    
        public virtual UserRegistration UserRegistration { get; set; }
    }
}
