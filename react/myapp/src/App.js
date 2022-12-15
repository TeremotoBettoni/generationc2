import Header from './components/header';
import Ejemplo from './components/ejemplo'
import Ejemplo2 from './components/ejemplo2'
import './App.css';

function App() {
  return (
    <div className="App">
      <Header name="Teresa" apellido="Bettoni"/>
      <Ejemplo />
      <Ejemplo />
      <Ejemplo2 />
    </div>
  );
}


export default App;
