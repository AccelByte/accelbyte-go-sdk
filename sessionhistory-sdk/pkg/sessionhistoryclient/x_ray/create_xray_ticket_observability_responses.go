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

// CreateXrayTicketObservabilityReader is a Reader for the CreateXrayTicketObservability structure.
type CreateXrayTicketObservabilityReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateXrayTicketObservabilityReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCreateXrayTicketObservabilityOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateXrayTicketObservabilityBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateXrayTicketObservabilityUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateXrayTicketObservabilityForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateXrayTicketObservabilityInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateXrayTicketObservabilityOK creates a CreateXrayTicketObservabilityOK with default headers values
func NewCreateXrayTicketObservabilityOK() *CreateXrayTicketObservabilityOK {
	return &CreateXrayTicketObservabilityOK{}
}

/*CreateXrayTicketObservabilityOK handles this case with default header values.

  OK
*/
type CreateXrayTicketObservabilityOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayTicketObservabilityResponse
}

func (o *CreateXrayTicketObservabilityOK) Error() string {
	return fmt.Sprintf("[POST /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets][%d] createXrayTicketObservabilityOK  %+v", 200, o.ToJSONString())
}

func (o *CreateXrayTicketObservabilityOK) ToJSONString() string {
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

func (o *CreateXrayTicketObservabilityOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayTicketObservabilityResponse {
	return o.Payload
}

func (o *CreateXrayTicketObservabilityOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayTicketObservabilityResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateXrayTicketObservabilityBadRequest creates a CreateXrayTicketObservabilityBadRequest with default headers values
func NewCreateXrayTicketObservabilityBadRequest() *CreateXrayTicketObservabilityBadRequest {
	return &CreateXrayTicketObservabilityBadRequest{}
}

/*CreateXrayTicketObservabilityBadRequest handles this case with default header values.

  Bad Request
*/
type CreateXrayTicketObservabilityBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *CreateXrayTicketObservabilityBadRequest) Error() string {
	return fmt.Sprintf("[POST /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets][%d] createXrayTicketObservabilityBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateXrayTicketObservabilityBadRequest) ToJSONString() string {
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

func (o *CreateXrayTicketObservabilityBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateXrayTicketObservabilityBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateXrayTicketObservabilityUnauthorized creates a CreateXrayTicketObservabilityUnauthorized with default headers values
func NewCreateXrayTicketObservabilityUnauthorized() *CreateXrayTicketObservabilityUnauthorized {
	return &CreateXrayTicketObservabilityUnauthorized{}
}

/*CreateXrayTicketObservabilityUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateXrayTicketObservabilityUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *CreateXrayTicketObservabilityUnauthorized) Error() string {
	return fmt.Sprintf("[POST /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets][%d] createXrayTicketObservabilityUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateXrayTicketObservabilityUnauthorized) ToJSONString() string {
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

func (o *CreateXrayTicketObservabilityUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateXrayTicketObservabilityUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateXrayTicketObservabilityForbidden creates a CreateXrayTicketObservabilityForbidden with default headers values
func NewCreateXrayTicketObservabilityForbidden() *CreateXrayTicketObservabilityForbidden {
	return &CreateXrayTicketObservabilityForbidden{}
}

/*CreateXrayTicketObservabilityForbidden handles this case with default header values.

  Forbidden
*/
type CreateXrayTicketObservabilityForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *CreateXrayTicketObservabilityForbidden) Error() string {
	return fmt.Sprintf("[POST /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets][%d] createXrayTicketObservabilityForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateXrayTicketObservabilityForbidden) ToJSONString() string {
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

func (o *CreateXrayTicketObservabilityForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateXrayTicketObservabilityForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateXrayTicketObservabilityInternalServerError creates a CreateXrayTicketObservabilityInternalServerError with default headers values
func NewCreateXrayTicketObservabilityInternalServerError() *CreateXrayTicketObservabilityInternalServerError {
	return &CreateXrayTicketObservabilityInternalServerError{}
}

/*CreateXrayTicketObservabilityInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateXrayTicketObservabilityInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *CreateXrayTicketObservabilityInternalServerError) Error() string {
	return fmt.Sprintf("[POST /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets][%d] createXrayTicketObservabilityInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateXrayTicketObservabilityInternalServerError) ToJSONString() string {
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

func (o *CreateXrayTicketObservabilityInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateXrayTicketObservabilityInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
