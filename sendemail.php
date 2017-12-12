<?php
    $data = stripslashes($_POST['res']);

    $data = json_decode($data);

	header('Content-type: application/json');
	$status = array(
		'type'=>'success',
		'message'=>'Gracias por contactarnos. Lo más antes posible le responderemos. '
	);

    $name = trim(stripslashes($data->name));
    $email = trim(stripslashes($data->email));
    $subject = trim(stripslashes($data->subject));
    $message = trim(stripslashes($data->message));

    $email_from = $email;
    $email_to = 'info@10millas.com';//replace with your email

    $body = 'Nombre: ' . $name . "\n\n" . 'Email: ' . $email . "\n\n" . 'Consulta: ' . $subject . "\n\n" . 'Mensaje: ' . $message;

    $success = mail($email_to, $subject, $body, 'From: <'.$email_from.'>');

    echo json_encode($status);
    die;
?>