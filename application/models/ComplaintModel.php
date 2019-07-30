<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ComplaintModel extends CI_Model {

    public function get_complaint()
    {
        return $this->db->join('status', 'status.Id_Status=complaint.StatusId')
                        ->join('user', 'user.Id_User=complaint.UserId')
                        ->order_by('Value', 'desc')
                        ->get('complaint')->result();
    }

    public function get_name()
    {
        return $this->db->where('Id_User', $this->session->userdata('Id_User'))->get('user')->result();
    }

    public function send_complaint()
    {
        $now = date("Y-m-d"); 
        $data = array(
            'Id_Complaint'	 => $this->input->post('id_complaint'),
            'Complaint'		 => $this->input->post('complaint'),
            'UserId'         => $this->session->userdata('Id_User'),
            'Time'           => $now,
            'StatusId'       => 1
        );

        $this->db->insert('complaint', $data);
        
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }   
}
