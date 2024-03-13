// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package telemetry

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclientmodels"
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
	case 500:
		result := NewGetNamespacesGameTelemetryV1AdminNamespacesGetInternalServerError()
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
	Payload *gametelemetryclientmodels.ListBaseResponseStr
}

func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetOK) Error() string {
	return fmt.Sprintf("[GET /game-telemetry/v1/admin/namespaces][%d] getNamespacesGameTelemetryV1AdminNamespacesGetOK  %+v", 200, o.ToJSONString())
}

func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetOK) GetPayload() *gametelemetryclientmodels.ListBaseResponseStr {
	return o.Payload
}

func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gametelemetryclientmodels.ListBaseResponseStr)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetNamespacesGameTelemetryV1AdminNamespacesGetInternalServerError creates a GetNamespacesGameTelemetryV1AdminNamespacesGetInternalServerError with default headers values
func NewGetNamespacesGameTelemetryV1AdminNamespacesGetInternalServerError() *GetNamespacesGameTelemetryV1AdminNamespacesGetInternalServerError {
	return &GetNamespacesGameTelemetryV1AdminNamespacesGetInternalServerError{}
}

/*GetNamespacesGameTelemetryV1AdminNamespacesGetInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetNamespacesGameTelemetryV1AdminNamespacesGetInternalServerError struct {
	Payload *gametelemetryclientmodels.BaseErrorResponse
}

func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetInternalServerError) Error() string {
	return fmt.Sprintf("[GET /game-telemetry/v1/admin/namespaces][%d] getNamespacesGameTelemetryV1AdminNamespacesGetInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetInternalServerError) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetInternalServerError) GetPayload() *gametelemetryclientmodels.BaseErrorResponse {
	return o.Payload
}

func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gametelemetryclientmodels.BaseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
