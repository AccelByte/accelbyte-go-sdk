// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package a_m_s_info

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// UploadURLGetReader is a Reader for the UploadURLGet structure.
type UploadURLGetReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UploadURLGetReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUploadURLGetOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ams/v1/upload-url returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUploadURLGetOK creates a UploadURLGetOK with default headers values
func NewUploadURLGetOK() *UploadURLGetOK {
	return &UploadURLGetOK{}
}

/*UploadURLGetOK handles this case with default header values.

  success
*/
type UploadURLGetOK struct {
}

func (o *UploadURLGetOK) Error() string {
	return fmt.Sprintf("[GET /ams/v1/upload-url][%d] uploadUrlGetOK ", 200)
}

func (o *UploadURLGetOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
