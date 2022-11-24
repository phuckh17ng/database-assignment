import axios from "axios";
import React, { useEffect, useState } from "react";
import InPatient from "./InPatient";
import "./Patient.css";

const Patient = ({
	P_code,
	first_name,
	last_name,
	date_of_birth,
	gender,
	address,
	phone_number,
	patient_type,
	note,
	admit_date,
}) => {
	const [toggle, setToggle] = useState(false);

	const [data, setData] = React.useState([]);

	function remove() {
		if (window.confirm(`Bạn muốn xóa ${first_name} ${last_name}?`)) {
			axios
				.post(
					`http://localhost/controllers/patient/deletePatient.php?id=${P_code}`
				)
				.then((response) => {
					console.log(response);
				})
				.catch((error) => {
					console.log(error);
				});
		}
	}

	React.useEffect(() => {
		axios
			.get("http://localhost/controllers/patient/getAllPatient.php")
			.then((response) => {
				console.log(response);
				setData(response.data);
				console.log(response.data);
			})
			.catch((error) => {
				console.log(error);
			});
	}, []);

	return (
		<div className="patient">
			<div className="patient-list">
				<ul>
					<li style={{ color: "black" }}>{P_code}</li>
					<li style={{ color: "#14C38E" }}>
						{first_name} {last_name}
					</li>
					<li style={{ color: "#F7A4A4" }}>{gender}</li>
					<li style={{ color: "#153462" }}>{phone_number}</li>
					<li style={{ color: "#562B08" }}>{address}</li>
					<li style={{ color: "#54BAB9" }}>{patient_type}</li>
				</ul>
				<div>
					<img
						src={require("../image/Group 133.png")}
						style={{ width: "20px", cursor: "pointer" }}
						alt="select"
						onClick={() => setToggle(!toggle)}
						data-bs-toggle="modal"
						data-bs-target="#staticBackdrop"
					></img>
					<img
						src={require("../image/Group 27.png")}
						style={{ width: "20px", marginLeft: "17px", cursor: "pointer" }}
						alt="remove"
						onClick={() => {
							remove();
							window.location.reload(false);
						}}
					></img>
				</div>
			</div>

			<>
				{toggle ? (
					<div
						class="modal fade"
						id="staticBackdrop"
						data-bs-backdrop="static"
						data-bs-keyboard="false"
						tabindex="-1"
						aria-labelledby="staticBackdropLabel"
						aria-hidden="true"
					>
						<div class="modal-dialog modal-dialog-scrollable">
							<div class="modal-content">
								<div class="modal-header">
									<h1 class="modal-title fs-5" id="staticBackdropLabel">
										Edit
									</h1>
									<button
										type="button"
										class="btn-close"
										data-bs-dismiss="modal"
										aria-label="Close"
									></button>
								</div>
								<div class="modal-body">
									<form className="" onSubmit="return false">
										<div className="d-flex w-100 mb-3">
											<div className="d-flex">
												<div class="me-2">
													<label class="form-label">Date of Admission</label>
													<input
														type="date"
														name=""
														id="birthday"
														class="form-control date-form"
														// readOnly={readOnly}
													/>
												</div>
												<div class="me-2">
													<label class="form-label">Date of Discharge</label>
													<input
														type="date"
														name=""
														id="birthday"
														class="form-control"
														// readOnly={readOnly}
													/>
												</div>
												<div class="me-2">
													<label class="form-label">Sick Room</label>
													<input
														type="text"
														class="form-control"
														// readOnly={readOnly}
													/>
												</div>
											</div>
										</div>
										<div className="d-flex mb-3">
											<div class="me-2">
												<label class="form-label">Start Date</label>
												<input
													type="date"
													name=""
													id="birthday"
													class="form-control"
													// readOnly={readOnly}
												/>
											</div>
											<div class="me-2">
												<label class="form-label">End Date</label>
												<input
													type="date"
													name=""
													id="birthday"
													class="form-control"
													// readOnly={readOnly}
												/>
											</div>
											<div class="me-2">
												<label class="form-label">Treatment</label>
												<input
													type="text"
													class="form-control"
													// readOnly={readOnly}
												/>
											</div>
										</div>
										<div class="d-flex mb-3">
											<div class="w-100">
												<label class="form-label">Treating Doctors</label>
												<textarea
													type="text"
													class="form-control w-100"
													// readOnly={readOnly}
												/>
											</div>
										</div>
										<div class="d-flex mb-3">
											<div class="w-100">
												<label class="form-label">Caring Nurses</label>
												<textarea
													type="text"
													class="w-100 form-control"
													// readOnly={readOnly}
												/>
											</div>
										</div>
										<div class="mb-3 d-flex">
											<div class="w-100">
												<label class="form-label">Diagnosis</label>
												<textarea
													type="text"
													class="form-control w-100"
													// readOnly={readOnly}
												/>
											</div>
										</div>
										<div class="mb-3 d-flex">
											<div class="w-100">
												<label class="form-label d-flex justify-content-between">
													<span>Medication</span>
													<img
														style={{ width: "5%", marginRight: "10px" }}
														src={require("../image/Interface-file-text--text-common-file (2).png")}
														alt="img"
													></img>
												</label>
												<textarea
													type="text"
													class="form-control w-100"
													// readOnly={readOnly}
												/>
											</div>
										</div>
									</form>
								</div>
								<div class="modal-footer">
									<button
										type="button"
										class="btn btn-secondary"
										data-bs-dismiss="modal"
									>
										Close
									</button>
									<button type="button" class="btn btn-primary">
										Understood
									</button>
								</div>
							</div>
						</div>
					</div>
				) : (
					""
				)}
			</>
		</div>
	);
};

export default Patient;
