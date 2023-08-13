// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package operations

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// PortalHealthCheckReader is a Reader for the PortalHealthCheck structure.
type PortalHealthCheckReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PortalHealthCheckReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPortalHealthCheckOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /healthz returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPortalHealthCheckOK creates a PortalHealthCheckOK with default headers values
func NewPortalHealthCheckOK() *PortalHealthCheckOK {
	return &PortalHealthCheckOK{}
}

/*PortalHealthCheckOK handles this case with default header values.

  OK
*/
type PortalHealthCheckOK struct {
}

func (o *PortalHealthCheckOK) Error() string {
	return fmt.Sprintf("[GET /healthz][%d] portalHealthCheckOK ", 200)
}

func (o *PortalHealthCheckOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
