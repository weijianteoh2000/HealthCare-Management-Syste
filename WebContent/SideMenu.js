let contents =[
    {name:"Book Room",image:"booking-page-icon.png",link: "Login_Booking/Booking.html"},
    {name:"Application List",image:"application-list-icon.png",link: "Application/ApplicationList.html"},
    {name:"My Report",image:"report-page-icon.png",link: "Report/LectLabs.html"},
    {name:"All Application",image:"report-page-icon.png",link: "Report/AllLabs.html"},
    {name:"Admin Profile",image:"profile-page-icon.png",link: "Profile/admin_profile.html"},
    {name:"SpaceMng Profile",image:"profile-page-icon.png",link: "Profile/spacemng_profile.html"},
    {name:"Lect Profile",image:"profile-page-icon.png",link: "Profile/user_profile.html"},
    {name:"Add User ",image:"adduser-page-icon.png",link: "Profile/add_user.html"},
    {name:"Remove User",image:"removeuser-page-icon.png",link: "Profile/remove_user.html"},
    {name:"Edit User",image:"edituser-page-icon.png",link: "Profile/edit_user.html"},
]

var container = document.getElementById("side-menu-item");
for (i=0; i < contents.length; i++){
	if(user=="admin"&&(i==0||i==3))continue;
    if(user=="lecturer"&&(i==1||i==2||i==4||i==6||i==7||i==8))continue;
    if(user=="space manager"&&(i==0||i==3||i==6||i==7||i==8))continue;
    const new_card = `<a href="../${contents[i].link}">
    <div class=\"side-menu-option\">
    <img src="../img/${contents[i].image}" width=20px height=20px>
    <h4>${contents[i].name}</h4>
    </div></a>`;
    container.innerHTML += new_card;
}