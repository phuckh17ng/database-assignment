import React from "react";
import Patient from "../component/Patient";
import "./Edit.css";

const Edit = ({ click }) => {
	return (
		<div className="edit">
			<div className="edit-func">
				<ul>
					<li>
						<div className="search-box">
							<img
								src={require("../image/search-icon-png-5.png")}
								style={{ width: "25px" }}
								alt="vector2"
							></img>
							<input
								placeholder="Search"
								style={{ marginLeft: "-30px", border: "none", outline: "none" }}
							></input>
						</div>
					</li>
					<li>
						<img
							src={require("../image/download.png")}
							alt="sort"
							style={{ width: "60px" }}
						></img>
					</li>
					<li className="add-patient" onClick={click}>
						Add Patient
					</li>
					<li className="write-report">Write Report</li>
				</ul>
			</div>

			<div className="edit-box">
				<div className="patient-field">
					<ul>
						<li>
							<div
								style={{
									backgroundColor: "black",
									width: "17px",
									height: "17px",
									marginRight: "10px",
									borderRadius: "30px",
								}}
							></div>
							Id
						</li>
						<li>
							<div
								style={{
									backgroundColor: "#14C38E",
									width: "17px",
									height: "17px",
									marginRight: "10px",
									borderRadius: "30px",
								}}
							></div>
							Name
						</li>
						<li>
							<div
								style={{
									backgroundColor: "#F7A4A4",
									width: "17px",
									height: "17px",
									marginRight: "10px",
									borderRadius: "30px",
								}}
							></div>
							Sex
						</li>
						<li>
							<div
								style={{
									backgroundColor: "#153462",
									width: "17px",
									height: "17px",
									marginRight: "10px",
									borderRadius: "30px",
								}}
							></div>
							Phone
						</li>
						<li>
							<div
								style={{
									backgroundColor: "#562B08",
									width: "17px",
									height: "17px",
									marginRight: "10px",
									borderRadius: "30px",
								}}
							></div>
							Address
						</li>
						<li>
							<div
								style={{
									backgroundColor: "#54BAB9",
									width: "17px",
									height: "17px",
									marginRight: "10px",
									borderRadius: "30px",
								}}
							></div>
							Type
						</li>
					</ul>
				</div>
				<div className="patient-container">
					<div style={{ height: "475px", overflow: "auto" }}>
						<Patient />
						<Patient />
						<Patient />
						<Patient />
						<Patient />
						<Patient />
						<Patient />
						<Patient />
						<Patient />
						<Patient />
						<Patient />
						<Patient />
						<Patient />
						<Patient />
						<Patient />
						<Patient />
						<Patient />
						<Patient />
					</div>
				</div>
			</div>
		</div>
	);
};

export default Edit;
