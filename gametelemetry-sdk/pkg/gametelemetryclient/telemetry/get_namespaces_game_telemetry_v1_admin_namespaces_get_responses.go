// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package telemetry

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// GetNamespacesGameTelemetryV1AdminNamespacesGetReader is a Reader for the GetNamespacesGameTelemetryV1AdminNamespacesGet structure.
type GetNamespacesGameTelemetryV1AdminNamespacesGetReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetNamespacesGameTelemetryV1AdminNamespacesGetOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /game-telemetry/v1/admin/namespaces returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetNamespacesGameTelemetryV1AdminNamespacesGetOK creates a GetNamespacesGameTelemetryV1AdminNamespacesGetOK with default headers values
func NewGetNamespacesGameTelemetryV1AdminNamespacesGetOK() *GetNamespacesGameTelemetryV1AdminNamespacesGetOK {
	return &GetNamespacesGameTelemetryV1AdminNamespacesGetOK{}
}

/*GetNamespacesGameTelemetryV1AdminNamespacesGetOK handles this case with default header values.

  Successful Response
*/
type GetNamespacesGameTelemetryV1AdminNamespacesGetOK struct {
}

func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetOK) Error() string {
	return fmt.Sprintf("[GET /game-telemetry/v1/admin/namespaces][%d] getNamespacesGameTelemetryV1AdminNamespacesGetOK ", 200)
}

func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
