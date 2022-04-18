
$(() => {
   checkUserId();

   // EVENT DELEGATION
   $(document)

      .on("pagecontainerbeforeshow", function(event, ui){
      console.log(ui.toPage[0].id)


   // FORM SUBMISSIONS
   .on("submit", "#login-form", function(e) {
      e.preventDefault();
      checkLoginForm();
   })

         // PAGE ROUTING
      switch(ui.toPage[0].id) {
         case "recent-page": RecentPage(); break;
         case "list-page": ListPage(); break;
         case "user-profile-page": UserProfilePage(); break;
         case "animal-profile-page": AnimalProfilePage(); break;
      }
   })



   // CLICKS
   .on("click", ".js-logout", function() {
      sessionStorage.removeItem("userId");
      checkUserId();
   })


   // ACTIVATE TOOLS
   .on("click", "[data-activate]", function() {
      let target = $(this).data("activate");
      $(target).addClass("active")
   })
   .on("click", "[data-deactivate]", function() {
      let target = $(this).data("deactivate");
      $(target).removeClass("active")
   })
   .on("click", "[data-toggle]", function() {
      let target = $(this).data("toggle");
      $(target).toggleClass("active")
   })
   .on("click", "[data-activateone]", function() {
      let target = $(this).data("activate");
      $(target).addClass("active")
         .siblings().removeClass("active")
   })
});