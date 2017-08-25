ready().then(() => {

  let classElements = document.getElementsByClassName('page')
  page1 = classElements[0]
  page2 = classElements[1]
  page3 = classElements[2]


  page1.addEventListener("click", function(event){
    event.preventDefault();
    url = page1.getAttribute('href');
    fetch(url)
    .then(response => response.text())
    .then(body => {
      let mainElement = document.getElementById('main')
      mainElement.innerHTML = body
    })
  })

  page2.addEventListener("click", function(event){
    event.preventDefault();
    url = page2.getAttribute('href');
    fetch(url)
    .then(response => response.text())
    .then(body => {
      let mainElement = document.getElementById('main')
      mainElement.innerHTML = body
    })
  })

  page3.addEventListener("click", function(event){
    event.preventDefault();
    url = page3.getAttribute('href');
    fetch(url)
    .then(response => response.text())
    .then(body => {
      let mainElement = document.getElementById('main')
      mainElement.innerHTML = body
    })
  })
})
