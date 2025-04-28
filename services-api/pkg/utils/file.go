// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"bufio"
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"os"

	"github.com/go-openapi/runtime"
)

func ReadByChunks(filePath string) (*os.File, error) {
	buf := make([]byte, 0, 4*1024) // size of chunks
	file, errFile := os.Open(filePath)
	if errFile != nil {
		return nil, fmt.Errorf("unable to open file: %v", errFile)
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
			return nil, fmt.Errorf("unexpected error while reading file: %v", errRead)
		}
		nChunks++
		nBytes += int64(len(buf))
		// process buf
		if errRead != nil && errRead != io.EOF {
			return nil, fmt.Errorf("error while reading file: %v", errRead)
		}
	}

	return file, nil
}

func ConvertByteToFile(fileByte io.Writer, writer *bytes.Buffer, fileName string) (runtime.NamedReadCloser, error) {
	_, errMarshal := json.Marshal(fileByte)
	if errMarshal != nil {
		return nil, errMarshal
	}

	f, errCreate := os.Create(fileName)
	if errCreate != nil {
		return nil, errCreate
	}

	if _, err := io.Copy(f, writer); err != nil {
		return nil, err
	}

	file, errOpen := os.Open(fileName)
	if errOpen != nil {
		return nil, errOpen
	}

	return file, nil
}
