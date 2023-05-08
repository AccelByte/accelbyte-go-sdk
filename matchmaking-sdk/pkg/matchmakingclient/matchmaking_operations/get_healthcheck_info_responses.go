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

// GetHealthcheckInfoReader is a Reader for the GetHealthcheckInfo structure.
type GetHealthcheckInfoReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetHealthcheckInfoReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetHealthcheckInfoOK()
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

// NewGetHealthcheckInfoOK creates a GetHealthcheckInfoOK with default headers values
func NewGetHealthcheckInfoOK() *GetHealthcheckInfoOK {
	return &GetHealthcheckInfoOK{}
}

/*GetHealthcheckInfoOK handles this case with default header values.

  OK
*/
type GetHealthcheckInfoOK struct {
}

func (o *GetHealthcheckInfoOK) Error() string {
	return fmt.Sprintf("[GET /healthz][%d] getHealthcheckInfoOK ", 200)
}

func (o *GetHealthcheckInfoOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
