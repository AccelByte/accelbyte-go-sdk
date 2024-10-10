// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match_pools

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// PublicGetPlayerMetricReader is a Reader for the PublicGetPlayerMetric structure.
type PublicGetPlayerMetricReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetPlayerMetricReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetPlayerMetricOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetPlayerMetricUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetPlayerMetricForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetPlayerMetricNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetPlayerMetricInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /match2/v1/public/namespaces/{namespace}/match-pools/{pool}/metrics/player returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetPlayerMetricOK creates a PublicGetPlayerMetricOK with default headers values
func NewPublicGetPlayerMetricOK() *PublicGetPlayerMetricOK {
	return &PublicGetPlayerMetricOK{}
}

/*PublicGetPlayerMetricOK handles this case with default header values.

  Created
*/
type PublicGetPlayerMetricOK struct {
	Payload *match2clientmodels.APIPlayerMetricRecord
}

func (o *PublicGetPlayerMetricOK) Error() string {
	return fmt.Sprintf("[GET /match2/v1/public/namespaces/{namespace}/match-pools/{pool}/metrics/player][%d] publicGetPlayerMetricOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetPlayerMetricOK) ToJSONString() string {
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

func (o *PublicGetPlayerMetricOK) GetPayload() *match2clientmodels.APIPlayerMetricRecord {
	return o.Payload
}

func (o *PublicGetPlayerMetricOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APIPlayerMetricRecord)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetPlayerMetricUnauthorized creates a PublicGetPlayerMetricUnauthorized with default headers values
func NewPublicGetPlayerMetricUnauthorized() *PublicGetPlayerMetricUnauthorized {
	return &PublicGetPlayerMetricUnauthorized{}
}

/*PublicGetPlayerMetricUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetPlayerMetricUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *PublicGetPlayerMetricUnauthorized) Error() string {
	return fmt.Sprintf("[GET /match2/v1/public/namespaces/{namespace}/match-pools/{pool}/metrics/player][%d] publicGetPlayerMetricUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetPlayerMetricUnauthorized) ToJSONString() string {
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

func (o *PublicGetPlayerMetricUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetPlayerMetricUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetPlayerMetricForbidden creates a PublicGetPlayerMetricForbidden with default headers values
func NewPublicGetPlayerMetricForbidden() *PublicGetPlayerMetricForbidden {
	return &PublicGetPlayerMetricForbidden{}
}

/*PublicGetPlayerMetricForbidden handles this case with default header values.

  Forbidden
*/
type PublicGetPlayerMetricForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *PublicGetPlayerMetricForbidden) Error() string {
	return fmt.Sprintf("[GET /match2/v1/public/namespaces/{namespace}/match-pools/{pool}/metrics/player][%d] publicGetPlayerMetricForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetPlayerMetricForbidden) ToJSONString() string {
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

func (o *PublicGetPlayerMetricForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetPlayerMetricForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetPlayerMetricNotFound creates a PublicGetPlayerMetricNotFound with default headers values
func NewPublicGetPlayerMetricNotFound() *PublicGetPlayerMetricNotFound {
	return &PublicGetPlayerMetricNotFound{}
}

/*PublicGetPlayerMetricNotFound handles this case with default header values.

  Not Found
*/
type PublicGetPlayerMetricNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *PublicGetPlayerMetricNotFound) Error() string {
	return fmt.Sprintf("[GET /match2/v1/public/namespaces/{namespace}/match-pools/{pool}/metrics/player][%d] publicGetPlayerMetricNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetPlayerMetricNotFound) ToJSONString() string {
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

func (o *PublicGetPlayerMetricNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetPlayerMetricNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetPlayerMetricInternalServerError creates a PublicGetPlayerMetricInternalServerError with default headers values
func NewPublicGetPlayerMetricInternalServerError() *PublicGetPlayerMetricInternalServerError {
	return &PublicGetPlayerMetricInternalServerError{}
}

/*PublicGetPlayerMetricInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetPlayerMetricInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *PublicGetPlayerMetricInternalServerError) Error() string {
	return fmt.Sprintf("[GET /match2/v1/public/namespaces/{namespace}/match-pools/{pool}/metrics/player][%d] publicGetPlayerMetricInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetPlayerMetricInternalServerError) ToJSONString() string {
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

func (o *PublicGetPlayerMetricInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetPlayerMetricInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
