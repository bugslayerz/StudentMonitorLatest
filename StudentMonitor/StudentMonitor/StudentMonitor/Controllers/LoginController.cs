using StudentMonitor;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace StudentMonitor.Controllers
{
    public class LoginController : Controller
    {
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(UserProfile objUser)
        {
            if (ModelState.IsValid)
            {
                using (StudentEntities1 db = new StudentEntities1())  
                {
                    
                    var obj = db.UserProfiles.Where(a => a.UserName.Equals(objUser.UserName) && a.Password.Equals(objUser.Password)).FirstOrDefault();
                    if (obj != null)
                    {
                        Session["UserID"] = obj.UserId.ToString();
                        Session["UserName"] = obj.UserName.ToString();
                        Session["Name"] = obj.UserName.ToString();
                        Session["Role"] = obj.Role.ToString();
                        if (obj.Role.ToString() == "2")
                        {
                            using (StudentEntities5 re = new StudentEntities5())
                            {
                                var objTeacher = re.TEACHERS.Where(a => a.EMAIL.Equals(objUser.UserName)).FirstOrDefault();
                                Session["teacherClass"] = objTeacher.STD.ToString();
                                Session["teacherName"] = objTeacher.NAME.ToString();
                                Session["teacherId"] = objTeacher.TID.ToString();
                            }
                        }
                        return RedirectToAction("LandingPage");
                    }  
                }
            }
            return View(objUser);
        }

        public ActionResult LandingPage()
        {
            
            if (Session["UserID"] != null)
            {
                List<STUDENT> liStudent = new List<STUDENT>();
                List<STUDENT> liStu = null;
                using (StudentEntities4 student = new StudentEntities4())
                {
                    
                    liStu = student.STUDENTS.ToList();

                }
                if (Convert.ToInt32(Session["Role"]) == 3)
                {
                    string userName = Convert.ToString(Session["UserName"]);
                    liStudent = liStu.Where(a => a.EMAIL.Equals(userName.Trim())).ToList();

                    

                }
                else if (Convert.ToInt32(Session["Role"]) == 2)
                {
                    
                   
                        string teacherStd = Convert.ToString(Session["teacherClass"]);
                        List<string> liStd = teacherStd.Split(',').ToList();
                        foreach(string s in liStd)
                        {
                            liStudent.AddRange(liStu.Where(a => a.STD==s).ToList());
                        }

                    
                }

                    return View(liStudent);
            }
            else
            {
                return RedirectToAction("Login");
            }
        }

        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            Session.Abandon();
            return RedirectToAction("Login");
        }

        public ActionResult Leave(string PersonId, string PersonName)
        {
            Session["PersonId"] = PersonId;
            Session["PersonName"] = PersonName;
            return RedirectToAction("ApplyLeave", "Leave");
        }
    }
}