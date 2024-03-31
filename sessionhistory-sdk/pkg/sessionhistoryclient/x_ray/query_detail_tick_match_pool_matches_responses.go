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

// QueryDetailTickMatchPoolMatchesReader is a Reader for the QueryDetailTickMatchPoolMatches structure.
type QueryDetailTickMatchPoolMatchesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryDetailTickMatchPoolMatchesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryDetailTickMatchPoolMatchesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryDetailTickMatchPoolMatchesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryDetailTickMatchPoolMatchesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryDetailTickMatchPoolMatchesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryDetailTickMatchPoolMatchesNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryDetailTickMatchPoolMatchesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/matches returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryDetailTickMatchPoolMatchesOK creates a QueryDetailTickMatchPoolMatchesOK with default headers values
func NewQueryDetailTickMatchPoolMatchesOK() *QueryDetailTickMatchPoolMatchesOK {
	return &QueryDetailTickMatchPoolMatchesOK{}
}

/*QueryDetailTickMatchPoolMatchesOK handles this case with default header values.

  OK
*/
type QueryDetailTickMatchPoolMatchesOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayMatchPoolPodTickMatchResponse
}

func (o *QueryDetailTickMatchPoolMatchesOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/matches][%d] queryDetailTickMatchPoolMatchesOK  %+v", 200, o.ToJSONString())
}

func (o *QueryDetailTickMatchPoolMatchesOK) ToJSONString() string {
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

func (o *QueryDetailTickMatchPoolMatchesOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayMatchPoolPodTickMatchResponse {
	return o.Payload
}

func (o *QueryDetailTickMatchPoolMatchesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayMatchPoolPodTickMatchResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryDetailTickMatchPoolMatchesBadRequest creates a QueryDetailTickMatchPoolMatchesBadRequest with default headers values
func NewQueryDetailTickMatchPoolMatchesBadRequest() *QueryDetailTickMatchPoolMatchesBadRequest {
	return &QueryDetailTickMatchPoolMatchesBadRequest{}
}

/*QueryDetailTickMatchPoolMatchesBadRequest handles this case with default header values.

  Bad Request
*/
type QueryDetailTickMatchPoolMatchesBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryDetailTickMatchPoolMatchesBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/matches][%d] queryDetailTickMatchPoolMatchesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryDetailTickMatchPoolMatchesBadRequest) ToJSONString() string {
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

func (o *QueryDetailTickMatchPoolMatchesBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryDetailTickMatchPoolMatchesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryDetailTickMatchPoolMatchesUnauthorized creates a QueryDetailTickMatchPoolMatchesUnauthorized with default headers values
func NewQueryDetailTickMatchPoolMatchesUnauthorized() *QueryDetailTickMatchPoolMatchesUnauthorized {
	return &QueryDetailTickMatchPoolMatchesUnauthorized{}
}

/*QueryDetailTickMatchPoolMatchesUnauthorized handles this case with default header values.

  Unauthorized
*/
type QueryDetailTickMatchPoolMatchesUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryDetailTickMatchPoolMatchesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/matches][%d] queryDetailTickMatchPoolMatchesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryDetailTickMatchPoolMatchesUnauthorized) ToJSONString() string {
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

func (o *QueryDetailTickMatchPoolMatchesUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryDetailTickMatchPoolMatchesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryDetailTickMatchPoolMatchesForbidden creates a QueryDetailTickMatchPoolMatchesForbidden with default headers values
func NewQueryDetailTickMatchPoolMatchesForbidden() *QueryDetailTickMatchPoolMatchesForbidden {
	return &QueryDetailTickMatchPoolMatchesForbidden{}
}

/*QueryDetailTickMatchPoolMatchesForbidden handles this case with default header values.

  Forbidden
*/
type QueryDetailTickMatchPoolMatchesForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryDetailTickMatchPoolMatchesForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/matches][%d] queryDetailTickMatchPoolMatchesForbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryDetailTickMatchPoolMatchesForbidden) ToJSONString() string {
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

func (o *QueryDetailTickMatchPoolMatchesForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryDetailTickMatchPoolMatchesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryDetailTickMatchPoolMatchesNotFound creates a QueryDetailTickMatchPoolMatchesNotFound with default headers values
func NewQueryDetailTickMatchPoolMatchesNotFound() *QueryDetailTickMatchPoolMatchesNotFound {
	return &QueryDetailTickMatchPoolMatchesNotFound{}
}

/*QueryDetailTickMatchPoolMatchesNotFound handles this case with default header values.

  Not Found
*/
type QueryDetailTickMatchPoolMatchesNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryDetailTickMatchPoolMatchesNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/matches][%d] queryDetailTickMatchPoolMatchesNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryDetailTickMatchPoolMatchesNotFound) ToJSONString() string {
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

func (o *QueryDetailTickMatchPoolMatchesNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryDetailTickMatchPoolMatchesNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryDetailTickMatchPoolMatchesInternalServerError creates a QueryDetailTickMatchPoolMatchesInternalServerError with default headers values
func NewQueryDetailTickMatchPoolMatchesInternalServerError() *QueryDetailTickMatchPoolMatchesInternalServerError {
	return &QueryDetailTickMatchPoolMatchesInternalServerError{}
}

/*QueryDetailTickMatchPoolMatchesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QueryDetailTickMatchPoolMatchesInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryDetailTickMatchPoolMatchesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/matches][%d] queryDetailTickMatchPoolMatchesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryDetailTickMatchPoolMatchesInternalServerError) ToJSONString() string {
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

func (o *QueryDetailTickMatchPoolMatchesInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryDetailTickMatchPoolMatchesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
