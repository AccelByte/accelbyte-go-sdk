// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package images

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

// FleetArtifactSamplingRulesGetReader is a Reader for the FleetArtifactSamplingRulesGet structure.
type FleetArtifactSamplingRulesGetReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *FleetArtifactSamplingRulesGetReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewFleetArtifactSamplingRulesGetOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewFleetArtifactSamplingRulesGetBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewFleetArtifactSamplingRulesGetUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewFleetArtifactSamplingRulesGetForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewFleetArtifactSamplingRulesGetNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewFleetArtifactSamplingRulesGetInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules returns an error %d: %s", response.Code(), string(data))
	}
}

// NewFleetArtifactSamplingRulesGetOK creates a FleetArtifactSamplingRulesGetOK with default headers values
func NewFleetArtifactSamplingRulesGetOK() *FleetArtifactSamplingRulesGetOK {
	return &FleetArtifactSamplingRulesGetOK{}
}

/*FleetArtifactSamplingRulesGetOK handles this case with default header values.

  success
*/
type FleetArtifactSamplingRulesGetOK struct {
	Payload *amsclientmodels.APIFleetArtifactsSampleRulesResponse
}

func (o *FleetArtifactSamplingRulesGetOK) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules][%d] fleetArtifactSamplingRulesGetOK  %+v", 200, o.ToJSONString())
}

func (o *FleetArtifactSamplingRulesGetOK) ToJSONString() string {
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

func (o *FleetArtifactSamplingRulesGetOK) GetPayload() *amsclientmodels.APIFleetArtifactsSampleRulesResponse {
	return o.Payload
}

func (o *FleetArtifactSamplingRulesGetOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIFleetArtifactsSampleRulesResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewFleetArtifactSamplingRulesGetBadRequest creates a FleetArtifactSamplingRulesGetBadRequest with default headers values
func NewFleetArtifactSamplingRulesGetBadRequest() *FleetArtifactSamplingRulesGetBadRequest {
	return &FleetArtifactSamplingRulesGetBadRequest{}
}

/*FleetArtifactSamplingRulesGetBadRequest handles this case with default header values.

  invalid fleet ID
*/
type FleetArtifactSamplingRulesGetBadRequest struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetArtifactSamplingRulesGetBadRequest) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules][%d] fleetArtifactSamplingRulesGetBadRequest  %+v", 400, o.ToJSONString())
}

func (o *FleetArtifactSamplingRulesGetBadRequest) ToJSONString() string {
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

func (o *FleetArtifactSamplingRulesGetBadRequest) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetArtifactSamplingRulesGetBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewFleetArtifactSamplingRulesGetUnauthorized creates a FleetArtifactSamplingRulesGetUnauthorized with default headers values
func NewFleetArtifactSamplingRulesGetUnauthorized() *FleetArtifactSamplingRulesGetUnauthorized {
	return &FleetArtifactSamplingRulesGetUnauthorized{}
}

/*FleetArtifactSamplingRulesGetUnauthorized handles this case with default header values.

  no authorization provided
*/
type FleetArtifactSamplingRulesGetUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetArtifactSamplingRulesGetUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules][%d] fleetArtifactSamplingRulesGetUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *FleetArtifactSamplingRulesGetUnauthorized) ToJSONString() string {
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

func (o *FleetArtifactSamplingRulesGetUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetArtifactSamplingRulesGetUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewFleetArtifactSamplingRulesGetForbidden creates a FleetArtifactSamplingRulesGetForbidden with default headers values
func NewFleetArtifactSamplingRulesGetForbidden() *FleetArtifactSamplingRulesGetForbidden {
	return &FleetArtifactSamplingRulesGetForbidden{}
}

/*FleetArtifactSamplingRulesGetForbidden handles this case with default header values.

  insufficient permissions
*/
type FleetArtifactSamplingRulesGetForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetArtifactSamplingRulesGetForbidden) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules][%d] fleetArtifactSamplingRulesGetForbidden  %+v", 403, o.ToJSONString())
}

func (o *FleetArtifactSamplingRulesGetForbidden) ToJSONString() string {
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

func (o *FleetArtifactSamplingRulesGetForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetArtifactSamplingRulesGetForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewFleetArtifactSamplingRulesGetNotFound creates a FleetArtifactSamplingRulesGetNotFound with default headers values
func NewFleetArtifactSamplingRulesGetNotFound() *FleetArtifactSamplingRulesGetNotFound {
	return &FleetArtifactSamplingRulesGetNotFound{}
}

/*FleetArtifactSamplingRulesGetNotFound handles this case with default header values.

  artifact sampling rules not found for fleet
*/
type FleetArtifactSamplingRulesGetNotFound struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetArtifactSamplingRulesGetNotFound) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules][%d] fleetArtifactSamplingRulesGetNotFound  %+v", 404, o.ToJSONString())
}

func (o *FleetArtifactSamplingRulesGetNotFound) ToJSONString() string {
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

func (o *FleetArtifactSamplingRulesGetNotFound) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetArtifactSamplingRulesGetNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewFleetArtifactSamplingRulesGetInternalServerError creates a FleetArtifactSamplingRulesGetInternalServerError with default headers values
func NewFleetArtifactSamplingRulesGetInternalServerError() *FleetArtifactSamplingRulesGetInternalServerError {
	return &FleetArtifactSamplingRulesGetInternalServerError{}
}

/*FleetArtifactSamplingRulesGetInternalServerError handles this case with default header values.

  internal server error
*/
type FleetArtifactSamplingRulesGetInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetArtifactSamplingRulesGetInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules][%d] fleetArtifactSamplingRulesGetInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *FleetArtifactSamplingRulesGetInternalServerError) ToJSONString() string {
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

func (o *FleetArtifactSamplingRulesGetInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetArtifactSamplingRulesGetInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
