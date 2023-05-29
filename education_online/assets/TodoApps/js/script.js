// file ini bertujuan untuk mencegah tombol submit pada HTML dijalankan secara default
document.addEventListener('DOMContentLoaded', function() { // listener yang akan dijalankan saat DOM selesai dimuat
	const submitForm = document.getElementById('form-todo');
	submitForm.addEventListener('submit', function(event) {
		event.preventDefault(); // mencegah behaviour asli dijalankan 
		addTodo();
	});

	if(isStorageExist()) {
		loadDataFromStorage();
	}
});

document.addEventListener("ondatasaved", () => {
	console.log("Data berhasil disimpan.");
});

document.addEventListener("ondataloaded", () => {
	refreshDataFromTodos();
})

