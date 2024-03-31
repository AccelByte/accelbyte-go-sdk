// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package x_ray

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclientmodels"
)

// QueryDetailTickMatchPoolReader is a Reader for the QueryDetailTickMatchPool structure.
type QueryDetailTickMatchPoolReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryDetailTickMatchPoolReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryDetailTickMatchPoolOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryDetailTickMatchPoolBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryDetailTickMatchPoolUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryDetailTickMatchPoolForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryDetailTickMatchPoolNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryDetailTickMatchPoolInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryDetailTickMatchPoolOK creates a QueryDetailTickMatchPoolOK with default headers values
func NewQueryDetailTickMatchPoolOK() *QueryDetailTickMatchPoolOK {
	return &QueryDetailTickMatchPoolOK{}
}

/*QueryDetailTickMatchPoolOK handles this case with default header values.

  OK
*/
type QueryDetailTickMatchPoolOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayMatchPoolPodTickQueryResponse
}

func (o *QueryDetailTickMatchPoolOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks][%d] queryDetailTickMatchPoolOK  %+v", 200, o.ToJSONString())
}

func (o *QueryDetailTickMatchPoolOK) ToJSONString() string {
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

func (o *QueryDetailTickMatchPoolOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayMatchPoolPodTickQueryResponse {
	return o.Payload
}

func (o *QueryDetailTickMatchPoolOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayMatchPoolPodTickQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryDetailTickMatchPoolBadRequest creates a QueryDetailTickMatchPoolBadRequest with default headers values
func NewQueryDetailTickMatchPoolBadRequest() *QueryDetailTickMatchPoolBadRequest {
	return &QueryDetailTickMatchPoolBadRequest{}
}

/*QueryDetailTickMatchPoolBadRequest handles this case with default header values.

  Bad Request
*/
type QueryDetailTickMatchPoolBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryDetailTickMatchPoolBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks][%d] queryDetailTickMatchPoolBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryDetailTickMatchPoolBadRequest) ToJSONString() string {
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

func (o *QueryDetailTickMatchPoolBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryDetailTickMatchPoolBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryDetailTickMatchPoolUnauthorized creates a QueryDetailTickMatchPoolUnauthorized with default headers values
func NewQueryDetailTickMatchPoolUnauthorized() *QueryDetailTickMatchPoolUnauthorized {
	return &QueryDetailTickMatchPoolUnauthorized{}
}

/*QueryDetailTickMatchPoolUnauthorized handles this case with default header values.

  Unauthorized
*/
type QueryDetailTickMatchPoolUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryDetailTickMatchPoolUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks][%d] queryDetailTickMatchPoolUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryDetailTickMatchPoolUnauthorized) ToJSONString() string {
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

func (o *QueryDetailTickMatchPoolUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryDetailTickMatchPoolUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryDetailTickMatchPoolForbidden creates a QueryDetailTickMatchPoolForbidden with default headers values
func NewQueryDetailTickMatchPoolForbidden() *QueryDetailTickMatchPoolForbidden {
	return &QueryDetailTickMatchPoolForbidden{}
}

/*QueryDetailTickMatchPoolForbidden handles this case with default header values.

  Forbidden
*/
type QueryDetailTickMatchPoolForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryDetailTickMatchPoolForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks][%d] queryDetailTickMatchPoolForbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryDetailTickMatchPoolForbidden) ToJSONString() string {
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

func (o *QueryDetailTickMatchPoolForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryDetailTickMatchPoolForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryDetailTickMatchPoolNotFound creates a QueryDetailTickMatchPoolNotFound with default headers values
func NewQueryDetailTickMatchPoolNotFound() *QueryDetailTickMatchPoolNotFound {
	return &QueryDetailTickMatchPoolNotFound{}
}

/*QueryDetailTickMatchPoolNotFound handles this case with default header values.

  Not Found
*/
type QueryDetailTickMatchPoolNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryDetailTickMatchPoolNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks][%d] queryDetailTickMatchPoolNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryDetailTickMatchPoolNotFound) ToJSONString() string {
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

func (o *QueryDetailTickMatchPoolNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryDetailTickMatchPoolNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryDetailTickMatchPoolInternalServerError creates a QueryDetailTickMatchPoolInternalServerError with default headers values
func NewQueryDetailTickMatchPoolInternalServerError() *QueryDetailTickMatchPoolInternalServerError {
	return &QueryDetailTickMatchPoolInternalServerError{}
}

/*QueryDetailTickMatchPoolInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QueryDetailTickMatchPoolInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryDetailTickMatchPoolInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks][%d] queryDetailTickMatchPoolInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryDetailTickMatchPoolInternalServerError) ToJSONString() string {
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

func (o *QueryDetailTickMatchPoolInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryDetailTickMatchPoolInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
