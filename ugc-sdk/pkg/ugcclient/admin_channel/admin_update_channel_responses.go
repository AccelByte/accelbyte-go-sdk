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

// AdminUpdateChannelReader is a Reader for the AdminUpdateChannel structure.
type AdminUpdateChannelReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateChannelReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateChannelOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateChannelBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateChannelUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateChannelNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateChannelInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateChannelOK creates a AdminUpdateChannelOK with default headers values
func NewAdminUpdateChannelOK() *AdminUpdateChannelOK {
	return &AdminUpdateChannelOK{}
}

/*AdminUpdateChannelOK handles this case with default header values.

  OK
*/
type AdminUpdateChannelOK struct {
	Payload *ugcclientmodels.ModelsChannelResponse
}

func (o *AdminUpdateChannelOK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}][%d] adminUpdateChannelOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateChannelOK) ToJSONString() string {
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

func (o *AdminUpdateChannelOK) GetPayload() *ugcclientmodels.ModelsChannelResponse {
	return o.Payload
}

func (o *AdminUpdateChannelOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateChannelBadRequest creates a AdminUpdateChannelBadRequest with default headers values
func NewAdminUpdateChannelBadRequest() *AdminUpdateChannelBadRequest {
	return &AdminUpdateChannelBadRequest{}
}

/*AdminUpdateChannelBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateChannelBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateChannelBadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}][%d] adminUpdateChannelBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateChannelBadRequest) ToJSONString() string {
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

func (o *AdminUpdateChannelBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateChannelBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateChannelUnauthorized creates a AdminUpdateChannelUnauthorized with default headers values
func NewAdminUpdateChannelUnauthorized() *AdminUpdateChannelUnauthorized {
	return &AdminUpdateChannelUnauthorized{}
}

/*AdminUpdateChannelUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateChannelUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateChannelUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}][%d] adminUpdateChannelUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateChannelUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateChannelUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateChannelUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateChannelNotFound creates a AdminUpdateChannelNotFound with default headers values
func NewAdminUpdateChannelNotFound() *AdminUpdateChannelNotFound {
	return &AdminUpdateChannelNotFound{}
}

/*AdminUpdateChannelNotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateChannelNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateChannelNotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}][%d] adminUpdateChannelNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateChannelNotFound) ToJSONString() string {
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

func (o *AdminUpdateChannelNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateChannelNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateChannelInternalServerError creates a AdminUpdateChannelInternalServerError with default headers values
func NewAdminUpdateChannelInternalServerError() *AdminUpdateChannelInternalServerError {
	return &AdminUpdateChannelInternalServerError{}
}

/*AdminUpdateChannelInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateChannelInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateChannelInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}][%d] adminUpdateChannelInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateChannelInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateChannelInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateChannelInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
