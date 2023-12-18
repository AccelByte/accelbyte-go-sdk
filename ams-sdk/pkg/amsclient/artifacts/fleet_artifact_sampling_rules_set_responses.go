// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package artifacts

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

// FleetArtifactSamplingRulesSetReader is a Reader for the FleetArtifactSamplingRulesSet structure.
type FleetArtifactSamplingRulesSetReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *FleetArtifactSamplingRulesSetReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewFleetArtifactSamplingRulesSetNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewFleetArtifactSamplingRulesSetBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewFleetArtifactSamplingRulesSetUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewFleetArtifactSamplingRulesSetForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewFleetArtifactSamplingRulesSetNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewFleetArtifactSamplingRulesSetInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules returns an error %d: %s", response.Code(), string(data))
	}
}

// NewFleetArtifactSamplingRulesSetNoContent creates a FleetArtifactSamplingRulesSetNoContent with default headers values
func NewFleetArtifactSamplingRulesSetNoContent() *FleetArtifactSamplingRulesSetNoContent {
	return &FleetArtifactSamplingRulesSetNoContent{}
}

/*FleetArtifactSamplingRulesSetNoContent handles this case with default header values.

  success
*/
type FleetArtifactSamplingRulesSetNoContent struct {
	Payload *amsclientmodels.APIFleetArtifactsSampleRules
}

func (o *FleetArtifactSamplingRulesSetNoContent) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules][%d] fleetArtifactSamplingRulesSetNoContent  %+v", 204, o.ToJSONString())
}

func (o *FleetArtifactSamplingRulesSetNoContent) ToJSONString() string {
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

func (o *FleetArtifactSamplingRulesSetNoContent) GetPayload() *amsclientmodels.APIFleetArtifactsSampleRules {
	return o.Payload
}

func (o *FleetArtifactSamplingRulesSetNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIFleetArtifactsSampleRules)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewFleetArtifactSamplingRulesSetBadRequest creates a FleetArtifactSamplingRulesSetBadRequest with default headers values
func NewFleetArtifactSamplingRulesSetBadRequest() *FleetArtifactSamplingRulesSetBadRequest {
	return &FleetArtifactSamplingRulesSetBadRequest{}
}

/*FleetArtifactSamplingRulesSetBadRequest handles this case with default header values.

  invalid fleet ID
*/
type FleetArtifactSamplingRulesSetBadRequest struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetArtifactSamplingRulesSetBadRequest) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules][%d] fleetArtifactSamplingRulesSetBadRequest  %+v", 400, o.ToJSONString())
}

func (o *FleetArtifactSamplingRulesSetBadRequest) ToJSONString() string {
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

func (o *FleetArtifactSamplingRulesSetBadRequest) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetArtifactSamplingRulesSetBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewFleetArtifactSamplingRulesSetUnauthorized creates a FleetArtifactSamplingRulesSetUnauthorized with default headers values
func NewFleetArtifactSamplingRulesSetUnauthorized() *FleetArtifactSamplingRulesSetUnauthorized {
	return &FleetArtifactSamplingRulesSetUnauthorized{}
}

/*FleetArtifactSamplingRulesSetUnauthorized handles this case with default header values.

  no authorization provided
*/
type FleetArtifactSamplingRulesSetUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetArtifactSamplingRulesSetUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules][%d] fleetArtifactSamplingRulesSetUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *FleetArtifactSamplingRulesSetUnauthorized) ToJSONString() string {
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

func (o *FleetArtifactSamplingRulesSetUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetArtifactSamplingRulesSetUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewFleetArtifactSamplingRulesSetForbidden creates a FleetArtifactSamplingRulesSetForbidden with default headers values
func NewFleetArtifactSamplingRulesSetForbidden() *FleetArtifactSamplingRulesSetForbidden {
	return &FleetArtifactSamplingRulesSetForbidden{}
}

/*FleetArtifactSamplingRulesSetForbidden handles this case with default header values.

  insufficient permissions
*/
type FleetArtifactSamplingRulesSetForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetArtifactSamplingRulesSetForbidden) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules][%d] fleetArtifactSamplingRulesSetForbidden  %+v", 403, o.ToJSONString())
}

func (o *FleetArtifactSamplingRulesSetForbidden) ToJSONString() string {
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

func (o *FleetArtifactSamplingRulesSetForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetArtifactSamplingRulesSetForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewFleetArtifactSamplingRulesSetNotFound creates a FleetArtifactSamplingRulesSetNotFound with default headers values
func NewFleetArtifactSamplingRulesSetNotFound() *FleetArtifactSamplingRulesSetNotFound {
	return &FleetArtifactSamplingRulesSetNotFound{}
}

/*FleetArtifactSamplingRulesSetNotFound handles this case with default header values.

  fleet not found
*/
type FleetArtifactSamplingRulesSetNotFound struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetArtifactSamplingRulesSetNotFound) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules][%d] fleetArtifactSamplingRulesSetNotFound  %+v", 404, o.ToJSONString())
}

func (o *FleetArtifactSamplingRulesSetNotFound) ToJSONString() string {
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

func (o *FleetArtifactSamplingRulesSetNotFound) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetArtifactSamplingRulesSetNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewFleetArtifactSamplingRulesSetInternalServerError creates a FleetArtifactSamplingRulesSetInternalServerError with default headers values
func NewFleetArtifactSamplingRulesSetInternalServerError() *FleetArtifactSamplingRulesSetInternalServerError {
	return &FleetArtifactSamplingRulesSetInternalServerError{}
}

/*FleetArtifactSamplingRulesSetInternalServerError handles this case with default header values.

  internal server error
*/
type FleetArtifactSamplingRulesSetInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *FleetArtifactSamplingRulesSetInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules][%d] fleetArtifactSamplingRulesSetInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *FleetArtifactSamplingRulesSetInternalServerError) ToJSONString() string {
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

func (o *FleetArtifactSamplingRulesSetInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *FleetArtifactSamplingRulesSetInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
