#!/bin/bash

# Data : 24/09/2020                               #
#                                                 #
# Descrição: Crie um script que gere um relatório #
#            de algumas informações da máquina    #
#            atual:                               #
#                                                 #
#           Nome da Máquina                       #
#	    • Data e Hora Atual                   #
#           • Desde quando a máquina está ativa   #
#           • Versão do Kernel                    #
#           • Quantidade de CPUs/Cores            #
#           • Modelo da CPU                       #
#           • Total de Memória RAM Disponível     #
#           • Partições                           #          
#                                                 #
#                                                 #
#                                                 #
#                                                 #
#                                                 #
#                                                 #
#                                                 #
# Exemplo de uso: ./info_usuario                  #
#                                                 #
###################################################
echo ""
HOST="/etc/hostname"
CPUS="/proc/cpuinfo"
echo ""
echo "============================================"
HOSTINFO=$(cat $HOST)
DATE=$(date)
ATVMAQUINA=$(uptime -s)
KERNELV=$(uname -r)
CAMCPU=$(grep 'model name' $CPUS  |wc -l)
MODCPU=$(grep 'model name' $CPUS | uniq)
MEMTOT=$(expr $( cat /proc/meminfo | grep MemTotal |cut -d: -f2|tr -d kB/1024))
PARTICAO=$(df -h |egrep -v '(tmpfs|udev)')

echo "Relatório da Máquina:" $HOSTINFO
echo "Data-Hora: $DATE"
echo "==========================================="
echo ""
echo "Máquina Ativa desde:" $ATVMAQUINA
echo ""
echo "Versão do Kernel:" $KERNELV
echo ""
echo "CPUs:"
echo "Quantidade de CPUs/Core: " $CAMCPU
echo ""$MODCPU
echo "Memória Total:" $MEMTOT "MB"
echo ""
echo $PARTICAO
echo ""
