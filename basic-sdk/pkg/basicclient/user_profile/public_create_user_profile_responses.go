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

// PublicCreateUserProfileReader is a Reader for the PublicCreateUserProfile structure.
type PublicCreateUserProfileReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicCreateUserProfileReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicCreateUserProfileCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicCreateUserProfileBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicCreateUserProfileUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicCreateUserProfileForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicCreateUserProfileConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicCreateUserProfileCreated creates a PublicCreateUserProfileCreated with default headers values
func NewPublicCreateUserProfileCreated() *PublicCreateUserProfileCreated {
	return &PublicCreateUserProfileCreated{}
}

/*PublicCreateUserProfileCreated handles this case with default header values.

  Successful operation
*/
type PublicCreateUserProfileCreated struct {
	Payload *basicclientmodels.UserProfileInfo
}

func (o *PublicCreateUserProfileCreated) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicCreateUserProfileCreated  %+v", 201, o.ToJSONString())
}

func (o *PublicCreateUserProfileCreated) ToJSONString() string {
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

func (o *PublicCreateUserProfileCreated) GetPayload() *basicclientmodels.UserProfileInfo {
	return o.Payload
}

func (o *PublicCreateUserProfileCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCreateUserProfileBadRequest creates a PublicCreateUserProfileBadRequest with default headers values
func NewPublicCreateUserProfileBadRequest() *PublicCreateUserProfileBadRequest {
	return &PublicCreateUserProfileBadRequest{}
}

/*PublicCreateUserProfileBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type PublicCreateUserProfileBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *PublicCreateUserProfileBadRequest) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicCreateUserProfileBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicCreateUserProfileBadRequest) ToJSONString() string {
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

func (o *PublicCreateUserProfileBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicCreateUserProfileBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCreateUserProfileUnauthorized creates a PublicCreateUserProfileUnauthorized with default headers values
func NewPublicCreateUserProfileUnauthorized() *PublicCreateUserProfileUnauthorized {
	return &PublicCreateUserProfileUnauthorized{}
}

/*PublicCreateUserProfileUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type PublicCreateUserProfileUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicCreateUserProfileUnauthorized) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicCreateUserProfileUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicCreateUserProfileUnauthorized) ToJSONString() string {
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

func (o *PublicCreateUserProfileUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCreateUserProfileUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCreateUserProfileForbidden creates a PublicCreateUserProfileForbidden with default headers values
func NewPublicCreateUserProfileForbidden() *PublicCreateUserProfileForbidden {
	return &PublicCreateUserProfileForbidden{}
}

/*PublicCreateUserProfileForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicCreateUserProfileForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicCreateUserProfileForbidden) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicCreateUserProfileForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicCreateUserProfileForbidden) ToJSONString() string {
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

func (o *PublicCreateUserProfileForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCreateUserProfileForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCreateUserProfileConflict creates a PublicCreateUserProfileConflict with default headers values
func NewPublicCreateUserProfileConflict() *PublicCreateUserProfileConflict {
	return &PublicCreateUserProfileConflict{}
}

/*PublicCreateUserProfileConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11441</td><td>Unable to {action}: User profile already exists</td></tr></table>
*/
type PublicCreateUserProfileConflict struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicCreateUserProfileConflict) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicCreateUserProfileConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicCreateUserProfileConflict) ToJSONString() string {
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

func (o *PublicCreateUserProfileConflict) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicCreateUserProfileConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
