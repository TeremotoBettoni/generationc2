import Header from './components/header';
import Aside from './components/aside';
import Main from './components/main';
import './App.css';

function App() {
  return (
    <div className="App">
      <Header name="Teresa" apellido="Bettoni"/>
      <Aside />
      <Main titulo="mis cards" prueba="hola mundo"/>
    </div>
  );
}


export default App;
