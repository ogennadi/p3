printf "Expt\tProtocol\tRun Time\tMisses\tAccesses\tUpgrades\tc-c\n"

for experiment in 1 2 3 4 5 6 7 8
do
  for protocol in MSI MESI MOSI MOESI MOESIF
  do
    printf "$experiment\t$protocol\t"
    ./sim_trace -t traces/experiment"$experiment"/ -p $protocol | tail -n1
    echo
  done
done
