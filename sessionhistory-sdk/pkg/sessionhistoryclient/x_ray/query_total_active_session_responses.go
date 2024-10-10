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

// QueryTotalActiveSessionReader is a Reader for the QueryTotalActiveSession structure.
type QueryTotalActiveSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryTotalActiveSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryTotalActiveSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryTotalActiveSessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryTotalActiveSessionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryTotalActiveSessionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryTotalActiveSessionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryTotalActiveSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-active-session returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryTotalActiveSessionOK creates a QueryTotalActiveSessionOK with default headers values
func NewQueryTotalActiveSessionOK() *QueryTotalActiveSessionOK {
	return &QueryTotalActiveSessionOK{}
}

/*QueryTotalActiveSessionOK handles this case with default header values.

  OK
*/
type QueryTotalActiveSessionOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayTotalActiveSessionQueryResponse
}

func (o *QueryTotalActiveSessionOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-active-session][%d] queryTotalActiveSessionOK  %+v", 200, o.ToJSONString())
}

func (o *QueryTotalActiveSessionOK) ToJSONString() string {
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

func (o *QueryTotalActiveSessionOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayTotalActiveSessionQueryResponse {
	return o.Payload
}

func (o *QueryTotalActiveSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayTotalActiveSessionQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryTotalActiveSessionBadRequest creates a QueryTotalActiveSessionBadRequest with default headers values
func NewQueryTotalActiveSessionBadRequest() *QueryTotalActiveSessionBadRequest {
	return &QueryTotalActiveSessionBadRequest{}
}

/*QueryTotalActiveSessionBadRequest handles this case with default header values.

  Bad Request
*/
type QueryTotalActiveSessionBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalActiveSessionBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-active-session][%d] queryTotalActiveSessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryTotalActiveSessionBadRequest) ToJSONString() string {
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

func (o *QueryTotalActiveSessionBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalActiveSessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryTotalActiveSessionUnauthorized creates a QueryTotalActiveSessionUnauthorized with default headers values
func NewQueryTotalActiveSessionUnauthorized() *QueryTotalActiveSessionUnauthorized {
	return &QueryTotalActiveSessionUnauthorized{}
}

/*QueryTotalActiveSessionUnauthorized handles this case with default header values.

  Unauthorized
*/
type QueryTotalActiveSessionUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalActiveSessionUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-active-session][%d] queryTotalActiveSessionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryTotalActiveSessionUnauthorized) ToJSONString() string {
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

func (o *QueryTotalActiveSessionUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalActiveSessionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryTotalActiveSessionForbidden creates a QueryTotalActiveSessionForbidden with default headers values
func NewQueryTotalActiveSessionForbidden() *QueryTotalActiveSessionForbidden {
	return &QueryTotalActiveSessionForbidden{}
}

/*QueryTotalActiveSessionForbidden handles this case with default header values.

  Forbidden
*/
type QueryTotalActiveSessionForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalActiveSessionForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-active-session][%d] queryTotalActiveSessionForbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryTotalActiveSessionForbidden) ToJSONString() string {
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

func (o *QueryTotalActiveSessionForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalActiveSessionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryTotalActiveSessionNotFound creates a QueryTotalActiveSessionNotFound with default headers values
func NewQueryTotalActiveSessionNotFound() *QueryTotalActiveSessionNotFound {
	return &QueryTotalActiveSessionNotFound{}
}

/*QueryTotalActiveSessionNotFound handles this case with default header values.

  Not Found
*/
type QueryTotalActiveSessionNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalActiveSessionNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-active-session][%d] queryTotalActiveSessionNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryTotalActiveSessionNotFound) ToJSONString() string {
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

func (o *QueryTotalActiveSessionNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalActiveSessionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryTotalActiveSessionInternalServerError creates a QueryTotalActiveSessionInternalServerError with default headers values
func NewQueryTotalActiveSessionInternalServerError() *QueryTotalActiveSessionInternalServerError {
	return &QueryTotalActiveSessionInternalServerError{}
}

/*QueryTotalActiveSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QueryTotalActiveSessionInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalActiveSessionInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-active-session][%d] queryTotalActiveSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryTotalActiveSessionInternalServerError) ToJSONString() string {
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

func (o *QueryTotalActiveSessionInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalActiveSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
