package main

import (
	"flag"
	"os/exec"
	"time"
)

func main() {
	var postureInterval int

	flag.IntVar(&postureInterval, "interval", 900, "The interval between posture checks in seconds.")
	flag.Parse()

	for {
		time.Sleep(time.Duration(postureInterval) * time.Second)
		exec.Command("notify-send", "Hey! Time to check your posture.", "Do some stretches while you're at it too!").Run()
	}
}
