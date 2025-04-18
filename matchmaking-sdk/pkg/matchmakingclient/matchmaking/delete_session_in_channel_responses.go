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

// DeleteSessionInChannelReader is a Reader for the DeleteSessionInChannel structure.
type DeleteSessionInChannelReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteSessionInChannelReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteSessionInChannelNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteSessionInChannelBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteSessionInChannelUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteSessionInChannelForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteSessionInChannelNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteSessionInChannelInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteSessionInChannelNoContent creates a DeleteSessionInChannelNoContent with default headers values
func NewDeleteSessionInChannelNoContent() *DeleteSessionInChannelNoContent {
	return &DeleteSessionInChannelNoContent{}
}

/*DeleteSessionInChannelNoContent handles this case with default header values.

  Operation succeeded
*/
type DeleteSessionInChannelNoContent struct {
}

func (o *DeleteSessionInChannelNoContent) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}][%d] deleteSessionInChannelNoContent ", 204)
}

func (o *DeleteSessionInChannelNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteSessionInChannelBadRequest creates a DeleteSessionInChannelBadRequest with default headers values
func NewDeleteSessionInChannelBadRequest() *DeleteSessionInChannelBadRequest {
	return &DeleteSessionInChannelBadRequest{}
}

/*DeleteSessionInChannelBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type DeleteSessionInChannelBadRequest struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *DeleteSessionInChannelBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}][%d] deleteSessionInChannelBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteSessionInChannelBadRequest) ToJSONString() string {
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

func (o *DeleteSessionInChannelBadRequest) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *DeleteSessionInChannelBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSessionInChannelUnauthorized creates a DeleteSessionInChannelUnauthorized with default headers values
func NewDeleteSessionInChannelUnauthorized() *DeleteSessionInChannelUnauthorized {
	return &DeleteSessionInChannelUnauthorized{}
}

/*DeleteSessionInChannelUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteSessionInChannelUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *DeleteSessionInChannelUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}][%d] deleteSessionInChannelUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteSessionInChannelUnauthorized) ToJSONString() string {
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

func (o *DeleteSessionInChannelUnauthorized) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *DeleteSessionInChannelUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSessionInChannelForbidden creates a DeleteSessionInChannelForbidden with default headers values
func NewDeleteSessionInChannelForbidden() *DeleteSessionInChannelForbidden {
	return &DeleteSessionInChannelForbidden{}
}

/*DeleteSessionInChannelForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20014</td><td>invalid audience</td></tr><tr><td>20015</td><td>insufficient scope</td></tr></table>
*/
type DeleteSessionInChannelForbidden struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *DeleteSessionInChannelForbidden) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}][%d] deleteSessionInChannelForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteSessionInChannelForbidden) ToJSONString() string {
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

func (o *DeleteSessionInChannelForbidden) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *DeleteSessionInChannelForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSessionInChannelNotFound creates a DeleteSessionInChannelNotFound with default headers values
func NewDeleteSessionInChannelNotFound() *DeleteSessionInChannelNotFound {
	return &DeleteSessionInChannelNotFound{}
}

/*DeleteSessionInChannelNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>510110</td><td>channel not found</td></tr></table>
*/
type DeleteSessionInChannelNotFound struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *DeleteSessionInChannelNotFound) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}][%d] deleteSessionInChannelNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteSessionInChannelNotFound) ToJSONString() string {
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

func (o *DeleteSessionInChannelNotFound) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *DeleteSessionInChannelNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSessionInChannelInternalServerError creates a DeleteSessionInChannelInternalServerError with default headers values
func NewDeleteSessionInChannelInternalServerError() *DeleteSessionInChannelInternalServerError {
	return &DeleteSessionInChannelInternalServerError{}
}

/*DeleteSessionInChannelInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type DeleteSessionInChannelInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *DeleteSessionInChannelInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}][%d] deleteSessionInChannelInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteSessionInChannelInternalServerError) ToJSONString() string {
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

func (o *DeleteSessionInChannelInternalServerError) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteSessionInChannelInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
