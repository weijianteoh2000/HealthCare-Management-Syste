let table = document.createElement('table');
// Adding the entire table to the body tag
document.getElementById('myTable').appendChild(table);

// Creating and adding data to first row of the table
let row_1 = document.createElement('tr');
let heading_1 = document.createElement('th');
heading_1.innerHTML = "No.";
let heading_2 = document.createElement('th');
heading_2.innerHTML = "Id";
let heading_3 = document.createElement('th');
heading_3.innerHTML = "Company Name";
let heading_4 = document.createElement('th');
heading_4.innerHTML = "Goods";
let heading_5 = document.createElement('th');
heading_5.innerHTML = "Action";

row_1.appendChild(heading_1);
row_1.appendChild(heading_2);
row_1.appendChild(heading_3);
row_1.appendChild(heading_4);
row_1.appendChild(heading_5);
table.appendChild(row_1);
//set default data
let myArray= [
    {supplier_id:'SP01',name:'Hoe Pharmaceuticals Sdn Bhd.',goods:'panadol'},
    {supplier_id:'SP02',name:'Noripharma Sdn Bhd.',goods:'panadol'},
];

//creating data
for (let i = 0; i < myArray.length; i++){
    let row = document.createElement('tr');
    data1= document.createElement('td');
    data1.innerHTML = i+1;
    row.appendChild(data1);
    data2=  document.createElement('td');
    data2.innerHTML = myArray[i].supplier_id;
    row.appendChild(data2);
    data3= document.createElement('td');
    data3.innerHTML = myArray[i].name;
    row.appendChild(data3);
    data4= document.createElement('td');
    data4.innerHTML = myArray[i].goods;
    row.appendChild(data4);
    data5= document.createElement('td');
    row_button_link = document.createElement('a');
    row_button_link.setAttribute("href","UpdateStock.jsp");
    row_button = document.createElement('button');
    row_button.setAttribute("class","modifyButton");
    row_button_link.setAttribute("class","fas fa-edit");
    row_button.appendChild(row_button_link)
    data5.appendChild(row_button);
    row.appendChild(data5);
    data6= document.createElement('td');
    row_button_link = document.createElement('a');
    row_button_link.setAttribute("onClick","deleteRow(this)");
    row_button = document.createElement('button');
    row_button.setAttribute("class","modifyButton");
    row_button_link.setAttribute("class","fas fa-trash-alt");
    row_button.appendChild(row_button_link);
    data6.appendChild(row_button);
    row.appendChild(data6);
    table.appendChild(row);
}

