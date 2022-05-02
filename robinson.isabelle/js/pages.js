
const RecentPage = async() => {
}


const HomePage = async() => {
   // destructuring
   let {result:animals} = await query({
      type:'animals_by_user_id',
      params:[sessionStorage.userId]
   })
   
   console.log(animals)

   $("#home-page .dog-grid").html(makeDogGrid(animals));
}


const ProfilePage = async() => {
   let {result:users} = await query({
      type:'users_by_id',
      params:[sessionStorage.userId]
   })
   let [user] = users;

   console.log(users)

   $("#profile-page [data-role='main']").html(makeProfilePage(users));
}


const ExistingDogPage = async() => {
   let {result:animals} = await query({
      type:'animal_by_id',
      params:[sessionStorage.animalId]
   })
   let [animal] = animals;
   $(".animal-profile-top").css({"background-image":`url(${animal.img})`})
   $("#animal-profile-page h1").html(animal.name)
   $(".animal-profile-description").html(makeAnimalProfileDescription(animal));

   let {result:locations} = await query({
      type:'locations_by_animal_id',
      params:[sessionStorage.animalId]
   })
   console.log(locations)
}