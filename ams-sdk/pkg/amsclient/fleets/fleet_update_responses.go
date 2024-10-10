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

// FleetUpdateReader is a Reader for the FleetUpdate structure.
type FleetUpdateReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *FleetUpdateReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewFleetUpdateNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewFleetUpdateBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewFleetUpdateUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewFleetUpdateForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewFleetUpdateNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewFleetUpdateInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewFleetUpdateNoContent creates a FleetUpdateNoContent with default headers values
func NewFleetUpdateNoContent() *FleetUpdateNoContent {
	return &FleetUpdateNoContent{}
}

/*FleetUpdateNoContent handles this case with default header values.

  no content
*/
type FleetUpdateNoContent struct {
}

func (o *FleetUpdateNoContent) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}][%d] fleetUpdateNoContent ", 204)
}

func (o *FleetUpdateNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewFleetUpdateBadRequest creates a FleetUpdateBadRequest with default headers values
func NewFleetUpdateBadRequest() *FleetUpdateBadRequest {
	return &FleetUpdateBadRequest{}
}

/*FleetUpdateBadRequest handles this case with default header values.

  bad request
*/
type FleetUpdateBadRequest struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetUpdateBadRequest) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}][%d] fleetUpdateBadRequest  %+v", 400, o.ToJSONString())
}

func (o *FleetUpdateBadRequest) ToJSONString() string {
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

func (o *FleetUpdateBadRequest) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetUpdateBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFleetUpdateUnauthorized creates a FleetUpdateUnauthorized with default headers values
func NewFleetUpdateUnauthorized() *FleetUpdateUnauthorized {
	return &FleetUpdateUnauthorized{}
}

/*FleetUpdateUnauthorized handles this case with default header values.

  no authorization provided
*/
type FleetUpdateUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetUpdateUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}][%d] fleetUpdateUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *FleetUpdateUnauthorized) ToJSONString() string {
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

func (o *FleetUpdateUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetUpdateUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFleetUpdateForbidden creates a FleetUpdateForbidden with default headers values
func NewFleetUpdateForbidden() *FleetUpdateForbidden {
	return &FleetUpdateForbidden{}
}

/*FleetUpdateForbidden handles this case with default header values.

  insufficient permissions
*/
type FleetUpdateForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetUpdateForbidden) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}][%d] fleetUpdateForbidden  %+v", 403, o.ToJSONString())
}

func (o *FleetUpdateForbidden) ToJSONString() string {
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

func (o *FleetUpdateForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetUpdateForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFleetUpdateNotFound creates a FleetUpdateNotFound with default headers values
func NewFleetUpdateNotFound() *FleetUpdateNotFound {
	return &FleetUpdateNotFound{}
}

/*FleetUpdateNotFound handles this case with default header values.

  fleet not found
*/
type FleetUpdateNotFound struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetUpdateNotFound) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}][%d] fleetUpdateNotFound  %+v", 404, o.ToJSONString())
}

func (o *FleetUpdateNotFound) ToJSONString() string {
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

func (o *FleetUpdateNotFound) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetUpdateNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFleetUpdateInternalServerError creates a FleetUpdateInternalServerError with default headers values
func NewFleetUpdateInternalServerError() *FleetUpdateInternalServerError {
	return &FleetUpdateInternalServerError{}
}

/*FleetUpdateInternalServerError handles this case with default header values.

  internal server error
*/
type FleetUpdateInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetUpdateInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}][%d] fleetUpdateInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *FleetUpdateInternalServerError) ToJSONString() string {
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

func (o *FleetUpdateInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetUpdateInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
