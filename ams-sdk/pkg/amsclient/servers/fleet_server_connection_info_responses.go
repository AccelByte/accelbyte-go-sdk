// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package servers

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

// FleetServerConnectionInfoReader is a Reader for the FleetServerConnectionInfo structure.
type FleetServerConnectionInfoReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *FleetServerConnectionInfoReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewFleetServerConnectionInfoOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewFleetServerConnectionInfoUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewFleetServerConnectionInfoForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewFleetServerConnectionInfoNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewFleetServerConnectionInfoInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ams/v1/admin/namespaces/{namespace}/servers/{serverID}/connectioninfo returns an error %d: %s", response.Code(), string(data))
	}
}

// NewFleetServerConnectionInfoOK creates a FleetServerConnectionInfoOK with default headers values
func NewFleetServerConnectionInfoOK() *FleetServerConnectionInfoOK {
	return &FleetServerConnectionInfoOK{}
}

/*FleetServerConnectionInfoOK handles this case with default header values.

  success
*/
type FleetServerConnectionInfoOK struct {
	Payload *amsclientmodels.APIFleetServerConnectionInfoResponse
}

func (o *FleetServerConnectionInfoOK) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/servers/{serverID}/connectioninfo][%d] fleetServerConnectionInfoOK  %+v", 200, o.ToJSONString())
}

func (o *FleetServerConnectionInfoOK) ToJSONString() string {
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

func (o *FleetServerConnectionInfoOK) GetPayload() *amsclientmodels.APIFleetServerConnectionInfoResponse {
	return o.Payload
}

func (o *FleetServerConnectionInfoOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIFleetServerConnectionInfoResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewFleetServerConnectionInfoUnauthorized creates a FleetServerConnectionInfoUnauthorized with default headers values
func NewFleetServerConnectionInfoUnauthorized() *FleetServerConnectionInfoUnauthorized {
	return &FleetServerConnectionInfoUnauthorized{}
}

/*FleetServerConnectionInfoUnauthorized handles this case with default header values.

  no authorization provided
*/
type FleetServerConnectionInfoUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetServerConnectionInfoUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/servers/{serverID}/connectioninfo][%d] fleetServerConnectionInfoUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *FleetServerConnectionInfoUnauthorized) ToJSONString() string {
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

func (o *FleetServerConnectionInfoUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetServerConnectionInfoUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewFleetServerConnectionInfoForbidden creates a FleetServerConnectionInfoForbidden with default headers values
func NewFleetServerConnectionInfoForbidden() *FleetServerConnectionInfoForbidden {
	return &FleetServerConnectionInfoForbidden{}
}

/*FleetServerConnectionInfoForbidden handles this case with default header values.

  insufficient permissions
*/
type FleetServerConnectionInfoForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetServerConnectionInfoForbidden) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/servers/{serverID}/connectioninfo][%d] fleetServerConnectionInfoForbidden  %+v", 403, o.ToJSONString())
}

func (o *FleetServerConnectionInfoForbidden) ToJSONString() string {
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

func (o *FleetServerConnectionInfoForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetServerConnectionInfoForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewFleetServerConnectionInfoNotFound creates a FleetServerConnectionInfoNotFound with default headers values
func NewFleetServerConnectionInfoNotFound() *FleetServerConnectionInfoNotFound {
	return &FleetServerConnectionInfoNotFound{}
}

/*FleetServerConnectionInfoNotFound handles this case with default header values.

  dedicated server not found
*/
type FleetServerConnectionInfoNotFound struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetServerConnectionInfoNotFound) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/servers/{serverID}/connectioninfo][%d] fleetServerConnectionInfoNotFound  %+v", 404, o.ToJSONString())
}

func (o *FleetServerConnectionInfoNotFound) ToJSONString() string {
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

func (o *FleetServerConnectionInfoNotFound) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetServerConnectionInfoNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewFleetServerConnectionInfoInternalServerError creates a FleetServerConnectionInfoInternalServerError with default headers values
func NewFleetServerConnectionInfoInternalServerError() *FleetServerConnectionInfoInternalServerError {
	return &FleetServerConnectionInfoInternalServerError{}
}

/*FleetServerConnectionInfoInternalServerError handles this case with default header values.

  internal server error
*/
type FleetServerConnectionInfoInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetServerConnectionInfoInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/servers/{serverID}/connectioninfo][%d] fleetServerConnectionInfoInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *FleetServerConnectionInfoInternalServerError) ToJSONString() string {
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

func (o *FleetServerConnectionInfoInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetServerConnectionInfoInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
