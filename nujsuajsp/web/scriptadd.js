let btnAdd = document.querySelector('button');
let table = document.querySelector('table');
let but = document.querySelector('#but');
 
 
let nameInput = document.querySelector('#name');
let scon1Input = document.querySelector('#scon1');
let scon2Input = document.querySelector('#scon2');
let scon3Input = document.querySelector('#scon3');
let scon4Input = document.querySelector('#scon4');
let scon5Input = document.querySelector('#scon5');
btnAdd.addEventListener('click', () => {
  let scon5 = scon5Input.value;
  let n=0;
  let template = `
              <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
              </tr>`;
          for (n=0; n<scon5; n++){
            table.innerHTML +=template;
          }
});
// let interInput =document.querySelector('#inter');
 
 
// btnAdd.addEventListener('click', () => {
//     let name = nameInput.value;
//     let scon1 = scon1Input.value;
//     let scon2 = scon2Input.value;
//     let scon3 = scon3Input.value;
//     let scon4 = scon4Input.value;
//     let template = `
//                 <tr>
//                     <td>${name}</td>
//                     <td>${scon1}</td>
//                     <td>${scon2}</td>
//                     <td>${scon3}</td>
//                     <td>${scon4}</td>
//                 </tr>`;
//     table.innerHTML += template;
// });
function xyovlis(){
     if(scon1Input.value.length >1.00){
        scon1Input.style.border="1px solid red";
     //  E_error.style.display="block";
        scon1Input.focus();
        alert (" scon is 0-4");
     //break;
        return false;
    } else if(scon2Input.value.length >1.00){
        scon2Input.style.border="1px solid red";
       // scon2Input.style.display="block";
        scon2Input.focus();
        alert (" scon is 0-4");
        return false;
      } else if(scon3Input.value.length >1.00){
        scon3Input.style.border="1px solid red";
       // scon2Input.style.display="block";
        scon3Input.focus();
        alert (" scon is 0-4");
        return false;
      }
      else if(scon4Input.value.length >1.00){
        scon4Input.style.border="1px solid red";
       // scon2Input.style.display="block";
        scon4Input.focus();
        alert (" scon is 0-4");
        return false;
      }
}