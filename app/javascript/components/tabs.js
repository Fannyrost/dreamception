const tabs = document.querySelectorAll(".tab");

tabs.forEach((tab) =>

tab.addEventListener('click', (event) => {
  const activeTab = document.querySelector(".t-active");
  const inactiveTab = document.querySelector(".t-inactive");
  const activeBox = document.querySelector(".active")
  const inactiveBox = document.querySelector(".inactive")
  inactiveTab.classList.remove('t-inactive');
  inactiveTab.classList.add('t-active');

  activeTab.classList.remove('t-active');
  activeTab.classList.add('t-inactive');

  activeBox.classList.remove('active');
  activeBox.classList.add('inactive');

  inactiveBox.classList.remove('inactive');
  inactiveBox.classList.add('active');
}));

///////////////////::

const tabs = document.querySelectorAll(".tab");
const activeTab = document.querySelector(".t-active");
const inactiveTab = document.querySelector(".t-inactive");

tabs.forEach((tab) =>

tab.addEventListener('click', (event) => {
   tab.classList.remove('t-inactive');
   tab.classList.add('t-active')}));


