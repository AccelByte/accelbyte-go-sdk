// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_channel

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

// SingleAdminUpdateChannelReader is a Reader for the SingleAdminUpdateChannel structure.
type SingleAdminUpdateChannelReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SingleAdminUpdateChannelReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSingleAdminUpdateChannelOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSingleAdminUpdateChannelBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSingleAdminUpdateChannelUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSingleAdminUpdateChannelNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSingleAdminUpdateChannelInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSingleAdminUpdateChannelOK creates a SingleAdminUpdateChannelOK with default headers values
func NewSingleAdminUpdateChannelOK() *SingleAdminUpdateChannelOK {
	return &SingleAdminUpdateChannelOK{}
}

/*SingleAdminUpdateChannelOK handles this case with default header values.

  Channel updated
*/
type SingleAdminUpdateChannelOK struct {
	Payload *ugcclientmodels.ModelsChannelResponse
}

func (o *SingleAdminUpdateChannelOK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}][%d] singleAdminUpdateChannelOK  %+v", 200, o.ToJSONString())
}

func (o *SingleAdminUpdateChannelOK) ToJSONString() string {
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

func (o *SingleAdminUpdateChannelOK) GetPayload() *ugcclientmodels.ModelsChannelResponse {
	return o.Payload
}

func (o *SingleAdminUpdateChannelOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSingleAdminUpdateChannelBadRequest creates a SingleAdminUpdateChannelBadRequest with default headers values
func NewSingleAdminUpdateChannelBadRequest() *SingleAdminUpdateChannelBadRequest {
	return &SingleAdminUpdateChannelBadRequest{}
}

/*SingleAdminUpdateChannelBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770600</td><td>Invalid request body</td></tr></table>
*/
type SingleAdminUpdateChannelBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminUpdateChannelBadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}][%d] singleAdminUpdateChannelBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SingleAdminUpdateChannelBadRequest) ToJSONString() string {
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

func (o *SingleAdminUpdateChannelBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminUpdateChannelBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSingleAdminUpdateChannelUnauthorized creates a SingleAdminUpdateChannelUnauthorized with default headers values
func NewSingleAdminUpdateChannelUnauthorized() *SingleAdminUpdateChannelUnauthorized {
	return &SingleAdminUpdateChannelUnauthorized{}
}

/*SingleAdminUpdateChannelUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SingleAdminUpdateChannelUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminUpdateChannelUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}][%d] singleAdminUpdateChannelUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SingleAdminUpdateChannelUnauthorized) ToJSONString() string {
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

func (o *SingleAdminUpdateChannelUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminUpdateChannelUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSingleAdminUpdateChannelNotFound creates a SingleAdminUpdateChannelNotFound with default headers values
func NewSingleAdminUpdateChannelNotFound() *SingleAdminUpdateChannelNotFound {
	return &SingleAdminUpdateChannelNotFound{}
}

/*SingleAdminUpdateChannelNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770603</td><td>Channel was not found</td></tr></table>
*/
type SingleAdminUpdateChannelNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminUpdateChannelNotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}][%d] singleAdminUpdateChannelNotFound  %+v", 404, o.ToJSONString())
}

func (o *SingleAdminUpdateChannelNotFound) ToJSONString() string {
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

func (o *SingleAdminUpdateChannelNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminUpdateChannelNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSingleAdminUpdateChannelInternalServerError creates a SingleAdminUpdateChannelInternalServerError with default headers values
func NewSingleAdminUpdateChannelInternalServerError() *SingleAdminUpdateChannelInternalServerError {
	return &SingleAdminUpdateChannelInternalServerError{}
}

/*SingleAdminUpdateChannelInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770602</td><td>Unable to save channel</td></tr></table>
*/
type SingleAdminUpdateChannelInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminUpdateChannelInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}][%d] singleAdminUpdateChannelInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SingleAdminUpdateChannelInternalServerError) ToJSONString() string {
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

func (o *SingleAdminUpdateChannelInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminUpdateChannelInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
