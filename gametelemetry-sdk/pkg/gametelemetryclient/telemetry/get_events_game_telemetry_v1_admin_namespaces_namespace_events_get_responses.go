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

// GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetReader is a Reader for the GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet structure.
type GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewGetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /game-telemetry/v1/admin/namespaces/{namespace}/events returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetOK creates a GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetOK with default headers values
func NewGetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetOK() *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetOK {
	return &GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetOK{}
}

/*GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetOK handles this case with default header values.

  Successful Response
*/
type GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetOK struct {
	Payload *gametelemetryclientmodels.PagedResponseGetNamespaceEventResponse
}

func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetOK) Error() string {
	return fmt.Sprintf("[GET /game-telemetry/v1/admin/namespaces/{namespace}/events][%d] getEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetOK  %+v", 200, o.ToJSONString())
}

func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetOK) ToJSONString() string {
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

func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetOK) GetPayload() *gametelemetryclientmodels.PagedResponseGetNamespaceEventResponse {
	return o.Payload
}

func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gametelemetryclientmodels.PagedResponseGetNamespaceEventResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetBadRequest creates a GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetBadRequest with default headers values
func NewGetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetBadRequest() *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetBadRequest {
	return &GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetBadRequest{}
}

/*GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetBadRequest handles this case with default header values.

  Bad Request
*/
type GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetBadRequest struct {
	Payload *gametelemetryclientmodels.BaseErrorResponse
}

func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetBadRequest) Error() string {
	return fmt.Sprintf("[GET /game-telemetry/v1/admin/namespaces/{namespace}/events][%d] getEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetBadRequest) ToJSONString() string {
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

func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetBadRequest) GetPayload() *gametelemetryclientmodels.BaseErrorResponse {
	return o.Payload
}

func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetUnprocessableEntity creates a GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetUnprocessableEntity with default headers values
func NewGetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetUnprocessableEntity() *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetUnprocessableEntity {
	return &GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetUnprocessableEntity{}
}

/*GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetUnprocessableEntity handles this case with default header values.

  Validation Error
*/
type GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetUnprocessableEntity struct {
	Payload *gametelemetryclientmodels.HTTPValidationError
}

func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetUnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /game-telemetry/v1/admin/namespaces/{namespace}/events][%d] getEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetUnprocessableEntity) ToJSONString() string {
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

func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetUnprocessableEntity) GetPayload() *gametelemetryclientmodels.HTTPValidationError {
	return o.Payload
}

func (o *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gametelemetryclientmodels.HTTPValidationError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
