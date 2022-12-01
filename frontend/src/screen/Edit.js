import { useForm } from "@mantine/form";
import axios from "axios";
import React, { useState } from "react";
import Patient from "../component/Patient";
import "./Edit.css";

const Edit = () => {
	const [data, setData] = useState([]);
	const [addPatient, setAddPatient] = useState(false);
	React.useEffect(() => {
		axios
			.get("http://localhost/controllers/patient/getAllPatient.php")
			.then((response) => {
				console.log(response);
				setData(response.data);
				console.log({ data });
			})
			.catch((error) => {
				console.log(error);
			});
	}, []);

	const form = useForm({
		initialValues: {
			search: "",
			first_name: "",
			last_name: "",
			date_of_birth: "",
			gender: "Male",
			address: "",
			phone_number: "",
			patient_type: "Inpatient",
			note: "",
			admit_date: "",
		},
	});

	function AddPatient(values) {
		const data = {
			first_name: values.first_name,
			last_name: values.last_name,
			date_of_birth: values.date_of_birth,
			gender: values.gender,
			address: values.address,
			phone_number: values.phone_number,
			patient_type: values.patient_type,
			note: values.note,
			admit_date: values.admit_date,
		};

		console.log(JSON.stringify(data));
		axios
			.post(
				"http://localhost/controllers/patient/addPatient.php",
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

	const handleSearch = (values) => {
		axios
			.get(
				`http://localhost/controllers/patient/searchPatient.php?search=${values.search}`
			)
			.then((response) => {
				console.log(response);
				setData(response.data);
			})
			.catch((error) => {
				console.log(error);
			});
	};

	return (
		<div className="edit">
			<div className="edit-func">
				<ul>
					<li>
						<form
							className="search-box"
							onSubmit={form.onSubmit((values) => handleSearch(values))}
						>
							<img
								src={require("../image/search-icon-png-5.png")}
								style={{ width: "25px" }}
								alt="vector2"
							></img>
							<input
								placeholder="Search"
								style={{ marginLeft: "-30px", border: "none", outline: "none" }}
								{...form.getInputProps("search")}
							></input>
						</form>
					</li>
					<li>
						<img
							src={require("../image/download.png")}
							alt="sort"
							style={{ width: "60px" }}
						></img>
					</li>
					<li
						className="add-patient"
						// onClick={() => setAddPatient(!addPatient)}
						data-bs-toggle="modal"
						data-bs-target="#staticBackdrop1"
					>
						Add Patient
					</li>
					<li className="write-report">Write Report</li>
				</ul>
			</div>

			<div
				class="modal fade"
				id="staticBackdrop1"
				data-bs-backdrop="static"
				data-bs-keyboard="false"
				tabIndex="-1"
				aria-labelledby="staticBackdropLabel1"
				aria-hidden="true"
			>
				<div class="modal-dialog modal-dialog-scrollable">
					<div class="modal-content" style={{ borderRadius: "20px" }}>
						<div class="modal-header">
							<h1 class="modal-title fs-5" id="staticBackdropLabel1">
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
								className="addPatient-form"
								style={{ marginLeft: "0", paddingRight: "0" }}
								onSubmit={form.onSubmit((values) => AddPatient(values))}
							>
								<div className="d-flex w-100 justify-content-between">
									<div class="mb-3 me-2" style={{ width: "55%" }}>
										<label class="form-label">First Name</label>
										<input
											type="text"
											class="form-control"
											{...form.getInputProps("first_name")}
										/>
									</div>
									<div class="mb-3 me-2 w-25" style={{ width: "25%" }}>
										<label class="form-label">Last Name</label>
										<input
											type="text"
											class="form-control"
											{...form.getInputProps("last_name")}
										/>
									</div>

									<div class="mb-3" style={{ width: "25%" }}>
										<label for="disabledSelect" class="form-label">
											Sex
										</label>
										<select
											id="disabledSelect"
											class="form-select w-100"
											{...form.getInputProps("gender")}
										>
											<option>Male</option>
											<option>Female</option>
											<option>Others</option>
										</select>
									</div>
								</div>

								<div className="d-flex w-100">
									<div class="mb-3 me-2">
										<label class="form-label">Date of Birth</label>
										<input
											type="date"
											name=""
											id="birthday"
											class="form-control"
											{...form.getInputProps("date_of_birth")}
										/>
									</div>
									<div class="mb-3 w-75">
										<label class="form-label">Phone Number</label>
										<input
											type="text"
											class="form-control"
											{...form.getInputProps("phone_number")}
										/>
									</div>
								</div>
								<div class="w-100 mb-3">
									<label class="form-label">Address</label>
									<input
										type="text"
										class="form-control w-100"
										{...form.getInputProps("address")}
									/>
								</div>

								<div className="w-100 mb-3 d-flex">
									<div class="mb-3 me-2 w-75">
										<label for="disabledSelect" class="form-label">
											Type
										</label>
										<select
											id="disabledSelect"
											class="form-select"
											{...form.getInputProps("patient_type")}
										>
											<option>Inpatient</option>
											<option>Outpatient</option>
										</select>
									</div>
									<div class="mb-3">
										<label class="form-label">Admitted Day</label>
										<input
											type="date"
											name=""
											class="form-control"
											{...form.getInputProps("admit_date")}
										/>
									</div>
								</div>
								<div className="d-flex w-100">
									<div class="mb-3 w-100">
										<label class="form-label">Note</label>
										<textarea
											type="text"
											class="form-control h-75"
											{...form.getInputProps("note")}
										/>
									</div>
								</div>

								<div class="w-100 mt-4 d-flex align-items-end justify-content-end">
									<button
										type="submit"
										className="btn-submit btn btn-primary"
										style={{ borderRadius: "30px" }}
										onClick={() => window.location.reload()}
									>
										Submit
									</button>
								</div>
							</form>
						</div>
						{/* <div class="modal-footer">
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
								</div> */}
					</div>
				</div>
			</div>

			<div className="edit-box">
				<div className="patient-field">
					<ul>
						<li style={{ width: "7%", marginLeft: "15px" }}>
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
						<li style={{ width: "26%", paddingLeft: "0" }}>
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
						<li style={{ width: "8%", paddingLeft: "0" }}>
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
						<li style={{ width: "15%" }}>
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
						<li style={{ width: "35%" }}>
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
						<li style={{ width: "9%", paddingLeft: "25px" }}>
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
						{data.map((patient) => (
							<Patient
								key={patient.P_code}
								P_code={patient.P_code}
								first_name={patient.first_name}
								last_name={patient.last_name}
								date_of_birth={patient.date_of_birth}
								gender={patient.gender}
								address={patient.address}
								phone_number={patient.phone_number}
								patient_type={patient.patient_type}
								note={patient.note}
								admit_date={patient.admit_date}
							/>
						))}
					</div>
				</div>
			</div>
		</div>
	);
};

export default Edit;
