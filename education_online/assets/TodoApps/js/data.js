// key untuk mengakses data pada local storage
const STORAGE_KEY = "TODO_APPS";

// variabel untuk menyimpan data secara berkala
let todos = [];

// untuk mengecek dukungan browser
function isStorageExist() {
	if (typeof(Storage) === undefined) {
		alert('Browser not support! :(');
		return false;
	}
	return true;
}


// untuk menyimpan data ke storage
function saveData() {
	const parsed = JSON.stringify(todos); // mengonversi data ke string untuk disimpan
	localStorage.setItem(STORAGE_KEY, parsed);
	document.dispatchEvent(new Event("ondatasaved")); // mentrigger custom event "ondatasaved"
}

// memuat data dari storage 
function loadDataFromStorage() {
	const serializedData = localStorage.getItem(STORAGE_KEY);
	let data = JSON.parse(serializedData);

	if (data !== null) {
		todos = data;
		document.dispatchEvent(new Event("ondataloaded")); // trigger custom event agar bisa digunakan
		// untuk load data  pada applikasi
	}
}

// untuk digunakan sebagai perantara dalam menyimpan data
function updateDataToStorage() {
	if (isStorageExist()) {
		saveData();
	}
}

// untuk membuat objek TODO yang baru 
function composeTodoObject(task, timestamp, isCompleted) {
	return {
		id: +new Date(),
		task,
		timestamp,
		isCompleted
	};
}

// mencari objek task TODO pada array berdasarkan ID yang diinput pada argumen pertama
function findTodo(todoId) {
	for (todo of todos) {
		if (todo.id === todoId) {
			return todo;
		}
	}
	return null;
}

// mencari indeks dari objek task TODO 
function findTodoIndex(todoId) {
	let index = 0;
	for (todo of todos) {
		if (todo.id === todoId) {
			return index;
		}
		index++;
	}
	return -1;
}

function refreshDataFromTodos() {
	const listUncompleted = document.getElementById(UNCOMPLETED_LIST_TODO_ID);
	let listCompleted = document.getElementById(COMPLETED_LIST_TODO_ID);

	for (todo of todos) {
		const newTodo = makeTodo(todo.task, todo.timestamp, todo.isCompleted);
		newTodo[TODO_ITEMID] = todo.id;

		if (todo.isCompleted) {
			listCompleted.append(newTodo);
		} else {
			listUncompleted.append(newTodo);
		}
	}
};
