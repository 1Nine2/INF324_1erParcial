<?php include("inc/header.php"); ?>
	<div class="container">
		<div class="jumbotron">
			<h2 class="display-3" style="text-align:center;">Admin</h2>
			<hr>
			<div class="my-4">
				<div class="row">
					<div class="col-lg-4">
						<?php echo anchor("welcome/adminRegister","Registro Administrador",['class'=>'btn btn-primary']);?>
					</div>
					<div class="col-lg-4">
						<?php echo anchor("welcome/login","Login Administrador",['class'=>'btn btn-primary']);?>
					</div>
				</div>
			</div>

		</div>
	</div>


<?php include("inc/footer.php"); ?>