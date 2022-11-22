import { useState } from "react";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import "./App.css";

import AddPatient from "./component/AddPatient";
import Backdrop from "./component/Backdrop";
import WithNav from "./component/WithNav";
import WithoutNav from "./component/WithoutNav";

import Patient from "./component/Patient";
import Edit from "./screen/Edit";
import Home from "./screen/Home";
import Login from "./screen/Login";

function App() {
	const [sideToggle, setSideToggle] = useState(false);
	return (
		<Router>
			<Routes>
				<Route element={<WithoutNav />}>
					<Route exact path="/login" element={<Login />} />
				</Route>
				<Route element={<WithNav />}>
					<Route
						exact
						path="/edit"
						element={<Edit click={() => setSideToggle(true)}></Edit>}
					></Route>
					<Route exact path="/" element={<Home />} />
				</Route>
			</Routes>

			<Backdrop show={sideToggle} click={() => setSideToggle(false)} />
			<AddPatient show={sideToggle} />
		</Router>
	);
}

export default App;
