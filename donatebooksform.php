<?php
include("login.php"); 
if($_SESSION['name']==''){
	header("location: signin.php");
}
// include("login.php"); 
$emailid= $_SESSION['email'];
$connection=mysqli_connect("localhost:3306","root","");
$db=mysqli_select_db($connection,'demo');
if(isset($_POST['submit']))
{
    $foodname=mysqli_real_escape_string($connection, $_POST['foodname']);
    $meal=mysqli_real_escape_string($connection, $_POST['meal']);
    $category=$_POST['image-choice'];
    $quantity=mysqli_real_escape_string($connection, $_POST['quantity']);
    // $email=$_POST['email'];
    $phoneno=mysqli_real_escape_string($connection, $_POST['phoneno']);
    $district=mysqli_real_escape_string($connection, $_POST['district']);
    $address=mysqli_real_escape_string($connection, $_POST['address']);
    $name=mysqli_real_escape_string($connection, $_POST['name']);
  

 



    $query="insert into food_donations(email,food,type,category,phoneno,location,address,name,quantity) values('$emailid','$foodname','$meal','$category','$phoneno','$district','$address','$name','$quantity')";
    $query_run= mysqli_query($connection, $query);
    if($query_run)
    {

        echo '<script type="text/javascript">alert("data saved")</script>';
        header("location:delivery.html");
    }
    else{
        echo '<script type="text/javascript">alert("data not saved")</script>';
    }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Donate</title>
    <link rel="stylesheet" href="loginstyle.css">
</head>
<body style="    background-color: #06C167;">
    <div class="container">
        <div class="regformf" >
    <form action="" method="post">
        <p class="logo">Universal <b style="color: #06C167; ">Donation</b></p>
        
       <div class="input">
        <label for="foodname"  > donation type</label>
        <input placeholder="books" type="text" id="foodname" name="foodname" required/>
        </div>
      
    
        <br>
        <div class="input">
        <label for="food">Select the Category:</label>
        <br><br>
        <div class="image-radio-group">
            <input type="radio" id="educational" name="image-choice" value="educational">
            <label for="educational">
              <img src="img/educational.jpg" alt="educational" style="height: 200px;" >
            </label>
            <input type="radio" id="otherbooks" name="image-choice" value="otherbooks"checked>
            <label for="otherbooks">
              <img src="img/otherbooks.jpg" alt="other books" style="height: 200px;" >
            </label>
          </div>
          <br>
        <!-- <input type="text" id="food" name="food"> -->
        </div>
        <div class="input">
        <label for="quantity">Quantity:(How Many Books)</label>
        <input type="text" id="quantity" name="quantity" required/>
        </div>
       <b><p style="text-align: center;">Contact Details</p></b>
        <div class="input">
          <!-- <div>
      <label for="email">Email:</label>
      <input type="email" id="email" name="email">
          </div> -->
      <div>
      <label for="name">Name:</label>
      <input type="text" id="name" name="name"value="<?php echo"". $_SESSION['name'] ;?>" required/>
      </div>
      <div>
        <label for="phoneno" >PhoneNo:</label>
      <input type="text" id="phoneno" name="phoneno" maxlength="10" pattern="[0-9]{10}" required />
        
      </div>
      </div>
        <div class="input">
        <label for="location"></label>
        <label for="district">District:</label>
<select id="district" name="district" style="padding:10px;">
<option value="adana">Adana</option>
        <option value="adiyaman">Adıyaman</option>
        <option value="afyonkarahisar">Afyonkarahisar</option>
        <option value="agri">Ağrı</option>
        <option value="amasya">Amasya</option>
        <option value="ankara">Ankara</option>
        <option value="antalya">Antalya</option>
        <option value="artvin">Artvin</option>
        <option value="aydin">Aydın</option>
        <option value="balikesir">Balıkesir</option>
        <option value="bilecik">Bilecik</option>
        <option value="bingol">Bingöl</option>
        <option value="bitlis">Bitlis</option>
        <option value="bolu">Bolu</option>
        <option value="burdur">Burdur</option>
        <option value="bursa">Bursa</option>
        <option value="canakkale">Çanakkale</option>
        <option value="cankiri">Çankırı</option>
        <option value="corum">Çorum</option>
        <option value="denizli">Denizli</option>
        <option value="diyarbakir">Diyarbakır</option>
        <option value="edirne">Edirne</option>
        <option value="elazig">Elazığ</option>
        <option value="erzincan">Erzincan</option>
        <option value="erzurum">Erzurum</option>
        <option value="eskisehir">Eskişehir</option>
        <option value="gaziantep">Gaziantep</option>
        <option value="giresun">Giresun</option>
        <option value="gumushane">Gümüşhane</option>
        <option value="hakkari">Hakkari</option>
        <option value="hatay">Hatay</option>
        <option value="isparta">Isparta</option>
        <option value="mersin">Mersin</option>
        <option value="istanbul" selected>Istanbul</option>
        <option value="izmir">İzmir</option>
        <option value="kars">Kars</option>
        <option value="kastamonu">Kastamonu</option>
        <option value="kayseri">Kayseri</option>
        <option value="kirklareli">Kırklareli</option>
        <option value="kirsehir">Kırşehir</option>
        <option value="kocaeli">Kocaeli</option>
        <option value="konya">Konya</option>
        <option value="kutahya">Kütahya</option>
        <option value="malatya">Malatya</option>
        <option value="manisa">Manisa</option>
        <option value="kahramanmaras">Kahramanmaraş</option>
        <option value="mardin">Mardin</option>
        <option value="mugla">Muğla</option>
        <option value="mus">Muş</option>
        <option value="nevsehir">Nevşehir</option>
        <option value="nigde">Niğde</option>
        <option value="ordu">Ordu</option>
        <option value="rize">Rize</option>
        <option value="sakarya">Sakarya</option>
        <option value="samsun">Samsun</option>
        <option value="siirt">Siirt</option>
        <option value="sinop">Sinop</option>
        <option value="sivas">Sivas</option>
        <option value="tekirdag">Tekirdağ</option>
        <option value="tokat">Tokat</option>
        <option value="trabzon">Trabzon</option>
        <option value="tunceli">Tunceli</option>
        <option value="sanliurfa">Şanlıurfa</option>
        <option value="usak">Uşak</option>
        <option value="van">Van</option>
        <option value="yozgat">Yozgat</option>
        <option value="zonguldak">Zonguldak</option>
        <option value="aksaray">Aksaray</option>
        <option value="bayburt">Bayburt</option>
        <option value="karaman">Karaman</option>
        <option value="kirikkale">Kırıkkale</option>
        <option value="batman">Batman</option>
        <option value="sirnak">Şırnak</option>
        <option value="bartin">Bartın</option>
        <option value="ardahan">Ardahan</option>
        <option value="igdir">Iğdır</option>
        <option value="yalova">Yalova</option>
        <option value="karabuk">Karabük</option>
        <option value="kilis">Kilis</option>
        <option value="osmaniye">Osmaniye</option>
        <option value="duzce">Düzce</option>
</select> 

        <label for="address" style="padding-left: 10px;">Address:</label>
        <input type="text" id="address" name="address" required/><br>
        
      
       
       
        </div>
        <div class="btn">
            <button type="submit" name="submit"> submit</button>
     
        </div>
     </form>
     </div>
   </div>
     
    
</body>
</html>