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

// GetPlayerMetricReader is a Reader for the GetPlayerMetric structure.
type GetPlayerMetricReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPlayerMetricReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPlayerMetricOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetPlayerMetricUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetPlayerMetricForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetPlayerMetricNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetPlayerMetricInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/player returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPlayerMetricOK creates a GetPlayerMetricOK with default headers values
func NewGetPlayerMetricOK() *GetPlayerMetricOK {
	return &GetPlayerMetricOK{}
}

/*GetPlayerMetricOK handles this case with default header values.

  Created
*/
type GetPlayerMetricOK struct {
	Payload *match2clientmodels.APIPlayerMetricRecord
}

func (o *GetPlayerMetricOK) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/player][%d] getPlayerMetricOK  %+v", 200, o.ToJSONString())
}

func (o *GetPlayerMetricOK) ToJSONString() string {
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

func (o *GetPlayerMetricOK) GetPayload() *match2clientmodels.APIPlayerMetricRecord {
	return o.Payload
}

func (o *GetPlayerMetricOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetPlayerMetricUnauthorized creates a GetPlayerMetricUnauthorized with default headers values
func NewGetPlayerMetricUnauthorized() *GetPlayerMetricUnauthorized {
	return &GetPlayerMetricUnauthorized{}
}

/*GetPlayerMetricUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetPlayerMetricUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *GetPlayerMetricUnauthorized) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/player][%d] getPlayerMetricUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetPlayerMetricUnauthorized) ToJSONString() string {
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

func (o *GetPlayerMetricUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *GetPlayerMetricUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetPlayerMetricForbidden creates a GetPlayerMetricForbidden with default headers values
func NewGetPlayerMetricForbidden() *GetPlayerMetricForbidden {
	return &GetPlayerMetricForbidden{}
}

/*GetPlayerMetricForbidden handles this case with default header values.

  Forbidden
*/
type GetPlayerMetricForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *GetPlayerMetricForbidden) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/player][%d] getPlayerMetricForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetPlayerMetricForbidden) ToJSONString() string {
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

func (o *GetPlayerMetricForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *GetPlayerMetricForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetPlayerMetricNotFound creates a GetPlayerMetricNotFound with default headers values
func NewGetPlayerMetricNotFound() *GetPlayerMetricNotFound {
	return &GetPlayerMetricNotFound{}
}

/*GetPlayerMetricNotFound handles this case with default header values.

  Not Found
*/
type GetPlayerMetricNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *GetPlayerMetricNotFound) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/player][%d] getPlayerMetricNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetPlayerMetricNotFound) ToJSONString() string {
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

func (o *GetPlayerMetricNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *GetPlayerMetricNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetPlayerMetricInternalServerError creates a GetPlayerMetricInternalServerError with default headers values
func NewGetPlayerMetricInternalServerError() *GetPlayerMetricInternalServerError {
	return &GetPlayerMetricInternalServerError{}
}

/*GetPlayerMetricInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetPlayerMetricInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *GetPlayerMetricInternalServerError) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/player][%d] getPlayerMetricInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetPlayerMetricInternalServerError) ToJSONString() string {
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

func (o *GetPlayerMetricInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *GetPlayerMetricInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
