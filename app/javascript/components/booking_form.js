const updatePriceInBookings = () => {

  const field_nb = document.querySelector('#booking_nb_of_persons');
  const field_price = document.querySelector('#booking_total_price');

  field_nb.addEventListener('input', (event) => {
    console.log("helloe")
    const nb_of_persons = event.srcElement.valueAsNumber;
    const new_price = Number.parseInt(field_price.dataset.price,10) * nb_of_persons
    field_price.value = new_price
  });

}

export { updatePriceInBookings };


// Pbs
//  - field_nb non défini
//  - limiter l'input par exp.nb_max
//  - validation du 'change' avan cliquer sur le bouton 'create booking'
