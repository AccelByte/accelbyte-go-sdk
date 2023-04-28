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

// UserRejectFriendRequestReader is a Reader for the UserRejectFriendRequest structure.
type UserRejectFriendRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UserRejectFriendRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUserRejectFriendRequestNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUserRejectFriendRequestBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUserRejectFriendRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUserRejectFriendRequestForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUserRejectFriendRequestNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUserRejectFriendRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /friends/namespaces/{namespace}/me/request/reject returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUserRejectFriendRequestNoContent creates a UserRejectFriendRequestNoContent with default headers values
func NewUserRejectFriendRequestNoContent() *UserRejectFriendRequestNoContent {
	return &UserRejectFriendRequestNoContent{}
}

/*UserRejectFriendRequestNoContent handles this case with default header values.

  No Content
*/
type UserRejectFriendRequestNoContent struct {
}

func (o *UserRejectFriendRequestNoContent) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request/reject][%d] userRejectFriendRequestNoContent ", 204)
}

func (o *UserRejectFriendRequestNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUserRejectFriendRequestBadRequest creates a UserRejectFriendRequestBadRequest with default headers values
func NewUserRejectFriendRequestBadRequest() *UserRejectFriendRequestBadRequest {
	return &UserRejectFriendRequestBadRequest{}
}

/*UserRejectFriendRequestBadRequest handles this case with default header values.

  Bad Request
*/
type UserRejectFriendRequestBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserRejectFriendRequestBadRequest) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request/reject][%d] userRejectFriendRequestBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UserRejectFriendRequestBadRequest) ToJSONString() string {
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

func (o *UserRejectFriendRequestBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserRejectFriendRequestBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUserRejectFriendRequestUnauthorized creates a UserRejectFriendRequestUnauthorized with default headers values
func NewUserRejectFriendRequestUnauthorized() *UserRejectFriendRequestUnauthorized {
	return &UserRejectFriendRequestUnauthorized{}
}

/*UserRejectFriendRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type UserRejectFriendRequestUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserRejectFriendRequestUnauthorized) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request/reject][%d] userRejectFriendRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UserRejectFriendRequestUnauthorized) ToJSONString() string {
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

func (o *UserRejectFriendRequestUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserRejectFriendRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUserRejectFriendRequestForbidden creates a UserRejectFriendRequestForbidden with default headers values
func NewUserRejectFriendRequestForbidden() *UserRejectFriendRequestForbidden {
	return &UserRejectFriendRequestForbidden{}
}

/*UserRejectFriendRequestForbidden handles this case with default header values.

  Forbidden
*/
type UserRejectFriendRequestForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserRejectFriendRequestForbidden) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request/reject][%d] userRejectFriendRequestForbidden  %+v", 403, o.ToJSONString())
}

func (o *UserRejectFriendRequestForbidden) ToJSONString() string {
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

func (o *UserRejectFriendRequestForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserRejectFriendRequestForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUserRejectFriendRequestNotFound creates a UserRejectFriendRequestNotFound with default headers values
func NewUserRejectFriendRequestNotFound() *UserRejectFriendRequestNotFound {
	return &UserRejectFriendRequestNotFound{}
}

/*UserRejectFriendRequestNotFound handles this case with default header values.

  Not Found
*/
type UserRejectFriendRequestNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserRejectFriendRequestNotFound) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request/reject][%d] userRejectFriendRequestNotFound  %+v", 404, o.ToJSONString())
}

func (o *UserRejectFriendRequestNotFound) ToJSONString() string {
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

func (o *UserRejectFriendRequestNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserRejectFriendRequestNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUserRejectFriendRequestInternalServerError creates a UserRejectFriendRequestInternalServerError with default headers values
func NewUserRejectFriendRequestInternalServerError() *UserRejectFriendRequestInternalServerError {
	return &UserRejectFriendRequestInternalServerError{}
}

/*UserRejectFriendRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UserRejectFriendRequestInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UserRejectFriendRequestInternalServerError) Error() string {
	return fmt.Sprintf("[POST /friends/namespaces/{namespace}/me/request/reject][%d] userRejectFriendRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UserRejectFriendRequestInternalServerError) ToJSONString() string {
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

func (o *UserRejectFriendRequestInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UserRejectFriendRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
