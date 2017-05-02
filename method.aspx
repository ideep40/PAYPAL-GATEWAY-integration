protected void PayWithPayPal(string amount, string itemInfo, string name, 
          string phone, string email, string currency)
{
    string redirecturl = "";

    //Mention URL to redirect content to paypal site
    redirecturl += "This will contain the sandbox url" + 
                   ConfigurationManager.AppSettings["paypalemail"].ToString();

    // i assigned static.Based on login user detail you change this valu
    redirecturl += "&first_name=" + name;

    // i assigned static. Based on login user detail you change this value
    redirecturl += "&city=Jalandhar";

    //i assigned static. Based on login user detail you change this value
    redirecturl += "&state=Punjab";

    //Product Name
    redirecturl += "&item_name=" + itemInfo;

    //Product Amount
    redirecturl += "&amount=" + amount;

    //Phone No
    redirecturl += "&night_phone_a=" + phone;


    //Email Address 
    redirecturl += "&address1=" + email;

    //Business contact id
    // redirecturl += "&business=ishandeep40@gmail.com";

    //Shipping charges if any
    redirecturl += "&shipping=0";

    //Handling charges if any
    redirecturl += "&handling=0";

    //Tax amount if any
    redirecturl += "&tax=0";

    //Add quatity i added one only statically 
    redirecturl += "&quantity=n number of item";

    //Currency code 
    redirecturl += "&currency=" + currency;

    //Success return page url
    redirecturl += "&return=" + 
      ConfigurationManager.AppSettings["SuccessURL"].ToString();

    //Failed return page url
    redirecturl += "&cancel_return=" + 
      ConfigurationManager.AppSettings["FailedURL"].ToString();

    Response.Redirect(redirecturl);
}