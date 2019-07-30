<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('AdminModel');
		if ($this->session->userdata('logged_in') != true) {
            redirect('login');
        }  
	}

	public function get_id_comp($Id_Complaint)
    {
        $data_comp = $this->AdminModel->get_comp_id($Id_Complaint);

        echo json_encode($data_comp);
    }

	public function index()
	{
        $data['moh'] = $this->AdminModel->count_pending();
        $data['moh1'] = $this->AdminModel->count_op();
        $data['moh2'] = $this->AdminModel->count_done();
        $data['moh3'] = $this->AdminModel->count_denied();
        $data['moh_all'] = $this->AdminModel->count_all();
        $data['status'] = $this->AdminModel->get_status();
        $data['name'] = $this->AdminModel->get_name();
		$this->load->view('admin/admin', $data);
    }

    public function to_history()
    {
        $data['name'] = $this->AdminModel->get_name();
        $data['complaint'] = $this->AdminModel->get_comp();
        $this->load->view('admin/history_page', $data);
    }
    
    public function to_pending()
    {
        $data['name'] = $this->AdminModel->get_name();
        $data['complaint'] = $this->AdminModel->get_comp_pending();
        $this->load->view('admin/pending_page', $data);
    }

    public function to_op()
    {
        $data['name'] = $this->AdminModel->get_name();
        $data['complaint'] = $this->AdminModel->get_comp_op();
        $this->load->view('admin/op_page', $data);
    }

    public function to_done()
    {
        $data['name'] = $this->AdminModel->get_name();
        $data['complaint'] = $this->AdminModel->get_comp_done();
        $this->load->view('admin/done_page', $data);
    }

    public function to_denied()
    {
        $data['name'] = $this->AdminModel->get_name();
        $data['complaint'] = $this->AdminModel->get_comp_denied();
        $this->load->view('admin/denied_page', $data);
    }

	public function edit_comp()
    {
        if ($this->input->post('edit')) {
            $this->form_validation->set_rules('status', 'Status', 'trim|required');

            if ($this->form_validation->run() == true) {
                if ($this->AdminModel->update_comp() == true) {
                    $this->session->set_flashdata('notif_sukses', 'Complaint Updated');
                    redirect('admin');
                } else {
                    $this->session->set_flashdata('notif', 'Update Failure!');
                    redirect('admin');
                }
            } else {
                $this->session->set_flashdata('notif', validation_errors());
                redirect('admin');
            }
        } else {
                $this->session->set_flashdata('notif', validation_errors());
                redirect('admin');
            }
    }
}
