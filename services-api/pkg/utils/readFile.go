// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"bufio"
	"bytes"
	"encoding/json"
	"io"
	"io/ioutil"
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

func ConvertToFileJSON(data interface{}) (runtime.NamedReadCloser, error) {
	content, errMarshal := json.Marshal(data)
	if errMarshal != nil {
		logrus.Fatal(errMarshal)
	}

	errCreate := ioutil.WriteFile("test.json", content, 0644)
	if errCreate != nil {
		logrus.Fatal(errCreate)
	}

	file, errOpen := os.Open("test.json")
	if errOpen != nil {
		logrus.Fatal(errOpen)
	}

	return file, nil
}

func ConvertToFileZip(fileByte io.Writer, writer *bytes.Buffer) (runtime.NamedReadCloser, error) {
	_, errMarshal := json.Marshal(fileByte)
	if errMarshal != nil {
		logrus.Fatal(errMarshal)
	}

	f, errCreate := os.Create("test.zip")
	if errCreate != nil {
		logrus.Fatal(errCreate)
	}

	if _, err := io.Copy(f, writer); err != nil {
		logrus.Fatal(err.Error())
	}

	file, errOpen := os.Open("test.zip")
	if errOpen != nil {
		logrus.Fatal(errOpen)
	}

	return file, nil
}
