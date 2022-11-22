import React, { useState } from "react";
import InPatient from "./InPatient";
import "./Patient.css";

const Patient = ({ click }) => {
	const [toggle, setToggle] = useState(false);
	return (
		<div className="patient">
			<div className="patient-list">
				<ul>
					<li style={{ color: "black" }}>1913693</li>
					<li style={{ color: "#14C38E" }}>Lê Mậu Phúc Khang</li>
					<li style={{ color: "#F7A4A4" }}>Nam</li>
					<li style={{ color: "#153462" }}>0983690399</li>
					<li style={{ color: "#562B08" }}>Quận 9 - Tp HCM</li>
					<li style={{ color: "#54BAB9" }}>Inpatient</li>
				</ul>
				<div>
					<img
						src={require("../image/Group 133.png")}
						style={{ width: "20px", cursor: "pointer" }}
						alt="select"
						onClick={() => setToggle(!toggle)}
					></img>
					<img
						src={require("../image/Group 27.png")}
						style={{ width: "20px", marginLeft: "17px" }}
						alt="remove"
					></img>
				</div>
			</div>
			<div className={toggle ? "edit-patient" : "none"}>
				<div className="side-backdrop" onClick={() => setToggle(false)} />
				<div className="edit-patient-container"><InPatient/></div>
				<div className="side-backdrop" onClick={() => setToggle(false)} />
			</div>
		</div>
	);
};

export default Patient;
