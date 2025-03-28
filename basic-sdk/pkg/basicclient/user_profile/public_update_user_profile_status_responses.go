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

// PublicUpdateUserProfileStatusReader is a Reader for the PublicUpdateUserProfileStatus structure.
type PublicUpdateUserProfileStatusReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateUserProfileStatusReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdateUserProfileStatusOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdateUserProfileStatusBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdateUserProfileStatusUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUpdateUserProfileStatusForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdateUserProfileStatusNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateUserProfileStatusOK creates a PublicUpdateUserProfileStatusOK with default headers values
func NewPublicUpdateUserProfileStatusOK() *PublicUpdateUserProfileStatusOK {
	return &PublicUpdateUserProfileStatusOK{}
}

/*PublicUpdateUserProfileStatusOK handles this case with default header values.

  Successful operation
*/
type PublicUpdateUserProfileStatusOK struct {
	Payload *basicclientmodels.UserProfileInfo
}

func (o *PublicUpdateUserProfileStatusOK) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/status][%d] publicUpdateUserProfileStatusOK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpdateUserProfileStatusOK) ToJSONString() string {
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

func (o *PublicUpdateUserProfileStatusOK) GetPayload() *basicclientmodels.UserProfileInfo {
	return o.Payload
}

func (o *PublicUpdateUserProfileStatusOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.UserProfileInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicUpdateUserProfileStatusBadRequest creates a PublicUpdateUserProfileStatusBadRequest with default headers values
func NewPublicUpdateUserProfileStatusBadRequest() *PublicUpdateUserProfileStatusBadRequest {
	return &PublicUpdateUserProfileStatusBadRequest{}
}

/*PublicUpdateUserProfileStatusBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type PublicUpdateUserProfileStatusBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *PublicUpdateUserProfileStatusBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/status][%d] publicUpdateUserProfileStatusBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdateUserProfileStatusBadRequest) ToJSONString() string {
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

func (o *PublicUpdateUserProfileStatusBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicUpdateUserProfileStatusBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateUserProfileStatusUnauthorized creates a PublicUpdateUserProfileStatusUnauthorized with default headers values
func NewPublicUpdateUserProfileStatusUnauthorized() *PublicUpdateUserProfileStatusUnauthorized {
	return &PublicUpdateUserProfileStatusUnauthorized{}
}

/*PublicUpdateUserProfileStatusUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type PublicUpdateUserProfileStatusUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicUpdateUserProfileStatusUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/status][%d] publicUpdateUserProfileStatusUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdateUserProfileStatusUnauthorized) ToJSONString() string {
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

func (o *PublicUpdateUserProfileStatusUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateUserProfileStatusUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateUserProfileStatusForbidden creates a PublicUpdateUserProfileStatusForbidden with default headers values
func NewPublicUpdateUserProfileStatusForbidden() *PublicUpdateUserProfileStatusForbidden {
	return &PublicUpdateUserProfileStatusForbidden{}
}

/*PublicUpdateUserProfileStatusForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicUpdateUserProfileStatusForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicUpdateUserProfileStatusForbidden) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/status][%d] publicUpdateUserProfileStatusForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUpdateUserProfileStatusForbidden) ToJSONString() string {
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

func (o *PublicUpdateUserProfileStatusForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateUserProfileStatusForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateUserProfileStatusNotFound creates a PublicUpdateUserProfileStatusNotFound with default headers values
func NewPublicUpdateUserProfileStatusNotFound() *PublicUpdateUserProfileStatusNotFound {
	return &PublicUpdateUserProfileStatusNotFound{}
}

/*PublicUpdateUserProfileStatusNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11440</td><td>Unable to {action}: User profile not found in namespace [{namespace}]</td></tr></table>
*/
type PublicUpdateUserProfileStatusNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicUpdateUserProfileStatusNotFound) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/status][%d] publicUpdateUserProfileStatusNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdateUserProfileStatusNotFound) ToJSONString() string {
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

func (o *PublicUpdateUserProfileStatusNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateUserProfileStatusNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
