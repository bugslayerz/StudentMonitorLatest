using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StudentMonitor.Controllers
{
    public class TimetablemainController : Controller
    {
        // GET: Timetablemain
        public ActionResult Timetablemain()
        {
            StudentEntities8 tt = new StudentEntities8();
            var data = tt.sp_timetable1().ToList();
            return View(data);
        }

        public ActionResult TimeTable1(string standard)
        {
            StudentEntities8 tt = new StudentEntities8();
            var data = tt.sp_timetable1().Where(x => x.Standard == standard).ToList();
            ViewBag.timetable = data;

            return View("_TimeTable1");
        }
    }
}