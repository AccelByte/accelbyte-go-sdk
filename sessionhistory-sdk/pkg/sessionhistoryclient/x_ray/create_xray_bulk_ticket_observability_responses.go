// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package x_ray

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclientmodels"
)

// CreateXrayBulkTicketObservabilityReader is a Reader for the CreateXrayBulkTicketObservability structure.
type CreateXrayBulkTicketObservabilityReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateXrayBulkTicketObservabilityReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCreateXrayBulkTicketObservabilityOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateXrayBulkTicketObservabilityBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateXrayBulkTicketObservabilityUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateXrayBulkTicketObservabilityForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateXrayBulkTicketObservabilityInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateXrayBulkTicketObservabilityOK creates a CreateXrayBulkTicketObservabilityOK with default headers values
func NewCreateXrayBulkTicketObservabilityOK() *CreateXrayBulkTicketObservabilityOK {
	return &CreateXrayBulkTicketObservabilityOK{}
}

/*CreateXrayBulkTicketObservabilityOK handles this case with default header values.

  OK
*/
type CreateXrayBulkTicketObservabilityOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayBulkTicketObservabilityResponse
}

func (o *CreateXrayBulkTicketObservabilityOK) Error() string {
	return fmt.Sprintf("[POST /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/bulk][%d] createXrayBulkTicketObservabilityOK  %+v", 200, o.ToJSONString())
}

func (o *CreateXrayBulkTicketObservabilityOK) ToJSONString() string {
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

func (o *CreateXrayBulkTicketObservabilityOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayBulkTicketObservabilityResponse {
	return o.Payload
}

func (o *CreateXrayBulkTicketObservabilityOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayBulkTicketObservabilityResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateXrayBulkTicketObservabilityBadRequest creates a CreateXrayBulkTicketObservabilityBadRequest with default headers values
func NewCreateXrayBulkTicketObservabilityBadRequest() *CreateXrayBulkTicketObservabilityBadRequest {
	return &CreateXrayBulkTicketObservabilityBadRequest{}
}

/*CreateXrayBulkTicketObservabilityBadRequest handles this case with default header values.

  Bad Request
*/
type CreateXrayBulkTicketObservabilityBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *CreateXrayBulkTicketObservabilityBadRequest) Error() string {
	return fmt.Sprintf("[POST /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/bulk][%d] createXrayBulkTicketObservabilityBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateXrayBulkTicketObservabilityBadRequest) ToJSONString() string {
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

func (o *CreateXrayBulkTicketObservabilityBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateXrayBulkTicketObservabilityBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateXrayBulkTicketObservabilityUnauthorized creates a CreateXrayBulkTicketObservabilityUnauthorized with default headers values
func NewCreateXrayBulkTicketObservabilityUnauthorized() *CreateXrayBulkTicketObservabilityUnauthorized {
	return &CreateXrayBulkTicketObservabilityUnauthorized{}
}

/*CreateXrayBulkTicketObservabilityUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateXrayBulkTicketObservabilityUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *CreateXrayBulkTicketObservabilityUnauthorized) Error() string {
	return fmt.Sprintf("[POST /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/bulk][%d] createXrayBulkTicketObservabilityUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateXrayBulkTicketObservabilityUnauthorized) ToJSONString() string {
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

func (o *CreateXrayBulkTicketObservabilityUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateXrayBulkTicketObservabilityUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateXrayBulkTicketObservabilityForbidden creates a CreateXrayBulkTicketObservabilityForbidden with default headers values
func NewCreateXrayBulkTicketObservabilityForbidden() *CreateXrayBulkTicketObservabilityForbidden {
	return &CreateXrayBulkTicketObservabilityForbidden{}
}

/*CreateXrayBulkTicketObservabilityForbidden handles this case with default header values.

  Forbidden
*/
type CreateXrayBulkTicketObservabilityForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *CreateXrayBulkTicketObservabilityForbidden) Error() string {
	return fmt.Sprintf("[POST /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/bulk][%d] createXrayBulkTicketObservabilityForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateXrayBulkTicketObservabilityForbidden) ToJSONString() string {
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

func (o *CreateXrayBulkTicketObservabilityForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateXrayBulkTicketObservabilityForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateXrayBulkTicketObservabilityInternalServerError creates a CreateXrayBulkTicketObservabilityInternalServerError with default headers values
func NewCreateXrayBulkTicketObservabilityInternalServerError() *CreateXrayBulkTicketObservabilityInternalServerError {
	return &CreateXrayBulkTicketObservabilityInternalServerError{}
}

/*CreateXrayBulkTicketObservabilityInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateXrayBulkTicketObservabilityInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *CreateXrayBulkTicketObservabilityInternalServerError) Error() string {
	return fmt.Sprintf("[POST /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/bulk][%d] createXrayBulkTicketObservabilityInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateXrayBulkTicketObservabilityInternalServerError) ToJSONString() string {
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

func (o *CreateXrayBulkTicketObservabilityInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateXrayBulkTicketObservabilityInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
