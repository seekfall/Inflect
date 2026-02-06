Add-Type -AssemblyName System.Windows.Forms # Load the screen class
Add-Type -AssemblyName System.Drawing # Allow to capture the screen

$bounds = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds # Get the screen bounds
$bitmap = New-Object System.Drawing.Bitmap $bounds.Width, $bounds.Height
$graphics = [System.Drawing.Graphics]::FromImage($bitmap) 
$graphics.CopyFromScreen($bounds.Location, [System.Drawing.Point]::Empty, $bounds.Size)
$bitmap.Save("C:\temp\screenshot.png")


