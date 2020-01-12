using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;



namespace StudentMonitor.Controllers
{
    public class RegistrationController : Controller
    {
        public ActionResult RegisterStudent()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult RegisterStudent(STUDENT obj)
        {
            try
            {
                UserProfile objUser = new UserProfile();
                if (ModelState.IsValid)
                {
                    using (StudentEntities4 re = new StudentEntities4())
                    {
                        re.STUDENTS.Add(obj);
                        re.SaveChanges();
                        ModelState.Clear();
                        
                        objUser.UserName = obj.EMAIL;
                        objUser.Password = "studentPwd";
                        objUser.Role = 3;
                        objUser.IsActive = true;
                        obj = null;
                        ViewBag.Message = "Success";
                    }

                    

                    using (StudentEntities1 db = new StudentEntities1())
                    {
                       if(!db.UserProfiles.Any(x=>x.UserName == objUser.UserName))
                        {
                            db.UserProfiles.Add(objUser);
                            db.SaveChanges();
                        }
                        
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



