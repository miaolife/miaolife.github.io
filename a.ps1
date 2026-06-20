for ($out=1; $out -le 20; $out++) {
    $start = 5*$out - 4
    $end   = 5*$out
    # 格式化三位数（如 001）
    $startF = "{0:D3}" -f $start
    $endF   = "{0:D3}" -f $end
    $url = "https://www.tingshuwang.cc/d/file/yt/14207/$startF-$endF.mp3"
    Write-Host "下载 $out.mp3 <- $url"
    Invoke-WebRequest -Uri $url -OutFile "$out.mp3"
}