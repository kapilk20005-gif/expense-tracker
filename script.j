const form = document.getElementById('form');
const text = document.getElementById('text');
const amount = document.getElementById('amount');
const list = document.getElementById('list');

let transactions = [];

function addTransaction(e) {
    e.preventDefault();

    if (text.value.trim() === '' || amount.value.trim() === '') {
        alert('Please add a text and amount');
    } else {
        const transaction = {
            id: Math.floor(Math.random() * 100000000),
            text: text.value,
            amount: +amount.value
        };

        transactions.push(transaction);
        addTransactionDOM(transaction);
        text.value = '';
        amount.value = '';
    }
}

function addTransactionDOM(transaction) {
    const item = document.createElement('li');
    item.innerHTML = `
        ${transaction.text} <span>$${transaction.amount}</span>
    `;
    list.appendChild(item);
}

form.addEventListener('submit', addTransaction);