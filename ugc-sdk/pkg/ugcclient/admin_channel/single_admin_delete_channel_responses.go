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

// SingleAdminDeleteChannelReader is a Reader for the SingleAdminDeleteChannel structure.
type SingleAdminDeleteChannelReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SingleAdminDeleteChannelReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSingleAdminDeleteChannelNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSingleAdminDeleteChannelUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSingleAdminDeleteChannelNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSingleAdminDeleteChannelInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v1/admin/namespaces/{namespace}/channels/{channelId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSingleAdminDeleteChannelNoContent creates a SingleAdminDeleteChannelNoContent with default headers values
func NewSingleAdminDeleteChannelNoContent() *SingleAdminDeleteChannelNoContent {
	return &SingleAdminDeleteChannelNoContent{}
}

/*SingleAdminDeleteChannelNoContent handles this case with default header values.

  Channel deleted
*/
type SingleAdminDeleteChannelNoContent struct {
}

func (o *SingleAdminDeleteChannelNoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}][%d] singleAdminDeleteChannelNoContent ", 204)
}

func (o *SingleAdminDeleteChannelNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSingleAdminDeleteChannelUnauthorized creates a SingleAdminDeleteChannelUnauthorized with default headers values
func NewSingleAdminDeleteChannelUnauthorized() *SingleAdminDeleteChannelUnauthorized {
	return &SingleAdminDeleteChannelUnauthorized{}
}

/*SingleAdminDeleteChannelUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SingleAdminDeleteChannelUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminDeleteChannelUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}][%d] singleAdminDeleteChannelUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SingleAdminDeleteChannelUnauthorized) ToJSONString() string {
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

func (o *SingleAdminDeleteChannelUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminDeleteChannelUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSingleAdminDeleteChannelNotFound creates a SingleAdminDeleteChannelNotFound with default headers values
func NewSingleAdminDeleteChannelNotFound() *SingleAdminDeleteChannelNotFound {
	return &SingleAdminDeleteChannelNotFound{}
}

/*SingleAdminDeleteChannelNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772502</td><td>Channel not found</td></tr></table>
*/
type SingleAdminDeleteChannelNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminDeleteChannelNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}][%d] singleAdminDeleteChannelNotFound  %+v", 404, o.ToJSONString())
}

func (o *SingleAdminDeleteChannelNotFound) ToJSONString() string {
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

func (o *SingleAdminDeleteChannelNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminDeleteChannelNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSingleAdminDeleteChannelInternalServerError creates a SingleAdminDeleteChannelInternalServerError with default headers values
func NewSingleAdminDeleteChannelInternalServerError() *SingleAdminDeleteChannelInternalServerError {
	return &SingleAdminDeleteChannelInternalServerError{}
}

/*SingleAdminDeleteChannelInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772501</td><td>Unable to delete channel</td></tr></table>
*/
type SingleAdminDeleteChannelInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminDeleteChannelInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}][%d] singleAdminDeleteChannelInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SingleAdminDeleteChannelInternalServerError) ToJSONString() string {
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

func (o *SingleAdminDeleteChannelInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminDeleteChannelInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
