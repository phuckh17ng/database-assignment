import React, { useState } from "react";
import "./InPatient.css";

const InPatient = () => {
	const [readOnly, setReadOnly] = useState(true);
	return (
		// <div className="ms-4 w-100" style={{ height: "600px" }}>
		// 	<h4 className="ms-3 mt-5 mb-4">Edit</h4>
		// 	<form
		// 		className="ms-3 me-3"
		// 		style={{ width: "95%" }}
		// 		onSubmit="return false"
		// 	>
		// 		<div className="d-flex w-100">
		// 			<div className="d-flex">
		// 				<div class="mb-3 me-4">
		// 					<label class="form-label">Date of Admission</label>
		// 					<input
		// 						type="date"
		// 						name=""
		// 						id="birthday"
		// 						class="form-control date-form"
		// 						readOnly={readOnly}
		// 					/>
		// 				</div>
		// 				<div class="mb-3 me-4">
		// 					<label class="form-label">Date of Discharge</label>
		// 					<input
		// 						type="date"
		// 						name=""
		// 						id="birthday"
		// 						class="form-control"
		// 						readOnly={readOnly}
		// 					/>
		// 				</div>
		// 				<div class="mb-3 w-25 me-4">
		// 					<label class="form-label">Sick Room</label>
		// 					<input
		// 						type="text"
		// 						class="form-control w-75"
		// 						readOnly={readOnly}
		// 					/>
		// 				</div>
		// 			</div>
		// 		</div>
		// 		<div className="d-flex me-3">
		// 			<div class="mb-3 me-4">
		// 				<label class="form-label">Start Date</label>
		// 				<input
		// 					type="date"
		// 					name=""
		// 					id="birthday"
		// 					class="form-control"
		// 					readOnly={readOnly}
		// 				/>
		// 			</div>
		// 			<div class="mb-3 me-4">
		// 				<label class="form-label">End Date</label>
		// 				<input
		// 					type="date"
		// 					name=""
		// 					id="birthday"
		// 					class="form-control"
		// 					readOnly={readOnly}
		// 				/>
		// 			</div>
		// 			<div class="mb-3 w-25 me-4">
		// 				<label class="form-label">Treatment N/O</label>
		// 				<input type="text" class="form-control w-75" readOnly={readOnly} />
		// 			</div>
		// 		</div>
		// 		<div class="me-4 d-flex">
		// 			<div class="w-50 me-4">
		// 				<label class="form-label">Treating Doctors</label>
		// 				<textarea
		// 					type="text"
		// 					class="form-control h-25"
		// 					readOnly={readOnly}
		// 				/>
		// 			</div>
		// 			<div class="w-50 me-4">
		// 				<label class="form-label">Caring Nurses</label>
		// 				<textarea
		// 					type="text"
		// 					class="form-control h-25"
		// 					readOnly={readOnly}
		// 				/>
		// 			</div>
		// 		</div>
		// 		<div class="me-4 d-flex">
		// 			<div class="w-100 me-4">
		// 				<label class="form-label">Diagnosis</label>
		// 				<textarea
		// 					type="text"
		// 					class="form-control h-25"
		// 					readOnly={readOnly}
		// 				/>
		// 			</div>
		// 		</div>
		// 		<div class="me-4 d-flex">
		// 			<div class="w-100 me-4">
		// 				<label class="form-label">Medication</label>
		// 				<textarea
		// 					type="text"
		// 					class="form-control h-50"
		// 					readOnly={readOnly}
		// 				/>
		// 			</div>
		// 		</div>
		// 		<div className="w-100 mt-3 d-flex justify-content-between">
		// 			<button
		// 				className="btn btn-secondary btn-submit"
		// 				style={{ borderRadius: "30px" }}
		// 				type="button"
		// 				onClick={() => setReadOnly(!readOnly)}
		// 			>
		// 				Edit
		// 			</button>
		// 			<button
		// 				className="btn-submit btn btn-primary me-5"
		// 				style={{ borderRadius: "30px" }}
		// 				type="submit"
		// 				onClick={() => setReadOnly(true)}
		// 			>
		// 				Save
		// 			</button>
		// 		</div>
		// 	</form>
		// </div>
		<div
			class="modal fade"
			id="staticBackdrop"
			data-bs-backdrop="static"
			data-bs-keyboard="false"
			tabindex="-1"
			aria-labelledby="staticBackdropLabel"
			aria-hidden="true"
		>
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title fs-5" id="staticBackdropLabel">
							Modal title
						</h1>
						<button
							type="button"
							class="btn-close"
							data-bs-dismiss="modal"
							aria-label="Close"
						></button>
					</div>
					<div class="modal-body">...</div>
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
	);
};

export default InPatient;
