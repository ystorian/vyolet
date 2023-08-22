// Activate the menu when clicking on the navbar burger.
document.addEventListener('DOMContentLoaded', () => {

	// Get all "navbar-burger" elements.
	const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

	// Add a click event on each of them.
	$navbarBurgers.forEach( el => {
		el.addEventListener('click', () => {

			// Get the target from the "data-target" attribute.
			const target = el.dataset.target;
			const $target = document.getElementById(target);

			// Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu".
			el.classList.toggle('is-active');
			$target.classList.toggle('is-active');
		});
	});
});

// Close notifications.
// <div class="notification"><button class="delete"></button>...</div>
document.addEventListener('DOMContentLoaded', () => {
	(document.querySelectorAll('.notification .delete') || []).forEach(($delete) => {
		const $notification = $delete.parentNode;
		$delete.addEventListener('click', () => {
			$notification.parentNode.removeChild($notification);
		});
	});
});

// Convert UTC time to local time.
// This works only on elements with a "utc-time" class.
// Example:
// <span class="utc-time">2023-04-22 18:09</span>
// will be changed to 22.04.2023 20:09
// Depending on browser support, the middle "T" and the seconds can be omitted.
// The "Z" at the end, which indicates UTC time, is added automatically.
document.addEventListener('DOMContentLoaded', () => {
	(document.querySelectorAll('.utc-time') || []).forEach(($utcTime) => {
		if($utcTime.textContent.indexOf('Z') === -1) $utcTime.textContent += 'Z';
		const time = new Date($utcTime.textContent);
		$utcTime.textContent = time.toLocaleString();
	});
});

// Convert UTC date to local date.
// This works only on elements with a "utc-date" class.
// Example:
// <span class="utc-date">2023-04-22 18:09</span>
// will be changed to 22.04.2023
// Depending on browser support, the middle "T" and the seconds can be omitted.
// The "Z" at the end, which indicates UTC time, is added automatically.
document.addEventListener('DOMContentLoaded', () => {
	(document.querySelectorAll('.utc-date') || []).forEach(($utcDate) => {
		if($utcDate.textContent.indexOf('Z') === -1) $utcDate.textContent += 'Z';
		const time = new Date($utcDate.textContent);
		$utcDate.textContent = time.toLocaleDateString();
	});
});
