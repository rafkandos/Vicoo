<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AdminModel extends CI_Model {

	public function get_comp()
    {
        return $this->db->join('status', 'status.Id_Status=complaint.StatusId')
                        ->join('user', 'user.Id_User=complaint.UserId')
                        ->order_by('Value', 'desc')
                        ->get('complaint')->result();
    }
    public function get_comp_pending()
    {
        return $this->db->join('status', 'status.Id_Status=complaint.StatusId')
                        ->join('user', 'user.Id_User=complaint.UserId')
                        ->where('Value', 'Pending')
                        ->get('complaint')->result();
    }
    public function count_all()
    {
        $day = date("Y-m-d");
        $jeneng = $this->db->get('complaint');

        if($jeneng->num_rows()>0){
            return $jeneng->num_rows();
        }
        else{
            return 0;
        }
    }
    public function count_pending()
    {
        $day = date("Y-m-d");
        $jeneng = $this->db->where('StatusId', 1)
                            ->where('Time', $day) 
                            ->get('complaint');

        if($jeneng->num_rows()>0){
            return $jeneng->num_rows();
        }
        else{
            return 0;
        }
    }
    public function count_op()
    {
        $day = date("Y-m-d");
        $jeneng = $this->db->where('StatusId', 2)
                            ->where('Time', $day) 
                            ->get('complaint');

        if($jeneng->num_rows()>0){
            return $jeneng->num_rows();
        }
        else{
            return 0;
        }
    }
    public function count_done()
    {
        $day = date("Y-m-d");
        $jeneng = $this->db->where('StatusId', 3)
                            ->where('Time', $day) 
                            ->get('complaint');

        if($jeneng->num_rows()>0){
            return $jeneng->num_rows();
        }
        else{
            return 0;
        }
    }
    public function count_denied()
    {
        $day = date("Y-m-d");
        $jeneng = $this->db->where('StatusId', 4)
                            ->where('Time', $day) 
                            ->get('complaint');

        if($jeneng->num_rows()>0){
            return $jeneng->num_rows();
        }
        else{
            return 0;
        }
    }
    public function get_comp_op()
    {
        return $this->db->join('status', 'status.Id_Status=complaint.StatusId')
                        ->join('user', 'user.Id_User=complaint.UserId')
                        ->where('StatusId', 2)
                        ->get('complaint')->result();
    }
    public function get_comp_done()
    {
        return $this->db->join('status', 'status.Id_Status=complaint.StatusId')
                        ->join('user', 'user.Id_User=complaint.UserId')
                        ->where('StatusId', 3)
                        ->get('complaint')->result();
    }
    public function get_comp_denied()
    {
        return $this->db->join('status', 'status.Id_Status=complaint.StatusId')
                        ->join('user', 'user.Id_User=complaint.UserId')
                        ->where('StatusId', 4)
                        ->get('complaint')->result();
    }
    public function get_comp_id($Id_Complaint)
    {
        return $this->db->where('Id_Complaint', $Id_Complaint)
                        ->get('complaint')
                        ->row();
    }
    public function get_status()
    {
        return $this->db->get('status')->result();
    }
    public function get_name()
    {
        return $this->db->where('Id_User', $this->session->userdata('Id_User'))->get('user')->result();
    }
    public function update_comp()
    {
        $data = array(
            'Id_Complaint'	 => $this->input->post('Id_Complaint'),
            'StatusId'          => $this->input->post('status')
        );

        $this->db->where('Id_Complaint', $this->input->post('Id_Complaint'))
                 ->update('complaint', $data);
        
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }
}
