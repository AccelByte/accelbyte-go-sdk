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

// StoreMatchResultsReader is a Reader for the StoreMatchResults structure.
type StoreMatchResultsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *StoreMatchResultsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewStoreMatchResultsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewStoreMatchResultsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewStoreMatchResultsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewStoreMatchResultsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewStoreMatchResultsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /matchmaking/namespaces/{namespace}/matchresult returns an error %d: %s", response.Code(), string(data))
	}
}

// NewStoreMatchResultsOK creates a StoreMatchResultsOK with default headers values
func NewStoreMatchResultsOK() *StoreMatchResultsOK {
	return &StoreMatchResultsOK{}
}

/*StoreMatchResultsOK handles this case with default header values.

  OK
*/
type StoreMatchResultsOK struct {
	Payload *matchmakingclientmodels.ModelsMatchResultResponse
}

func (o *StoreMatchResultsOK) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/matchresult][%d] storeMatchResultsOK  %+v", 200, o.ToJSONString())
}

func (o *StoreMatchResultsOK) ToJSONString() string {
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

func (o *StoreMatchResultsOK) GetPayload() *matchmakingclientmodels.ModelsMatchResultResponse {
	return o.Payload
}

func (o *StoreMatchResultsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ModelsMatchResultResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewStoreMatchResultsBadRequest creates a StoreMatchResultsBadRequest with default headers values
func NewStoreMatchResultsBadRequest() *StoreMatchResultsBadRequest {
	return &StoreMatchResultsBadRequest{}
}

/*StoreMatchResultsBadRequest handles this case with default header values.

  Bad Request
*/
type StoreMatchResultsBadRequest struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *StoreMatchResultsBadRequest) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/matchresult][%d] storeMatchResultsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *StoreMatchResultsBadRequest) ToJSONString() string {
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

func (o *StoreMatchResultsBadRequest) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *StoreMatchResultsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStoreMatchResultsUnauthorized creates a StoreMatchResultsUnauthorized with default headers values
func NewStoreMatchResultsUnauthorized() *StoreMatchResultsUnauthorized {
	return &StoreMatchResultsUnauthorized{}
}

/*StoreMatchResultsUnauthorized handles this case with default header values.

  Unauthorized
*/
type StoreMatchResultsUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *StoreMatchResultsUnauthorized) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/matchresult][%d] storeMatchResultsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *StoreMatchResultsUnauthorized) ToJSONString() string {
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

func (o *StoreMatchResultsUnauthorized) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *StoreMatchResultsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStoreMatchResultsForbidden creates a StoreMatchResultsForbidden with default headers values
func NewStoreMatchResultsForbidden() *StoreMatchResultsForbidden {
	return &StoreMatchResultsForbidden{}
}

/*StoreMatchResultsForbidden handles this case with default header values.

  Forbidden
*/
type StoreMatchResultsForbidden struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *StoreMatchResultsForbidden) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/matchresult][%d] storeMatchResultsForbidden  %+v", 403, o.ToJSONString())
}

func (o *StoreMatchResultsForbidden) ToJSONString() string {
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

func (o *StoreMatchResultsForbidden) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *StoreMatchResultsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStoreMatchResultsInternalServerError creates a StoreMatchResultsInternalServerError with default headers values
func NewStoreMatchResultsInternalServerError() *StoreMatchResultsInternalServerError {
	return &StoreMatchResultsInternalServerError{}
}

/*StoreMatchResultsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type StoreMatchResultsInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *StoreMatchResultsInternalServerError) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/matchresult][%d] storeMatchResultsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *StoreMatchResultsInternalServerError) ToJSONString() string {
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

func (o *StoreMatchResultsInternalServerError) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *StoreMatchResultsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
