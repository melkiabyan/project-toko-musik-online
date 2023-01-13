<body>
    <div class="d-lg-flex half">
        <div class="bg order-1 order-md-2" style="background-image: url('<?= base_url('assets_auth/') ?>images/bg.jpg');"></div>
        <div class="contents order-2 order-md-1">
            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-md-7">
                        <img width="350" src="<?= base_url('assets_user/') ?>themes/images/melodi.png" class="site_logo" alt="">
                        <!-- <h3>Login to <strong>Melodi Music</strong></h3> -->
                        <p class="mb-4">Welcome to Melodi Music <br> Melody Music is a shop that sells various kinds of musical instruments. please choose the best!</p>
                        <?= $this->session->flashdata('message'); ?>
                        <form method="POST" action="<?= base_url('auth/cek_login');  ?>">
                            <div class="form-group first">
                                <label for="email">Email</label>
                                <input type="email" class="form-control form-control-user" id="email" name="email" aria-describedby="emailHelp" placeholder="your-email@gmail.com">
                            </div>
                            <div class="form-group last mb-3">
                                <label for="password">Password</label>
                                <input type="password" id="password" name="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Your Password">
                            </div>
                            <input type="submit" value="Log In" class="btn btn-block btn-primary">
                        </form>
                        <hr>
                        <div class="text-center">
                            <a class="small" href="<?= base_url('auth/registrasi') ?>">Don't Have Melodi Account?</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>


    </div>