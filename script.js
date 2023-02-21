// import { portofolio } from 'data.js';
// const portofolio = require('./data');
// console.log(portofolio);
// function for hide navbar
const portofolio = [
    {
        id: '1',
        label: 'Soup',
        description: 'Slicing UI from dribbble platform',
        link: '#',
        img: 'images/porto/spicysoup.jpeg',
        technology: ['HTML', 'CSS', 'Bootstrap']
    },
    {
        id: '2',
        label: 'GuruBisa',
        description: 'Guru Bisa is an ecourse that aims to improve the competence of teaching staff in the field of information technology',
        link: 'https://github.com/faizmaruf/gurubisa',
        img: 'images/porto/gurubisa.jpeg',
        technology: ['HTML, CSS', 'JQuery', 'Bootstrap', 'CodeIgneter']
    },
    {
        id: '3',
        label: 'E-verification',
        description: 'Voter document management system website to assist companies in managing and finding the required documents.',
        link: '#',
        img: 'images/porto/qrcode.jpeg',
        technology: ['HTML, CSS', 'JQuery', 'Bootstrap', 'CodeIgneter', 'Dompdf']
    },
    {
        id: '4',
        label: 'Web Kemala',
        description: 'Web Keluarga Mahasiswa Lampung Universitas Sriwijaya.',
        link: 'https://github.com/faizmaruf/kemalaunsri',
        img: 'images/porto/kemala.jpeg',
        technology: ['HTML, CSS', 'JQuery', 'Bootstrap', 'CodeIgneter', 'Dompdf']
    },
    {
        id: '5',
        label: 'Sistem Pendukung Keputusan',
        description: 'Decision Support System For Selecting The Best Futsal Player selection using Analytical Hierarchy Process and Technique for Order of Preference by Similarity to Ideal Solution Method.',
        link: 'https://github.com/faizmaruf/spk',
        img: 'images/porto/spk.jpeg',
        technology: ['HTML, CSS', 'JQuery', 'Bootstrap', 'CodeIgneter']
    },
    {
        id: '6',
        label: 'Lion Parcel',
        description: 'Lionparcel Content Management System.',
        link: '#',
        img: 'images/porto/lionparcel.png',
        technology: ['HTML, CSS', 'tailwind', 'Vue js']
    },
    {
        id: '7',
        label: 'Laurreta',
        description: 'Lauretta Property Management App is a dashboard that will consume data from 1 shopping malls cameras and use it to generate dashboards for property management and retail analytics.',
        link: '#',
        img: 'images/porto/laurreta.png',
        technology: ['HTML, CSS', 'tailwind', 'React Js', 'Express Js', 'Mysql', 'Echart 5']
    },
    {
        id: '8',
        label: 'CMS Biofarma',
        description: 'Biofarma Content Management System.',
        link: '#',
        img: 'images/porto/cmsbio.png',
        technology: ['HTML, CSS', 'Tailwind', 'React Ts']
    },
    {
        id: '9',
        label: 'Web Surveyor PTSI BUMN',
        description: 'Web Surveyor is a web app to record the location of tower sites based on latitude and longitude which will be used as data for land acquisition.',
        link: '#',
        img: 'images/porto/websurveyor.png',
        technology: ['HTML, CSS', 'JQuery', 'Bootstrap', 'Laravel', 'Dompdf', 'Leaflet Js', 'Chart Js']
    },
    {
        id: '10',
        label: 'KiriminAja Clone',
        description: 'ReVamp KiriminAja',
        link: 'https://golden-mandazi-0f7227.netlify.app/',
        img: 'images/porto/kiriminaja.png',
        technology: ['HTML, CSS', 'Tailwind', 'Vue 3', 'Nuxt 3']
    }
];



var prevScrollpos = window.pageYOffset;
window.onscroll = function () {
    var currentScrollPos = window.pageYOffset;
    if (prevScrollpos > currentScrollPos) {
        document.getElementById("navbar").style.transition = "top 0.2s"
        document.getElementById("navbar").style.top = "0";
    } else {
        document.getElementById("navbar").style.transition = "top 0.2s"
        document.getElementById("navbar").style.top = "-50px";
    }
    prevScrollpos = currentScrollPos;
}



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




//function for add text to each tag at modal
const textModal = (label, description, image, technology, link) => {
    const modalLabel = document.querySelector("#modalLabel");
    // const modalBody = document.querySelector("#modalBody");
    const modalDescription = document.querySelector("#modalDescription");
    const modalLink = document.querySelector("#modalLink");
    const modalImg = document.querySelector("#modalImg");
    const modalHref = document.querySelector("#modalHref");
    modalLabel.innerHTML = '';
    modalLabel.appendChild(document.createTextNode(label));
    modalHref.innerHTML = 'Go to ';
    modalHref.appendChild(document.createTextNode(label));
    // modalBody.innerHTML = '';
    // modalBody.appendChild(document.createTextNode(body));
    modalDescription.innerHTML = '';
    modalDescription.appendChild(document.createTextNode(description));
    modalImg.src = image;
    // modalLink.src = link;
    modalHref.href = link;
    list(technology);
    // modalImg.appendChild(document.createTextNode(description));
}


//function for create list tech
const list = (list) => {
    // console.log(list);
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


// function for clicked
const portoAsli = document.querySelectorAll(".porto");
portoAsli.forEach(occurence => {
    occurence.addEventListener('click', (e) => {
        const porto = portofolio.filter((portofoli) => portofoli.id == e.delegateTarget.id)[0];
        console.log(porto);
        textModal(porto.label, porto.description, porto.img, porto.technology, porto.link);
        // console.log(e.delegateTarget.id)
    });
});
