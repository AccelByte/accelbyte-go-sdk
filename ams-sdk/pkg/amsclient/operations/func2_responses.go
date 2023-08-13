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

// Func2Reader is a Reader for the Func2 structure.
type Func2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *Func2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewFunc2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ams/healthz returns an error %d: %s", response.Code(), string(data))
	}
}

// NewFunc2OK creates a Func2OK with default headers values
func NewFunc2OK() *Func2OK {
	return &Func2OK{}
}

/*Func2OK handles this case with default header values.

  OK
*/
type Func2OK struct {
}

func (o *Func2OK) Error() string {
	return fmt.Sprintf("[GET /ams/healthz][%d] func2OK ", 200)
}

func (o *Func2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
