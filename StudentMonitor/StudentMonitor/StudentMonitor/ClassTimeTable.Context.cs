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
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class StudentEntities8 : DbContext
    {
        public StudentEntities8()
            : base("name=StudentEntities8")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<TimeTable_1> TimeTable_1 { get; set; }
        public virtual DbSet<TimeTable_2> TimeTable_2 { get; set; }
        public virtual DbSet<TimeTable_3> TimeTable_3 { get; set; }
        public virtual DbSet<TimeTable_4> TimeTable_4 { get; set; }
        public virtual DbSet<TimeTable_5> TimeTable_5 { get; set; }
    
        public virtual ObjectResult<sp_timetable1_Result> sp_timetable1()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_timetable1_Result>("sp_timetable1");
        }
    
        public virtual ObjectResult<sp_timetable2_Result> sp_timetable2()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_timetable2_Result>("sp_timetable2");
        }
    
        public virtual ObjectResult<sp_timetable3_Result> sp_timetable3()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_timetable3_Result>("sp_timetable3");
        }
    
        public virtual ObjectResult<sp_timetable4_Result> sp_timetable4()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_timetable4_Result>("sp_timetable4");
        }
    
        public virtual ObjectResult<sp_timetable5_Result> sp_timetable5()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_timetable5_Result>("sp_timetable5");
        }
    }
}