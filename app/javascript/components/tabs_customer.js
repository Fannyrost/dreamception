const tabsCustomerSwitch = () => {
  console.log('hello');
  const tabs = document.querySelectorAll(".tabs-customer");


  tabs.forEach((tab) =>
    tab.addEventListener('click', (event) => {
      let activeTab = document.querySelector(".t-customer-active");
      let inactiveTab = document.querySelector(".t-customer-inactive");
      let activeBox = document.querySelector(".active-customer");
      let inactiveBox = document.querySelector(".inactive-customer");

      inactiveTab.classList.remove('t-customer-inactive');
      inactiveTab.classList.add('t-customer-active');
      console.log(inactiveTab);

      activeTab.classList.remove('t-customer-active');
      activeTab.classList.add('t-customer-inactive');
      console.log(activeTab);

      activeBox.classList.remove('active-customer');
      activeBox.classList.add('inactive-customer');
      console.log(activeBox);

      inactiveBox.classList.remove('inactive-customer');
      inactiveBox.classList.add('active-customer');
      console.log(inactiveBox);
  }));
}


export {tabsCustomerSwitch};
