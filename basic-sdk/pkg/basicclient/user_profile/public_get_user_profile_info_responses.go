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

// PublicGetUserProfileInfoReader is a Reader for the PublicGetUserProfileInfo structure.
type PublicGetUserProfileInfoReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserProfileInfoReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserProfileInfoOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetUserProfileInfoBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetUserProfileInfoUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetUserProfileInfoForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetUserProfileInfoNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserProfileInfoOK creates a PublicGetUserProfileInfoOK with default headers values
func NewPublicGetUserProfileInfoOK() *PublicGetUserProfileInfoOK {
	return &PublicGetUserProfileInfoOK{}
}

/*PublicGetUserProfileInfoOK handles this case with default header values.

  Successful operation
*/
type PublicGetUserProfileInfoOK struct {
	Payload *basicclientmodels.UserProfileInfo
}

func (o *PublicGetUserProfileInfoOK) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicGetUserProfileInfoOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserProfileInfoOK) ToJSONString() string {
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

func (o *PublicGetUserProfileInfoOK) GetPayload() *basicclientmodels.UserProfileInfo {
	return o.Payload
}

func (o *PublicGetUserProfileInfoOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserProfileInfoBadRequest creates a PublicGetUserProfileInfoBadRequest with default headers values
func NewPublicGetUserProfileInfoBadRequest() *PublicGetUserProfileInfoBadRequest {
	return &PublicGetUserProfileInfoBadRequest{}
}

/*PublicGetUserProfileInfoBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicGetUserProfileInfoBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *PublicGetUserProfileInfoBadRequest) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicGetUserProfileInfoBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetUserProfileInfoBadRequest) ToJSONString() string {
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

func (o *PublicGetUserProfileInfoBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicGetUserProfileInfoBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserProfileInfoUnauthorized creates a PublicGetUserProfileInfoUnauthorized with default headers values
func NewPublicGetUserProfileInfoUnauthorized() *PublicGetUserProfileInfoUnauthorized {
	return &PublicGetUserProfileInfoUnauthorized{}
}

/*PublicGetUserProfileInfoUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type PublicGetUserProfileInfoUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicGetUserProfileInfoUnauthorized) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicGetUserProfileInfoUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetUserProfileInfoUnauthorized) ToJSONString() string {
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

func (o *PublicGetUserProfileInfoUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUserProfileInfoUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserProfileInfoForbidden creates a PublicGetUserProfileInfoForbidden with default headers values
func NewPublicGetUserProfileInfoForbidden() *PublicGetUserProfileInfoForbidden {
	return &PublicGetUserProfileInfoForbidden{}
}

/*PublicGetUserProfileInfoForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicGetUserProfileInfoForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicGetUserProfileInfoForbidden) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicGetUserProfileInfoForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetUserProfileInfoForbidden) ToJSONString() string {
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

func (o *PublicGetUserProfileInfoForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUserProfileInfoForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetUserProfileInfoNotFound creates a PublicGetUserProfileInfoNotFound with default headers values
func NewPublicGetUserProfileInfoNotFound() *PublicGetUserProfileInfoNotFound {
	return &PublicGetUserProfileInfoNotFound{}
}

/*PublicGetUserProfileInfoNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11440</td><td>Unable to {action}: User profile not found in namespace [{namespace}]</td></tr></table>
*/
type PublicGetUserProfileInfoNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *PublicGetUserProfileInfoNotFound) Error() string {
	return fmt.Sprintf("[GET /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicGetUserProfileInfoNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetUserProfileInfoNotFound) ToJSONString() string {
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

func (o *PublicGetUserProfileInfoNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUserProfileInfoNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
