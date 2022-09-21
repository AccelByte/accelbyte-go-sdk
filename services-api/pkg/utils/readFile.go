// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"bufio"
	"io"
	"log"
	"os"
)

func ReadByChunks(filePath string) (*os.File, error) {
	buf := make([]byte, 0, 4*1024) // size of chunks
	file, errFile := os.Open(filePath)
	if errFile != nil {
		log.Fatal("unable to open big file")
	}

	nBytes, nChunks := int64(0), int64(0)
	r := bufio.NewReader(file) // avoid eating RAM

	for {
		n, errRead := r.Read(buf[:cap(buf)])
		buf = buf[:n]
		if n == 0 {
			if errRead == nil {
				continue
			}
			if errRead == io.EOF {
				break
			}
			log.Fatal(errRead)
		}
		nChunks++
		nBytes += int64(len(buf))
		// process buf
		if errRead != nil && errRead != io.EOF {
			log.Fatal(errRead)
		}
	}

	return file, nil
}
