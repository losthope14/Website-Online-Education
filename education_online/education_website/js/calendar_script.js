const isLeapYear = (year) => {
    return (
      (year % 4 === 0 && year % 100 !== 0 && year % 400 !== 0) ||
      (year % 100 === 0 && year % 400 === 0)
    );
  };
  const getFebDays = (year) => {
    return isLeapYear(year) ? 29 : 28;
  };
  let calendar = document.querySelector('.calendar');
  const month_names = [
    'Januari',
    'Februari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'Juli',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember',
  ];
  let month_picker = document.querySelector('#month-picker');
  const dayTextFormate = document.querySelector('.day-text-formate');
  const timeFormate = document.querySelector('.time-formate');
  const dateFormate = document.querySelector('.date-formate');
  
  /*month_picker.onclick = () => {
    month_list.classList.remove('hideonce');
    month_list.classList.remove('hide');
    month_list.classList.add('show');
    dayTextFormate.classList.remove('showtime');
    dayTextFormate.classList.add('hidetime');
    timeFormate.classList.remove('showtime');
    timeFormate.classList.add('hideTime');
    dateFormate.classList.remove('showtime');
    dateFormate.classList.add('hideTime');
  };*/
  
  const generateCalendar = (month, year) => {
    let calendar_days = document.querySelector('.calendar-days');
    calendar_days.innerHTML = '';
    let calendar_header_year = document.querySelector('#year');
    let days_of_month = [
      31,
      getFebDays(year),
      31,
      30,
      31,
      30,
      31,
      31,
      30,
      31,
      30,
      31,
    ];
    
    let currentDate = new Date();
    
    month_picker.innerHTML = month_names[month];
    
    calendar_header_year.innerHTML = year;
    
    let first_day = new Date(year, month);
  
  
  for (let i = 0; i <= days_of_month[month] + first_day.getDay() - 1; i++) {
  
      let day = document.createElement('div');
  
      if (i >= first_day.getDay()) {
        day.innerHTML = i - first_day.getDay() + 1;

        if (i - first_day.getDay() + 1 === currentDate.getDate() &&
          year === currentDate.getFullYear() &&
          month === currentDate.getMonth()
        ) {
          day.classList.add('current-date');
        }
      }
      calendar_days.appendChild(day);
    }
  };

// month select onclick
  
let month_select_jan = document.querySelector('#month-name-jan');
month_select_jan.onclick = () => {
  month_names.forEach((e, index) => {
    if (month_select_jan.textContent == month_names[index])
    {
      currentMonth.value = index;
      console.log('id: ', index);
      console.log("currentM: ", currentMonth.value);
      console.log("currentY: ", currentYear.value);
      generateCalendar(currentMonth.value, currentYear.value);
    }
  });
};

let month_select_feb = document.querySelector('#month-name-feb');
month_select_feb.onclick = () => {
 month_names.forEach((e, index) => {
   if (month_select_feb.textContent == month_names[index])
   {
     currentMonth.value = index;
     console.log('id: ', index);
     console.log("currentM: ", currentMonth.value);
     console.log("currentY: ", currentYear.value);
     generateCalendar(currentMonth.value, currentYear.value);
   }
 });
};

let month_select_mar = document.querySelector('#month-name-mar');
month_select_mar.onclick = () => {
 month_names.forEach((e, index) => {
   if (month_select_mar.textContent == month_names[index])
   {
     currentMonth.value = index;
     console.log('id: ', index);
     console.log("currentM: ", currentMonth.value);
     console.log("currentY: ", currentYear.value);
     generateCalendar(currentMonth.value, currentYear.value);
   }
 });
};

let month_select_apr = document.querySelector('#month-name-apr');
month_select_apr.onclick = () => {
 month_names.forEach((e, index) => {
   if (month_select_apr.textContent == month_names[index])
   {
     currentMonth.value = index;
     console.log('id: ', index);
     console.log("currentM: ", currentMonth.value);
     console.log("currentY: ", currentYear.value);
     generateCalendar(currentMonth.value, currentYear.value);
   }
 });
};

let month_select_mei = document.querySelector('#month-name-mei');
month_select_mei.onclick = () => {
 month_names.forEach((e, index) => {
   if (month_select_mei.textContent == month_names[index])
   {
     currentMonth.value = index;
     console.log('id: ', index);
     console.log("currentM: ", currentMonth.value);
     console.log("currentY: ", currentYear.value);
     generateCalendar(currentMonth.value, currentYear.value);
   }
 });
};

let month_select_jun = document.querySelector('#month-name-jun');
month_select_jun.onclick = () => {
 month_names.forEach((e, index) => {
   if (month_select_jun.textContent == month_names[index])
   {
     currentMonth.value = index;
     console.log('id: ', index);
     console.log("currentM: ", currentMonth.value);
     console.log("currentY: ", currentYear.value);
     generateCalendar(currentMonth.value, currentYear.value);
   }
 });
};

