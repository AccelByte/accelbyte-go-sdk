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

// AddUserIntoSessionInChannelReader is a Reader for the AddUserIntoSessionInChannel structure.
type AddUserIntoSessionInChannelReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AddUserIntoSessionInChannelReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAddUserIntoSessionInChannelOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAddUserIntoSessionInChannelBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAddUserIntoSessionInChannelUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAddUserIntoSessionInChannelForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAddUserIntoSessionInChannelNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAddUserIntoSessionInChannelInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAddUserIntoSessionInChannelOK creates a AddUserIntoSessionInChannelOK with default headers values
func NewAddUserIntoSessionInChannelOK() *AddUserIntoSessionInChannelOK {
	return &AddUserIntoSessionInChannelOK{}
}

/*AddUserIntoSessionInChannelOK handles this case with default header values.

  Operation succeeded
*/
type AddUserIntoSessionInChannelOK struct {
}

func (o *AddUserIntoSessionInChannelOK) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}][%d] addUserIntoSessionInChannelOK ", 200)
}

func (o *AddUserIntoSessionInChannelOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAddUserIntoSessionInChannelBadRequest creates a AddUserIntoSessionInChannelBadRequest with default headers values
func NewAddUserIntoSessionInChannelBadRequest() *AddUserIntoSessionInChannelBadRequest {
	return &AddUserIntoSessionInChannelBadRequest{}
}

/*AddUserIntoSessionInChannelBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AddUserIntoSessionInChannelBadRequest struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *AddUserIntoSessionInChannelBadRequest) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}][%d] addUserIntoSessionInChannelBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AddUserIntoSessionInChannelBadRequest) ToJSONString() string {
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

func (o *AddUserIntoSessionInChannelBadRequest) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *AddUserIntoSessionInChannelBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAddUserIntoSessionInChannelUnauthorized creates a AddUserIntoSessionInChannelUnauthorized with default headers values
func NewAddUserIntoSessionInChannelUnauthorized() *AddUserIntoSessionInChannelUnauthorized {
	return &AddUserIntoSessionInChannelUnauthorized{}
}

/*AddUserIntoSessionInChannelUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AddUserIntoSessionInChannelUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *AddUserIntoSessionInChannelUnauthorized) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}][%d] addUserIntoSessionInChannelUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AddUserIntoSessionInChannelUnauthorized) ToJSONString() string {
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

func (o *AddUserIntoSessionInChannelUnauthorized) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *AddUserIntoSessionInChannelUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAddUserIntoSessionInChannelForbidden creates a AddUserIntoSessionInChannelForbidden with default headers values
func NewAddUserIntoSessionInChannelForbidden() *AddUserIntoSessionInChannelForbidden {
	return &AddUserIntoSessionInChannelForbidden{}
}

/*AddUserIntoSessionInChannelForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20014</td><td>invalid audience</td></tr><tr><td>20015</td><td>insufficient scope</td></tr></table>
*/
type AddUserIntoSessionInChannelForbidden struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *AddUserIntoSessionInChannelForbidden) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}][%d] addUserIntoSessionInChannelForbidden  %+v", 403, o.ToJSONString())
}

func (o *AddUserIntoSessionInChannelForbidden) ToJSONString() string {
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

func (o *AddUserIntoSessionInChannelForbidden) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *AddUserIntoSessionInChannelForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAddUserIntoSessionInChannelNotFound creates a AddUserIntoSessionInChannelNotFound with default headers values
func NewAddUserIntoSessionInChannelNotFound() *AddUserIntoSessionInChannelNotFound {
	return &AddUserIntoSessionInChannelNotFound{}
}

/*AddUserIntoSessionInChannelNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>510110</td><td>channel not found</td></tr></table>
*/
type AddUserIntoSessionInChannelNotFound struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *AddUserIntoSessionInChannelNotFound) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}][%d] addUserIntoSessionInChannelNotFound  %+v", 404, o.ToJSONString())
}

func (o *AddUserIntoSessionInChannelNotFound) ToJSONString() string {
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

func (o *AddUserIntoSessionInChannelNotFound) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *AddUserIntoSessionInChannelNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAddUserIntoSessionInChannelInternalServerError creates a AddUserIntoSessionInChannelInternalServerError with default headers values
func NewAddUserIntoSessionInChannelInternalServerError() *AddUserIntoSessionInChannelInternalServerError {
	return &AddUserIntoSessionInChannelInternalServerError{}
}

/*AddUserIntoSessionInChannelInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AddUserIntoSessionInChannelInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *AddUserIntoSessionInChannelInternalServerError) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}][%d] addUserIntoSessionInChannelInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AddUserIntoSessionInChannelInternalServerError) ToJSONString() string {
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

func (o *AddUserIntoSessionInChannelInternalServerError) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *AddUserIntoSessionInChannelInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
