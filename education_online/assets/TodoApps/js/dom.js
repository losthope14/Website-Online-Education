// file ini untuk memanipulasi DOM 

// variabel untuk menampung id elemen Todo yang belum selesai
const UNCOMPLETED_LIST_TODO_ID = 'todos';
const COMPLETED_LIST_TODO_ID = "completed-todos";
const TODO_ITEMID = "itemId"; // objeck key untuk menyimpan id dari masing2 task pada 
// objek HTMLElement

function createButton(buttonTypeClass, eventListener) {
	const button = document.createElement('button');
	button.classList.add(buttonTypeClass);
	button.addEventListener('click', function() {
		eventListener(event);
	});

	return button;
}

function makeTodo(data, timestamp, isCompleted) {
	const textTitle = document.createElement('h2');
	textTitle.innerText = data;

	const textTimeStamp = document.createElement('p');
	textTimeStamp.innerText = timestamp;

	const textContainer = document.createElement('div');
	textContainer.classList.add('inner');
	textContainer.append(textTitle, textTimeStamp);

	const container = document.createElement('div');
	container.classList.add("item", "shadow");
	container.append(textContainer);

	if (isCompleted) {
		container.append(createUndoButton(), createTrashButton());
	} else {
		container.append(createCheckButton());
	}
	
	return container;
}

function addTodo() {
	const uncompletedTODOlist = document.getElementById(UNCOMPLETED_LIST_TODO_ID);

	const textTodo = document.getElementById('title').value;
	const timestamp = document.getElementById('date').value;
	
	/* for console
	console.log("todo : " + textTodo);
	console.log("timeStamp : " + timeStamp);
	
	for (let i = 0; i < 10; i++) {
		const todo = makeTodo();
		uncompletedTODOlist.append(todo);
	}
	*/

	const todo = makeTodo(textTodo, timestamp);
	const todoObject = composeTodoObject(textTodo, timestamp, false);

	todo[TODO_ITEMID] = todoObject.id;
	todos.push(todoObject);

	console.log(todo);
	uncompletedTODOlist.append(todo);
	updateDataToStorage();
}

// fungsi untuk menampilkan todo yang sudah dilakukan
function addTaskToCompleted(taskElement) {
	const taskTitle = taskElement.querySelector('.inner > h2').innerText;
	const taskTimeStamp = taskElement.querySelector('.inner > p').innerText;

	const newTodo = makeTodo(taskTitle, taskTimeStamp, true);
	const todo = findTodo(taskElement[TODO_ITEMID]);
	todo.isCompleted = true;
	newTodo[TODO_ITEMID] = todo.id;

	const listCompleted = document.getElementById(COMPLETED_LIST_TODO_ID);
	listCompleted.append(newTodo);
	taskElement.remove();

	updateDataToStorage();
}

function createCheckButton() {
	return createButton('check-button', function(event) {
		addTaskToCompleted(event.target.parentElement);
	});
}

function removeTaskFromCompleted(taskElement) {
	const todoPosition = findTodoIndex(taskElement[TODO_ITEMID]);
	todos.splice(todoPosition, 1); // untuk menghapus objek
	// fungsi splice() menghapus objek sesuai index array pada argumen pertama, dengan 
	// spesifikasi jumlah objek yang akan dihapus dimulai dari index (pada argumen pertama)
	// pada argumen kedua.
	// karena hanya satu objek yang akan dihapus, pada argumen kedua diinisialisasi 1

	taskElement.remove();
	updateDataToStorage();
}

function createTrashButton() {
	return createButton('trash-button', function(event) {
		removeTaskFromCompleted(event.target.parentElement);
	});
}

function undoTaskFromCompleted(taskElement) {
	const listUncompleted = document.getElementById(UNCOMPLETED_LIST_TODO_ID);
	const taskTitle = taskElement.querySelector('.inner > h2').innerText;
	const taskTimeStamp = taskElement.querySelector('.inner > p').innerText;

	const newTodo = makeTodo(taskTitle, taskTimeStamp, false);

	const todo = findTodo(taskElement[TODO_ITEMID]);
	todo.isCompleted = false;
	newTodo[TODO_ITEMID] = todo.id;

	listUncompleted.append(newTodo);
	taskElement.remove();

	updateDataToStorage();
}

function createUndoButton() {
	return createButton('undo-button', function(event) {
		undoTaskFromCompleted(event.target.parentElement);
	});
}