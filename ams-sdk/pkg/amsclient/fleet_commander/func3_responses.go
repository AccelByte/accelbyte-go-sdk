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

// Func3Reader is a Reader for the Func3 structure.
type Func3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *Func3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewFunc3OK()
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

// NewFunc3OK creates a Func3OK with default headers values
func NewFunc3OK() *Func3OK {
	return &Func3OK{}
}

/*Func3OK handles this case with default header values.

  OK
*/
type Func3OK struct {
}

func (o *Func3OK) Error() string {
	return fmt.Sprintf("[GET /ams/version][%d] func3OK ", 200)
}

func (o *Func3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
