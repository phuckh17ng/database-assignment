import { useForm } from "@mantine/form";
import axios from "axios";
import React from "react";
import "./AddPatient.css";

const AddPatient = ({ show, click }) => {
	const form = useForm({
		initialValues: {
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
	console.log(click);
	console.log(show);

	return (
		// <div className={addPatientClass.join(" ")}>
		// 	<div className="addPatient-box" onClick={click}>
		// 		<h4
		// 			style={{
		// 				marginLeft: "50px",
		// 				marginTop: "35px",
		// 				marginBottom: "15px",
		// 				width: "95%",
		// 			}}
		// 		>
		// 			Add Patient
		// 		</h4>
		// 		<form
		// 			className="ms-3 addPatient-form p-3 d-flex flex-column align-items-end"
		// 			onSubmit={form.onSubmit((values) => AddPatient(values))}
		// 		>
		// 			<div className="d-flex w-100">
		// 				<div class="mb-3 w-25 me-4">
		// 					<label class="form-label">First Name</label>
		// 					<input
		// 						type="text"
		// 						class="form-control"
		// 						{...form.getInputProps("first_name")}
		// 					/>
		// 				</div>
		// 				<div class="mb-3 w-25 me-4">
		// 					<label class="form-label">Last Name</label>
		// 					<input
		// 						type="text"
		// 						class="form-control"
		// 						{...form.getInputProps("last_name")}
		// 					/>
		// 				</div>

		// 				<div class="mb-3 me-4">
		// 					<label for="disabledSelect" class="form-label">
		// 						Sex
		// 					</label>
		// 					<select
		// 						id="disabledSelect"
		// 						class="form-select"
		// 						{...form.getInputProps("gender")}
		// 					>
		// 						<option>Male</option>
		// 						<option>Female</option>
		// 						<option>Others</option>
		// 					</select>
		// 				</div>
		// 				<div class="mb-3 me-4">
		// 					<label class="form-label">Date of Birth</label>
		// 					<input
		// 						type="date"
		// 						name=""
		// 						id="birthday"
		// 						class="form-control"
		// 						{...form.getInputProps("date_of_birth")}
		// 					/>
		// 				</div>
		// 			</div>
		// 			<div className="d-flex w-100">
		// 				<div class="mb-3 w-25 me-4">
		// 					<label class="form-label">Phone Number</label>
		// 					<input
		// 						type="text"
		// 						class="form-control"
		// 						{...form.getInputProps("phone_number")}
		// 					/>
		// 				</div>
		// 				<div class="mb-3 w-25 me-4">
		// 					<label class="form-label">Address</label>
		// 					<input
		// 						type="text"
		// 						class="form-control w-100"
		// 						{...form.getInputProps("address")}
		// 					/>
		// 				</div>
		// 				<div class="mb-3 me-4">
		// 					<label for="disabledSelect" class="form-label">
		// 						Type
		// 					</label>
		// 					<select
		// 						id="disabledSelect"
		// 						class="form-select"
		// 						{...form.getInputProps("patient_type")}
		// 					>
		// 						<option>Inpatient</option>
		// 						<option>Outpatient</option>
		// 					</select>
		// 				</div>
		// 				<div class="mb-3 me-4">
		// 					<label class="form-label">Admitted Day</label>
		// 					<input
		// 						type="date"
		// 						name=""
		// 						class="form-control"
		// 						{...form.getInputProps("admit_date")}
		// 					/>
		// 				</div>
		// 			</div>
		// 			<div className="d-flex w-100">
		// 				<div class="mb-3 me-4 w-100">
		// 					<label class="form-label">Note</label>
		// 					<textarea
		// 						type="text"
		// 						class="form-control h-75"
		// 						{...form.getInputProps("note")}
		// 					/>
		// 				</div>
		// 			</div>
		// 			<div class="w-100 mt-4 d-flex align-items-end justify-content-end">
		// 				<button
		// 					type="submit"
		// 					className="btn-submit btn btn-primary"
		// 					style={{ borderRadius: "30px" }}
		// 					onClick={() => window.location.reload(false)}
		// 				>
		// 					Submit
		// 				</button>
		// 			</div>
		// 		</form>
		// 	</div>
		// </div>

		<div></div>
	);
};

export default AddPatient;
