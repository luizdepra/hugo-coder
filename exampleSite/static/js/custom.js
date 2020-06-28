const body = document.body;
const darkModeToggle = document.getElementById('dark-mode-toggle');
const darkModeMediaQuery = window.matchMedia('(prefers-color-scheme: dark)');

if (localStorage.getItem("colorscheme")) {
  setTheme(localStorage.getItem("colorscheme"));
} else {
  setTheme(darkModeMediaQuery.matches ? "dark" : "light");
}

darkModeToggle.addEventListener('click', () => {
  setTheme(body.classList.contains("colorscheme-dark") ? "light" : "dark");
});

darkModeMediaQuery.addListener((event) => {
  setTheme(event.matches ? "dark" : "light");
});

function setTheme(theme) {
  if (theme === "dark") {
    localStorage.setItem("colorscheme", "dark");
    body.classList.remove('colorscheme-light');
    body.classList.add('colorscheme-dark');
  } else {
    localStorage.setItem("colorscheme", "light");
    body.classList.remove('colorscheme-dark');
    body.classList.add('colorscheme-light');
  }
}
