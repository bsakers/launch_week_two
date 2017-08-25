ready().then(() => {
  fetch("http://localhost:8080/images/logo.png")
    .then(response=> response.blob())
    .then(responseBlob => {
      console.log(responseBlob)
      let objectURL = URL.createObjectURL(responseBlob)

      let imageElement = document.createElement('img')
      imageElement.src = objectURL

      let mainElement = document.getElementById('main')
      mainElement.appendChild(imageElement)
    })
})
