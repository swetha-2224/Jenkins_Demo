Disk_usage=`df -kh | tail -4 | head -1 | awk -F " " '{print$(NF-1)}' | sed 's/%//g'`
if [ $Disk_usage -gt 55 ]
then
echo "send an email alert"
else
echo "good condition"
fi
