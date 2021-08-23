if (localStorage.getItem('darkTheme') == 'enabled') {
  document.body.classList.toggle('dark-theme');
}

const toggleDarkTheme = () => {
  document.body.classList.toggle('dark-theme');
  if (document.body.classList.contains('dark-theme')) {
    localStorage.setItem('darkTheme', 'enabled');
  } else {
    localStorage.setItem('darkTheme', 'disabled');
  }
}
