// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_channel

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// UpdateChannelReader is a Reader for the UpdateChannel structure.
type UpdateChannelReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateChannelReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateChannelOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateChannelBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateChannelUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateChannelNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateChannelInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateChannelOK creates a UpdateChannelOK with default headers values
func NewUpdateChannelOK() *UpdateChannelOK {
	return &UpdateChannelOK{}
}

/*UpdateChannelOK handles this case with default header values.

  Channel updated
*/
type UpdateChannelOK struct {
	Payload *ugcclientmodels.ModelsChannelResponse
}

func (o *UpdateChannelOK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}][%d] updateChannelOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateChannelOK) ToJSONString() string {
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

func (o *UpdateChannelOK) GetPayload() *ugcclientmodels.ModelsChannelResponse {
	return o.Payload
}

func (o *UpdateChannelOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsChannelResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateChannelBadRequest creates a UpdateChannelBadRequest with default headers values
func NewUpdateChannelBadRequest() *UpdateChannelBadRequest {
	return &UpdateChannelBadRequest{}
}

/*UpdateChannelBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770600</td><td>Invalid request body</td></tr></table>
*/
type UpdateChannelBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateChannelBadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}][%d] updateChannelBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateChannelBadRequest) ToJSONString() string {
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

func (o *UpdateChannelBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateChannelBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateChannelUnauthorized creates a UpdateChannelUnauthorized with default headers values
func NewUpdateChannelUnauthorized() *UpdateChannelUnauthorized {
	return &UpdateChannelUnauthorized{}
}

/*UpdateChannelUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateChannelUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateChannelUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}][%d] updateChannelUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateChannelUnauthorized) ToJSONString() string {
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

func (o *UpdateChannelUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateChannelUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateChannelNotFound creates a UpdateChannelNotFound with default headers values
func NewUpdateChannelNotFound() *UpdateChannelNotFound {
	return &UpdateChannelNotFound{}
}

/*UpdateChannelNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770603</td><td>Channel was not found</td></tr></table>
*/
type UpdateChannelNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateChannelNotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}][%d] updateChannelNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateChannelNotFound) ToJSONString() string {
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

func (o *UpdateChannelNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateChannelNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateChannelInternalServerError creates a UpdateChannelInternalServerError with default headers values
func NewUpdateChannelInternalServerError() *UpdateChannelInternalServerError {
	return &UpdateChannelInternalServerError{}
}

/*UpdateChannelInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770602</td><td>Unable to save channel</td></tr></table>
*/
type UpdateChannelInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateChannelInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}][%d] updateChannelInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateChannelInternalServerError) ToJSONString() string {
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

func (o *UpdateChannelInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateChannelInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
