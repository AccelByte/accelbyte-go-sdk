// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package mock_matchmaking

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

// CleanAllMocksReader is a Reader for the CleanAllMocks structure.
type CleanAllMocksReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CleanAllMocksReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewCleanAllMocksNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCleanAllMocksBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCleanAllMocksUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCleanAllMocksForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCleanAllMocksNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCleanAllMocksInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCleanAllMocksNoContent creates a CleanAllMocksNoContent with default headers values
func NewCleanAllMocksNoContent() *CleanAllMocksNoContent {
	return &CleanAllMocksNoContent{}
}

/*CleanAllMocksNoContent handles this case with default header values.

  Mocks cleaned up
*/
type CleanAllMocksNoContent struct {
}

func (o *CleanAllMocksNoContent) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks][%d] cleanAllMocksNoContent ", 204)
}

func (o *CleanAllMocksNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewCleanAllMocksBadRequest creates a CleanAllMocksBadRequest with default headers values
func NewCleanAllMocksBadRequest() *CleanAllMocksBadRequest {
	return &CleanAllMocksBadRequest{}
}

/*CleanAllMocksBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type CleanAllMocksBadRequest struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *CleanAllMocksBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks][%d] cleanAllMocksBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CleanAllMocksBadRequest) ToJSONString() string {
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

func (o *CleanAllMocksBadRequest) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *CleanAllMocksBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCleanAllMocksUnauthorized creates a CleanAllMocksUnauthorized with default headers values
func NewCleanAllMocksUnauthorized() *CleanAllMocksUnauthorized {
	return &CleanAllMocksUnauthorized{}
}

/*CleanAllMocksUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type CleanAllMocksUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *CleanAllMocksUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks][%d] cleanAllMocksUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CleanAllMocksUnauthorized) ToJSONString() string {
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

func (o *CleanAllMocksUnauthorized) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *CleanAllMocksUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCleanAllMocksForbidden creates a CleanAllMocksForbidden with default headers values
func NewCleanAllMocksForbidden() *CleanAllMocksForbidden {
	return &CleanAllMocksForbidden{}
}

/*CleanAllMocksForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20014</td><td>invalid audience</td></tr><tr><td>20015</td><td>insufficient scope</td></tr></table>
*/
type CleanAllMocksForbidden struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *CleanAllMocksForbidden) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks][%d] cleanAllMocksForbidden  %+v", 403, o.ToJSONString())
}

func (o *CleanAllMocksForbidden) ToJSONString() string {
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

func (o *CleanAllMocksForbidden) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *CleanAllMocksForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCleanAllMocksNotFound creates a CleanAllMocksNotFound with default headers values
func NewCleanAllMocksNotFound() *CleanAllMocksNotFound {
	return &CleanAllMocksNotFound{}
}

/*CleanAllMocksNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>510110</td><td>channel not found</td></tr></table>
*/
type CleanAllMocksNotFound struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *CleanAllMocksNotFound) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks][%d] cleanAllMocksNotFound  %+v", 404, o.ToJSONString())
}

func (o *CleanAllMocksNotFound) ToJSONString() string {
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

func (o *CleanAllMocksNotFound) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *CleanAllMocksNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCleanAllMocksInternalServerError creates a CleanAllMocksInternalServerError with default headers values
func NewCleanAllMocksInternalServerError() *CleanAllMocksInternalServerError {
	return &CleanAllMocksInternalServerError{}
}

/*CleanAllMocksInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type CleanAllMocksInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *CleanAllMocksInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks][%d] cleanAllMocksInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CleanAllMocksInternalServerError) ToJSONString() string {
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

func (o *CleanAllMocksInternalServerError) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *CleanAllMocksInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
