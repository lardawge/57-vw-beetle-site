// This is where it all goes :)
import '../stylesheets/site.css.scss'
// import 'bootstrap/js/dist/alert';
// import 'bootstrap/js/dist/button';
import 'bootstrap/js/dist/carousel';
// import 'bootstrap/js/dist/collapse';
// import 'bootstrap/js/dist/dropdown';
import 'bootstrap/js/dist/modal';
// import 'bootstrap/js/dist/offcanvas';
// import 'bootstrap/js/dist/popover';
// import 'bootstrap/js/dist/scrollspy';
// import 'bootstrap/js/dist/tab';
// import 'bootstrap/js/dist/toast';
// import 'bootstrap/js/dist/tooltip';

import Lightbox from './bs5-lightbox'

const options = {
	keyboard: true,
	size: 'fullscreen',
  ride: false
};

document.querySelectorAll('[data-toggle="lightbox-c"]').forEach((el) => el.addEventListener('click', (e) => {
	const lightbox = new Lightbox(el, options);
	lightbox.show();
	e.preventDefault();
}));