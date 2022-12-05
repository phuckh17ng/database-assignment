import { useForm } from "@mantine/form";
import axios from "axios";
import React, { useEffect, useMemo, useState } from "react";
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
	const { setValue } = useForm();
	// const [toggle, setToggle] = useState(false);

	// const [dataPatient, setDataPatient] = React.useState([]);

	var patient_id;
	// var data = [];

	// for (var i = 0; i < 6; ) {
	// 	data[i] = P_code;
	// }
	// i++;
	// console.log(data);

	function remove() {
		if (window.confirm(`Bạn muốn xóa ${first_name} ${last_name}?`)) {
			console.log(first_name, last_name);
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

	// function getPatientById() {
	// 	axios
	// 		.get(
	// 			`http://localhost/controllers/patient/getPatientById.php?index=${P_code}`
	// 		)
	// 		.then((response) => {
	// 			console.log(response);
	// 			patient_id = response.data[0].P_code;
	// 			console.log(patient_id);
	// 		})
	// 		.catch((error) => {
	// 			console.log(error);
	// 		});
	// }

	// React.useEffect(() => {
	// 	axios
	// 		.get(
	// 			`http://localhost/controllers/patient/getPatientById.php?index=${P_code}`
	// 		)
	// 		.then((response) => {
	// 			console.log(response);
	// 			setData(response.data);
	// 		})
	// 		.catch((error) => {
	// 			console.log(error);
	// 		});
	// }, []);

	function AddInpatientInfo(values) {
		const data = {
			date_of_admission: values.date_of_admission,
			date_of_discharge: values.date_of_discharge,
			date_start_treatment: values.date_start_treatment,
			date_end_treatment: values.date_end_treatment,
			sickroom: values.sickroom,
			treatment_NO: values.treatment_NO,
			diagnosis: values.diagnosis,
			patient_id: form.values.patient_id,
		};
		console.log(data.patient_id);

		console.log(JSON.stringify(data));
		axios
			.post(
				"http://localhost/controllers/patient/inpatient/addInpatientInfo.php",
				JSON.stringify(data)
			)
			.then((response) => {
				console.log(response);
				// param.setRender(!param.render);
			})
			.catch((error) => {
				console.log(error);
			});
	}

	const form = useForm({
		initialValues: {
			date_of_admission: "",
			date_of_discharge: "",
			date_start_treatment: "",
			date_end_treatment: "",
			sickroom: "",
			treatment_NO: "",
			diagnosis: "",
			patient_id: "",
		},
	});

	return (
		<div className="patient">
			<div className="patient-list">
				<ul>
					<li style={{ color: "black", width: "5%" }}>{P_code}</li>
					<li style={{ color: "#14C38E", width: "25%" }}>
						{first_name} {last_name}
					</li>
					<li style={{ color: "#F7A4A4", width: "8%" }}>{gender}</li>
					<li style={{ color: "#153462", width: "15%" }}>{phone_number}</li>
					<li style={{ color: "#562B08", width: "35%" }}>{address}</li>
					<li style={{ color: "#54BAB9", width: "8%" }}>{patient_type}</li>
				</ul>
				<div>
					<img
						src={require("../image/Group 133.png")}
						style={{ width: "20px", cursor: "pointer" }}
						alt="select"
						onClick={() => {
							console.log(P_code);
							patient_id = P_code;
							console.log(form.values);
						}}
						data-bs-toggle="modal"
						data-bs-target="#staticBackdrop"
					></img>

					<img
						src={require("../image/Group 27.png")}
						style={{ width: "20px", marginLeft: "17px", cursor: "pointer" }}
						alt="remove"
						onClick={() => {
							remove();
							window.location.reload();
						}}
					></img>
				</div>
			</div>

			<div
				class="modal fade"
				id="staticBackdrop"
				data-bs-backdrop="static"
				data-bs-keyboard="false"
				tabIndex="-1"
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
							<form
								className=""
								onSubmit={form.onSubmit((values) => {
									AddInpatientInfo(values);
									// var data = JSON.stringify(getPatientById());
									// values.patient_id = P_code;
									// console.log(values.patient_id);
									// console.log(data);
									// patient_id = JSON.parse(JSON.parse(data.P_code));
									console.log(form.values.patient_id);
								})}
							>
								<input
									type="text"
									class="form-control d-none"
									// readOnly={readOnly}
								/>
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
												{...form.getInputProps("date_of_admission")}
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
												{...form.getInputProps("date_of_discharge")}
											/>
										</div>
										<div class="me-2">
											<label class="form-label">Sick Room</label>
											<input
												type="text"
												class="form-control"
												// readOnly={readOnly}
												{...form.getInputProps("sickroom")}
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
											{...form.getInputProps("date_start_treatment")}
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
											{...form.getInputProps("date_end_treatment")}
										/>
									</div>
									<div class="me-2">
										<label class="form-label">Treatment</label>
										<input
											type="text"
											class="form-control"
											// readOnly={readOnly}
											{...form.getInputProps("treatment_NO")}
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
											{...form.getInputProps("diagnosis")}
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

								<div>
									<button
										type="submit"
										class="btn btn-primary"
										onClick={() => {
											console.log(form.values.patient_id);
											form.setFieldValue("patient_id", P_code);
											console.log(patient_id);
										}}
									>
										Submit
									</button>
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
						</div>
					</div>
				</div>
			</div>
		</div>
	);
};

export default Patient;
