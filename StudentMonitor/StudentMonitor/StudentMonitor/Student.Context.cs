﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace StudentMonitor
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class StudentEntities4 : DbContext
    {
        public StudentEntities4()
            : base("name=StudentEntities4")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<STUDENT> STUDENTS { get; set; }
        public virtual DbSet<TEACHER> TEACHERS { get; set; }
        public virtual DbSet<UserProfile> UserProfiles { get; set; }
    }
}
