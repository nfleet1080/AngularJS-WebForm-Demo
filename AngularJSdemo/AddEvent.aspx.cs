using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;
using AngularJSdemo.App_Data;

namespace AngularJSdemo
{
    public partial class AddEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();

            tblEvent newEvent = new tblEvent();
            newEvent.Name = txtName.Text;
            newEvent.Description = txtDescription.Text;
            newEvent.Date = Convert.ToDateTime(txtDate.Text);
            newEvent.Picture = txtImage.Text;

            db.tblEvents.InsertOnSubmit(newEvent);
            try
            {
                db.SubmitChanges();

                alertDiv.Attributes.Add("class","alert alert-success");
               //alertDiv.Attributes.Add("style", "margin-bottom:1em");
                //alertDiv.Attributes.Add("display", "block");
                alertDiv.InnerText = "New Event successfully created!";
                alertDiv.Visible = true;
            }
            catch (Exception ex)
            {
                alertDiv.Attributes.Add("class", "alert alert-danger");
                //alertDiv.Attributes.Add("style", "margin-bottom:1em");
                //alertDiv.Attributes.Add("display", "block");
                alertDiv.InnerText = ex.Message;
                alertDiv.Visible = true;
            }
            

        }
    }
}