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

// FleetClaimByIDReader is a Reader for the FleetClaimByID structure.
type FleetClaimByIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *FleetClaimByIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewFleetClaimByIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewFleetClaimByIDBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewFleetClaimByIDUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewFleetClaimByIDForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewFleetClaimByIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewFleetClaimByIDInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ams/v1/namespaces/{namespace}/fleets/{fleetID}/claim returns an error %d: %s", response.Code(), string(data))
	}
}

// NewFleetClaimByIDOK creates a FleetClaimByIDOK with default headers values
func NewFleetClaimByIDOK() *FleetClaimByIDOK {
	return &FleetClaimByIDOK{}
}

/*FleetClaimByIDOK handles this case with default header values.

  success
*/
type FleetClaimByIDOK struct {
	Payload *amsclientmodels.APIFleetClaimResponse
}

func (o *FleetClaimByIDOK) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/namespaces/{namespace}/fleets/{fleetID}/claim][%d] fleetClaimByIdOK  %+v", 200, o.ToJSONString())
}

func (o *FleetClaimByIDOK) ToJSONString() string {
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

func (o *FleetClaimByIDOK) GetPayload() *amsclientmodels.APIFleetClaimResponse {
	return o.Payload
}

func (o *FleetClaimByIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFleetClaimByIDBadRequest creates a FleetClaimByIDBadRequest with default headers values
func NewFleetClaimByIDBadRequest() *FleetClaimByIDBadRequest {
	return &FleetClaimByIDBadRequest{}
}

/*FleetClaimByIDBadRequest handles this case with default header values.

  bad request
*/
type FleetClaimByIDBadRequest struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetClaimByIDBadRequest) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/namespaces/{namespace}/fleets/{fleetID}/claim][%d] fleetClaimByIdBadRequest  %+v", 400, o.ToJSONString())
}

func (o *FleetClaimByIDBadRequest) ToJSONString() string {
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

func (o *FleetClaimByIDBadRequest) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetClaimByIDBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFleetClaimByIDUnauthorized creates a FleetClaimByIDUnauthorized with default headers values
func NewFleetClaimByIDUnauthorized() *FleetClaimByIDUnauthorized {
	return &FleetClaimByIDUnauthorized{}
}

/*FleetClaimByIDUnauthorized handles this case with default header values.

  no authorization provided
*/
type FleetClaimByIDUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetClaimByIDUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/namespaces/{namespace}/fleets/{fleetID}/claim][%d] fleetClaimByIdUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *FleetClaimByIDUnauthorized) ToJSONString() string {
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

func (o *FleetClaimByIDUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetClaimByIDUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFleetClaimByIDForbidden creates a FleetClaimByIDForbidden with default headers values
func NewFleetClaimByIDForbidden() *FleetClaimByIDForbidden {
	return &FleetClaimByIDForbidden{}
}

/*FleetClaimByIDForbidden handles this case with default header values.

  insufficient permissions
*/
type FleetClaimByIDForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetClaimByIDForbidden) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/namespaces/{namespace}/fleets/{fleetID}/claim][%d] fleetClaimByIdForbidden  %+v", 403, o.ToJSONString())
}

func (o *FleetClaimByIDForbidden) ToJSONString() string {
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

func (o *FleetClaimByIDForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetClaimByIDForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFleetClaimByIDNotFound creates a FleetClaimByIDNotFound with default headers values
func NewFleetClaimByIDNotFound() *FleetClaimByIDNotFound {
	return &FleetClaimByIDNotFound{}
}

/*FleetClaimByIDNotFound handles this case with default header values.

  fleet not found
*/
type FleetClaimByIDNotFound struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetClaimByIDNotFound) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/namespaces/{namespace}/fleets/{fleetID}/claim][%d] fleetClaimByIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *FleetClaimByIDNotFound) ToJSONString() string {
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

func (o *FleetClaimByIDNotFound) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetClaimByIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFleetClaimByIDInternalServerError creates a FleetClaimByIDInternalServerError with default headers values
func NewFleetClaimByIDInternalServerError() *FleetClaimByIDInternalServerError {
	return &FleetClaimByIDInternalServerError{}
}

/*FleetClaimByIDInternalServerError handles this case with default header values.

  internal server error
*/
type FleetClaimByIDInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetClaimByIDInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/namespaces/{namespace}/fleets/{fleetID}/claim][%d] fleetClaimByIdInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *FleetClaimByIDInternalServerError) ToJSONString() string {
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

func (o *FleetClaimByIDInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetClaimByIDInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
