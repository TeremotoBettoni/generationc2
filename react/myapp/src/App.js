import Header from './components/header';
import Ejemplo from './components/ejemplo'
import './App.css';

function App() {
  return (
    <div className="App">
      <Header name="Teresa" apellido="Bettoni"/>
      <Ejemplo />
      <Ejemplo />
      <Ejemplo />
    </div>
  );
}


export default App;
