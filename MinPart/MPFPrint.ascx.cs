namespace ArenaWeb.UserControls.Custom.WVC
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

    public partial class MPFPrint : PortalControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BasePage.AddCssLink(Page, "UserControls/Custom/WVC/MinPart/css/minpart_print.css");

            var person = new Person(new Guid(Request.QueryString["guid"].ToString()));


            //user_name.Value = person.Logins[0].LoginID;
            firstName.Text = person.FirstName.ToString();
            lastName.Text = person.LastName.ToString();
            email.Text = person.Emails.FirstActive.ToString();
            maritalStatus.Text = person.MaritalStatus.ToString();
            gender.Text = person.Gender.ToString();
            birthdate.Text = person.BirthDate.ToString();
            
            foreach (PersonAddress address in person.Addresses)
            {
                if (address.Primary)
                {
                    streetAddress1.Text = address.Address.StreetLine1.ToString();
                    streetAddress2.Text = address.Address.StreetLine2.ToString();
                    city.Text = address.Address.City.ToString();
                    zipCode.Text = address.Address.PostalCode.ToString();
                    state.Text = address.Address.State.ToString();
                }
            }
            foreach (PersonPhone phone in person.Phones)
            {
                switch (phone.PhoneType.Value)
                {
                    case "Main/Home":
                        homePhone.Text = phone.Number.ToString();
                        break;
                    case "Business":
                        workPhone.Text = phone.Number.ToString();
                        break;
                    case "Cell":
                        cellPhone.Text = phone.Number.ToString();
                        cellsms.Text = phone.SMSEnabled.ToString();
                        break;
                    default:
                        break;
                }
            }
            
            foreach (Control field in this.Controls)
            {
                // check this out..
                if (field.GetType() == typeof(Label))
                {
                    var tb = (Label)Convert.ChangeType(field, typeof(Label));
                    if (tb.Attributes["attid"] != null)
                    {
                        var pa = new PersonAttribute(person.PersonID, (int)Convert.ChangeType(tb.Attributes["attid"], typeof(int)));
                        switch (Convert.ToString(pa))
                        {
                            case "false":
                                tb.Text = "No";
                                break;
                            case "true":
                                tb.Text = "Yes";
                                break;
                            default:
                                tb.Text = Convert.ToString(pa);
                                break;
                        }
                    }
                }
                
            }
          
        }
        }
    }