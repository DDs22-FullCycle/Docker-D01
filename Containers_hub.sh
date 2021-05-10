#!/usr/bin/env bash

case "${1}" in

    push)
        echo "[=> ] golang ..."
        docker push dds22/codeeducation 
        echo "[#####] Concluído." 
    ;;
    
    pull)
        echo "[=> ] golang ..."
        docker pull dds22/codeeducation 
        echo "[#####] Concluído." 
    ;;

    run)
        echo "[=> ] golang ..."
        docker run dds22/codeeducation 
        echo "[#####] Concluído." 
    ;;

    *)
        echo "[=> ] golang ..."
        docker push dds22/codeeducation 
        echo "[#####] Concluído." 
    ;;
esac

