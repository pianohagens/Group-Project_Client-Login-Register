using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FanSelectShow : System.Web.UI.Page
{
    ServiceReference.FinalProjectServiceClient frg = new ServiceReference.FinalProjectServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            List<string> artits = frg.GetAllArtists().ToList();
            ArtistListDropDownList.DataSource = artits;
            ArtistListDropDownList.DataBind();

            List<string> shows = frg.GetAllShows().ToList();
            ShowNameDropDownList.DataSource = shows;
            ShowNameDropDownList.DataBind();

        }

    }
    protected void ArtistListDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        ServiceReference.ShowInfo artists = new ServiceReference.ShowInfo();

        ArtistListDropDownList.DataSource = artists;
        ArtistListDropDownList.DataBind();
    }
    protected void ShowNameDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        ServiceReference.ShowInfo shows = new ServiceReference.ShowInfo();

        ShowNameDropDownList.DataSource = shows;
        ShowNameDropDownList.DataBind();
    }
    //protected void RegisterNameTextBox_TextChanged(object sender, EventArgs e)
    //{
    //    ServiceReference.FanRegister fr = new ServiceReference.FanRegister();

    //    fr.FanLoginUserName = RegisterNameTextBox.Text;
    //}
}