

const makeAnimalList = templater(o=>`
<li class="animal-list-item">
   <a href="#animal-profile-page" class="js-animal-jump" data-id="${o.id}">
      <div class="animal-list-image"><img src="${o.img}" alt=""></div>
   </a>
</li>
`);



const makeUserProfilePage = o => `
<div class="user-profile-head">
   <img src="${o.img}">
   <a href="#user-edit-photo-page" class="floater right profile"><img src="images/edit.png" class="icon"></a>
</div>
<div class="user-profile-body">
   <h2>${o.name}</h2>
   <div class="user-profile-description">
      <div><strong>Username</strong> @${o.username}</div>
      <div><strong>Email</strong> ${o.email}</div>
   </div>
</div>
`;



const makeAnimalProfileDescription = o => `
<h3>${o.name}</h3>
<h2>${o.breed}</h2>
<h5>${o.type}</h5>
<p>${o.description}</p>
`;





const makeAnimalPopupBody = o => `
<div class="display-flex js-animal-jump noclick-children" data-id="${o.id}">
   <div class="animal-list-image"><img src="${o.img}" alt=""></div>
   <div>
      <h2>${o.name}</h2>
      <div>${o.type}</div>
      <div>${o.breed}</div>

   </div>
</div>
`;


const FormControlInput = ({namespace,name,displayname,type,placeholder,value=""}) => {
   return `<div class="form-control">
      <label class="form-label" for="#${namespace}-${name}">${displayname}</label>
      <input data-role="none" class="form-input" type="${type}" placeholder="${placeholder}" id="${namespace}-${name}" value="${value}">
   </div>`;
}
const FormControlTextarea = ({namespace,name,displayname,placeholder,value=""}) => {
   return `<div class="form-control">
      <label class="form-label" for="#${namespace}-${name}">${displayname}</label>
      <textarea data-role="none" class="form-input" placeholder="${placeholder}" id="${namespace}-${name}">${value}</textarea>
   </div>`;
}

const SelectOptions = templater(o => `
   <option value="${o.value}" ${o.selected?'selected':''}>${o.text}</option>
`);
const FormSelect = (options,namespace,name,value="") => {
   return `
   <div class="form-select">
      <select id="${namespace}-${name}" data-role="none">
         ${SelectOptions(options.map(o=>({
            ...o,
            ...(o.id==value && {selected: true})
         })))}
      </select>
   </div>`;
}
const FormControlSelect = (options,namespace,name,displayname,value="") => {
   return `<div class="form-control">
      <label class="form-label" for="#${namespace}-${name}">${displayname}</label>
      ${FormSelect(options,namespace,name,value)}
   </div>`;
}


const makeAnimalForm = (animal,namespace = "animal-add") => {
return `
${FormControlInput({
   namespace,
   name:"name",
   displayname:"Name",
   type:"text",
   placeholder:"Add a Name",
   value:animal.name,
})}
${FormControlInput({
   namespace,
   name:"type",
   displayname:"Animal Size",
   type:"text",
   placeholder:"Small, Medium, Large",
   value:animal.type,
})}
${FormControlInput({
   namespace,
   name:"breed",
   displayname:"Breed",
   type:"text",
   placeholder:"Add a Breed",
   value:animal.breed,
})}
${FormControlTextarea({
   namespace,
   name:"description",
   displayname:"Description",
   placeholder:"Add a Description",
   value:animal.description,
})}
`;
}


const makeUserForm = (user,namespace = "user-edit") => {
return `
${FormControlInput({
   namespace,
   name:"name",
   displayname:"Name",
   type:"text",
   placeholder:"Your Name",
   value:user.name,
})}
${FormControlInput({
   namespace,
   name:"username",
   displayname:"Username",
   type:"text",
   placeholder:"Choose a Username",
   value:user.username,
})}
${FormControlInput({
   namespace,
   name:"email",
   displayname:"Email",
   type:"text",
   placeholder:"Add Email",
   value:user.email,
})}
`;
}


const makeAnimalListSet = (animals, target="#home-page .animal-list") => {
   $(".filter-bar").html(makeFilterList(animals));
   $(target).html(makeAnimalList(animals));
}

const capitalize = s => (s[0]||"").toUpperCase()+s.slice(1);

const filterList = (animals,type) => {
   let a = [...(new Set(animals.map(o=>o[type])))];
   return templater(o=>o?`<span data-filter="${type}" data-value="${o}">${capitalize(o)}</span>`:'')(a);
}

const makeFilterList = (animals) => {
   return `
   <span data-filter="type" data-value="">All</span>
   |
   ${filterList(animals,'type')}
   |
   ${filterList(animals,'breed')}
   `;
}