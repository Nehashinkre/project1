console.log('This is ES6 version of Project 2');
class Book {
    constructor(topicname, Description, type) {
        this.topicname = topicname;
        this.Description = Description;
        this.type = type;
    }
}

class Display {
    add(book) {
        console.log("Adding to UI");
        let tableBody = document.getElementById('tableBody');
        let uiString = `<tr>
                            <td>${book.topicname}</td>
                            <td>${book.Description}</td>
                            <td>${book.type}</td>
                        </tr>`;
        tableBody.innerHTML += uiString;
    }

    clear() {
        let libraryForm = document.getElementById('dlForm');
        libraryForm.reset();
    }

    validate(book) {
        if (book.topicname.length < 2 || book.Description.length < 2) {
            return false
        }
        else {
            return true;
        }
    }

    show(type, displayMessage) {
        let message = document.getElementById('message');
        let boldText;
        if(type==='success'){
            boldText = 'Success';
        }
        else{
            boldText = 'Error!';
        }
        message.innerHTML = `<div class="alert alert-${type} alert-dismissible fade show" role="alert">
                                <strong>${boldText}:</strong> ${displayMessage}
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">×</span>
                                </button>
                            </div>`;
        setTimeout(function () {
            message.innerHTML = ''
        }, 5000);
    
    }
}

// Add submit event listener to libraryForm
let libraryForm = document.getElementById('dlForm');
libraryForm.addEventListener('submit', libraryFormSubmit);

function libraryFormSubmit(e) {
    console.log('YOu have submitted library form');
    let topicname = document.getElementById('topicname').value;
    let Description = document.getElementById('Description').value;
    let type;
    let supervised = document.getElementById('supervised');
    let unsupervised= document.getElementById('unsupervised');
    let reinforcement = document.getElementById('reinforcement');

    if (supervised.checked) {
        type = supervised.value;
    }
    else if (unsupervised.checked) {
        type=unsupervised.value;
    }
    else if (reinforcement.checked) {
        type =reinforcement.value;
    }

    let book = new Book(topicname,Description, type);
    console.log(book);

    let display = new Display();

    if (display.validate(book)) {

        display.add(book);
        display.clear();
        display.show('success', 'Your sugesstion has been successfully added')
    }
    else {
        // Show error to the user
        display.show('danger', 'Sorry you cannot add this');
    }

    e.preventDefault();
}
