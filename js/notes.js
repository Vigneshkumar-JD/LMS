// Setting LocalStorage
if (!localStorage.notes) {
    let newObj = []
    localStorage.setItem('notes', JSON.stringify(newObj)) 
}
else {
    showNotes()
}

// Submit and DeleteAll
let submitBtn = document.querySelector('#submitBtn');
let delAllBtn = document.querySelector('#delAllBtn');


function createNewNote() {

    // Title
    let title = document.querySelector('#title');
    let titleValue = title.value;

    // Note
    let note = document.querySelector('#note');
    let noteValue = note.value;

    // Checking if both title and notes value exist
    if (titleValue == '') {
        return false;
    }
    else if (noteValue == '') {
        return false;
    }
    // Creating New Note and pushing in localStorage
    else {
        let newObj = JSON.parse(localStorage.getItem('notes'))
        let newNote = {
            'title': titleValue.trim(),
            'text': noteValue.trim()
        }
        newObj.push(newNote)
        localStorage.setItem('notes', JSON.stringify(newObj))
    }

    // Showing the Notes after been created

    // Clearing the Input Value
    document.querySelector('#title').value = '';
    document.querySelector('#note').value = '';
    showNotes()

}

function showNotes() {
    // Cloning card element to update exsiting values 
    document.querySelector('.row').innerHTML = ''
    allNotes = JSON.parse(localStorage.getItem('notes'));

    allNotes.forEach((element, index) => {
        let clonedNode = document.getElementById('new-note').cloneNode(true);
        let parentNode = document.querySelector('.row');
        // Displaying Notes
        let createNoteTitle = element['title'];
        let createNoteText = element['text'];
        clonedNode.id = `note-${index}`;
        clonedNode.style.display = 'block';
        clonedNode.querySelector('h5').innerText = createNoteTitle;
        clonedNode.querySelector('p').innerText = createNoteText;
        parentNode.appendChild(clonedNode)

    });
}

function delOneNote(event) {
    parentElem = event.path[3]

    // Title
    let title = parentElem.querySelector('h5').innerText;

    let newObj = JSON.parse(localStorage.getItem('notes'))

    for( var i = 0; i < newObj.length; i++){ 
        console.log(title);
        if ( newObj[i]['title'] === title) { 
            
            console.log(i);
            newObj.splice(i, 1); 
        }
    
    }

    localStorage.setItem('notes', JSON.stringify(newObj))
    
    showNotes()
}

function delAllNote(){
    let newObj = []
    localStorage.setItem('notes', JSON.stringify(newObj))
    showNotes()
}