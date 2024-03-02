<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/User.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="WebPages_UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class=" mb-4 d-flex justify-content-center mt-2 h-50 mx-4 " style="font-family: 'Comfortaa', cursive">
         <div id="carouselExample" class="carousel slide w-50 h-50 card shadow rounded-4">
  <div class="carousel-inner ">
    <div class="carousel-item active">
      <img src="../DailyDoesImages/DailyDoesadvertisement2.png" class="d-block w-100 rounded-4" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../DailyDoesImages/DailyDoesadvertisement.png" class="d-block  w-100 rounded-4" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../DailyDoesImages/DailyDoesadvertisement3.png" class="d-block w-100 rounded-4" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

      </div>
     <div class="container"  style="font-family: 'Comfortaa', cursive">
   <div class=" row d-flex my-2 mb-4 "  >
                         

        <div class=" col-4 mx-2 ">
             <a href="SignInPage.aspx" class="text-center link-primary">
            <image class="shadow card  rounded-4"  style="width:25vw" src="../DailyDoesImages/advetisements/store1.jpg"/> 

                       </a>
          
       </div>
        <div class=" col-4 mx-2">
             <a href="SignInPage.aspx" class="text-center link-primary">
            <image class="shadow card  rounded-4"  style="width:25vw" src="../DailyDoesImages/advetisements/store2.jpg"/> 

                       </a>
          
       </div>
        <div class=" col-3 mx-2">
             <a href="SignInPage.aspx" class="text-center link-primary">
            <image class="shadow card  rounded-4"  style="width:25vw" src="../DailyDoesImages/advetisements/store3.png"/> 

                       </a>
          
       </div>


      
      
   </div>
        </div>
     <div class="my-2 px-4 rounded-4" style="font-family: 'Comfortaa', cursive">

        <div class="row d-flex m-0 justify-content-center" >
            <asp:Repeater ID="productrptr" runat="server">
                <ItemTemplate>
                    
                     <div class="card  shadow bg-body rounded-4" style="width: 12rem;height:18rem">
                         <a href="ViewMorePage.aspx?PID=<%#Eval("ProductId")%>" style="text-decoration:none;color:black" >
  <img src="../DailyDoesImages/ProductImages/<%#Eval("ProductId") %>/<%# Eval("ImageName")%><%# Eval("ImageExtention") %>" class="card-img-top h-50" alt="<%#Eval("ImageName") %>">
                             <div class="card-body ">
    <p class="card-title"><%#Eval("ProductName") %></p>
      <div class="position-absolute my-2  d-flex start-0 mx-4">
          <p  > ₹ <%#Eval("ProductSellingPrice","{0:000,0}") %></p>
    <p class="badge bg-primary  end-0">Save ₹  <%#String.Format("{0}",Convert.ToInt64(Eval("ProductPrice"))-Convert.ToInt64(Eval("ProductSellingPrice")))%></p>
          </div>
  </div>
                              </a>
  
                             
</div>
                   

                </ItemTemplate>
            </asp:Repeater>
                
           
        </div>
    </div>


    
    
    

        
         <div class=" d-flex row h-25 p-4  mt-4  justify-content-center p-0"  style="font-family: 'Comfortaa', cursive">
            <div class="col-8 d-flex  justify-content-center justify-items-center" style="overflow:hidden">
             <img src="../DailyDoesImages/advetisements/productDemo.jpg" class="scaleAnimClass2 " style="height:70vh" />
                </div>
                <div class="container  col-4 d-flex justify-content-center align-items-center  "  >
          <div class=" text-end  text-dark align-items-center text-center">
            <h1 class="display-2">
RIGOHILL Cuba Olive Leather Wallet for Men</h1>
            <h4 class="">RFID Blocking</h4>

              <br />
                    <a href="SignInPage.aspx" class="text-center h4 mx-4 link-primary">Buy Now </a>
                   <a href="DefaultViewMore.aspx?PID=47" class="text-center h4 mx-4 link-primary"> ViewMore</a>

          </div>
        </div>
               </div>

       

</asp:Content>

