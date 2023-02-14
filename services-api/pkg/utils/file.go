// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"bufio"
	"bytes"
	"encoding/json"
	"io"
	"log"
	"os"

	"github.com/go-openapi/runtime"
	"github.com/sirupsen/logrus"
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

func ConvertByteToFile(fileByte io.Writer, writer *bytes.Buffer, fileName string) (runtime.NamedReadCloser, error) {
	_, errMarshal := json.Marshal(fileByte)
	if errMarshal != nil {
		logrus.Fatal(errMarshal)
	}

	f, errCreate := os.Create(fileName)
	if errCreate != nil {
		logrus.Fatal(errCreate)
	}

	if _, err := io.Copy(f, writer); err != nil {
		logrus.Fatal(err.Error())
	}

	file, errOpen := os.Open(fileName)
	if errOpen != nil {
		logrus.Fatal(errOpen)
	}

	return file, nil
}
