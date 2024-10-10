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

// FleetServerHistoryReader is a Reader for the FleetServerHistory structure.
type FleetServerHistoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *FleetServerHistoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewFleetServerHistoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewFleetServerHistoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewFleetServerHistoryUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewFleetServerHistoryForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewFleetServerHistoryInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/servers/history returns an error %d: %s", response.Code(), string(data))
	}
}

// NewFleetServerHistoryOK creates a FleetServerHistoryOK with default headers values
func NewFleetServerHistoryOK() *FleetServerHistoryOK {
	return &FleetServerHistoryOK{}
}

/*FleetServerHistoryOK handles this case with default header values.

  success
*/
type FleetServerHistoryOK struct {
	Payload *amsclientmodels.APIDSHistoryList
}

func (o *FleetServerHistoryOK) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/servers/history][%d] fleetServerHistoryOK  %+v", 200, o.ToJSONString())
}

func (o *FleetServerHistoryOK) ToJSONString() string {
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

func (o *FleetServerHistoryOK) GetPayload() *amsclientmodels.APIDSHistoryList {
	return o.Payload
}

func (o *FleetServerHistoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIDSHistoryList)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewFleetServerHistoryBadRequest creates a FleetServerHistoryBadRequest with default headers values
func NewFleetServerHistoryBadRequest() *FleetServerHistoryBadRequest {
	return &FleetServerHistoryBadRequest{}
}

/*FleetServerHistoryBadRequest handles this case with default header values.

  bad request
*/
type FleetServerHistoryBadRequest struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetServerHistoryBadRequest) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/servers/history][%d] fleetServerHistoryBadRequest  %+v", 400, o.ToJSONString())
}

func (o *FleetServerHistoryBadRequest) ToJSONString() string {
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

func (o *FleetServerHistoryBadRequest) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetServerHistoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFleetServerHistoryUnauthorized creates a FleetServerHistoryUnauthorized with default headers values
func NewFleetServerHistoryUnauthorized() *FleetServerHistoryUnauthorized {
	return &FleetServerHistoryUnauthorized{}
}

/*FleetServerHistoryUnauthorized handles this case with default header values.

  no authorization provided
*/
type FleetServerHistoryUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetServerHistoryUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/servers/history][%d] fleetServerHistoryUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *FleetServerHistoryUnauthorized) ToJSONString() string {
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

func (o *FleetServerHistoryUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetServerHistoryUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFleetServerHistoryForbidden creates a FleetServerHistoryForbidden with default headers values
func NewFleetServerHistoryForbidden() *FleetServerHistoryForbidden {
	return &FleetServerHistoryForbidden{}
}

/*FleetServerHistoryForbidden handles this case with default header values.

  insufficient permissions
*/
type FleetServerHistoryForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetServerHistoryForbidden) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/servers/history][%d] fleetServerHistoryForbidden  %+v", 403, o.ToJSONString())
}

func (o *FleetServerHistoryForbidden) ToJSONString() string {
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

func (o *FleetServerHistoryForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetServerHistoryForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewFleetServerHistoryInternalServerError creates a FleetServerHistoryInternalServerError with default headers values
func NewFleetServerHistoryInternalServerError() *FleetServerHistoryInternalServerError {
	return &FleetServerHistoryInternalServerError{}
}

/*FleetServerHistoryInternalServerError handles this case with default header values.

  internal server error
*/
type FleetServerHistoryInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetServerHistoryInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/servers/history][%d] fleetServerHistoryInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *FleetServerHistoryInternalServerError) ToJSONString() string {
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

func (o *FleetServerHistoryInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetServerHistoryInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
