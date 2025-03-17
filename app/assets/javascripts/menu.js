const menuToggle = document.querySelector('.toggle');
const showcase = document.querySelector('.showcase');

menuToggle.addEventListener('click', () => {
  menuToggle.classList.toggle('active');
  showcase.classList.toggle('active');
});

// Add click event listener to each menu item
const menuItems = document.querySelectorAll('.submenu');

  menuItems.forEach(item => {
    item.addEventListener('click', (event) => {
      // Prevent click propagation to avoid menu toggle conflicts
      event.stopPropagation();

      // Toggle submenu visibility
      item.classList.toggle('active');
    });
  });

