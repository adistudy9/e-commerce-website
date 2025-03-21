// Initialize the cart count
let cart = [];

const cartCountElement = document.getElementById('cart-count');
const addToCartButtons = document.querySelectorAll('.add-to-cart');

// Function to update the cart count in the navigation
function updateCartCount() {
    cartCountElement.textContent = cart.length;
}

// Add event listeners to all 'Add to Cart' buttons
addToCartButtons.forEach(button => {
    button.addEventListener('click', function() {
        const productId = this.closest('.product').getAttribute('data-id');
        addToCart(productId);
    });
});

// Function to add items to the cart
function addToCart(productId) {
    cart.push(productId); // Add product to cart array
    updateCartCount(); // Update cart count display
}
