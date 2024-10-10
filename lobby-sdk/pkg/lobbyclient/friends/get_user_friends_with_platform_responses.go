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

// GetUserFriendsWithPlatformReader is a Reader for the GetUserFriendsWithPlatform structure.
type GetUserFriendsWithPlatformReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserFriendsWithPlatformReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserFriendsWithPlatformOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUserFriendsWithPlatformBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserFriendsWithPlatformUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserFriendsWithPlatformForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserFriendsWithPlatformNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserFriendsWithPlatformInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /friends/namespaces/{namespace}/me/platforms returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserFriendsWithPlatformOK creates a GetUserFriendsWithPlatformOK with default headers values
func NewGetUserFriendsWithPlatformOK() *GetUserFriendsWithPlatformOK {
	return &GetUserFriendsWithPlatformOK{}
}

/*GetUserFriendsWithPlatformOK handles this case with default header values.

  OK
*/
type GetUserFriendsWithPlatformOK struct {
	Payload *lobbyclientmodels.ModelListBulkUserPlatformsResponse
}

func (o *GetUserFriendsWithPlatformOK) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/platforms][%d] getUserFriendsWithPlatformOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserFriendsWithPlatformOK) ToJSONString() string {
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

func (o *GetUserFriendsWithPlatformOK) GetPayload() *lobbyclientmodels.ModelListBulkUserPlatformsResponse {
	return o.Payload
}

func (o *GetUserFriendsWithPlatformOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelListBulkUserPlatformsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserFriendsWithPlatformBadRequest creates a GetUserFriendsWithPlatformBadRequest with default headers values
func NewGetUserFriendsWithPlatformBadRequest() *GetUserFriendsWithPlatformBadRequest {
	return &GetUserFriendsWithPlatformBadRequest{}
}

/*GetUserFriendsWithPlatformBadRequest handles this case with default header values.

  Bad Request
*/
type GetUserFriendsWithPlatformBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserFriendsWithPlatformBadRequest) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/platforms][%d] getUserFriendsWithPlatformBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetUserFriendsWithPlatformBadRequest) ToJSONString() string {
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

func (o *GetUserFriendsWithPlatformBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserFriendsWithPlatformBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserFriendsWithPlatformUnauthorized creates a GetUserFriendsWithPlatformUnauthorized with default headers values
func NewGetUserFriendsWithPlatformUnauthorized() *GetUserFriendsWithPlatformUnauthorized {
	return &GetUserFriendsWithPlatformUnauthorized{}
}

/*GetUserFriendsWithPlatformUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetUserFriendsWithPlatformUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserFriendsWithPlatformUnauthorized) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/platforms][%d] getUserFriendsWithPlatformUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserFriendsWithPlatformUnauthorized) ToJSONString() string {
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

func (o *GetUserFriendsWithPlatformUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserFriendsWithPlatformUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserFriendsWithPlatformForbidden creates a GetUserFriendsWithPlatformForbidden with default headers values
func NewGetUserFriendsWithPlatformForbidden() *GetUserFriendsWithPlatformForbidden {
	return &GetUserFriendsWithPlatformForbidden{}
}

/*GetUserFriendsWithPlatformForbidden handles this case with default header values.

  Forbidden
*/
type GetUserFriendsWithPlatformForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserFriendsWithPlatformForbidden) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/platforms][%d] getUserFriendsWithPlatformForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserFriendsWithPlatformForbidden) ToJSONString() string {
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

func (o *GetUserFriendsWithPlatformForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserFriendsWithPlatformForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserFriendsWithPlatformNotFound creates a GetUserFriendsWithPlatformNotFound with default headers values
func NewGetUserFriendsWithPlatformNotFound() *GetUserFriendsWithPlatformNotFound {
	return &GetUserFriendsWithPlatformNotFound{}
}

/*GetUserFriendsWithPlatformNotFound handles this case with default header values.

  Not Found
*/
type GetUserFriendsWithPlatformNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserFriendsWithPlatformNotFound) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/platforms][%d] getUserFriendsWithPlatformNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserFriendsWithPlatformNotFound) ToJSONString() string {
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

func (o *GetUserFriendsWithPlatformNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserFriendsWithPlatformNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserFriendsWithPlatformInternalServerError creates a GetUserFriendsWithPlatformInternalServerError with default headers values
func NewGetUserFriendsWithPlatformInternalServerError() *GetUserFriendsWithPlatformInternalServerError {
	return &GetUserFriendsWithPlatformInternalServerError{}
}

/*GetUserFriendsWithPlatformInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetUserFriendsWithPlatformInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetUserFriendsWithPlatformInternalServerError) Error() string {
	return fmt.Sprintf("[GET /friends/namespaces/{namespace}/me/platforms][%d] getUserFriendsWithPlatformInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetUserFriendsWithPlatformInternalServerError) ToJSONString() string {
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

func (o *GetUserFriendsWithPlatformInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetUserFriendsWithPlatformInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
