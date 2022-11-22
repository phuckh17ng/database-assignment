import React from "react";
import { Outlet } from "react-router";
import NavBar from "./Navbar";

// eslint-disable-next-line import/no-anonymous-default-export
export default () => {
	return (
		<>
			<NavBar />
			<Outlet />
		</>
	);
};
