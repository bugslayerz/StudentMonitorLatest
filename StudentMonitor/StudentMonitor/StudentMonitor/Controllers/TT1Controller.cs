﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StudentMonitor.Controllers
{
    public class TT1Controller : Controller
    {
        // GET: TT1
        public ActionResult TimeTable1(string standard)
        {
            StudentEntities8 tt = new StudentEntities8();
            var data = tt.sp_timetable1().Where(x=>x.Standard==standard).ToList();
            ViewBag.timetable = data;
           
            return View();
        }
    }
}