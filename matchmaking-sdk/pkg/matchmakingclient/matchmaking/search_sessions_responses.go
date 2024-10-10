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

// SearchSessionsReader is a Reader for the SearchSessions structure.
type SearchSessionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SearchSessionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSearchSessionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSearchSessionsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSearchSessionsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSearchSessionsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSearchSessionsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSearchSessionsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /matchmaking/v1/admin/namespaces/{namespace}/sessions/history/search returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSearchSessionsOK creates a SearchSessionsOK with default headers values
func NewSearchSessionsOK() *SearchSessionsOK {
	return &SearchSessionsOK{}
}

/*SearchSessionsOK handles this case with default header values.

  Operation succeeded
*/
type SearchSessionsOK struct {
	Payload *matchmakingclientmodels.ServiceGetSessionHistorySearchResponse
}

func (o *SearchSessionsOK) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/sessions/history/search][%d] searchSessionsOK  %+v", 200, o.ToJSONString())
}

func (o *SearchSessionsOK) ToJSONString() string {
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

func (o *SearchSessionsOK) GetPayload() *matchmakingclientmodels.ServiceGetSessionHistorySearchResponse {
	return o.Payload
}

func (o *SearchSessionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ServiceGetSessionHistorySearchResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSearchSessionsBadRequest creates a SearchSessionsBadRequest with default headers values
func NewSearchSessionsBadRequest() *SearchSessionsBadRequest {
	return &SearchSessionsBadRequest{}
}

/*SearchSessionsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type SearchSessionsBadRequest struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *SearchSessionsBadRequest) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/sessions/history/search][%d] searchSessionsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SearchSessionsBadRequest) ToJSONString() string {
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

func (o *SearchSessionsBadRequest) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *SearchSessionsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSearchSessionsUnauthorized creates a SearchSessionsUnauthorized with default headers values
func NewSearchSessionsUnauthorized() *SearchSessionsUnauthorized {
	return &SearchSessionsUnauthorized{}
}

/*SearchSessionsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SearchSessionsUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *SearchSessionsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/sessions/history/search][%d] searchSessionsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SearchSessionsUnauthorized) ToJSONString() string {
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

func (o *SearchSessionsUnauthorized) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *SearchSessionsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSearchSessionsForbidden creates a SearchSessionsForbidden with default headers values
func NewSearchSessionsForbidden() *SearchSessionsForbidden {
	return &SearchSessionsForbidden{}
}

/*SearchSessionsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20014</td><td>invalid audience</td></tr><tr><td>20015</td><td>insufficient scope</td></tr></table>
*/
type SearchSessionsForbidden struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *SearchSessionsForbidden) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/sessions/history/search][%d] searchSessionsForbidden  %+v", 403, o.ToJSONString())
}

func (o *SearchSessionsForbidden) ToJSONString() string {
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

func (o *SearchSessionsForbidden) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *SearchSessionsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSearchSessionsNotFound creates a SearchSessionsNotFound with default headers values
func NewSearchSessionsNotFound() *SearchSessionsNotFound {
	return &SearchSessionsNotFound{}
}

/*SearchSessionsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>510110</td><td>channel not found</td></tr></table>
*/
type SearchSessionsNotFound struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *SearchSessionsNotFound) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/sessions/history/search][%d] searchSessionsNotFound  %+v", 404, o.ToJSONString())
}

func (o *SearchSessionsNotFound) ToJSONString() string {
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

func (o *SearchSessionsNotFound) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *SearchSessionsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSearchSessionsInternalServerError creates a SearchSessionsInternalServerError with default headers values
func NewSearchSessionsInternalServerError() *SearchSessionsInternalServerError {
	return &SearchSessionsInternalServerError{}
}

/*SearchSessionsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type SearchSessionsInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *SearchSessionsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/sessions/history/search][%d] searchSessionsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SearchSessionsInternalServerError) ToJSONString() string {
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

func (o *SearchSessionsInternalServerError) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *SearchSessionsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
