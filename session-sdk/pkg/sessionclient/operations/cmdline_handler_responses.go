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

// CmdlineHandlerReader is a Reader for the CmdlineHandler structure.
type CmdlineHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CmdlineHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCmdlineHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/admin/internal/pprof/cmdline returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCmdlineHandlerOK creates a CmdlineHandlerOK with default headers values
func NewCmdlineHandlerOK() *CmdlineHandlerOK {
	return &CmdlineHandlerOK{}
}

/*CmdlineHandlerOK handles this case with default header values.

  OK
*/
type CmdlineHandlerOK struct {
}

func (o *CmdlineHandlerOK) Error() string {
	return fmt.Sprintf("[GET /session/admin/internal/pprof/cmdline][%d] cmdlineHandlerOK ", 200)
}

func (o *CmdlineHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
