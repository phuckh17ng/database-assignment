import React from "react";
import "./AddPatient.css";

const AddPatient = ({ show, click }) => {
	const addPatientClass = ["addPatient"];

	if (show) {
		addPatientClass.push("show");
	}
	return (
		<div className={addPatientClass.join(" ")}>
			<div className="addPatient-box" onClick={click}>
				<h4
					style={{
						marginLeft: "30px",
						marginTop: "55px",
						marginBottom: "45px",
						width: "95%",
					}}
				>
					Add Patient
				</h4>
				<form className="addPatient-form p-3 d-flex flex-column align-items-end">
					<div className="d-flex w-100">
						<div class="mb-3 w-25 me-4">
							<label class="form-label">First Name</label>
							<input type="text" class="form-control" />
						</div>
						<div class="mb-3 w-25 me-4">
							<label class="form-label">Last Name</label>
							<input type="text" class="form-control" />
						</div>

						<div class="mb-3 me-4">
							<label for="disabledSelect" class="form-label">
								Sex
							</label>
							<select id="disabledSelect" class="form-select">
								<option>Male</option>
								<option>Female</option>
								<option>Others</option>
							</select>
						</div>
						<div class="mb-3 me-4">
							<label class="form-label">Date of Birth</label>
							<input type="date" name="" id="birthday" class="form-control" />
						</div>
					</div>
					<div className="d-flex w-100">
						<div class="mb-3 w-25 me-4">
							<label class="form-label">Phone Number</label>
							<input type="text" class="form-control" />
						</div>
						<div class="mb-3 w-50 me-4">
							<label class="form-label">Address</label>
							<input type="text" class="form-control" />
						</div>
						<div class="mb-3 me-4">
							<label for="disabledSelect" class="form-label">
								Type
							</label>
							<select id="disabledSelect" class="form-select">
								<option>Inpatient</option>
								<option>Outpatient</option>
							</select>
						</div>
					</div>
					<div className="d-flex w-100">
						<div class="mb-3 w-25 me-4">
							<label class="form-label">Admitted Day</label>
							<input type="date" name="" id="birthday" class="form-control" />
						</div>
					</div>
					<div class="w-100 mb-4 d-flex align-items-end">
						<div class="mb-3 w-25 me-4 w-100">
							<label class="form-label">Note</label>
							<textarea type="text" class="form-control h-100 w-50" />
						</div>

						<button className="btn-submit">Submit</button>
					</div>
				</form>
			</div>
		</div>
	);
};

export default AddPatient;
