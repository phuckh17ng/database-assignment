import React, { useState } from "react";
import "./InPatient.css";

const InPatient = () => {
	const [readOnly, setReadOnly] = useState(true);
	return (
		<div className="ms-4 w-100">
			<h4 className="ms-3 mt-5 mb-4">Edit</h4>
			<form
				className="ms-3 me-3"
				style={{ width: "95%" }}
				onSubmit="return false"
			>
				<div className="d-flex w-100">
					<div className="d-flex">
						<div class="mb-3 me-4">
							<label class="form-label">Date of Admission</label>
							<input
								type="date"
								name=""
								id="birthday"
								class="form-control date-form"
								readOnly={readOnly}
							/>
						</div>
						<div class="mb-3 me-4">
							<label class="form-label">Date of Discharge</label>
							<input
								type="date"
								name=""
								id="birthday"
								class="form-control"
								readOnly={readOnly}
							/>
						</div>
						<div class="mb-3 w-25 me-4">
							<label class="form-label">Sick Room</label>
							<input
								type="text"
								class="form-control w-75"
								readOnly={readOnly}
							/>
						</div>
					</div>
					<div className="d-flex me-3">
						<div class="mb-3 me-4 d-flex align-items-end">
							<span className="fw-bold">Treatment: </span>
							<span className="fw-bold">1</span>
						</div>
						<div class="mb-3 me-4">
							<label class="form-label">Start Date</label>
							<input
								type="date"
								name=""
								id="birthday"
								class="form-control"
								readOnly={readOnly}
							/>
						</div>
						<div class="mb-3 me-4">
							<label class="form-label">End Date</label>
							<input
								type="date"
								name=""
								id="birthday"
								class="form-control"
								readOnly={readOnly}
							/>
						</div>
						<div class="mt-3 me-4 d-flex align-items-center">
							<img
								src={require("../image/Group 312.png")}
								alt="edit-btn"
								style={{ width: "30px" }}
							></img>
						</div>
					</div>
				</div>
				<div className="d-flex mt-2" style={{ width: "94%" }}>
					<div class="mb-3 w-25 me-4 w-50">
						<label class="form-label">Treating Doctors</label>
						<textarea type="text" class="form-control" readOnly={readOnly} />
					</div>
					<div class="mb-3 w-25 me-4 w-50 me-3">
						<label class="form-label">Caring Nurses</label>
						<textarea type="text" class="form-control" readOnly={readOnly} />
					</div>
				</div>
				<div className="d-flex mt-2 " style={{ width: "94%" }}>
					<div class="mb-3 w-100 me-4">
						<label class="form-label">Diagnosis</label>
						<textarea type="text" class="form-control" readOnly={readOnly} />
					</div>
				</div>
				<div className="d-flex mt-2" style={{ width: "97%" }}>
					<div class="mb-3 w-100 me-4">
						<label class="form-label">Medication</label>
						<textarea type="text" class="form-control" readOnly={readOnly} />
					</div>
					<div className="d-flex align-items-center mt-4">
						<img
							src={require("../image/Group 310.png")}
							alt="medication-bill"
							style={{ width: "30px" }}
						></img>
					</div>
				</div>
				<div className="w-100 mt-3">
					<button
						className="btn-submit"
						type="button"
						onClick={() => setReadOnly(!readOnly)}
					>
						Submit
					</button>
				</div>
			</form>
		</div>
	);
};

export default InPatient;
