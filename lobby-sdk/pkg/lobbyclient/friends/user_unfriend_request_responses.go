// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package friends

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// UserUnfriendRequestReader is a Reader for the UserUnfriendRequest structure.
type UserUnfriendRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UserUnfriendRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUserUnfriendRequestNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUserUnfriendRequestBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUserUnfriendRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUserUnfriendRequestForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUserUnfriendRequestNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUserUnfriendRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /friends/namespaces/{namespace}/me/unfriend returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUserUnfriendRequestNoContent creates a UserUnfriendRequestNoContent with default headers values
func NewUserUnfriendRequestNoContent() *UserUnfriendRequestNoContent {
	return &UserUnfriendRequestNoContent{}
}

/*UserUnfriendRequestNoContent handles this case with default header values.

  No Content
*/
type UserUnfriendRequestNoContent struct {
}

func (o *UserUnfriendRequestNoContent) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/unfriend][%d] userUnfriendRequestNoContent ", 204)
}

func (o *UserUnfriendRequestNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUserUnfriendRequestBadRequest creates a UserUnfriendRequestBadRequest with default headers values
func NewUserUnfriendRequestBadRequest() *UserUnfriendRequestBadRequest {
	return &UserUnfriendRequestBadRequest{}
}

/*UserUnfriendRequestBadRequest handles this case with default header values.

  Bad Request
*/
type UserUnfriendRequestBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserUnfriendRequestBadRequest) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/unfriend][%d] userUnfriendRequestBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UserUnfriendRequestBadRequest) ToJSONString() string {
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

func (o *UserUnfriendRequestBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserUnfriendRequestBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUserUnfriendRequestUnauthorized creates a UserUnfriendRequestUnauthorized with default headers values
func NewUserUnfriendRequestUnauthorized() *UserUnfriendRequestUnauthorized {
	return &UserUnfriendRequestUnauthorized{}
}

/*UserUnfriendRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type UserUnfriendRequestUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserUnfriendRequestUnauthorized) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/unfriend][%d] userUnfriendRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UserUnfriendRequestUnauthorized) ToJSONString() string {
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

func (o *UserUnfriendRequestUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserUnfriendRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUserUnfriendRequestForbidden creates a UserUnfriendRequestForbidden with default headers values
func NewUserUnfriendRequestForbidden() *UserUnfriendRequestForbidden {
	return &UserUnfriendRequestForbidden{}
}

/*UserUnfriendRequestForbidden handles this case with default header values.

  Forbidden
*/
type UserUnfriendRequestForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserUnfriendRequestForbidden) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/unfriend][%d] userUnfriendRequestForbidden  %+v", 403, o.ToJSONString())
}

func (o *UserUnfriendRequestForbidden) ToJSONString() string {
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

func (o *UserUnfriendRequestForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserUnfriendRequestForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUserUnfriendRequestNotFound creates a UserUnfriendRequestNotFound with default headers values
func NewUserUnfriendRequestNotFound() *UserUnfriendRequestNotFound {
	return &UserUnfriendRequestNotFound{}
}

/*UserUnfriendRequestNotFound handles this case with default header values.

  Not Found
*/
type UserUnfriendRequestNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserUnfriendRequestNotFound) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/unfriend][%d] userUnfriendRequestNotFound  %+v", 404, o.ToJSONString())
}

func (o *UserUnfriendRequestNotFound) ToJSONString() string {
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

func (o *UserUnfriendRequestNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserUnfriendRequestNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUserUnfriendRequestInternalServerError creates a UserUnfriendRequestInternalServerError with default headers values
func NewUserUnfriendRequestInternalServerError() *UserUnfriendRequestInternalServerError {
	return &UserUnfriendRequestInternalServerError{}
}

/*UserUnfriendRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UserUnfriendRequestInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserUnfriendRequestInternalServerError) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/unfriend][%d] userUnfriendRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UserUnfriendRequestInternalServerError) ToJSONString() string {
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

func (o *UserUnfriendRequestInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserUnfriendRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
