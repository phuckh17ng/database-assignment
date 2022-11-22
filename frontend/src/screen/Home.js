import "bootstrap/dist/css/bootstrap.min.css";
import React from "react";
import homeBackground from "../image/hero_img.svg";
import "./Home.css";

const Home = () => {
	return (
		<div className="d-flex flex-column flex-lg-row align-items-center m-5">
			<img className="ms" src={homeBackground} alt="background"></img>
			<div className="introduce ms-4 d-flex flex-column align-items-lg-start align-items-center justify-content-center">
				<div>
					<h2 className="fs-1">Hospital Database System</h2>
					<p className="text-introduce">
						This is a Web App made for Course CO2013 by Group
					</p>
				</div>

				<button className="btn-getstart mt-5">GET STARTED</button>
			</div>
		</div>
	);
};

export default Home;
