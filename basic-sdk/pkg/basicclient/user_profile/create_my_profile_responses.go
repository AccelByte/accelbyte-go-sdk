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

// CreateMyProfileReader is a Reader for the CreateMyProfile structure.
type CreateMyProfileReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateMyProfileReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateMyProfileCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateMyProfileBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateMyProfileUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateMyProfileForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateMyProfileNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateMyProfileConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /basic/v1/public/namespaces/{namespace}/users/me/profiles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateMyProfileCreated creates a CreateMyProfileCreated with default headers values
func NewCreateMyProfileCreated() *CreateMyProfileCreated {
	return &CreateMyProfileCreated{}
}

/*CreateMyProfileCreated handles this case with default header values.

  Successful operation
*/
type CreateMyProfileCreated struct {
	Payload *basicclientmodels.UserProfilePrivateInfo
}

func (o *CreateMyProfileCreated) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/me/profiles][%d] createMyProfileCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateMyProfileCreated) ToJSONString() string {
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

func (o *CreateMyProfileCreated) GetPayload() *basicclientmodels.UserProfilePrivateInfo {
	return o.Payload
}

func (o *CreateMyProfileCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateMyProfileBadRequest creates a CreateMyProfileBadRequest with default headers values
func NewCreateMyProfileBadRequest() *CreateMyProfileBadRequest {
	return &CreateMyProfileBadRequest{}
}

/*CreateMyProfileBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type CreateMyProfileBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *CreateMyProfileBadRequest) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/me/profiles][%d] createMyProfileBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateMyProfileBadRequest) ToJSONString() string {
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

func (o *CreateMyProfileBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *CreateMyProfileBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateMyProfileUnauthorized creates a CreateMyProfileUnauthorized with default headers values
func NewCreateMyProfileUnauthorized() *CreateMyProfileUnauthorized {
	return &CreateMyProfileUnauthorized{}
}

/*CreateMyProfileUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type CreateMyProfileUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *CreateMyProfileUnauthorized) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/me/profiles][%d] createMyProfileUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateMyProfileUnauthorized) ToJSONString() string {
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

func (o *CreateMyProfileUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateMyProfileUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateMyProfileForbidden creates a CreateMyProfileForbidden with default headers values
func NewCreateMyProfileForbidden() *CreateMyProfileForbidden {
	return &CreateMyProfileForbidden{}
}

/*CreateMyProfileForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type CreateMyProfileForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *CreateMyProfileForbidden) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/me/profiles][%d] createMyProfileForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateMyProfileForbidden) ToJSONString() string {
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

func (o *CreateMyProfileForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateMyProfileForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateMyProfileNotFound creates a CreateMyProfileNotFound with default headers values
func NewCreateMyProfileNotFound() *CreateMyProfileNotFound {
	return &CreateMyProfileNotFound{}
}

/*CreateMyProfileNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>20017</td><td>user not linked</td></tr></table>
*/
type CreateMyProfileNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *CreateMyProfileNotFound) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/me/profiles][%d] createMyProfileNotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateMyProfileNotFound) ToJSONString() string {
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

func (o *CreateMyProfileNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateMyProfileNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateMyProfileConflict creates a CreateMyProfileConflict with default headers values
func NewCreateMyProfileConflict() *CreateMyProfileConflict {
	return &CreateMyProfileConflict{}
}

/*CreateMyProfileConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11441</td><td>Unable to {action}: User profile already exists</td></tr></table>
*/
type CreateMyProfileConflict struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *CreateMyProfileConflict) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/me/profiles][%d] createMyProfileConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateMyProfileConflict) ToJSONString() string {
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

func (o *CreateMyProfileConflict) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateMyProfileConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
