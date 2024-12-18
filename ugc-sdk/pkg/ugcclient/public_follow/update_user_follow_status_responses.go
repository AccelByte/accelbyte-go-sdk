// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_follow

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

// UpdateUserFollowStatusReader is a Reader for the UpdateUserFollowStatus structure.
type UpdateUserFollowStatusReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateUserFollowStatusReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateUserFollowStatusOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateUserFollowStatusBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateUserFollowStatusUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateUserFollowStatusInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/follow returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateUserFollowStatusOK creates a UpdateUserFollowStatusOK with default headers values
func NewUpdateUserFollowStatusOK() *UpdateUserFollowStatusOK {
	return &UpdateUserFollowStatusOK{}
}

/*UpdateUserFollowStatusOK handles this case with default header values.

  update status follow/unfollow status to a user
*/
type UpdateUserFollowStatusOK struct {
	Payload *ugcclientmodels.ModelsUserFollowResponse
}

func (o *UpdateUserFollowStatusOK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/follow][%d] updateUserFollowStatusOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateUserFollowStatusOK) ToJSONString() string {
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

func (o *UpdateUserFollowStatusOK) GetPayload() *ugcclientmodels.ModelsUserFollowResponse {
	return o.Payload
}

func (o *UpdateUserFollowStatusOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsUserFollowResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateUserFollowStatusBadRequest creates a UpdateUserFollowStatusBadRequest with default headers values
func NewUpdateUserFollowStatusBadRequest() *UpdateUserFollowStatusBadRequest {
	return &UpdateUserFollowStatusBadRequest{}
}

/*UpdateUserFollowStatusBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>771200</td><td>Malformed request</td></tr></table>
*/
type UpdateUserFollowStatusBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateUserFollowStatusBadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/follow][%d] updateUserFollowStatusBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateUserFollowStatusBadRequest) ToJSONString() string {
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

func (o *UpdateUserFollowStatusBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateUserFollowStatusBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateUserFollowStatusUnauthorized creates a UpdateUserFollowStatusUnauthorized with default headers values
func NewUpdateUserFollowStatusUnauthorized() *UpdateUserFollowStatusUnauthorized {
	return &UpdateUserFollowStatusUnauthorized{}
}

/*UpdateUserFollowStatusUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateUserFollowStatusUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateUserFollowStatusUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/follow][%d] updateUserFollowStatusUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateUserFollowStatusUnauthorized) ToJSONString() string {
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

func (o *UpdateUserFollowStatusUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateUserFollowStatusUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateUserFollowStatusInternalServerError creates a UpdateUserFollowStatusInternalServerError with default headers values
func NewUpdateUserFollowStatusInternalServerError() *UpdateUserFollowStatusInternalServerError {
	return &UpdateUserFollowStatusInternalServerError{}
}

/*UpdateUserFollowStatusInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>771201</td><td>Unable to update follow status: database error</td></tr></table>
*/
type UpdateUserFollowStatusInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateUserFollowStatusInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/follow][%d] updateUserFollowStatusInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateUserFollowStatusInternalServerError) ToJSONString() string {
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

func (o *UpdateUserFollowStatusInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateUserFollowStatusInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
