

const makeAnimalList = templater(o=>`
<li class="animal-list-item">
   <a href="#existing-dog-page" class="js-animal-jump" data-id="${o.id}">
      <div class="animal-list-image"><img src="${o.img}" alt=""></div>
      <div class="animal-list-body">
         <div class="animal-list-name">${o.name}</div>
         <div class="animal-list-type">Type: ${o.type}</div>
      </div>
   </a>
</li>
`);




const makeExistingDogPage = o => `
<img src="${o.img}">
<h2>${o.name}</h2>
<div>
   <div><strong>Username</strong> @${o.username}</div>
   <div><strong>Email</strong> ${o.email}</div>
   <a href="#setting-edit-account">Edit</a>
</div>
`;


const makeAnimalProfileDescription = o => `
<h2>${o.name}</h2>
<div>${o.type}</div>
`;