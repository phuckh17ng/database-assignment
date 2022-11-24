import React from "react";
import { Outlet } from "react-router";
import EditNav from "./EditNav";
import NavBar from "./Navbar";

// eslint-disable-next-line import/no-anonymous-default-export
export default ({ loginStatus }) => {
	return (
		<>
			<NavBar />
			<Outlet />
		</>
	);
};
