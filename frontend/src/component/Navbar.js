import "bootstrap/dist/css/bootstrap.min.css";
import React, { useState } from "react";
import "./Navbar.css";

const Navbar = () => {
	const user = sessionStorage.getItem("username");
	let loginStatus = true;
	return (
		<nav className="navbar navbar-expand-lg bg-light border-bottom">
			<div className="container-fluid">
				<div className="fw-semibold">
					<a className="navbar-brand" href="/">
						Hospital Database
					</a>
				</div>

				<button
					className="navbar-toggler"
					type="button"
					data-bs-toggle="collapse"
					data-bs-target="#navbarNav"
					aria-controls="navbarNav"
					aria-expanded="false"
					aria-label="Toggle navigation"
				>
					<span className="navbar-toggler-icon"></span>
				</button>
				<div
					className="collapse navbar-collapse justify-content-end"
					id="navbarNav"
				>
					{!user ? (
						<>
							<ul className="navbar-nav">
								<li className="nav-item ms-2">
									<a className="nav-link active" aria-current="page" href="/">
										Home
									</a>
								</li>
								<li className="nav-item ms-2">
									<a className="nav-link active" href="/login">
										Sign in
									</a>
								</li>
							</ul>
						</>
					) : (
						<ul className="navbar-nav edit-nav">
							<li className="nav-item ms-2">
								<a className="nav-link active" aria-current="page" href="/">
									Home
								</a>
							</li>
							<li className="nav-item ms-2">
								<a className="nav-link active" href="/edit">
									Edit
								</a>
							</li>
							<li className="nav-item ms-2">
								<a
									className="nav-link active"
									onClick={() => sessionStorage.clear()}
									href="/"
								>
									Sign out
								</a>
							</li>
						</ul>
					)}
				</div>
			</div>
		</nav>
	);
};

export default Navbar;
