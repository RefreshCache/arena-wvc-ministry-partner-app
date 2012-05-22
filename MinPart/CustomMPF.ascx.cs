namespace ArenaWeb.UserControls.Custom.WVC.MPF.Custom
{
    using System;
    using System.Text;
    using System.Text.RegularExpressions;
    using System.Data;
    using System.Drawing;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using System.Web.UI.HtmlControls;
    using System.Web.Security;
    using Arena.Core;
    using Arena.Enums;
    using Arena.Exceptions;
    using Arena.Portal;
    using Arena.Security;
    using Arena.Organization;


    /// <summary>
    /// Summary description for MinistryPartnerForm
    /// </summary>
    public partial class MinistryPartnerForm : PortalControl
    {
        #region Module Settings

        // Module Settings
        [PageSetting("Redirect Page", "The page that the user will be redirected to after completing the form.", true)]
        public string RedirectPageIDSetting { get { return Setting("RedirectPageID", "", true); } }
        
        /*[AttributeSetting("Application Attributes ID", "Select all attributes to be included in the application", false, ListSelectionMode.Multiple)]
        public string AttributeIDSetting { get { return Setting("AttributeID", "", false); } }*/

        [LookupSetting("Source ID", "This value must be set to a valid Profile Source lookup value.", true, "43DB58F9-C43F-4913-84FF-2E3CEA59C134")]
        public string SourceLUIDSetting { get { return Setting("SourceLUID", "", true); } }

        [PageSetting("Print Page", "The page that the user will be directed to when clicking the print button.", true)]
        public string PrintPageIDSetting { get { return Setting("PrintPageID","",true); } }


        #endregion

        protected void Page_Load(object sender, System.EventArgs e)
        {
            BasePage.AddJavascriptInclude(Page, "http://code.jquery.com/jquery-latest.min.js");
            //BasePage.AddJavascriptInclude(Page, "UserControls/Custom/WVC/MinPart/js/bbq.js");
            //BasePage.AddJavascriptInclude(Page, "UserControls/Custom/WVC/MinPart/js/inputs.js");
            BasePage.AddJavascriptInclude(Page, "UserControls/Custom/WVC/MinPart/js/jquery.xml2json.js");
            BasePage.AddJavascriptInclude(Page, "UserControls/Custom/WVC/MinPart/js/jquery-ui-1.8.10.custom.min.js");
            BasePage.AddJavascriptInclude(Page, "UserControls/Custom/WVC/MinPart/js/jquery.cookie.js");
            //BasePage.AddJavascriptInclude(Page, "UserControls/Custom/WVC/MinPart/js/jquery.form.js");
            //BasePage.AddJavascriptInclude(Page, "UserControls/Custom/WVC/MinPart/js/jquery.form.wizard-3.0.5.min.js");
            BasePage.AddJavascriptInclude(Page, "UserControls/Custom/WVC/MinPart/js/jquery.inputmask.js");
            BasePage.AddJavascriptInclude(Page, "UserControls/Custom/WVC/MinPart/js/jquery.validate.min.js");
            BasePage.AddJavascriptInclude(Page, "UserControls/Custom/WVC/MinPart/js/tofsla_forms.js");
            BasePage.AddJavascriptInclude(Page, "UserControls/Custom/WVC/MinPart/js/minpart_custom.js");
            BasePage.AddCssLink(Page, "UserControls/Custom/WVC/MinPart/css/minpart_screen_custom.css", "screen");

            //
            // Deal with redirects.
            //

            if (!Page.IsPostBack)
            {
                iRedirect.Value = string.Empty;
                if (Request.QueryString["requestpage"] != null)
                    iRedirect.Value = string.Format("default.aspx?page={0}", Request.QueryString["requestpage"]);
                if (iRedirect.Value == string.Empty && Request.QueryString["requestUrl"] != null)
                    iRedirect.Value = Request.QueryString["requestUrl"];
                if (iRedirect.Value == string.Empty)
                    iRedirect.Value = string.Format("default.aspx?page={0}", RedirectPageIDSetting);
            }

            var maritalStatuses = new LookupType(84);

            /*for (int i = 0; i < maritalStatuses.Values.Count; i++)
            {
                maritalStatus.Items.Add(Convert.ToString(maritalStatuses.Values[i]));
            }*/


            for (int i = Convert.ToInt16(DateTime.Now.Year)-120; i <= Convert.ToInt16(DateTime.Now.Year); i++)
            {
                birthYear.Items.Add(Convert.ToString(i));
            }

            signedYear.Items.Add(Convert.ToString(DateTime.Now.Year));

            var person = new Person(ArenaContext.Current.Person);

            print.HRef = String.Join("",new String[]
            {ArenaContext.Current.ServerUrl,"/default.aspx?page=",PrintPageIDSetting.ToString(),"&guid=",ArenaContext.Current.Person.Guid.ToString()}
            );

            postLocation.Value = String.Join("", new String[] 
            {ArenaContext.Current.ServerUrl,"/default.aspx?page=",RedirectPageIDSetting.ToString()}
            );


            user_name.Value = person.Logins[0].LoginID;
            firstName.Value = person.FirstName;
            lastName.Value = person.LastName;
            email.Value = person.Emails.FirstActive;
            maritalStatus.Value = person.MaritalStatus.ToString();
            gender.Value = person.Gender.ToString();
            birthYear.Value = person.BirthDate.Year.ToString();
            birthMonth.Value = person.BirthDate.Month.ToString();
            birthDay.Value = person.BirthDate.Day.ToString();
            socialsecurity.Value = person.SSN.ToString();
            foreach (PersonAddress address in person.Addresses)
            {
                if (address.Primary)
                {
                    streetAddress1.Value = address.Address.StreetLine1; 
                    streetAddress2.Value = address.Address.StreetLine2;
                    city.Value = address.Address.City;
                    zipCode.Value = address.Address.PostalCode;
                    state.Value = address.Address.State;
                }
            }
            foreach (PersonPhone phone in person.Phones)
            {
                switch (phone.PhoneType.Value)
                {
                    case "Main/Home":
                        homePhone.Value = phone.Number;
                        break;
                    case "Business":
                        workPhone.Value = phone.Number;
                        break;
                    case "Cell":
                        cellPhone.Value = phone.Number;
                        cellsms.Checked = phone.SMSEnabled;
                        break;
                    default:
                        break;
                }
            }

            foreach (Control field in this.Controls)
            {
                // check this out..
                if (field.GetType() == typeof(HtmlInputText))
                {
                    var tb = (HtmlInputText)Convert.ChangeType(field, typeof(HtmlInputText));
                    if (tb.Attributes["attid"] != null)
                    {
                        var pa = new PersonAttribute(person.PersonID, (int)Convert.ChangeType(tb.Attributes["attid"], typeof(int)));
                        tb.Value = Convert.ToString(pa);
                    }
                }
                else if (field.GetType() == typeof(HtmlTextArea))
                {
                    var tb = (HtmlTextArea)Convert.ChangeType(field, typeof(HtmlTextArea));
                    if (tb.Attributes["attid"] != null)
                    {
                        var pa = new PersonAttribute(person.PersonID, (int)Convert.ChangeType(tb.Attributes["attid"], typeof(int)));
                        tb.Value = Convert.ToString(pa);
                    }
                }
                else if (field.GetType() == typeof(HtmlInputRadioButton))
                {
                    var tb = (HtmlInputRadioButton)Convert.ChangeType(field, typeof(HtmlInputRadioButton));
                    if (tb.Attributes["attid"] != null)
                    {
                        var pa = new PersonAttribute(person.PersonID, (int)Convert.ChangeType(tb.Attributes["attid"], typeof(int)));
                        if ((pa.IntValue == 1) && (tb.Value == "Yes"))
                        {
                            tb.Attributes["checked"] = Convert.ToString(pa);
                        }
                        else if ((pa.IntValue == 0) && (tb.Value == "No"))
                        {
                            tb.Attributes["checked"] = Convert.ToString(pa);
                        }
                    }
                }
            }
            
        }

        public MinistryPartnerForm()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}