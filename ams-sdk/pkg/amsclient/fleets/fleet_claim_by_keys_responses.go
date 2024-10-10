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

// FleetClaimByKeysReader is a Reader for the FleetClaimByKeys structure.
type FleetClaimByKeysReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *FleetClaimByKeysReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewFleetClaimByKeysOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewFleetClaimByKeysBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewFleetClaimByKeysUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewFleetClaimByKeysForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewFleetClaimByKeysNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewFleetClaimByKeysInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ams/v1/namespaces/{namespace}/servers/claim returns an error %d: %s", response.Code(), string(data))
	}
}

// NewFleetClaimByKeysOK creates a FleetClaimByKeysOK with default headers values
func NewFleetClaimByKeysOK() *FleetClaimByKeysOK {
	return &FleetClaimByKeysOK{}
}

/*FleetClaimByKeysOK handles this case with default header values.

  success
*/
type FleetClaimByKeysOK struct {
	Payload *amsclientmodels.APIFleetClaimResponse
}

func (o *FleetClaimByKeysOK) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/namespaces/{namespace}/servers/claim][%d] fleetClaimByKeysOK  %+v", 200, o.ToJSONString())
}

func (o *FleetClaimByKeysOK) ToJSONString() string {
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

func (o *FleetClaimByKeysOK) GetPayload() *amsclientmodels.APIFleetClaimResponse {
	return o.Payload
}

func (o *FleetClaimByKeysOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIFleetClaimResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewFleetClaimByKeysBadRequest creates a FleetClaimByKeysBadRequest with default headers values
func NewFleetClaimByKeysBadRequest() *FleetClaimByKeysBadRequest {
	return &FleetClaimByKeysBadRequest{}
}

/*FleetClaimByKeysBadRequest handles this case with default header values.

  bad request
*/
type FleetClaimByKeysBadRequest struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetClaimByKeysBadRequest) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/namespaces/{namespace}/servers/claim][%d] fleetClaimByKeysBadRequest  %+v", 400, o.ToJSONString())
}

func (o *FleetClaimByKeysBadRequest) ToJSONString() string {
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

func (o *FleetClaimByKeysBadRequest) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetClaimByKeysBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFleetClaimByKeysUnauthorized creates a FleetClaimByKeysUnauthorized with default headers values
func NewFleetClaimByKeysUnauthorized() *FleetClaimByKeysUnauthorized {
	return &FleetClaimByKeysUnauthorized{}
}

/*FleetClaimByKeysUnauthorized handles this case with default header values.

  no authorization provided
*/
type FleetClaimByKeysUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetClaimByKeysUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/namespaces/{namespace}/servers/claim][%d] fleetClaimByKeysUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *FleetClaimByKeysUnauthorized) ToJSONString() string {
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

func (o *FleetClaimByKeysUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetClaimByKeysUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFleetClaimByKeysForbidden creates a FleetClaimByKeysForbidden with default headers values
func NewFleetClaimByKeysForbidden() *FleetClaimByKeysForbidden {
	return &FleetClaimByKeysForbidden{}
}

/*FleetClaimByKeysForbidden handles this case with default header values.

  insufficient permissions
*/
type FleetClaimByKeysForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetClaimByKeysForbidden) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/namespaces/{namespace}/servers/claim][%d] fleetClaimByKeysForbidden  %+v", 403, o.ToJSONString())
}

func (o *FleetClaimByKeysForbidden) ToJSONString() string {
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

func (o *FleetClaimByKeysForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetClaimByKeysForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFleetClaimByKeysNotFound creates a FleetClaimByKeysNotFound with default headers values
func NewFleetClaimByKeysNotFound() *FleetClaimByKeysNotFound {
	return &FleetClaimByKeysNotFound{}
}

/*FleetClaimByKeysNotFound handles this case with default header values.

  no matching DS available
*/
type FleetClaimByKeysNotFound struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetClaimByKeysNotFound) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/namespaces/{namespace}/servers/claim][%d] fleetClaimByKeysNotFound  %+v", 404, o.ToJSONString())
}

func (o *FleetClaimByKeysNotFound) ToJSONString() string {
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

func (o *FleetClaimByKeysNotFound) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetClaimByKeysNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFleetClaimByKeysInternalServerError creates a FleetClaimByKeysInternalServerError with default headers values
func NewFleetClaimByKeysInternalServerError() *FleetClaimByKeysInternalServerError {
	return &FleetClaimByKeysInternalServerError{}
}

/*FleetClaimByKeysInternalServerError handles this case with default header values.

  internal server error
*/
type FleetClaimByKeysInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetClaimByKeysInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/namespaces/{namespace}/servers/claim][%d] fleetClaimByKeysInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *FleetClaimByKeysInternalServerError) ToJSONString() string {
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

func (o *FleetClaimByKeysInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetClaimByKeysInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
