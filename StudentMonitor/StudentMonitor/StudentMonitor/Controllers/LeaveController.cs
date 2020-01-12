using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StudentMonitor.Controllers
{
    public class LeaveController : Controller
    {
        // GET: Leave
        [HttpGet]
        public ActionResult ApplyLeave()
        {
            
            return View();

           
        }

        public ActionResult LeaveDetails()
        {
            StudentEntities2 leave = new StudentEntities2();
            int personId = Convert.ToInt32(Session["PersonId"]);
            var data = leave.LeaveDetails.Where(x => x.PersonId == personId).ToList();
            return View("_LeaveDetails",data);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult ApplyLeave(LeaveDetail leaveDetail)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    using (StudentEntities2 re = new StudentEntities2())
                    {
                        leaveDetail.PersonId = Convert.ToInt32(Session["PersonId"]);
                        leaveDetail.PersonName= Convert.ToString(Session["PersonName"]);
                         if (Convert.ToInt32(Session["Role"]) == 3)
                        {
                            leaveDetail.IsStudent = true;
                        }
                        else
                        {
                            leaveDetail.IsStudent = false;
                        }
                        leaveDetail.LeaveStatus = 1;
                        re.LeaveDetails.Add(leaveDetail);
                        re.SaveChanges();
                        ModelState.Clear();
                        ViewBag.Message = "Success";
                        leaveDetail = null;
                    }

                    
                }
            }
            catch (Exception ex)
            {
                return View("Error", new HandleErrorInfo(ex, "Student", "Index"));
            }
            return View(leaveDetail);
        }
    }
}