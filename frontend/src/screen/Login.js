import { useForm } from "@mantine/form";
import axios from "axios";
import React, { useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import "./Login.css";

const Login = ({ loginStatus }) => {
	const [failed, setFailed] = useState(false);
	const navigate = useNavigate();
	const form = useForm({
		initialValues: {
			username: "",
			password: "",
		},

		validate: {
			username: (value) =>
				value.length === 0 ? "Vui lòng nhập tên đăng nhập" : null,
			password: (value) =>
				value.length === 0 ? "Vui lòng nhập mật khẩu" : null,
		},
	});

	const handleLogin = (values) => {
		console.log(values);
		axios
			.post(
				"http://localhost/controllers/account/login.php",
				JSON.stringify(values)
			)
			.then((response) => {
				if (response.data) {
					console.log("login successfull");
					sessionStorage.setItem("username", response.data.usename);
					sessionStorage.setItem("password", response.data.password);
					sessionStorage.setItem("email", response.data.email);
					sessionStorage.setItem("role", response.data.role);
					sessionStorage.setItem("id", response.data.id);
					if (response.data.role === "doctor") {
						navigate("/edit");
						loginStatus = true;
					} else {
						navigate("/login");
						loginStatus = false;
					}
				} else {
					console.log("login failed");
					setFailed(true);
				}
			})
			.catch((error) => {
				console.log(error);
			});
	};

	return (
		<div className="login">
			<Link to="/" className=" pointer-event">
				<img
					href="/"
					src={require("../image/Vector.png")}
					alt="back"
					className="btn-back"
				></img>
			</Link>

			<form
				className=" border p-3 w-25"
				novalidate
				style={{ borderRadius: "10px" }}
				onSubmit={form.onSubmit((values) => handleLogin(values))}
			>
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

				<div class="mb-3 form-floating mt-3">
					<input
						type="email"
						class="form-control"
						id="floatingInput"
						placeholder="name@example.com"
						{...form.getInputProps("username")}
					/>
					<label for="floatingInput">Email</label>
				</div>

				<div class="mb-3 form-floating">
					<input
						type="password"
						class="form-control"
						id="floatingPassword"
						placeholder="Password"
						{...form.getInputProps("password")}
					/>
					<label for="floatingPassword">Password</label>
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
						opened={failed}
						onClose={() => setFailed(false)}
					>
						Login
					</button>
				</div>
			</form>
		</div>
	);
};

export default Login;
