let openShopping = document.querySelector('.shopping');
let closeShopping = document.querySelector('.closeShopping');
let list = document.querySelector('.list');
let listCard = document.querySelector('.listCard');
let body = document.querySelector('body');
let total = document.querySelector('.total');
let quantity = document.querySelector('.quantity');
var orderDetails = [];
var x = 0;

openShopping.addEventListener('click', ()=>{
    body.classList.add('active');
})
closeShopping.addEventListener('click', ()=>{
    body.classList.remove('active');
})

let products = [
    {
        id: 1,
        name: 'Batta Shoe',
        image: '1.JPG',
        price: 120000
    },
    {
        id: 2,
        name: 'T-Shirt',
        image: '2.JPG',
        price: 120000
    },
    {
        id: 3,
        name: 'Joger',
        image: '3.JPG',
        price: 220000
    },
    {
        id: 4,
        name: 'Curry',
        image: '4.PNG',
        price: 123000
    },
    {
        id: 5,
        name: 'Vegetable Pizza',
        image: '5.PNG',
        price: 320000
    },
    {
        id: 6,
        name: 'Itallian Pizza',
        image: '6.PNG',
        price: 120000
    }
];
let listCards  = [];
function initApp(){
    products.forEach((value, key) =>{
        let newDiv = document.createElement('div');
        newDiv.classList.add('item');
        newDiv.innerHTML = `
            <img src="image/${value.image}" class = "myImage">
            <div class="title">${value.name}</div>
            <div class="price">${value.price.toLocaleString()}</div>
            <button class="productButton" onclick="addToCard(${key})">Add To Card</button>`;
        list.appendChild(newDiv);
    })
}
initApp();
function addToCard(key){
    if(listCards[key] == null){
        // copy product form list to list card
        listCards[key] = JSON.parse(JSON.stringify(products[key]));
        listCards[key].quantity = 1;
		orderDetails[x] = {id:key,productName:products[key].name,Price:products[key].price,quantity:1};
		x++;
    }
    reloadCard();
}
function reloadCard(){
    listCard.innerHTML = '';
    let count = 0;
    let totalPrice = 0;
    listCards.forEach((value, key)=>{
        totalPrice = totalPrice + value.price;
        count = count + value.quantity;
        if(value != null){
            let newDiv = document.createElement('li');
            newDiv.innerHTML = `
                <div><img src="image/${value.image}"/></div>
                <div>${value.name}</div>
                <div>${value.price.toLocaleString()}</div>
                <div>
                    <button onclick="changeQuantity(${key}, ${value.quantity - 1})">-</button>
                    <div class="count">${value.quantity}</div>
                    <button onclick="changeQuantity(${key}, ${value.quantity + 1})">+</button>
                </div>`;
                listCard.appendChild(newDiv);
        }
    })
    total.innerText = totalPrice.toLocaleString();
    quantity.innerText = count;
}
function find(key) {
  for (let i = 0; i < orderDetails.length; i++) {
    if (orderDetails[i].id === key) {
      return i; // Return the index of the matching element
    }
  }
  return -1; // Return -1 if the element is not found
}

function changeQuantity(key, quantity){
    if(quantity == 0){
        delete listCards[key];
		delete orderDetails[find(key)];
    }else{
        listCards[key].quantity = quantity;
        listCards[key].price = quantity * products[key].price;
		orderDetails[find(key)].quantity++;
		orderDetails[find(key)].Price = quantity * products[key].price;
    }
    reloadCard();
}

// Global Variables
let loggedInUser = null;
let orders = [];

// Function to place an order
function placeOrder() {
  if (listCards.length === 0) {
    alert('No order is placed yet.');
    return;
  }

  // Check if user is logged in
  /*if (loggedInUser === null) {
    alert('Please login to place an order.');
    return;
  }*/

  // Store the order details
  const order = {
    user: loggedInUser,
    items: listCards
  };
  orders.push(order);

  // Clear the listCards
  listCards = [];

  // Show success message or perform any other actions
  
  openPaymentPage();
}
function openPaymentPage()
{
    window.location.href = "payment_page.html";
}
function openProductDetailPage()
{
    window.location.href = "product_detail.html";
}
// Get all the image elements with the class name "myImage"
var images = document.querySelectorAll(".myImage");

// Loop through each image and attach a click event listener
images.forEach(function(image) {
  image.addEventListener("click", function() {
    // Your click event handler code here
    openProductDetailPage();
  });
});