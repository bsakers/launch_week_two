fetch('http://localhost:4567/books.json')
  .then(response => {
    if (response.ok) {
      return response;
    } else {
      let errorMessage = `${response.status} (${response.statusText})`,
          error = new Error(errorMessage);
      throw(error);
    }
  })
  .then((response) => {
    return response.text()})
  .then(body => {
    console.log(body);
    let bodyParsed = JSON.parse(body);
    let bookArray = bodyParsed["books"]
    let html = ""
    bookArray.forEach((object)=>{
      html += `<li>${object.name}</li>`
    });
    document.getElementById('books').innerHTML = html
  })
  .catch(error => console.error(`Error in fetch: ${error.message}`));
