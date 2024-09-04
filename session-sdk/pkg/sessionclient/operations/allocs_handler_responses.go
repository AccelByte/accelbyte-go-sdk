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

// AllocsHandlerReader is a Reader for the AllocsHandler structure.
type AllocsHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AllocsHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAllocsHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/admin/internal/pprof/allocs returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAllocsHandlerOK creates a AllocsHandlerOK with default headers values
func NewAllocsHandlerOK() *AllocsHandlerOK {
	return &AllocsHandlerOK{}
}

/*AllocsHandlerOK handles this case with default header values.

  OK
*/
type AllocsHandlerOK struct {
}

func (o *AllocsHandlerOK) Error() string {
	return fmt.Sprintf("[GET /session/admin/internal/pprof/allocs][%d] allocsHandlerOK ", 200)
}

func (o *AllocsHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
