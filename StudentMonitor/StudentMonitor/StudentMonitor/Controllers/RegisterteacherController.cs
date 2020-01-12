using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StudentMonitor.Controllers
{
    public class RegisterteacherController : Controller
    {
        // GET: Registerteacher
        public ActionResult RegisterTeacher()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult RegisterTeacher(TEACHER obj)
        {
            try
            {
                UserProfile objUser = new UserProfile();
                if (ModelState.IsValid)
                {
                    using (StudentEntities5 re = new StudentEntities5())
                    {
                        re.TEACHERS.Add(obj);
                        re.SaveChanges();
                        ModelState.Clear();
                        objUser.UserName = obj.EMAIL;
                        objUser.Password = "teacherPwd";
                        objUser.Role = 2;
                        objUser.IsActive = true;
                        obj = null;
                        obj = null;
                        ViewBag.Message = "Success";
                    }
                    using (StudentEntities1 db = new StudentEntities1())
                    {
                        db.UserProfiles.Add(objUser);
                        db.SaveChanges();
                    }

                }

            }
            catch (Exception ex)
            {
                return View("Error", new HandleErrorInfo(ex, "Student", "Index"));
            }

            return View(obj);
        }
    }
}


