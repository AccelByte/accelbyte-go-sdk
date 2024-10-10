// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// BanUserReader is a Reader for the BanUser structure.
type BanUserReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BanUserReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewBanUserCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBanUserBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBanUserUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBanUserForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewBanUserNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBanUserInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/namespaces/{namespace}/users/{userId}/ban returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBanUserCreated creates a BanUserCreated with default headers values
func NewBanUserCreated() *BanUserCreated {
	return &BanUserCreated{}
}

/*BanUserCreated handles this case with default header values.

  Created
*/
type BanUserCreated struct {
	Payload *iamclientmodels.ModelUserBanResponse
}

func (o *BanUserCreated) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/ban][%d] banUserCreated  %+v", 201, o.ToJSONString())
}

func (o *BanUserCreated) ToJSONString() string {
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

func (o *BanUserCreated) GetPayload() *iamclientmodels.ModelUserBanResponse {
	return o.Payload
}

func (o *BanUserCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserBanResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBanUserBadRequest creates a BanUserBadRequest with default headers values
func NewBanUserBadRequest() *BanUserBadRequest {
	return &BanUserBadRequest{}
}

/*BanUserBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type BanUserBadRequest struct {
}

func (o *BanUserBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/ban][%d] banUserBadRequest ", 400)
}

func (o *BanUserBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewBanUserUnauthorized creates a BanUserUnauthorized with default headers values
func NewBanUserUnauthorized() *BanUserUnauthorized {
	return &BanUserUnauthorized{}
}

/*BanUserUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type BanUserUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *BanUserUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/ban][%d] banUserUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *BanUserUnauthorized) ToJSONString() string {
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

func (o *BanUserUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *BanUserUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBanUserForbidden creates a BanUserForbidden with default headers values
func NewBanUserForbidden() *BanUserForbidden {
	return &BanUserForbidden{}
}

/*BanUserForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type BanUserForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *BanUserForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/ban][%d] banUserForbidden  %+v", 403, o.ToJSONString())
}

func (o *BanUserForbidden) ToJSONString() string {
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

func (o *BanUserForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *BanUserForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBanUserNotFound creates a BanUserNotFound with default headers values
func NewBanUserNotFound() *BanUserNotFound {
	return &BanUserNotFound{}
}

/*BanUserNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10158</td><td>ban not found</td></tr></table>
*/
type BanUserNotFound struct {
}

func (o *BanUserNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/ban][%d] banUserNotFound ", 404)
}

func (o *BanUserNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewBanUserInternalServerError creates a BanUserInternalServerError with default headers values
func NewBanUserInternalServerError() *BanUserInternalServerError {
	return &BanUserInternalServerError{}
}

/*BanUserInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type BanUserInternalServerError struct {
}

func (o *BanUserInternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/namespaces/{namespace}/users/{userId}/ban][%d] banUserInternalServerError ", 500)
}

func (o *BanUserInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
