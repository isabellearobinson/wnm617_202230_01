
$(() => {
   checkUserId();

   // EVENT DELEGATION
   $(document)

   .on("pagecontainerbeforeshow", function(event, ui){
      console.log(ui.toPage[0].id)

      // PAGE ROUTING
      switch(ui.toPage[0].id) {
         case "home-page": HomePage(); break;
         case "recent-page": RecentPage(); break;
         case "profile-page": ProfilePage(); break;
         case "existing-dog-page": ExistingDogPage(); break;
      }
   })





   // FORM SUBMISSIONS
   .on("submit", "#login-form", function(e) {
      e.preventDefault();
      checkLoginForm();
   })


   // CLICKS
   .on("click", ".js-logout", function() {
      sessionStorage.removeItem("userId");
      checkUserId();
   })


   .on("click", ".js-animal-jump", function(e) {
      try {
         e.preventDefault();
         sessionStorage.animalId = $(this).data('id');
         $.mobile.navigate("#existing-dog-page");
      } catch(e) {
         throw("No id detected");
      }
   })


   .on("click", ".animal-profile-nav>div", function(e) {
      let id = $(this).index();
      $(this).parent()
         .next().children().eq(id)
         .addClass("active")
         .siblings().removeClass("active")
      $(this).addClass("active")
         .siblings().removeClass("active")
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
      let target = $(this).data("activateone");
      $(target).addClass("active")
         .siblings().removeClass("active")
   })

   ;

   $("[data-template]").each(function(){
      let target = $(this).data("template");
      $(this).html($(target).html())
   });

   [,"#favorites-page","#home-page","#profile-page"].forEach((p,i)=>{
      if(window.location.hash === p) {
         $(`.nav-icon-set li:nth-child(${i})`).addClass("active");
      }
   });

});