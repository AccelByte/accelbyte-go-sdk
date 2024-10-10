// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_profile

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// UpdateUserProfileReader is a Reader for the UpdateUserProfile structure.
type UpdateUserProfileReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateUserProfileReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateUserProfileOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateUserProfileBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateUserProfileUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateUserProfileForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateUserProfileNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateUserProfileOK creates a UpdateUserProfileOK with default headers values
func NewUpdateUserProfileOK() *UpdateUserProfileOK {
	return &UpdateUserProfileOK{}
}

/*UpdateUserProfileOK handles this case with default header values.

  successful operation
*/
type UpdateUserProfileOK struct {
	Payload *basicclientmodels.UserProfilePrivateInfo
}

func (o *UpdateUserProfileOK) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles][%d] updateUserProfileOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateUserProfileOK) ToJSONString() string {
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

func (o *UpdateUserProfileOK) GetPayload() *basicclientmodels.UserProfilePrivateInfo {
	return o.Payload
}

func (o *UpdateUserProfileOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.UserProfilePrivateInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateUserProfileBadRequest creates a UpdateUserProfileBadRequest with default headers values
func NewUpdateUserProfileBadRequest() *UpdateUserProfileBadRequest {
	return &UpdateUserProfileBadRequest{}
}

/*UpdateUserProfileBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type UpdateUserProfileBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *UpdateUserProfileBadRequest) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles][%d] updateUserProfileBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateUserProfileBadRequest) ToJSONString() string {
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

func (o *UpdateUserProfileBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateUserProfileBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateUserProfileUnauthorized creates a UpdateUserProfileUnauthorized with default headers values
func NewUpdateUserProfileUnauthorized() *UpdateUserProfileUnauthorized {
	return &UpdateUserProfileUnauthorized{}
}

/*UpdateUserProfileUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type UpdateUserProfileUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateUserProfileUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles][%d] updateUserProfileUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateUserProfileUnauthorized) ToJSONString() string {
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

func (o *UpdateUserProfileUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateUserProfileUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateUserProfileForbidden creates a UpdateUserProfileForbidden with default headers values
func NewUpdateUserProfileForbidden() *UpdateUserProfileForbidden {
	return &UpdateUserProfileForbidden{}
}

/*UpdateUserProfileForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type UpdateUserProfileForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateUserProfileForbidden) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles][%d] updateUserProfileForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateUserProfileForbidden) ToJSONString() string {
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

func (o *UpdateUserProfileForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateUserProfileForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateUserProfileNotFound creates a UpdateUserProfileNotFound with default headers values
func NewUpdateUserProfileNotFound() *UpdateUserProfileNotFound {
	return &UpdateUserProfileNotFound{}
}

/*UpdateUserProfileNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11440</td><td>Unable to {action}: User profile not found in namespace [{namespace}]</td></tr></table>
*/
type UpdateUserProfileNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateUserProfileNotFound) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles][%d] updateUserProfileNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateUserProfileNotFound) ToJSONString() string {
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

func (o *UpdateUserProfileNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateUserProfileNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
