// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fleets

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
)

// FleetCreateReader is a Reader for the FleetCreate structure.
type FleetCreateReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *FleetCreateReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewFleetCreateCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewFleetCreateBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewFleetCreateUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewFleetCreateForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewFleetCreateInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ams/v1/admin/namespaces/{namespace}/fleets returns an error %d: %s", response.Code(), string(data))
	}
}

// NewFleetCreateCreated creates a FleetCreateCreated with default headers values
func NewFleetCreateCreated() *FleetCreateCreated {
	return &FleetCreateCreated{}
}

/*FleetCreateCreated handles this case with default header values.

  success
*/
type FleetCreateCreated struct {
	Payload *amsclientmodels.APIFleetCreateResponse
}

func (o *FleetCreateCreated) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/fleets][%d] fleetCreateCreated  %+v", 201, o.ToJSONString())
}

func (o *FleetCreateCreated) ToJSONString() string {
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

func (o *FleetCreateCreated) GetPayload() *amsclientmodels.APIFleetCreateResponse {
	return o.Payload
}

func (o *FleetCreateCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIFleetCreateResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewFleetCreateBadRequest creates a FleetCreateBadRequest with default headers values
func NewFleetCreateBadRequest() *FleetCreateBadRequest {
	return &FleetCreateBadRequest{}
}

/*FleetCreateBadRequest handles this case with default header values.

  bad request
*/
type FleetCreateBadRequest struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetCreateBadRequest) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/fleets][%d] fleetCreateBadRequest  %+v", 400, o.ToJSONString())
}

func (o *FleetCreateBadRequest) ToJSONString() string {
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

func (o *FleetCreateBadRequest) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetCreateBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewFleetCreateUnauthorized creates a FleetCreateUnauthorized with default headers values
func NewFleetCreateUnauthorized() *FleetCreateUnauthorized {
	return &FleetCreateUnauthorized{}
}

/*FleetCreateUnauthorized handles this case with default header values.

  no authorization provided
*/
type FleetCreateUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetCreateUnauthorized) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/fleets][%d] fleetCreateUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *FleetCreateUnauthorized) ToJSONString() string {
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

func (o *FleetCreateUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetCreateUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewFleetCreateForbidden creates a FleetCreateForbidden with default headers values
func NewFleetCreateForbidden() *FleetCreateForbidden {
	return &FleetCreateForbidden{}
}

/*FleetCreateForbidden handles this case with default header values.

  exceeded quota
*/
type FleetCreateForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetCreateForbidden) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/fleets][%d] fleetCreateForbidden  %+v", 403, o.ToJSONString())
}

func (o *FleetCreateForbidden) ToJSONString() string {
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

func (o *FleetCreateForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetCreateForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewFleetCreateInternalServerError creates a FleetCreateInternalServerError with default headers values
func NewFleetCreateInternalServerError() *FleetCreateInternalServerError {
	return &FleetCreateInternalServerError{}
}

/*FleetCreateInternalServerError handles this case with default header values.

  internal server error
*/
type FleetCreateInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetCreateInternalServerError) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/fleets][%d] fleetCreateInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *FleetCreateInternalServerError) ToJSONString() string {
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

func (o *FleetCreateInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetCreateInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
