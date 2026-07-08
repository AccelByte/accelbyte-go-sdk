// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fleet_commander

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// VersionInfoReader is a Reader for the VersionInfo structure.
type VersionInfoReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *VersionInfoReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewVersionInfoOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ams/version returns an error %d: %s", response.Code(), string(data))
	}
}

// NewVersionInfoOK creates a VersionInfoOK with default headers values
func NewVersionInfoOK() *VersionInfoOK {
	return &VersionInfoOK{}
}

/*VersionInfoOK handles this case with default header values.

  OK
*/
type VersionInfoOK struct {
}

func (o *VersionInfoOK) Error() string {
	return fmt.Sprintf("[GET /ams/version][%d] versionInfoOK ", 200)
}

func (o *VersionInfoOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
