<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Detail_model extends CI_Model
{
    public $table = 'detail_penjualan';
    public $id = 'detail_penjualan.id';
    public function __construct()
    {
        parent::__construct();
    }
    public function get()
    {
        $this->db->select('k.*,s.nama as nama, s.harga as harga');
        $this->db->from('keranjang k');
        $this->db->join('music s', 'k.id_music = s.id');
        $query = $this->db->get();
        return $query->result_array();
    }
    // public function getById($id)
    // {
    //     $this->db->from($this->table);
    //     $this->db->where('no_penjualan', $id);
    //     $query = $this->db->get();
    //     return $query->row_array();
    // }
    public function update($where, $data)
    {
        $this->db->update($this->table, $data, $where);
        return $this->db->affected_rows();
    }
    public function insert($data)
    {
        return $this->db->insert_batch($this->table, $data);
    }
    public function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->delete($this->table);
        return $this->db->affected_rows();
    }
    public function getById($id)
    {
        $this->db->select('d.*,r.nama as nama, s.merk as music');
        $this->db->from('detail_penjualan d');
        $this->db->join('user r', 'd.id_user = r.id');
        $this->db->join('music s', 'd.id_music = s.id');
        $this->db->where('d.no_penjualan', $id);
        $query = $this->db->get();
        return $query->result_array();
    }

    public function getByUser($id)
    {
        $idu = $this->session->userdata('id');
        $this->db->select('d.*,s.merk as merk_music');
        $this->db->from('detail_penjualan d');
        $this->db->join('music s', 'd.id_music = s.id');
        $this->db->where('d.no_penjualan', $id, 'AND d.id_user=' . $idu);
        $this->db->where('d.id_user=' . $idu);
        $query = $this->db->get();
        return $query->result_array();
    }

    function charts()
    {
        $this->db->select('d.*, s.merk as music, sum(d.jumlah) as jum');
        $this->db->from('detail_penjualan d');
        $this->db->join('music s', 'd.id_music = s.id');
        $this->db->group_by('d.id_music');
        $query = $this->db->get();
        return $query->result_array();
    }
}
