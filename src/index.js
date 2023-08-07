const response = {
    header: [
        {
            id: "project_name",
            type: "string",
            caption: "Project name"
        },
        {
            id: "total_by_project",
            type: "float",
            caption: "Total by project"
        },
        {
            id: "project_type",
            type: "string",
            caption: "Project type",
            align: "center"
        },
        {
            id: "jan",
            type: "float",
            caption: "Jan"
        },
        {
            id: "feb",
            type: "float",
            caption: "Feb"
        },
    ],

    data: [
        [
            "Mimesis",
            1024.3,
            "commercial",
            2048.2,
            4096.0
        ],
        [
            "Mako",
            2345.1,
            "internal",
            3465.3,
            {
                d: 12.5,
                color: "selected"
            }
        ],
        [
            "Edelweiss",
            54.4,
            "commercial",
            564.8,
            4652.3
        ],
    ]
};

document.addEventListener("DOMContentLoaded", () => {
    const headerRow = document.getElementById("headerRow");
    const dataRows = document.getElementById("dataRows");

    // Функция для отображения таблицы
    const displayTable = () => {
        // Очистка таблицы перед обновлением
        headerRow.innerHTML = "";
        dataRows.innerHTML = "";

        // Генерация заголовка таблицы
        response.header.forEach((column) => {
            const th = document.createElement("th");
            th.textContent = column.caption;
            headerRow.appendChild(th);
        });

        // Генерация строк данных
        response.data.forEach((rowData) => {
            const dataRow = document.createElement("tr");
            rowData.forEach((cellData) => {
                const cell = document.createElement("td");
                if (typeof cellData === "object") {
                    cell.textContent = cellData.d;
                } else {
                    cell.textContent = cellData;
                }
                dataRow.appendChild(cell);
            });
            dataRows.appendChild(dataRow);
        });
    };

    // Первоначальное отображение таблицы
    displayTable();
});

document.addEventListener("DOMContentLoaded", () => {
    // Добавляем обработчик для кнопки
    const showPopupButton = document.getElementById("showPopupButton");
    showPopupButton.addEventListener("click", () => {
        openPopup();
    });

    // Функция для открытия всплывающего окна
    const openPopup = () => {
        const popupContent = `
<div class="popup">
<h2>Popup Window</h2>
<p>This is a popup window content.</p>
<button id="closePopupButton">Close</button>
</div>
`;
        const popupOverlay = document.createElement("div");
        popupOverlay.className = "popup-overlay";
        popupOverlay.innerHTML = popupContent;

        document.body.appendChild(popupOverlay);

        const closePopupButton = document.getElementById("closePopupButton");
        closePopupButton.addEventListener("click", () => {
            closePopup();
        });
    };

    // Функция для закрытия всплывающего окна
    const closePopup = () => {
        const popupOverlay = document.querySelector(".popup-overlay");
        popupOverlay.remove();
    };
});
