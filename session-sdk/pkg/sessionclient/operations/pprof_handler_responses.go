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

// PprofHandlerReader is a Reader for the PprofHandler structure.
type PprofHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PprofHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPprofHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/admin/internal/pprof returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPprofHandlerOK creates a PprofHandlerOK with default headers values
func NewPprofHandlerOK() *PprofHandlerOK {
	return &PprofHandlerOK{}
}

/*PprofHandlerOK handles this case with default header values.

  OK
*/
type PprofHandlerOK struct {
}

func (o *PprofHandlerOK) Error() string {
	return fmt.Sprintf("[GET /session/admin/internal/pprof][%d] pprofHandlerOK ", 200)
}

func (o *PprofHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
