const tabsSwitch = () => {
  const tabs = document.querySelectorAll(".tab");


  tabs.forEach((tab) =>
    tab.addEventListener('click', (event) => {
      let activeTab = document.querySelector(".t-active");
      let inactiveTab = document.querySelector(".t-inactive");
      let activeBox = document.querySelector(".active");
      let inactiveBox = document.querySelector(".inactive");

      inactiveTab.classList.remove('t-inactive');
      inactiveTab.classList.add('t-active');

      activeTab.classList.remove('t-active');
      activeTab.classList.add('t-inactive');

      activeBox.classList.remove('active');
      activeBox.classList.add('inactive');

      inactiveBox.classList.remove('inactive');
      inactiveBox.classList.add('active');
  }));
}


export {tabsSwitch};
