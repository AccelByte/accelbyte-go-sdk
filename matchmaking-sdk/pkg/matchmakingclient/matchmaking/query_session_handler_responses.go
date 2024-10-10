// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmaking

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
)

// QuerySessionHandlerReader is a Reader for the QuerySessionHandler structure.
type QuerySessionHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QuerySessionHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQuerySessionHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQuerySessionHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQuerySessionHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQuerySessionHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQuerySessionHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQuerySessionHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /matchmaking/namespaces/{namespace}/sessions/{matchID}/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQuerySessionHandlerOK creates a QuerySessionHandlerOK with default headers values
func NewQuerySessionHandlerOK() *QuerySessionHandlerOK {
	return &QuerySessionHandlerOK{}
}

/*QuerySessionHandlerOK handles this case with default header values.

  OK
*/
type QuerySessionHandlerOK struct {
	Payload *matchmakingclientmodels.ModelsMatchmakingResult
}

func (o *QuerySessionHandlerOK) Error() string {
	return fmt.Sprintf("[GET /matchmaking/namespaces/{namespace}/sessions/{matchID}/status][%d] querySessionHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *QuerySessionHandlerOK) ToJSONString() string {
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

func (o *QuerySessionHandlerOK) GetPayload() *matchmakingclientmodels.ModelsMatchmakingResult {
	return o.Payload
}

func (o *QuerySessionHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ModelsMatchmakingResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQuerySessionHandlerBadRequest creates a QuerySessionHandlerBadRequest with default headers values
func NewQuerySessionHandlerBadRequest() *QuerySessionHandlerBadRequest {
	return &QuerySessionHandlerBadRequest{}
}

/*QuerySessionHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type QuerySessionHandlerBadRequest struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *QuerySessionHandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /matchmaking/namespaces/{namespace}/sessions/{matchID}/status][%d] querySessionHandlerBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QuerySessionHandlerBadRequest) ToJSONString() string {
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

func (o *QuerySessionHandlerBadRequest) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *QuerySessionHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQuerySessionHandlerUnauthorized creates a QuerySessionHandlerUnauthorized with default headers values
func NewQuerySessionHandlerUnauthorized() *QuerySessionHandlerUnauthorized {
	return &QuerySessionHandlerUnauthorized{}
}

/*QuerySessionHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type QuerySessionHandlerUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *QuerySessionHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /matchmaking/namespaces/{namespace}/sessions/{matchID}/status][%d] querySessionHandlerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QuerySessionHandlerUnauthorized) ToJSONString() string {
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

func (o *QuerySessionHandlerUnauthorized) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *QuerySessionHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQuerySessionHandlerForbidden creates a QuerySessionHandlerForbidden with default headers values
func NewQuerySessionHandlerForbidden() *QuerySessionHandlerForbidden {
	return &QuerySessionHandlerForbidden{}
}

/*QuerySessionHandlerForbidden handles this case with default header values.

  Forbidden
*/
type QuerySessionHandlerForbidden struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *QuerySessionHandlerForbidden) Error() string {
	return fmt.Sprintf("[GET /matchmaking/namespaces/{namespace}/sessions/{matchID}/status][%d] querySessionHandlerForbidden  %+v", 403, o.ToJSONString())
}

func (o *QuerySessionHandlerForbidden) ToJSONString() string {
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

func (o *QuerySessionHandlerForbidden) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *QuerySessionHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQuerySessionHandlerNotFound creates a QuerySessionHandlerNotFound with default headers values
func NewQuerySessionHandlerNotFound() *QuerySessionHandlerNotFound {
	return &QuerySessionHandlerNotFound{}
}

/*QuerySessionHandlerNotFound handles this case with default header values.

  Not Found
*/
type QuerySessionHandlerNotFound struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *QuerySessionHandlerNotFound) Error() string {
	return fmt.Sprintf("[GET /matchmaking/namespaces/{namespace}/sessions/{matchID}/status][%d] querySessionHandlerNotFound  %+v", 404, o.ToJSONString())
}

func (o *QuerySessionHandlerNotFound) ToJSONString() string {
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

func (o *QuerySessionHandlerNotFound) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *QuerySessionHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQuerySessionHandlerInternalServerError creates a QuerySessionHandlerInternalServerError with default headers values
func NewQuerySessionHandlerInternalServerError() *QuerySessionHandlerInternalServerError {
	return &QuerySessionHandlerInternalServerError{}
}

/*QuerySessionHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QuerySessionHandlerInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *QuerySessionHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /matchmaking/namespaces/{namespace}/sessions/{matchID}/status][%d] querySessionHandlerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QuerySessionHandlerInternalServerError) ToJSONString() string {
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

func (o *QuerySessionHandlerInternalServerError) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *QuerySessionHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
