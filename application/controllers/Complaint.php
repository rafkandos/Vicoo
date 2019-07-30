<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Complaint extends CI_Controller {

    public function __construct()
	{
		parent::__construct();
        $this->load->model('ComplaintModel');
        if ($this->session->userdata('logged_in') != true) {
            redirect('login');
        }
	}

	public function index()
	{
        $data['name'] = $this->ComplaintModel->get_name();
		$this->load->view('complaint/dashboard', $data);
    }
    
    public function go_complaint()
    {
        if ($this->input->post('add')) {
            $this->form_validation->set_rules('complaint', 'Complaint', 'trim|required');
            
            if ($this->form_validation->run() == true) {
                if ($this->ComplaintModel->send_complaint() == true) {
                    $this->session->set_flashdata('notif_sukses', 'Complaint Success');
                    redirect('complaint');
                } else {
                    $this->session->set_flashdata('notif', 'Complaint Failure');
                    redirect('complaint');
                }
            } else {
                $this->session->set_flashdata('notif', validation_errors());
                redirect('complaint');
            }
        } else {
            $this->session->set_flashdata('notif', validation_errors());
            redirect('complaint');
        }
    }

    public function t_comp()
    {
        $data['name'] = $this->ComplaintModel->get_name();
        $data['complaint'] = $this->ComplaintModel->get_complaint();
        $this->load->view('complaint/todays_comp', $data);
    }
}
