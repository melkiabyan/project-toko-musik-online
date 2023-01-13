
<main role="main" class="main-content">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12">
                <h2 class="page-title">Data Penjualan</h2>
                <div class="card shadow mb-4">
                    <div class="float-right">
                        <div class="card-body">
                            <div class="card-body">
                                <div class="float-right">
                                    <a href="<?= base_url('Penjualan/export') ?>" class="btn btn-secondary btn-sm"><i
                                            class="fa fa-file-pdf"></i>&nbsp;&nbsp;Export</a>
                                </div>
                                <table class="table datatables" id="dataTable-1">
                                    <thead>
                                        <tr>
                                            <td>No</td>
                                            <td>No Penjualan</td>
                                            <td>Tanggal</td>
                                            <td>Pelanggan</td>
                                            <td>Total</td>
                                            <td>Status</td>
                                            <td>Aksi</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($penjualan as $us) : ?>
                                        <tr>
                                            <td> <?= $i; ?>.</td>
                                            <td><?= $us['no_penjualan']; ?></td>
                                            <td><?= $us['tanggal']; ?></td>
                                            <td><?= $us['nama']; ?></td>
                                            <td><?= $us['total_bayar']; ?></td>
                                            <td><?= $us['status']; ?></td>
                                            <td>
                                                <a href="<?= base_url('Penjualan/detail/') . $us['no_penjualan']; ?>"
                                                    class="badge badge-warning">Detail</a>
                                            </td>
                                        </tr>
                                        <?php $i++; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</main>