let month_select_jul = document.querySelector('#month-name-jul');
month_select_jul.onclick = () => {
 month_names.forEach((e, index) => {
   if (month_select_jul.textContent == month_names[index])
   {
     currentMonth.value = index;
     console.log('id: ', index);
     console.log("currentM: ", currentMonth.value);
     console.log("currentY: ", currentYear.value);
     generateCalendar(currentMonth.value, currentYear.value);
   }
 });
};

let month_select_agu = document.querySelector('#month-name-agu');
month_select_agu.onclick = () => {
 month_names.forEach((e, index) => {
   if (month_select_agu.textContent == month_names[index])
   {
     currentMonth.value = index;
     console.log('id: ', index);
     console.log("currentM: ", currentMonth.value);
     console.log("currentY: ", currentYear.value);
     generateCalendar(currentMonth.value, currentYear.value);
   }
 });
};

let month_select_sep = document.querySelector('#month-name-sep');
month_select_sep.onclick = () => {
 month_names.forEach((e, index) => {
   if (month_select_sep.textContent == month_names[index])
   {
     currentMonth.value = index;
     console.log('id: ', index);
     console.log("currentM: ", currentMonth.value);
     console.log("currentY: ", currentYear.value);
     generateCalendar(currentMonth.value, currentYear.value);
   }
 });
};

let month_select_okt = document.querySelector('#month-name-okt');
month_select_okt.onclick = () => {
 month_names.forEach((e, index) => {
   if (month_select_okt.textContent == month_names[index])
   {
     currentMonth.value = index;
     console.log('id: ', index);
     console.log("currentM: ", currentMonth.value);
     console.log("currentY: ", currentYear.value);
     generateCalendar(currentMonth.value, currentYear.value);
   }
 });
};

let month_select_nov = document.querySelector('#month-name-nov');
month_select_nov.onclick = () => {
 month_names.forEach((e, index) => {
   if (month_select_nov.textContent == month_names[index])
   {
     currentMonth.value = index;
     console.log('id: ', index);
     console.log("currentM: ", currentMonth.value);
     console.log("currentY: ", currentYear.value);
     generateCalendar(currentMonth.value, currentYear.value);
   }
 });
};

let month_select_des = document.querySelector('#month-name-des');
month_select_des.onclick = () => {
 month_names.forEach((e, index) => {
   if (month_select_des.textContent == month_names[index])
   {
     currentMonth.value = index;
     console.log('id: ', index);
     console.log("currentM: ", currentMonth.value);
     console.log("currentY: ", currentYear.value);
     generateCalendar(currentMonth.value, currentYear.value);
   }
 });
};
  /*let month_list = calendar.querySelector('.month-list');
  month_names.forEach((e, index) => {
    let month = document.createElement('div');
    month.innerHTML = `<div>${e}</div>`;
  
    month_list.append(month);
    month.onclick = () => {
      currentMonth.value = index;
      generateCalendar(currentMonth.value, currentYear.value);
      month_list.classList.replace('show', 'hide');
      dayTextFormate.classList.remove('hideTime');
      dayTextFormate.classList.add('showtime');
      timeFormate.classList.remove('hideTime');
      timeFormate.classList.add('showtime');
      dateFormate.classList.remove('hideTime');
      dateFormate.classList.add('showtime');
    };
  });
  
  (function () {
    month_list.classList.add('hideonce');
  })();*/

  document.querySelector('#pre-year').onclick = () => {
    --currentYear.value;
    generateCalendar(currentMonth.value, currentYear.value);
  };
  document.querySelector('#next-year').onclick = () => {
    ++currentYear.value;
    generateCalendar(currentMonth.value, currentYear.value);
  };
  
  let currentDate = new Date();
  let currentMonth = { value: currentDate.getMonth() };
  let currentYear = { value: currentDate.getFullYear() };
  generateCalendar(currentMonth.value, currentYear.value);

  const todayShowTime = document.querySelector('.time-formate');
  const todayShowDate = document.querySelector('.date-formate');
  
  const currshowDate = new Date();
  const showCurrentDateOption = {
    year: 'numeric',
    month: 'long',
    day: 'numeric',
    weekday: 'long',
  };
  const currentDateFormate = new Intl.DateTimeFormat(
    'id',
    showCurrentDateOption
  ).format(currshowDate);
  todayShowDate.textContent = currentDateFormate;
  setInterval(() => {
    const timer = new Date();
    const option = {
      hour: 'numeric',
      minute: 'numeric',
      second: 'numeric',
    };
    const formateTimer = new Intl.DateTimeFormat('id', option).format(timer);
    let time = `${`${timer.getHours()}`.padStart(
      2,
      '0'
    )}:${`${timer.getMinutes()}`.padStart(
      2,
      '0'
    )}: ${`${timer.getSeconds()}`.padStart(2, '0')}`;
    todayShowTime.textContent = formateTimer;
  }, 1000);
  