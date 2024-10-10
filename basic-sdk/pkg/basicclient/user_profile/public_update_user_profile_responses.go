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

// PublicUpdateUserProfileReader is a Reader for the PublicUpdateUserProfile structure.
type PublicUpdateUserProfileReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateUserProfileReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdateUserProfileOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdateUserProfileBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdateUserProfileUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUpdateUserProfileForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdateUserProfileNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateUserProfileOK creates a PublicUpdateUserProfileOK with default headers values
func NewPublicUpdateUserProfileOK() *PublicUpdateUserProfileOK {
	return &PublicUpdateUserProfileOK{}
}

/*PublicUpdateUserProfileOK handles this case with default header values.

  Successful operation
*/
type PublicUpdateUserProfileOK struct {
	Payload *basicclientmodels.UserProfileInfo
}

func (o *PublicUpdateUserProfileOK) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicUpdateUserProfileOK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpdateUserProfileOK) ToJSONString() string {
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

func (o *PublicUpdateUserProfileOK) GetPayload() *basicclientmodels.UserProfileInfo {
	return o.Payload
}

func (o *PublicUpdateUserProfileOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateUserProfileBadRequest creates a PublicUpdateUserProfileBadRequest with default headers values
func NewPublicUpdateUserProfileBadRequest() *PublicUpdateUserProfileBadRequest {
	return &PublicUpdateUserProfileBadRequest{}
}

/*PublicUpdateUserProfileBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type PublicUpdateUserProfileBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *PublicUpdateUserProfileBadRequest) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicUpdateUserProfileBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdateUserProfileBadRequest) ToJSONString() string {
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

func (o *PublicUpdateUserProfileBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicUpdateUserProfileBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateUserProfileUnauthorized creates a PublicUpdateUserProfileUnauthorized with default headers values
func NewPublicUpdateUserProfileUnauthorized() *PublicUpdateUserProfileUnauthorized {
	return &PublicUpdateUserProfileUnauthorized{}
}

/*PublicUpdateUserProfileUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type PublicUpdateUserProfileUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicUpdateUserProfileUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicUpdateUserProfileUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdateUserProfileUnauthorized) ToJSONString() string {
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

func (o *PublicUpdateUserProfileUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateUserProfileUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateUserProfileForbidden creates a PublicUpdateUserProfileForbidden with default headers values
func NewPublicUpdateUserProfileForbidden() *PublicUpdateUserProfileForbidden {
	return &PublicUpdateUserProfileForbidden{}
}

/*PublicUpdateUserProfileForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicUpdateUserProfileForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicUpdateUserProfileForbidden) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicUpdateUserProfileForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUpdateUserProfileForbidden) ToJSONString() string {
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

func (o *PublicUpdateUserProfileForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateUserProfileForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateUserProfileNotFound creates a PublicUpdateUserProfileNotFound with default headers values
func NewPublicUpdateUserProfileNotFound() *PublicUpdateUserProfileNotFound {
	return &PublicUpdateUserProfileNotFound{}
}

/*PublicUpdateUserProfileNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11440</td><td>Unable to {action}: User profile not found in namespace [{namespace}]</td></tr></table>
*/
type PublicUpdateUserProfileNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicUpdateUserProfileNotFound) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicUpdateUserProfileNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdateUserProfileNotFound) ToJSONString() string {
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

func (o *PublicUpdateUserProfileNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateUserProfileNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
