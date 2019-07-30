<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class LoginModel extends CI_Model {

    public function get_user()
    {
        return $this->db->join('role', 'role.Id_Role=user.RoleId')->get('user')->result();
    }
    
    public function detail_user($Id_User)
    {
        return $this->db->where('Id_User', $Id_User)->get('user')->row();
    }

    public function get_role()
    {
        return $this->db->get('role')->result();
    }

    public function login_auth()
    {
        $username = $this->input->post('username');
		$password = $this->input->post('password');

		$query = $this->db->where('username', $username)
						  ->where('password', $password)
						  ->get('user');

		if ($query->num_rows() > 0) {
			$dl = $query->row();

			$data = array(
				'Id_User'   => $dl->Id_User,
				'Username'  => $dl->Username,
				'Password'  => $dl->Password,
				'RoleId'    => $dl->RoleId,
				'logged_in'	=> true
			);
			
			$this->session->set_userdata($data);
			return true;
		} else{
			return false;
		}
    }
}