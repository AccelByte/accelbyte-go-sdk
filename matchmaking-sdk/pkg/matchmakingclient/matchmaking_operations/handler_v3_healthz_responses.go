// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmaking_operations

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// HandlerV3HealthzReader is a Reader for the HandlerV3Healthz structure.
type HandlerV3HealthzReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *HandlerV3HealthzReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewHandlerV3HealthzOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /matchmaking/healthz returns an error %d: %s", response.Code(), string(data))
	}
}

// NewHandlerV3HealthzOK creates a HandlerV3HealthzOK with default headers values
func NewHandlerV3HealthzOK() *HandlerV3HealthzOK {
	return &HandlerV3HealthzOK{}
}

/*HandlerV3HealthzOK handles this case with default header values.

  OK
*/
type HandlerV3HealthzOK struct {
}

func (o *HandlerV3HealthzOK) Error() string {
	return fmt.Sprintf("[GET /matchmaking/healthz][%d] handlerV3HealthzOK ", 200)
}

func (o *HandlerV3HealthzOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
