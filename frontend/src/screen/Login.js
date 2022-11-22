import React from "react";
import { useNavigate } from "react-router-dom";
import "./Login.css";

const Login = () => {
	const navigate = useNavigate();

	return (
		<div className="login">
			<img
				src={require("../image/Vector.png")}
				alt="back"
				className="btn-back"
				onClick={() => navigate(-1)}
			></img>
			<form className=" border p-3 w-25 " style={{ borderRadius: "10px" }}>
				<div className="d-flex flex-column align-items-center">
					<h4 style={{ margin: "10px 0 10px 0" }} className="login-address">
						Hospital Database
					</h4>
					<p
						style={{
							fontSize: "24px",
							fontWeight: "400",
							margin: "0 0 30px 0",
						}}
					>
						Sign in
					</p>
				</div>

				<div class="mb-3">
					<label class="form-label" for="exampleInputEmail1">
						Email
					</label>
					<input type="email" class="form-control" id="exampleInputEmail1" />
				</div>
				<div class="mb-3">
					<label class="form-label" for="exampleInputPassword1">
						Password
					</label>
					<input
						type="password"
						class="form-control"
						id="exampleInputPassword1"
					/>
				</div>
				<a href="/login" style={{ textDecoration: "none" }}>
					Forgot password?
				</a>
				<div className="d-flex mt-4 justify-content-between">
					<div class="form-check">
						<input
							type="checkbox"
							class="form-check-input"
							id="exampleCheck1"
						/>
						<label class="form-check-label" for="exampleCheck1">
							Check me out
						</label>
					</div>
					<button
						type="submit"
						class="btn btn-primary"
						style={{ width: "80px" }}
					>
						Login
					</button>
				</div>
			</form>
		</div>
	);
};

export default Login;
