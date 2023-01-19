const typedTextSpan = document.querySelector(".typed-text");
const cursorSpan = document.querySelector(".cursor");

const textArray = ['Front End Engineer', 'Web Developer'];
const typingDelay = 100;
const erasingDelay = 75;
const newTextDelay = 1000; // Delay between current and next text
let textArrayIndex = 0;
let charIndex = 0;
function type() {
    if (charIndex < textArray[textArrayIndex].length) {
        if (!cursorSpan.classList.contains("typing")) cursorSpan.classList.add("typing");
        typedTextSpan.textContent += textArray[textArrayIndex].charAt(charIndex);
        charIndex++;
        setTimeout(type, typingDelay);
    }
    else {
        cursorSpan.classList.remove("typing");
        setTimeout(erase, newTextDelay);
    }
}

function erase() {
    if (charIndex > 0) {
        if (!cursorSpan.classList.contains("typing")) cursorSpan.classList.add("typing");
        typedTextSpan.textContent = textArray[textArrayIndex].substring(0, charIndex - 1);
        charIndex--;
        setTimeout(erase, erasingDelay);
    }
    else {
        cursorSpan.classList.remove("typing");
        textArrayIndex++;
        if (textArrayIndex >= textArray.length) textArrayIndex = 0;
        setTimeout(type, typingDelay + 1100);
    }
}

document.addEventListener("DOMContentLoaded", function () { // On DOM Load initiate the effect
    if (textArray.length) setTimeout(type, newTextDelay + 250);
});

// get id at each web porto
// define array of description each web porto
// show modal
// - when the web porto clicked
// - show modal


const textModal = (label, description, image, technology) => {
    const modalLabel = document.querySelector("#modalLabel");
    // const modalBody = document.querySelector("#modalBody");
    const modalDescription = document.querySelector("#modalDescription");
    const modalLink = document.querySelector("#modalLink");
    const modalImg = document.querySelector("#modalImg");
    modalLabel.innerHTML = '';
    modalLabel.appendChild(document.createTextNode(label));
    // modalBody.innerHTML = '';
    // modalBody.appendChild(document.createTextNode(body));
    modalDescription.innerHTML = '';
    modalDescription.appendChild(document.createTextNode(description));
    modalImg.src = image;

    list(technology)
    // modalImg.appendChild(document.createTextNode(description));
}

const portofolio = [
    {
        id: '1',
        label: 'Soup',
        description: 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Reiciendis beatae, iusto vel quisquam temporibus repellendus dolores pariatur laborum porro saepe aut nesciunt ullam lo',
        link: '#',
        img: 'images/porto/spicysoup.jpeg',
        technology: ['HTML', 'CSS', 'Bootstrap']
    },
    {
        id: '2',
        label: 'GuruBisa',
        description: 'lorem ipsum color dumet sipp',
        link: '#',
        img: 'images/porto/gurubisa.jpeg',
        technology: ['HTML', 'CSS', 'Bootstrap', 'CodeIgneter']
    },
    {
        id: '3',
        label: 'e-verification',
        description: 'lorem ipsum color dumet',
        link: '#',
        img: 'images/porto/qrcode.jpeg',
        technology: ['HTML', 'CSS', 'Bootstrap', 'JQuery']
    }
]


const porto = portofolio.filter((portofoli) => portofoli.id == 1)[0];
console.log(porto)

//create list tech
const list = (list) => {
    const ul = document.querySelector("#modalList");
    while (ul.hasChildNodes()) {
        ul.removeChild(ul.firstChild);
    }

    for (var i = 0; i < list.length; i++) {
        var li = document.createElement("li");
        li.appendChild(document.createTextNode(list[i]));
        ul.appendChild(li);
    }
}


// function for declar
const portoAsli = document.querySelectorAll(".porto");
portoAsli.forEach(occurence => {
    occurence.addEventListener('click', (e) => {
        const porto = portofolio.filter((portofoli) => portofoli.id == e.delegateTarget.id)[0];
        // const porto = portofolio.filter((portofoli) => portofoli.id == 3);
        // console.log(porto.technology);
        ;
        textModal(porto.label, porto.description, porto.img, porto.technology);
        console.log(e.delegateTarget.id)
        // console.log('A link was clicked');
    });
});




// console.log(portoAsli[1]);
// console.log(portoAsli.attributes);

// const soup = document.querySelector(".porto");
// console.log(soup.attributes.idporto.value);
// portoAsli.addEventListener('click', (event) => {
// textModal("ini judul suop", "ini body suop");
// // console.log('test')
// // console.log(porto);
// console.log(event);
// })
// portoAsli.onclick = function (e) {
//     textModal("ini judul suop", "ini body suop");
//     // console.log('test')
//     // console.log(porto);
//     console.log(e);
// };

// const guruBisa = document.querySelector("#guruBisa");
// guruBisa.addEventListener('click', () => {
//     textModal("ini judul gurubisa", "ini body gurubisa")
//     // console.log('test gurubisa')
// })


