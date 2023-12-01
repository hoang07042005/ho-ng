import React from 'react';
import './App.css';

const students = [
  {
    id: 2410,
    name: 'đỗ việt hoàng',
    image: 'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/avatars/f7/f7a662239e8a325a4a801fb13152767128ecab72_full.jpg',
    email: 'dovietthoang@gmail.com',
  },
  {
    id: 2201,
    name: 'QuangAnh',
    image: 'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/avatars/e5/e5fe7a0bb7d8aaccf08ba5c367a034b171d09d0c_full.jpg',
    email: 'quângnh@gmail.com',
  },
  // Add more students as needed
];

const Student = ({ id, name, image, email }) => (
  <div className="student">
    <img src={image} alt={name} />
    <div>
      <h2>{name}</h2>
      <p>ID: {id}</p>
      <p>Email: {email}</p>
    </div>
  </div>
);

function App() {
  return (
    <div className="App">
      <h1>Student List</h1>
      {students.map(student => (
        <Student key={student.id} {...student} />
      ))}
    </div>
  );
}

export default App;