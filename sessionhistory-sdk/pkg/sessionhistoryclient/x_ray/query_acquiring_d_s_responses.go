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

// QueryAcquiringDSReader is a Reader for the QueryAcquiringDS structure.
type QueryAcquiringDSReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryAcquiringDSReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryAcquiringDSOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryAcquiringDSBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryAcquiringDSUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryAcquiringDSForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryAcquiringDSNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryAcquiringDSInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryAcquiringDSOK creates a QueryAcquiringDSOK with default headers values
func NewQueryAcquiringDSOK() *QueryAcquiringDSOK {
	return &QueryAcquiringDSOK{}
}

/*QueryAcquiringDSOK handles this case with default header values.

  OK
*/
type QueryAcquiringDSOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayAcquiringDsQueryResponse
}

func (o *QueryAcquiringDSOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds][%d] queryAcquiringDSOK  %+v", 200, o.ToJSONString())
}

func (o *QueryAcquiringDSOK) ToJSONString() string {
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

func (o *QueryAcquiringDSOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayAcquiringDsQueryResponse {
	return o.Payload
}

func (o *QueryAcquiringDSOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayAcquiringDsQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryAcquiringDSBadRequest creates a QueryAcquiringDSBadRequest with default headers values
func NewQueryAcquiringDSBadRequest() *QueryAcquiringDSBadRequest {
	return &QueryAcquiringDSBadRequest{}
}

/*QueryAcquiringDSBadRequest handles this case with default header values.

  Bad Request
*/
type QueryAcquiringDSBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryAcquiringDSBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds][%d] queryAcquiringDSBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryAcquiringDSBadRequest) ToJSONString() string {
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

func (o *QueryAcquiringDSBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryAcquiringDSBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryAcquiringDSUnauthorized creates a QueryAcquiringDSUnauthorized with default headers values
func NewQueryAcquiringDSUnauthorized() *QueryAcquiringDSUnauthorized {
	return &QueryAcquiringDSUnauthorized{}
}

/*QueryAcquiringDSUnauthorized handles this case with default header values.

  Unauthorized
*/
type QueryAcquiringDSUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryAcquiringDSUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds][%d] queryAcquiringDSUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryAcquiringDSUnauthorized) ToJSONString() string {
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

func (o *QueryAcquiringDSUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryAcquiringDSUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryAcquiringDSForbidden creates a QueryAcquiringDSForbidden with default headers values
func NewQueryAcquiringDSForbidden() *QueryAcquiringDSForbidden {
	return &QueryAcquiringDSForbidden{}
}

/*QueryAcquiringDSForbidden handles this case with default header values.

  Forbidden
*/
type QueryAcquiringDSForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryAcquiringDSForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds][%d] queryAcquiringDSForbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryAcquiringDSForbidden) ToJSONString() string {
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

func (o *QueryAcquiringDSForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryAcquiringDSForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryAcquiringDSNotFound creates a QueryAcquiringDSNotFound with default headers values
func NewQueryAcquiringDSNotFound() *QueryAcquiringDSNotFound {
	return &QueryAcquiringDSNotFound{}
}

/*QueryAcquiringDSNotFound handles this case with default header values.

  Not Found
*/
type QueryAcquiringDSNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryAcquiringDSNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds][%d] queryAcquiringDSNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryAcquiringDSNotFound) ToJSONString() string {
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

func (o *QueryAcquiringDSNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryAcquiringDSNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryAcquiringDSInternalServerError creates a QueryAcquiringDSInternalServerError with default headers values
func NewQueryAcquiringDSInternalServerError() *QueryAcquiringDSInternalServerError {
	return &QueryAcquiringDSInternalServerError{}
}

/*QueryAcquiringDSInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QueryAcquiringDSInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryAcquiringDSInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds][%d] queryAcquiringDSInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryAcquiringDSInternalServerError) ToJSONString() string {
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

func (o *QueryAcquiringDSInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryAcquiringDSInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
