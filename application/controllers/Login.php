<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('LoginModel');
	}

	public function index()
	{
		$this->load->view('login');
	}

	public function logout()
    {
        $data = array(
            'Id_User'    => "",
            'logged_in'   => false
        );
        
        $this->session->unset_userdata('$data');
        $this->session->sess_destroy();
        redirect('login');
    }

	public function do_login()
	{
		if ($this->input->post('submit')) {
			$this->form_validation->set_rules('username', 'Username', 'trim|required');
			$this->form_validation->set_rules('password', 'Password', 'trim|required');

			if ($this->form_validation->run() == true) {
				if ($this->LoginModel->login_auth() == true && $this->session->userdata('RoleId') == 1) {
					redirect('complaint');
				} elseif ($this->LoginModel->login_auth() == true && $this->session->userdata('RoleId') == 4) {
					redirect('admin');
				}
				else{
					$this->session->set_flashdata('notif_gagal', 'Username atau Password salah!');
	                redirect('login');
				}
			} else {
				$this->session->set_flashdata('notif_gagal', validation_errors());
	            redirect('login');
			}
		} else{
			$this->session->set_flashdata('notif_gagal', validation_errors());
	            redirect('login');
		}
	}
}