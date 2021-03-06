<?php

class Login extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('model_login');
	}

	function index(){
		$this->load->view('view_login');
	}

	function proses_login(){
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$where = array(
			'username' => $username,
			'password' => md5($password)
		);
		$cek = $this->model_login->cek_login("pegawai",$where)->num_rows();
		if($cek > 0){
			$data_session = array(
				'nama' => $username,
				'status' => "login"
			);
			$this->session->set_userdata($data_session);
			redirect(base_url("pegawai"));
		}else{
			echo "<script>
					alert('Username / Password Salah ! ');
					window.location='".base_url('login')."';
				</script>";


		}
	}

	function logout(){
		$this->session->sess_destroy();
		redirect(base_url('login'));
	}
}