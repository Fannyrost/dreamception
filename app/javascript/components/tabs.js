const tabsSellerSwitch = () => {
  const tabs = document.querySelectorAll(".tab-seller");


  tabs.forEach((tab) =>
    tab.addEventListener('click', (event) => {
      let activeTab = document.querySelector(".t-seller-active");
      let inactiveTab = document.querySelector(".t-seller-inactive");
      let activeBox = document.querySelector(".active-seller");
      let inactiveBox = document.querySelector(".inactive-seller");

      inactiveTab.classList.remove('t-seller-inactive');
      inactiveTab.classList.add('t-seller-active');

      activeTab.classList.remove('t-seller-active');
      activeTab.classList.add('t-seller-inactive');

      activeBox.classList.remove('active-seller');
      activeBox.classList.add('inactive-seller');

      inactiveBox.classList.remove('inactive-seller');
      inactiveBox.classList.add('active-seller');
  }));
}


export {tabsSellerSwitch};
