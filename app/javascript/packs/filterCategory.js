

// function filter(e) {
//   e.preventDefault()
//   let category = e.target.value
//   // if (category === 'all'){
//   //   projects = JSON.parse(e.target.dataset.projects)
//   //   debugger
//   // }
//   const projects = JSON.parse(e.target.dataset.projects)
//   console.log(projects)
// }
const select = (el, all = false) => {
  el = el.trim()
  if (all) {
    return [...document.querySelectorAll(el)]
  } else {
    return document.querySelector(el)
  }
}

const on = (type, el, listener, all = false) => {
  let selectEl = select(el, all)
  if (selectEl) {
    if (all) {
      selectEl.forEach(e => e.addEventListener(type, listener))
    } else {
      selectEl.addEventListener(type, listener)
    }
  }
}

document.addEventListener('turbolinks:load', () => {
  let portfolioContainer = select('.portfolio-container');

  if (portfolioContainer) {
    let portfolioIsotope = new Isotope(portfolioContainer, {
      itemSelector: '.portfolio-item',
      layoutMode: 'fitRows'
    });

    let portfolioFilters = select('#portfolio-flters li', true);
    on('click', '#portfolio-flters li', function(e) {
      e.preventDefault();

      portfolioFilters.forEach(function(el) {
        el.classList.remove('active');
      });
      this.classList.add('active');
      // debugger
      portfolioIsotope.arrange({

        filter: this.getAttribute('data-filter')

      });
    //
    }, true);

  }
  // const all = document.getElementById("filterSelection");
  // const all = document.querySelectorAll("#filterSelection");

  // Array.from(all).map(c => {
  //   c.addEventListener("click", filter);
  // })

  // all.addEventListener("click", filter);
});
